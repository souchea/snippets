type 'a t

val new_list : unit -> 'a t
val length : 'a t -> int

val add : ’a t -> ’a -> unit
val iter : ’a t -> (’a -> unit) -> unit
