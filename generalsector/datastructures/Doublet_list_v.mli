(** {3 Doublet_list functionalities.} *)

(** {6 Making.} *)

val make : 
    'lft list -> 
      'rgt list -> 
	('lft, 'rgt) Doublet_list_t.doublet_list 
;;

val prepend : 
    'lft -> 
      'rgt -> 
	('lft, 'rgt) Doublet_list_t.doublet_list -> 
	  ('lft, 'rgt) Doublet_list_t.doublet_list 
;;

val left_list_off_doublet_list : 
    ('lft, 'rgt) Doublet_list_t.doublet_list -> 
      'lft list
;;

val right_list_off_doublet_list : 
    ('lft, 'rgt) Doublet_list_t.doublet_list -> 
      'rgt list
;;

val top : 
    ('lft, 'rgt) Doublet_list_t.doublet_list -> 
      ('lft * 'rgt)
;;
(** [let t = top p;;]
     extract the doublet of the Top of a doublet_list [p]. *)

(** {6 Querying.} *)

val has_left :
    'lft -> 
      ('lft, 'rgt) Doublet_list_t.doublet_list -> 
	bool
;;

val has_right :
    'rgt -> 
      ('lft, 'rgt) Doublet_list_t.doublet_list -> 
	bool
;;

(** {6 Extracting.} *)

