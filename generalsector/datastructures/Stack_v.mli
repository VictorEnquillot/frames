(** {Some other functionalities for Stack} *)

val stack_of_list : 'a list -> 'a Stack.t;;

val list_destructive_of_stack : 'a Stack.t -> 'a list;;
val list_non_destructive_of_stack : 'a Stack.t -> 'a list;;

val add_list_to_stack_of_list_of_stack : 'a list -> 'a Stack.t -> unit;;

val find_destructive_of_predicate_of_stack : ('a -> bool) -> 'a Stack.t -> 'a;;

val find_previous_non_destructive_of_current_predicate_of_stack : ('a -> bool) -> 'a Stack.t -> 'a;;

val find_next_non_destructive_of_current_predicate_of_stack : ('a -> bool) -> 'a Stack.t -> 'a;;

val find_non_destructive_of_predicate_of_stack : ('a -> bool) -> 'a Stack.t -> 'a;;

val previous_non_destructive_of_stack : 'a Stack.t -> 'a;;

val previous_top_destructive_of_stack : 'a Stack.t -> 'a;;

val previous_pop_destructive_of_stack : 'a Stack.t -> 'a;;

val delete_excluded_of_predicate_of_stack : ('a -> bool) -> 'a Stack.t -> 'a Stack.t;;

val delete_included_of_predicate_of_stack : ('a -> bool) -> 'a Stack.t -> 'a Stack.t;;

val name : ('a -> string) -> 'a Stack.t -> string;;

val name_in_column : ('a -> string) -> 'a Stack.t -> string;;
