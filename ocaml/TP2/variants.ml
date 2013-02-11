type day = Monday 
	   | Tuesday  
	   | Wednesday
	   | Thursday
	   | Friday	
	   | Saturday
	   | Sunday

type month = January
	     | February
	     | March
	     | April
	     | May
	     | June
	     | July
	     | August
	     | September
	     | October
	     | November
	     | December

let next_day = function
  | Monday	-> Tuesday
  | Tuesday	-> Wednesday  
  | Wednesday	-> Thursday
  | Thursday	-> Friday
  | Friday	-> Saturday
  | Saturday	-> Sunday
  | Sunday	-> Monday

let next_month = function
  | January	-> February
  | February	-> March
  | March	-> April
  | April	-> May
  | May		-> June
  | June	-> July
  | July	-> August
  | August	-> September
  | September	-> October
  | October	-> November
  | November	-> December
  | December	-> January

let is_bisextile year = 
  ((year mod 400 == 0) || (year mod 4 == 0 && year mod 100 != 0))

let nb_days annee = function
  | January	-> 31
  | February 	-> if (is_bisextile annee) then 29 else 28
  | March	-> 31
  | April	-> 30
  | May		-> 31
  | June	-> 30
  | July	-> 31
  | August	-> 31
  | September	-> 30
  | October	-> 31
  | November	-> 30
  | December	-> 31

let next_nday jour mois annee = 
    if (nb_days annee mois == jour) then (1, true)
    else (jour + 1, false)


