val make : 'a list -> 'a Tuple_t.tuple list;;

val name : ('a -> string) -> 'a Tuple_t.tuple list -> string

val name_in_column : ('a -> string) -> 'a Tuple_t.tuple list -> string

val tuple_list_of_list : 'a list -> 'a Tuple_t.tuple list;;

val map : ('a -> 'b) -> 'a Tuple_t.tuple list -> 'b Tuple_t.tuple list ;;

val map2 : ('a -> 'b -> 'x) -> 'a Tuple_t.tuple list -> 'b Tuple_t.tuple list -> 'x Tuple_t.tuple list;;

val list_list_of_tuple_list : 'a Tuple_t.tuple list -> 'a list list ;;

val list_of_tuple_list : 'a Tuple_t.tuple list -> 'a list ;;

val first_list_off_tuple_list : 'a Tuple_t.tuple list -> 'a list ;;

val second_list_off_tuple_list : 'a Tuple_t.tuple list -> 'a list ;;

val third_list_off_tuple_list : 'a Tuple_t.tuple list -> 'a list ;;

val is_repeated_tuple_list_of_tuple_list : 'a Tuple_t.tuple list -> bool;;

val only_element_of_repeated_tuple_list : 'a Tuple_t.tuple list -> 'a;;

val are_equal_at_epsilon_float_of_float_tuple_list_of_float_tuple_list : float Tuple_list_t.tuple_list -> float Tuple_list_t.tuple_list -> bool;;
