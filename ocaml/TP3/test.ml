let my_function = function
  | 2	-> print_endline "option binaire trouvee"
  | 8   -> print_endline "option octal trouvee"
  | 10  -> print_endline "option decimal trouvee"
  | 16  -> print_endline "option hexa trouvee"
  | _	-> print_endline "unknow option"

let wrong_arguments string =  print_endline "wrong option";;

let opt_list = [("-obase", (Arg.Int my_function), "Specifie la base")];;
	      
Arg.parse opt_list wrong_arguments "Usage: ./test -obase <2, 8, 10, 16>"
