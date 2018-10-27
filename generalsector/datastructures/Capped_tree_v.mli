(** {3 The Capped_tree data structure functionalities.} *)

(** {6 Making.} *)

val make : 
    'a -> 'b Tree_t.tree list ->
      ('a, 'b) Capped_tree_t.capped_tree 
;;

(** {6 Extracting.} *)

val cap_off_capped_tree : 
    ('a, 'b) Capped_tree_t.capped_tree ->
      'a	 
;;
 
val tree_list_off_capped_tree :
 ('a, 'b) Capped_tree_t.capped_tree ->
   'b Tree_t.tree list
;;
 
(** {6 Iterating.} *)

val map : ('c -> 'a) -> ('n -> 'b) ->
  ('c, 'n) Capped_tree_t.capped_tree ->
  ('a, 'b) Capped_tree_t.capped_tree
;;

val iter : ('c -> unit) -> ('n -> unit) -> 
  ('c, 'n) Capped_tree_t.capped_tree ->
    unit
;;

val map2 : ('c -> 'd -> 'a ) -> ('n -> 'm -> 'b ) -> 
    ('c, 'n) Capped_tree_t.capped_tree -> 
    ('d, 'm) Capped_tree_t.capped_tree -> 
    ('a, 'b) Capped_tree_t.capped_tree 
;;

(** {6 Converting.} *)

val name : 
    ('a -> string) -> ('b -> string) ->
      ('a, 'b) Doublet_t.doublet ->
	string
;;
