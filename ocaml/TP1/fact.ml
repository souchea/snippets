let rec fact a =
    if a > 0
    then a * fact (a - 1)
    else 1