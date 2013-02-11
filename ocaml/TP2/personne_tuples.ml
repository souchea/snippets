let get_first_name (first, last, promotion, close) = first

let get_last_name (first, last, promotion, close) = last

let get_promotion (first, last, promotion, close) = promotion

let is_close (first, last, promotion, close) = close

let is_in_promo (first, last, promotion, close) promotion2 =
		if promotion2 == promotion
			then true
		else false