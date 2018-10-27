
val map : ('a -> 'b) -> 'a list -> 'b list;;
val map2 : ('a -> 'b -> 'c) -> 'a list -> 'b list -> 'c list;;
val iter : ('a -> unit) -> 'a list -> unit;;
val iter2 : ('a -> 'b -> unit) -> 'a list -> 'b list -> unit;;

val skip_empty_list_off_list_list : 'a list list -> 'a list list;;

val print_fatal_error_empty_list : string -> string -> 
  unit
;;

  
val name_bare :  ('a -> string) -> 'a list -> 
  string
;;

val name_bare_with_separator : ('a -> string) -> string -> 'a list -> 
  string
;;

val name : ('a -> string) -> 'a list -> string;;

val name_linear : ('a -> string) -> 'a list -> string;;

val name_with_separator : ('a -> string) -> string -> 'a list -> string;;

val name_linear_with_separator : ('a -> string) -> string -> 'a list -> string;;

val name_with_blanks : ('a -> string) -> 'a list -> string;;

val name_linear_with_blanks : ('a -> string) -> 'a list -> string;;

val name_with_semicolons : ('a -> string) -> 'a list -> string;;

val name_linear_with_semicolons : ('a -> string) -> 'a list -> string;;

val name_in_column : ('a -> string) -> 'a list -> string;;
 
val is_empty_of_list : 'a list -> bool;;

val name_of_integer_list : int list -> string;;

val name_of_integer_list_list :  
  int list list -> 
    string
;;

val name_of_float_list :  
  float list -> 
    string
;;

val name_of_index_list :  
  Index_p.index list -> 
    string
;;

val name_of_index_list_as_int :  
  Index_p.index list -> 
    string
;;

val name_of_ordinal_list :  
  Ordinal_p.ordinal list -> 
    string
;;

val name_of_ordinal_list_as_int :  
  Ordinal_p.ordinal list -> 
    string
;;

val name_of_string_list : string list -> string;;

val name_underscored_off_string_list : string list -> string;;

val name_of_float_list_list : float list list -> string;;

(** {6 Splitting in two lists : left and right} *)

val split_of_predicate_of_list : ('a -> bool) -> 'a list -> 'a list * 'a list;;

val split_excluded_of_predicate_of_list : ('a -> bool) -> 'a list -> 'a list * 'a list;;

val split_of_element_of_list : 'a -> 'a list -> 'a list * 'a list;;

val split_append_of_element_of_list_of_list : 'a -> 'a list -> 'a list -> 'a list * 'a list;;

val split_after_of_element_of_list : 'a -> 'a list -> 'a list * 'a list;;

val split_before_of_element_of_list : 'a -> 'a list -> 'a list * 'a list;;

val split_after_at_int_of_list : int -> 'a list -> 'a list * 'a list;;

val split_before_at_int_of_list : int -> 'a list -> 'a list * 'a list;;

val split_excluded_of_element_of_list : 'a -> 'a list -> 'a list * 'a list;;

val split_left_included_of_predicate_of_list : 
    ('a -> bool) -> 
      'a list ->
	'a list * 'a list
;;
(** [let (l, r) = split_left_included_of_predicate_of_list p a]
     predicate p splits list a in left l and right r parts.
     l includes the frontier element defined by p. *)

val split_right_included_of_predicate_of_list : 
    ('a -> bool) -> 
      'a list ->
	'a list * 'a list
;;
(** [let (l, r) = split_right_included_of_predicate_of_list p a]
     predicate p splits list a in left l and right r parts.
     r includes the frontier element defined by p. *)

val split_at_last_element_off_list :
    'a list ->
      'a * 'a list
;;

(** {6 Bursting} *)

val burst_right_included_of_predicate_of_list :
    ('a -> bool) -> 
      'a list ->
	'a list list
;;
(** [let l = burst_right_included_of_predicate_of_list p a]
     predicate p splits list a in a left and a right part recursively
     all left parts are collected into list l.
     All l element includes the frontier element defined by p. 
Ex.:
 ["a"; "a"; "b"; "a"; "b"; "b";] -> [["a"; "a"; "b"]; ["a"; "b"]; ["b"]] *)

val burst_excluded_of_element_of_list  : 'a -> 'a list -> 'a list list;;

val burst_left_included_of_predicate_of_list :
    ('a -> bool) -> 
      'a list ->
	'a list list
;;
(**
Ex.:
   ["x"; "a"; "b"; "x"; "c"; "d"; "x"] -> 
   [["x"; "a"; "b"]; ["x"; "c"; "d"]; ["x"]] *)

val gather : ('a -> 'a -> bool) -> 'a list -> 'a list list
;;

val successor_of_element_of_list : 'a -> 'a list -> 'a
;;

val successor_of_predicate_of_list : ('a -> bool) -> 'a list -> 'a
;;

val predecessor_of_element_of_list : 'a -> 'a list -> 'a
;;

val predecessor_of_predicate_of_list : ('a -> bool) -> 'a list -> 'a
;;
val three_split_list : 'a -> 'a list -> 'a list * 'a * 'a list
;;

val replace_of_element_of_element_of_list : 'a -> 'a -> 'a list -> 'a list 
;;
(** [let l2 = replace_element_list e1 e2 l;;]
replace the first occurrence of e1 by e2 in list l. *)

val replace_last_element_of_element_of_list : 'a -> 'a list -> 'a list;; 

val exclude_of_element_of_list : 'a -> 'a list -> 'a list;;
(** let l1 = exclude_of_element_of_list e l;;
    returns [list] 'l1' after exclusion of element 'e' of [list] 'l'. 
    if 'e' not in 'l' raise (Failure "Element not found"). *)

val list_tail : 'a list -> 'a;; 

val append_of_element_of_list : 'a -> 'a list -> 'a list;;
val cut_off_last_element_off_list : 'a list -> 'a list;;

val drop_last_element_off_list : 'a list -> 'a list;;
(** [  ["1"; "2"] = cut_off_last_element_off_list ["1"; "2"; "3"] ;;] *)

val drop_last_elements_of_int_of_list : int -> 'a list -> 'a list;;

val drop_first_elements_of_int_of_list : int -> 'a list -> 'a list;;

val first_element_off_list : 'a list -> 'a;;
(** [ "1" = first_element_off_list ["1"; "2"; "3"] ;;] *)

val first_element : 'a list -> 'a;;
val list_head : 'a list -> 'a;;
val last_element_off_list : 'a list -> 'a;; (** [ "3" = last_element_off_list ["1"; "2"; "3"] ;;] *)
val second_element_off_list : 'a list -> 'a;;
val third_element_off_list : 'a list -> 'a;;

val last_element : 'a list -> 'a;;
val ultimate_element_off_list : 'a list -> 'a
val penultimate_element_off_list : 'a list -> 'a
val antepenultimate_element_off_list : 'a list -> 'a


val cut_off_first_element_of_list : 'a list -> 'a list
;;
(** [  ["2"; "3"] = cut_off_first_element_of_list ["1"; "2"; "3"] ;;] *)

val replace_of_predicate_of_element_of_list : 
    ('a -> bool) -> 'a -> 'a list -> 'a list
;;
(** let l = replace_of_predicate_of_element_of_list p e el;;
    returns [list] 'l' after exclusion of element 'e1'
    and insertion of 'e2'.
    if 'e1' not in 'el' raise (Failure "Element not found"). *)
  
val replace_of_element_of_element_of_list : 'a -> 'a -> 'a list -> 'a list
;;
(** let l = replace_of_elemnet_of_element_of_list e1 e2 el;;
    returns [list] 'l' after exclusion of element 'e1'
    and insertion of 'e2'.
    if 'e1' not in 'el' raise (Failure "Element not found"). *)
  
val left_list_included_of_predicate_of_list : ('a -> bool) -> 'a list -> 'a list 
;;

val left_list_excluded_of_predicate_of_list : ('a -> bool) -> 'a list -> 'a list 
;;

val right_list_excluded_of_predicate_of_list : ('a -> bool) -> 'a list -> 'a list 
;;

val right_list_included_of_predicate_of_list : ('a -> bool) -> 'a list -> 'a list 
;;

val has_elements_of_predicate_of_list : ('a -> bool) -> 'a list -> bool;;

val left_sublist_n_right_sublist_of_predicate_of_list : ('a -> bool) -> 'a list -> 'a list * 'a list;;
(** (["a"; "b"; "c"], ["d"; "e"; "f"]) <= (fun s -> s= "d") ["a"; "b"; "c"; "d"; "e"; "f"] *)

val head_sublist_n_remainder_list_of_predicate_of_list : ('a -> bool) -> 'a list -> 'a list * 'a list;;
val largest_inclusive_list_of_reference_list_of_list_list : 'a list -> 'a list list -> 'a list list;;

val sublist_of_int_of_int_of_list : int -> int -> 'a list -> 'a list;;
val sublist_of_int_of_length_of_list : int -> int -> 'a list -> 'a list;;
val sublist_excluded_of_predicate_of_length_of_list : ('a -> bool) -> int -> 'a list -> 'a list;;
(** *)
val sublist_included_of_predicate_of_length_of_list : ('a -> bool) -> int -> 'a list -> 'a list;;
val sublist_excluded_of_predicate_of_predicate_of_list : ('a -> bool) -> ('a -> bool) -> 'a list -> 'a list;;
val sublist_included_of_predicate_of_predicate_of_list : ('a -> bool) -> ('a -> bool) -> 'a list -> 'a list;;

val sublist_of_predicate_included_of_predicate_excluded_of_list : ('a -> bool) -> ('a -> bool) -> 'a list -> 'a list;;
val sublist_of_predicate_excluded_of_predicate_included_of_list : ('a -> bool) -> ('a -> bool) -> 'a list -> 'a list;;
val sublist_of_predicate_excluded_of_predicate_excluded_of_list : ('a -> bool) -> ('a -> bool) -> 'a list -> 'a list;;
val sublist_of_predicate_included_of_predicate_included_of_list : ('a -> bool) -> ('a -> bool) -> 'a list -> 'a list;;

val sublist_longest_included_of_predicate_of_predicate_of_list : ('a -> bool) -> ('a -> bool) -> 'a list -> 'a list;;

val first_elements_of_int_of_list : int -> 'a list -> 'a list;;
val last_elements_of_int_of_list : int -> 'a list -> 'a list;;

val left_half_off_list : 'a list -> 'a list;;
val right_half_off_list : 'a list -> 'a list;;

val only_element_of_predicate_off_list : ('a -> bool) -> 'a list -> 'a;;

val insert_after_of_list_of_element_of_list : 'a list -> 'a -> 'a list -> 'a list;;

val insert_after_of_list_of_predicate_of_list : 'a list -> ('a -> bool) -> 'a list -> 'a list;;

val verify_is_a_set : 'a list -> 'a list;;(** Failure "verify_is_a_set" *)

val is_a_set : 'a list -> bool;;

val is_once_list_of_list : 'a list -> bool;; (* [1; 2; 3] true *)

val is_once_of_element_of_list : 'a -> 'a list -> bool;;

val verify_exist_once : 'a -> 'a list -> string -> string -> 'a;;

val check_exist_once : 'a -> 'a list -> string -> string -> unit;;

val left_once_list_off_list : 'a list -> 'a list;;
(** let ol = once_list_off_list l;;
    keeps any one occurrence of a list element
    example [1; 2; 3] = left_once_list_off_list [1; 2; 3; 2]. *)

val right_once_list_off_list : 'a list -> 'a list
;;
(** let ol = once_list_off_list l;;
    keeps any one occurrence of a list element
    example [1; 3; 2] =once_list_off_list [1; 2; 3; 2]. *)

val select_path_list_with_once_leaf_off_path_list :
    'a list list ->
      'a list list
;;
(** Ex.: 
    select_path_list_with_once_leaf_off_path_list [[1; 1; 1]; [2; 1; 4]; [1; 1]]
    = [[1; 1; 1]; [2; 1; 4]]
*)
val non_once_list_off_list : 'a list -> 'a list ;;

val count_of_element_of_list : 'a -> 'a list -> int;;

val index_of_element_of_list : 'a -> 'a list -> int;;

val int_ordinal_of_element_of_list : 'a -> 'a list -> int;;

val ordinal_of_element_of_list : 'a -> 'a list -> Ordinal_p.ordinal;;

val element_n_count_list_of_list : 'a list -> ('a * int) list;;
(**  count_list_of_list ["a"; "a"; "b"; "c"];; 
    gives: [("a", 2); ("b", 1); ("c", 1)]. *) 

val pair_list_of_list : 'a list ->  ('a * 'a) list
;;
(** let pl = pair_list_of_list l;;
    gather list [l] into a list of pairs [pl]
    example : [("a", "b"); ("c", "d")] = pair_list_of_list ["a"; "b"; "c"; "d"]. *)

val pair_list_with_element : 'a -> 'b list -> ('a * 'b) list 
;;
(** [let pl = pair_list_with_element e l;;]
 
    [e] is an element of type ['a].
    [l] is a ['b list].
    [pl] is the list of all pairs (e, x) when [x] scans all element of [l]. *)

val pair_selection_one_list : ('a -> 'a -> bool) ->  'a list -> ('a * 'a) list
;;
(** [let pl = pair_selection_one_list p l;;]

    [p] is a predication on a pair of ['a].
    [l] is a ['a list].
    [pl] is a list of pairs ['a * 'a] satifying [p]. *)

val pair_selection_two_lists : ('a -> 'b -> bool) ->  'a list -> 'b list -> 
  ('a * 'b) list
;;
(** [let pl = pair_selection_two_lists p l1 l2;;]

    [p] is a predication on a pair of ['a * 'b].
    [l1] is a ['a list].
    [l2] is a ['b list].
    [pl] is a list of pairs ['a * 'b] satifying [p]. *)

val singlet_off_list : 'a list -> 'a 
;;

val pair_off_list : 'a list -> 'a * 'a;;
val duo_of_list : 'a list -> 'a * 'a;;
val element_duo_off_two_element_list : 'a list -> 'a * 'a;;
val first_pair_off_list : 'a list -> 'a * 'a;;
val first_duo_off_list : 'a list -> 'a * 'a;;

val trio_of_list : 'a list -> 'a * 'a * 'a
;;

val first_trio_off_list : 'a list -> 'a * 'a * 'a 
;;

val quatuor_off_list : 'a list -> 'a * 'a * 'a * 'a 
;;

val first_quatuor_off_list : 'a list -> 'a * 'a * 'a * 'a
;;

val quintet_off_list : 'a list -> 'a * 'a * 'a * 'a * 'a
;;

val first_quintet_off_list : 'a list -> 'a * 'a * 'a * 'a * 'a
;;

val fail_list_empty : string -> string -> 'a
;;

val ordinal_list_of_first_of_length : 
    Ordinal_p.ordinal -> 
      int ->
	Ordinal_p.ordinal list
;;

val sequential_index_list_of_first_of_length :
    Ordinal_p.ordinal -> 
      int ->
	Sequential_index_t.sequential_index list
;;

val sigma_of_float_list : float list -> 
  float
;;

val sigma_of_integer_list : int list -> 
  int
;;

val sigma_of_function_of_integer_list : (int -> int) -> int list -> int ;;

val sigma_of_index_list : Index_p.index list -> 
  Index_p.index
;;

val sigma_of_ordinal_list : Ordinal_p.ordinal list -> 
  Ordinal_p.ordinal
;;

val sigma_of_function_of_float_list : (float -> float) -> float list -> float ;;

val same_element_list_of_element_of_length :
    'a ->
      int ->
	'a list
;; (* same_element_list_of_element_of_length 5 3 -> [5; 5; 5] *)

val maxtomin_int_list_of_length :
    int ->
      int list
;; (* 5 -> [4; 3; 2; 1; 0] *)

val int_mintomax_list_of_length :
    int ->
      int list
;; (* 5 -> [0; 1; 2; 3; 4] *)

val int_maxtomin_list_of_minimum_of_length :
    int ->
      int ->
	int list
;; (* 2 5 -> [6; 5; 4; 3; 2] *)

val int_maxtomin_list_of_maximum_of_length :
    int ->
      int ->
	int list
;; (* 2 5 -> [2; 1; 0; -1; -2] *)

val int_mintomax_list_of_minimum_of_length :
    int ->
      int ->
	int list
;; 

val int_mintomax_list_of_maximum_of_length :
    int ->
      int ->
	int list
;; 

val int_list_of_length : int -> 
  int list
;;

val int_list_of_first_of_length : 
    int -> 
      int -> 
	int list
;;

val are_all_elements_of_predicate_of_list :
   ('a -> bool) ->
     'a list ->
       bool
;;

val is_zeroed_int_list : int list ->
  bool
;;

val is_repeated_list_of_list : 
    'a list -> 
      bool
;;

val repeated_list_of_count_of_element : 
    int ->
      'a -> 
	'a list
;;(* Ex.: ["a"] <=> List_v.repeated_list_of_count_of_element 1 "a" *)

val repeated_list_of_count_of_list :
    int ->
      'a list -> 
	'a list
;;(* Ex.: ["a"; "b"] <=> List_v.repeated_list_of_count_of_list 1 ["a"; "b"] *)

val only_element_of_repeated_list :
    'a list ->
      'a
;;

val list_triplet_of_triplet_list :
    ('a * 'b * 'c) list ->
      ('a list * 'b list * 'c list)
;;

val list_trio_off_trio_list :
    ('a * 'a * 'a) list ->
      ('a list * 'a list * 'a list)
;;

val int_list_of_index_list : Index_p.index list -> 
  int list
;;

val int_list_of_ordinal_list : 
    Ordinal_p.ordinal list -> 
      int list
;;

val element_off_one_element_list : 
    'a list -> 'a
;;(** Failure "Empty_list:List_v.element_off_one_element_list"
      Failure "Several_elements:Lst_v.element_off_one_element_list" *)

val firstindex_of_element_of_list :
  'a ->  
    'a list -> 
      int
;;

val pair_uptriangular_list_of_list :
    'a list ->
      ('a * 'a) list 
;; (* [("a", "b"); ("a", "c"); ("b", "c")] = 
      pair_uptriangular_list_of_list ["a"; "b"; "c"] *)

val pair_uptriangulardiagonal_list_of_list :
    'a list ->
      ('a * 'a) list 
;; (* [("a", "a"); ("a", "b"); ("a", "c"); ("b", "c")] *)

val string_list_left_shift_of_int_of_string_list :
    int ->
      string list ->
	string list
;;

val string_list_right_shift_of_int_of_string_list :
    int ->
      string list ->
	string list
;;

val transpose : 
    'a list list ->
      'a list list 
;;

val list_of_list : 'a list -> 'a list;;

val list_list_off_list : 'a list -> 'a list list;; 
(* list_list_off_list [1;2;3] = [[1; 2; 3]; [2; 3]; [3]] ;; *)

val list_off_string_of_make : string -> (string -> 'a) -> 'a list;;

val set_intersection_of_list_of_list : 'a list -> 'a list -> 'a list;;
(** Ex.: [2; 2; 1; 4; 1] = List_v.set_intersection_of_list_of_list [2; 2; 1; 4; 1] [2; 1; 4];; *)

val exclusive_union_of_list_of_list : 'a list -> 'a list -> 'a list;;
(** Ex.: [3; 1; 6] = List_v.exclusion_of_list_of_list [3; 5; 1; 4] [4; 6; 5] *)

val union_of_list_of_list : 'a list -> 'a list -> 'a list;;
(** Ex.: [3; 5; 1; 4; 6] = List_v.exclusion_of_list_of_list [3; 5; 1; 4] [4; 6; 5] *)

val exclusion_off_list_of_list : 'a list -> 'a list -> 'a list;;
(** Ex.: [3; 1] = List_v.exclusion_off_list_of_list [3; 5; 1; 4] [4; 6; 5] *)

val has_same_right_elements_off_list_of_list : 'a list -> 'a list -> bool;;
(** Ex.: true = List_v.has_same_right_elements_off_list_of_list [3; 2; 6; 5] [4; 6; 5] *)

val have_same_element_set_of_list_of_list : 'a list -> 'a list -> bool;;
(** Ex.: true = List_v.have_same_element_set_of_list_of_list [3; 2; 6; 5] [2; 3; 2; 5; 6] *)

val are_equivalent_of_list_of_list : 'a list -> 'a list -> bool;;
(** Ex.: true = List_v.have_same_element_set_of_list_of_list [3; 2; 6; 5] [2; 3; 5; 6] *)

val sup_of_list : 'a list -> 'a;;
(** Ex.: "6" = sup_of_list ["1";"2";"6";"3"] *)

(* val is_first_included_of_list_of_list : 'a list -> 'a list -> bool;; *)

(* val is_first_included_of_small_list_off_big_list : 'a list -> 'a list -> bool;; *)

val are_included_of_string_of_string : string -> string -> bool;;

val is_substring_of_string_of_string : string -> string -> bool;;

val duplicated_elements_of_list : ('a -> 'a -> int) -> 'a list -> 'a list;;

val difference_of_float_list_of_float_list : float list -> float list -> float list;;

val addition_of_float_list_of_float_list : float list -> float list -> float list;;

val product_of_float_list_of_float_list : float list -> float list -> float list;;

val division_of_float_list_of_float_list : float list -> float list -> float list;;

val cosinus_of_float_list_of_float_list : float list -> float list -> float;;

val norm2_of_float_list : float list -> float;;

val norm_of_float_list : float list -> float;;

val are_head_coinciding_of_list_of_list : 'a list -> 'a list -> bool;;

val are_tail_coinciding_of_list_of_list : 'a list -> 'a list -> bool;;

val are_included_of_small_list_of_big_list : 'a list -> 'a list -> bool;;

val are_included_of_list_of_list : 'a list -> 'a list -> bool;;

val are_included_sets_of_small_list_of_big_list : 'a list -> 'a list -> bool;;

val are_included_sets_of_list_of_list : 'a list -> 'a list -> bool;;

val is_sublist_of_list_of_list : 'a list -> 'a list -> bool;;

val head_n_remainder_list_of_predicate_of_list : ('a -> bool) -> 'a list -> 'a * 'a list;;  
val first_trio_n_remainder_list_off_list : 'a list -> 'a Trio_t.trio * 'a list;; 
val first_elements_n_remainder_of_count_off_list : int -> 'a list -> 'a list * 'a list;; 
val first_duo_n_remainder_list_off_list : 'a list -> 'a Duo_t.duo * 'a list;; 

