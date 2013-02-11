let rec iter fonc = function
	| []		-> ()
	| head::left	-> begin
				a head;
				iter fonc left
			   end
