type Expr =
  | Min of (Eval * Eval)
  | Add of (Eval * Eval)
  | Div of (Eval * Eval)
  | Mul of (Eval * Eval)
  | Nbr of (int)


let rec Eval = function
  | Add (exp1, exp2)	-> Eval(exp1) + Eval(exp2)
  | Min (exp1, exp2)	-> Eval(exp1) - Eval(exp2)
  | Mul (exp1, exp2)	-> Eval(exp1) * Eval(exp2)
  | Div (exp1, exp2)	-> Eval(exp1) / Eval(exp2)
  | Nbr (exp)		-> exp

let to_eval = Mul(Nbr(5), Nbr(2));;


print Eval to_eval;;
