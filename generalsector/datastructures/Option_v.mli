val some_entity_of_entity : 'a -> 'a option
;;

val entity_of_some_entity : 'a option -> 'a
;;

val is_none_of_option_type : 'a option -> bool;;

val is_some_of_option_type : 'a option -> bool;;

val has_none_element_of_option_list : 'a option list -> bool 
;;

val none_list_of_option_list : 'a option list -> 'a option list  
;;

val some_list_of_option_list : 'a list -> 'a option list
;;

val entity_list_of_option_list : 'a option list -> 'a list
;;

val none_number_of_option_list : 'a option list -> int
;;

val name : ('a -> string ) -> 'a option -> string;;

