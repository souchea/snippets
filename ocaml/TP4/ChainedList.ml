type 'a elem = {content : 'a; next : (('a elem) option) ref}

type 'a t = {data : (('a elem) option) ref; len : int ref}

let new_elem a = {content = a; next = ref None}

let new_list = {data = ref None; len = ref 0}

let lenght {data = _; len = ret} = ret
