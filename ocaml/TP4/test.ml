let func_fact nbr = 
  let rec fact_tmp tmp = function
    | 0 	-> tmp
    | _		-> fact_tmp (tmp * nbr) (nbr - 1)
  in fact_tmp 1 nbr

let imp_fact nbr = 
  let tmp = ref 1;
  let ref_nbr = ref nbr
    begin
      while !nbr > 0
      do    nbr := !nbr - 1; tmp := !tmp * !nbr
      done
    end	
