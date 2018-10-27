val empty : 'a Tuple_t.tuple;;

val tuple_of_tuple : 'a -> 'a;;
 
val tuple_of_singlet : 'a Singlet_t.singlet -> 'a Tuple_t.tuple;;

val tuple_of_uno : 'a Uno_t.uno -> 'a Tuple_t.tuple;;

val tuple_of_duo : 'a Duo_t.duo -> 'a Tuple_t.tuple;;

val tuple_of_trio : 'a Trio_t.trio -> 'a Tuple_t.tuple;;

val tuple_of_quatuor : 'a Quatuor_t.quatuor -> 'a Tuple_t.tuple;;

val is_empty : 'a Tuple_t.tuple -> bool;;

val is_singlet : 'a Tuple_t.tuple -> bool;;

val is_uno : 'a Tuple_t.tuple -> bool;;

val is_duo : 'a Tuple_t.tuple -> bool;;

val is_trio : 'a Tuple_t.tuple -> bool;;

val is_quatuor : 'a Tuple_t.tuple -> bool;;

val is_true_of_predicate_of_tuple : ('a -> 'a -> bool) -> 'a Tuple_t.tuple -> bool;;

val singlet_off_tuple : 'a Tuple_t.tuple -> 'a Singlet_t.singlet;;

val uno_of_tuple : 'a Tuple_t.tuple -> 'a Uno_t.uno;;

val duo_of_tuple : 'a Tuple_t.tuple -> 'a Duo_t.duo;;

val trio_of_tuple : 'a Tuple_t.tuple -> 'a Trio_t.trio;;

val quatuor_off_tuple : 'a Tuple_t.tuple -> 'a Quatuor_t.quatuor;;

val trio_duo_of_tuple : 'a Tuple_t.tuple -> ('a Trio_t.trio) Duo_t.duo;;

val duo_trio_of_tuple : 'a Tuple_t.tuple -> ('a Duo_t.duo) Trio_t.trio;; 

val map : ('a -> 'b) -> 'a Tuple_t.tuple -> 'b Tuple_t.tuple;;

val map2 : ('a -> 'b -> 'x) -> 'a Tuple_t.tuple -> 'b Tuple_t.tuple -> 'x Tuple_t.tuple;;

val iter : ('a -> unit) -> 'a Tuple_t.tuple -> unit;;

val name : ('a -> string) -> 'a Tuple_t.tuple -> string;;

val tuple_of_list : 'a list -> 'a Tuple_t.tuple;;

val list_of_tuple : 'a Tuple_t.tuple -> 'a list;; 

val first_off_tuple : 'a Tuple_t.tuple -> 'a;; 

val second_off_tuple : 'a Tuple_t.tuple -> 'a;; 

val third_off_tuple : 'a Tuple_t.tuple -> 'a;; 

val is_repeated_tuple_of_tuple : 'a Tuple_t.tuple -> bool;;

val only_element_of_repeated_tuple : 'a Tuple_t.tuple -> 'a;;

val sigma_of_integer_tuple : int Tuple_t.tuple -> int;;
