(** {The functionalities for a repeated List of the same value.} *)

val make_of_element_of_count : 
    'a -> 
      Index_p.index -> 
	'a Repeated_list_t.repeated_list
;;

val make :
    'a list -> 
	'a Repeated_list_t.repeated_list
;;

val is_repeated_list_of_list :
    'a list -> 
      bool
;;

val list_of_repeated_list :
    'a Repeated_list_t.repeated_list ->
      'a list
;;

val append :
    'a Repeated_list_t.repeated_list ->
      'a Repeated_list_t.repeated_list ->
	'a Repeated_list_t.repeated_list 
;;
