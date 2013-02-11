type personne_records = {first:string; last:string
		       ;promotion:int; close:bool}

let get_first_name_r a = a.first


let get_last_name_r a = a.last

let get_promotion_r a = a.promotion

let is_close_r a = a.close

let is_in_promo_r a promo =
		if promo == a.promotion
			then true
		else false