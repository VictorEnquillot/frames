(** {3 A Tree_bunch data structure functionalities .} *)

(** {6 Making.} *)

val make : 'a -> 'a Tree_t.tree ->
 'a Tree_bunch_t.tree_bunch
;;

(** {6 Extracting.} *)

val ankle_off_tree_bunch : 'a Tree_bunch_t.tree_bunch ->
  'a
;;

val grape_off_tree_bunch : 'a Tree_bunch_t.tree_bunch -> 
  'a Tree_t.tree
;;

val list_off_tree_bunch : 'a Tree_bunch_t.tree_bunch -> 
  'a list
;;

val tree_off_tree_bunch_list : 'a Tree_bunch_t.tree_bunch list ->
      'a Tree_t.tree
;;

val tree_of_tree_bunch_of_tree : 'a Tree_bunch_t.tree_bunch -> 'a Tree_t.tree -> 
	'a Tree_t.tree
;;

val map : ('a -> 'b) -> 
  'a Tree_bunch_t.tree_bunch ->
    'b Tree_bunch_t.tree_bunch
;; 

val iter : ('a -> unit) -> 
  'a Tree_bunch_t.tree_bunch ->
    unit
;; 

val map2 : ('a -> 'b -> 'c) ->
  'a Tree_bunch_t.tree_bunch -> 
    'b Tree_bunch_t.tree_bunch ->
      'c Tree_bunch_t.tree_bunch
;; 

val name : ('a -> string) -> 
  'a Tree_bunch_t.tree_bunch ->
    string
;;

