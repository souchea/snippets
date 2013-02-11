type 'a mylist =
	| Item of ('a * 'a mylist)
	| Empty

let rec	lenght = function
  | Empty			-> 0
  | Item (head, tail)		-> lenght tail + 1

let hd = function
  | Empty			-> raise (Failure "hd")
  | Item (head, tail)		-> head

let tl = function
  | Empty			-> raise (Failure "tl")
  | Item (head, tail)		-> tail

let nth myli nbr =
  if nbr >= 0 then
    let rec nth_tmp nbr nbr2 = function
      | Empty			-> raise (Failure "nth")
      | Item (head, tail)	-> if nbr == nbr2 then 
					head
                                   else 
        				nth_tmp nbr (nbr2+1) tail
    in nth_tmp nbr 0 myli
  else
    raise (Invalid_argument "Mylist.nth")

let rev myli = 
  let rec rev_tmp list2 = function
    | Empty			-> list2
    | Item (head, tail)		-> rev_tmp (Item (head, list2)) tail
  in rev_tmp Empty myli

let append myli1 myli2 = 
  let rec append_tmp myli2 = function
    | Empty			-> myli2
    | Item (head, tail)		-> Item(head, append_tmp myli2 tail)
  in append_tmp myli2 myli1 


let rev_append myli myli2 = 
  let rec rev_tmp list2 = function
    | Empty			-> list2
    | Item (head, tail)		-> rev_tmp (Item (head, list2)) tail
  in rev_tmp myli2 myli

let flatten myli=
  let rec flatten_tmp retlist = function
    | Empty			-> retlist
    | Item(head, tail)		-> flatten_tmp (append head retlist) tail 
  in flatten_tmp Empty myli

let rec iter fonc = function
	| Empty			-> ()
	| Item (head, tail)	-> 	
	  			begin
				  fonc head;
				  iter fonc tail 
				end
let rec map fonc = function
  | Empty			-> Empty
  | Item (head, tail)		-> Item (fonc head, map fonc tail)

let rec fold_left fonc elema = function
  | Empty			-> elema
  | Item (head, tail)		-> fold_left fonc (fonc elema head) tail 


let rec for_all fonc = function
  | Empty			-> true
  | Item (head, tail)		-> if fonc head then
					for_all fonc tail
				   else 
	    				false

let rec exists fonc = function
  | Empty			-> false
  | Item (head, tail)		-> if fonc head then
      					true
    				   else 
      					exists fonc tail

let rec mem elem = function
  | Empty			-> false
  | Item (head, tail)		-> if head == elem then
	  				true
                                   else 
	    				mem elem tail

let rec memq elem = function
  | Empty			-> false
  | Item (head, tail)		-> if head = elem then
	  				true
                                   else 
	    				memq elem tail

let rec filter fonc = function
  | Empty			-> Empty
  | Item (head, tail)		-> if fonc head then 
	    				Item(head, filter fonc tail)
                                   else 
	    				filter fonc tail

let rec mem_assoc elem = function
  | Empty			-> false
  | Item ((left, right), tail)	-> if left == elem then true
					   else mem_assoc elem tail 

let rec assoc elem = function
  | Empty			-> raise Not_found
  | Item ((left, right), tail)	-> if left == elem then 
      					right
    				   else 
      					assoc elem tail 

let split myli =
  let rec split_tmp leftli rightli = function
    | Empty 			-> (rev leftli, rev rightli)
    | Item ((left, right), tail)-> split_tmp (Item(left, Empty)) (Item(right, rightli)) tail
  in split_tmp Empty Empty myli

let rec remove_assoc elem = function
  | Empty			-> Empty
  | Item ((left, right), tail)	-> if elem == left then 
      					tail
    				   else 
      					Item((left, right), remove_assoc elem tail)

let rec find fonc = function
  | Empty			-> raise Not_found
  | Item (head, tail)		-> if fonc head then 
	    				head
                                   else 
	    				find fonc tail				

let rec combine myli = function 
  | Empty			-> if myli == Empty  then 
	   				Empty
         			   else 
	   				raise (Invalid_argument "combine")
  | Item (head, tail)		-> if myli != Empty then 
	   				Item((hd myli, head), combine (tl myli) tail)
                                   else 
	   				raise (Invalid_argument "combine")

let rec remove_all_assoc elem = function
  | Empty			-> Empty
  | Item ((left, right), tail)	-> if elem == left then
      					remove_all_assoc elem tail
    				   else 
      					Item((left, right), remove_all_assoc elem tail)   

let fold_right fonc myli elemb =
  let rec fold_tmp fonc elemb = function 
    | Empty			-> elemb
    | Item (head, tail)		-> fonc head (fold_tmp fonc elemb tail)
  in fold_tmp fonc elemb myli
