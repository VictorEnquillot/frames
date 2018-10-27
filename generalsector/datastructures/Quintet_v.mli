
val make : 'a -> 'a -> 'a -> 'a -> 'a -> 'a Quintet_t.quintet
val make_of_duo_of_triplet : 'a Duo_t.duo -> 'a Trio_t.trio -> 'a Quintet_t.quintet
val make_of_left_of_quatuor : 'a -> 'a Quatuor_t.quatuor -> 'a Quintet_t.quintet
val make_of_quatuor_of_right : 'a Quatuor_t.quatuor -> 'a -> 'a Quintet_t.quintet

val left_off_quintet : 'a Quintet_t.quintet -> 'a
val first_off_quintet : 'a Quintet_t.quintet -> 'a
val middle_left_off_quintet : 'a Quintet_t.quintet -> 'a
val second_off_quintet : 'a Quintet_t.quintet -> 'a
val middle_off_quintet : 'a Quintet_t.quintet -> 'a
val third_off_quintet : 'a Quintet_t.quintet -> 'a
val middle_right_off_quintet : 'a Quintet_t.quintet -> 'a
val fourth_off_quintet : 'a Quintet_t.quintet -> 'a
val right_off_quintet : 'a Quintet_t.quintet -> 'a
val last_off_quintet : 'a Quintet_t.quintet -> 'a
val fith_off_quintet : 'a Quintet_t.quintet -> 'a
val left_duo_off_quintet : 'a Quintet_t.quintet -> 'a Duo_t.duo

val list_off_quintet : 'a Quintet_t.quintet -> 'a list
val quintet_off_list : 'a list -> 'a Quintet_t.quintet
val map : ('a -> 'b) -> 'a Quintet_t.quintet -> 'b Quintet_t.quintet
val iter : ('a -> unit) -> 'a Quintet_t.quintet -> unit
val compare : ('a -> 'b -> int) -> 'a Quintet_t.quintet -> 'b Quintet_t.quintet -> int
val name : ('a -> string) -> 'a Quintet_t.quintet -> string
val name_capitalized : ('a -> string) -> 'a Quintet_t.quintet -> string
