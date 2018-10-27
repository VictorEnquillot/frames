val array_get : string -> 'a array -> int -> 'a
;;
(** [let e = array_get s v i;;]

    [e] is the element of index [i] of array [v].

    The first element has index 0.
    If [Invalid_argument("index out of bounds")] is raised
    the name [s] of the function, the value of [i] and the length
    of [v] are printed. *)

val is_all_true : bool array -> bool
;;

val flatten_array_array : 'a array array -> 'a array
;;

val is_a_set : 'a array -> bool
;;

val verify_is_a_set : 'a array -> 'a array
;;

val fail_is_a_set : (Format.formatter -> 'a -> unit) -> 
  'a array -> string -> string -> 
    'a
;;
(** fails *)

val print : (Format.formatter -> 'a -> unit) -> Format.formatter -> 
  'a array -> unit 
;;
(** [print_vector f p a;;]
[f] is a function pretty-printing an element of array [a]. 
[p] is a pretty-printer.*)

val name : ('a -> string) -> 'a array -> 
  string
;;

val name_with_separator : ('a -> string) -> string -> 'a array -> 
  string
;;

val once_array_of_array : 'a array -> 'a array
;;

val array_filter : ('a -> bool) -> 'a array -> 'a array
;;

val array_extract_of_array : int -> int -> 'a array -> 'a array
;;

val is_zeroed_array_int : int array -> bool
;;

val element_n_count_array_of_array : 'a array -> ('a * int) array
;;

val print_array_float : Format.formatter -> float array -> unit
;;

val print_array_array_float : Format.formatter -> float array array -> unit
;;

val print_array_string : Format.formatter -> string array -> unit
;;

val first_element_array_of_pair_array : ('a * 'b ) array -> 'a array
;;

val second_element_array_of_pair_array : ('a * 'b ) array -> 'b array
;;

val count_of_element : 'a -> 'a array -> int
;;

val has_element_of_array : 'a -> 'a array -> bool
;;

val int_index_of_element_of_array : 'a -> 'a array -> int
;;

val array_head : 'a array -> 'a
;;

val array_tail : 'a array -> 'a
;;

val is_included_of_array_of_array : 'a array -> 'a array -> bool
;;

val print_int_array : Format.formatter -> int array -> unit
;;

val print_array_array_int : Format.formatter -> int array array -> unit
;;

val first_element : 'a array -> 'a;;

val last_element : 'a array -> 'a
;;
(** let e = last_element l;;
    returns the last element of [array] 'l'. *)

val tail_array_of_array : 'a array -> 
  'a array
;;

val drop_last : 'a array -> 'a array
;;

 val apply_on_array_tail : ('a -> 'a) -> 'a array -> 
   'a array
;;

val pair_off_array : 'a array -> 'a * 'a
;;

val minimum : ('a -> 'a -> int) -> 'a array ->
 'a
;;

val map2 : ('a -> 'b -> 'c) -> 'a array -> 'b array -> 
  'c array
;;

val print_error_is_zeroed_array : string -> int array -> string -> string -> 
  unit
;;

val fail_error_is_zeroed_array : string -> int array -> string -> string -> 
  'b
;;

val sigma_of_array_float : float array -> 
  float
;;

val sigma_of_array_int : int array -> 
  int
;;

val sigma_of_array_index : Index_p.index array -> 
  Index_p.index
;;

val sigma_of_array_ordinal : Ordinal_p.ordinal array -> 
  Ordinal_p.ordinal
;;

val sigma_fun_of_array_float : (float -> float) -> float array -> 
  float
;;

val print_index_array_as_int : Format.formatter -> Index_p.index array -> 
  unit
;;

val print_ordinal_array_as_int : Format.formatter -> Ordinal_p.ordinal array -> 
  unit
;;

val int_array_of_index_array : Index_p.index array -> 
  int array
;;

val int_array_of_ordinal_array : Ordinal_p.ordinal array -> 
  int array
;;

val ordinal_array_of_first_of_length : Ordinal_p.ordinal ->
  int ->
    Ordinal_p.ordinal array
;;