val find_if_left :
    ('lft -> bool) ->
      ('lft, 'rgt) Doublet_list_t.doublet_list -> 
	('lft * 'rgt)
;;

val find_if_right :
    ('rgt -> bool) ->
      ('lft, 'rgt) Doublet_list_t.doublet_list -> 
	('lft * 'rgt)
;;

val filter_if_left :
    ('lft -> bool) ->
      ('lft, 'rgt) Doublet_list_t.doublet_list -> 
	('lft, 'rgt) Doublet_list_t.doublet_list 
;;

val filter_if_right :
    ('rgt -> bool) ->
      ('lft, 'rgt) Doublet_list_t.doublet_list -> 
	('lft, 'rgt) Doublet_list_t.doublet_list 
;;

val doublet_of_left_off_doublet_list : 
    'lft -> 
      ('lft, 'rgt) Doublet_list_t.doublet_list -> 
	('lft * 'rgt)
;;

val left_of_right_off_doublet_list : 
    'rgt -> 
      ('lft, 'rgt) Doublet_list_t.doublet_list -> 
	'lft
;;
 
val right_of_left_off_doublet_list : 
    'lft -> 
      ('lft, 'rgt) Doublet_list_t.doublet_list -> 
	'rgt
;;

val doublet_of_right_off_doublet_list : 
    'rgt -> 
      ('lft, 'rgt) Doublet_list_t.doublet_list -> 
	('lft * 'rgt)
;;

val doublet_list_of_left_off_doublet_list : 
    'lft -> 
      ('lft, 'rgt) Doublet_list_t.doublet_list -> 
	('lft, 'rgt) Doublet_list_t.doublet_list
;;
(** [let s = extract_doublet_list_of_left_of_doublet_list g p;;]
    extract from [doublet_list] [p] the subdoublet_list [s] starting at the doublet of left [g].*)

val updoublet_list_of_left_off_doublet_list : 
     'lft ->
       ('lft, 'rgt) Doublet_list_t.doublet_list -> 
	 ('lft, 'rgt) Doublet_list_t.doublet_list
;;

val updoublet_list_off_doublet_list : 
    ('lft, 'rgt) Doublet_list_t.doublet_list -> 
      ('lft, 'rgt) Doublet_list_t.doublet_list
;;
(** [let u = updoublet_list_off_doublet_list p;;]
    extract from [doublet_list] [p] the subdoublet_list [u] 
    starting at the second doublet. *)
 
val head_left_off_doublet_list : 
    ('lft, 'rgt) Doublet_list_t.doublet_list -> 
      'lft
;;
(** [let f = head_left_off_doublet_list p;]
    gives the first element the right list.
    Fails if [p] has no Doublet.
    Example: 1 = bottom (Doublet (1, Doublet (2, Top "E")). *)

val head_right_off_doublet_list : 
    ('lft, 'rgt) Doublet_list_t.doublet_list -> 
      'rgt
;;
(** [let f = head_right_off_doublet_list p;]
    gives the right element of the first doublet of the doublet_list [p]. *)

val doublet_count_of_doublet_list : 
    ('lft, 'rgt) Doublet_list_t.doublet_list ->
      int
;;

val head_doublet_off_doublet_list : 
    ('lft, 'rgt) Doublet_list_t.doublet_list -> 
      ('lft * 'rgt)
;;
(** [l = head_doublet_off_doublet_list p;;]
    [l] is the first doublet of the [doublet_list] [p].*)

val nth_doublet_of_int_off_doublet_list : int -> 
  ('lft, 'rgt) Doublet_list_t.doublet_list ->
    ('lft * 'rgt)
;;
 
val doublet_left_once_list_of_left_off_doublet_list :
    'lft -> 
      ('lft, 'rgt) Doublet_list_t.doublet_list -> 
	('lft, 'rgt) Doublet_list_t.doublet_list
;; (* extraction of all doublets with same left element [(l, _); ... ; (l, _)] *)

val doublet_right_once_list_of_right_off_doublet_list :
    'rgt -> 
      ('lft, 'rgt) Doublet_list_t.doublet_list -> 
	('lft, 'rgt) Doublet_list_t.doublet_list
;; (* extraction of all doublets with same right element [(_, r); ... ; (_; r)] *)
 
val first_left_n_right_list_of_doublet_list :
    ('lft, 'rgt) Doublet_list_t.doublet_list -> 
      'lft * ('rgt list)
;; (* 
[("a", [ 1; 2]) ] = once_left_n_right_list_of_doublet_list [("a", 1); ("a", 2); ("b", 3);] 
*)

val once_left_n_right_list_list_of_doublet_list :
    ('lft, 'rgt) Doublet_list_t.doublet_list -> 
      ('lft * ('rgt list)) list
;; (* 
[("a", [ 1; 2]) ] = once_left_n_right_list_of_doublet_list [("a", 1); ("a", 2); ("b", 3);] 
*)

val swap :
    ('lft, 'rgt) Doublet_list_t.doublet_list -> ('rgt, 'lft) Doublet_list_t.doublet_list 

(** {6 Converting.} *)

val int_indexed_list_of_list :
    'a list ->
      ('a, int) Doublet_list_t.doublet_list
;;

val from_one_int_indexed_list_of_list :
    'a list ->
      ('a, int) Doublet_list_t.doublet_list
;;

val index_indexed_list_of_list :
    'a list ->
      ('a, Index_p.index) Doublet_list_t.doublet_list
;;(* ["a"; "b"] -> [("a", 0); ("b", 1)] *)

val int_mintomax_indexed_list_of_minimum_of_list :
    int ->
      'a list ->
	('a, int) Doublet_list_t.doublet_list
;;(* 2 ["a"; "b"] -> [("a", 2); ("b", 3)] *)

val int_maxtomin_indexed_list_of_minimum_of_list :
    int ->
      'a list ->
	('a, int) Doublet_list_t.doublet_list
;;(* 2 ["a"; "b"] -> [("a", 3); ("b", 2)] *)

val ordinal_indexed_list_of_list :
    'a list ->
      ('a, Ordinal_p.ordinal) Doublet_list_t.doublet_list
;;(* ["a"; "b"] -> [("a", 1); ("b", 2)] *)


val triangular_pair_list_of_list :
    'a list -> ('a, 'a) Doublet_list_t.doublet_list
;;(** From a list, a list off all couples (a, b) is obtained. (a,a) pairs are
omitted. *)

val name :
    ('lft -> string) ->
      ('rgt -> string) ->
	('lft, 'rgt) Doublet_list_t.doublet_list -> 
	  string
;;

val name_with_separator :
    ('lft -> string) ->
      ('rgt -> string) ->
	string ->
	  ('lft, 'rgt) Doublet_list_t.doublet_list -> 
	    string
;;

val name_in_column : ('lft -> string) -> ('rgt -> string) -> ('lft, 'rgt) Doublet_list_t.doublet_list -> string;;

(** {6 Iterating.} *)

val list_off_doublet_list :
    ('l -> 'r -> 'a)  ->
      ('l, 'r) Doublet_list_t.doublet_list -> 
	'a list
;;

val map : 
    ('l -> 'm) -> 
      ('r -> 's) -> 
	('l, 'r) Doublet_list_t.doublet_list -> 
	  ('m, 's) Doublet_list_t.doublet_list 
;;

val map_left : 
    ('l -> 'm) -> 
	('l, 'r) Doublet_list_t.doublet_list -> 
	  ('m, 'r) Doublet_list_t.doublet_list 
;;

val map_right : 
    ('r -> 'n) -> 
	('l, 'r) Doublet_list_t.doublet_list -> 
	  ('l, 'n) Doublet_list_t.doublet_list 
;;

val map2 : 
    ('n -> 'p -> 'q) -> 
      ('i -> 'j -> 'k) -> 
	('n, 'i) Doublet_list_t.doublet_list -> 
	  ('p, 'j) Doublet_list_t.doublet_list -> 
	    ('q, 'k) Doublet_list_t.doublet_list 
;;

val iter : 
    ('l -> unit) -> 
      ('r -> unit) -> 
	('l, 'r) Doublet_list_t.doublet_list -> 
	  unit
;;

val iter2 : 
    ('n -> 'p -> unit) -> 
      ('i -> 'j -> unit) -> 
	('n, 'i) Doublet_list_t.doublet_list -> 
	  ('p, 'j) Doublet_list_t.doublet_list -> 
	    unit
;;

val store : 'l -> 'r -> 
  ('l, 'r) Doublet_list_t.doublet_list -> 
    ('l, 'r) Doublet_list_t.doublet_list 
;;
(** Failure "Already_stored:Dbl_v.store" *)

val replace_right_of_right_of_left_off_doublet_list :
    'r -> 
      'l ->
	('l, 'r) Doublet_list_t.doublet_list ->
	  ('l, 'r) Doublet_list_t.doublet_list 
;;

val sort_by_left : ('l -> 'l -> int) -> ('l, 'r) Doublet_list_t.doublet_list -> ('l, 'r) Doublet_list_t.doublet_list;;

val sort_by_right : ('r -> 'r -> int) -> ('l, 'r) Doublet_list_t.doublet_list -> ('l, 'r) Doublet_list_t.doublet_list;;
