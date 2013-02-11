let rec fib a = match a with
    | 0			-> 0
    | 1			-> 1
    | a when a > 1	-> (fib (a - 1)) + (fib (a - 2))
    | _			-> -1