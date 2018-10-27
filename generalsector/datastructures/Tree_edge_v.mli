(** {3 The functionalities for a Edge 
    between a Fragment Data and Bridge Symbol. *)

(** {6 From Pair.} *)

val make : 'a -> 'a ->
  'a Tree_edge_t.edge 
;;

val left_off_edge :  'a  Tree_edge_t.edge ->
  'a 
;;

val right_off_edge : 'a  Tree_edge_t.edge ->
  'a 
;;

(** {6 Extracting.} *)

val sonedge_list_off_tree : 'a Tree_t.tree ->
  'a Tree_edge_t.edge list
;;
(** [let l = sonedge_list_off_tree t] 
    is the list of all edges joining the root of t and its sons.*)

val edge_list_off_tree : 'a Tree_t.tree ->
  'a Tree_edge_t.edge list
;;
(** [let l = edge_list_off_tree t] 
    is the list of all edges inside t.*)

val edge_filter : ('a Tree_edge_t.edge -> bool) -> 'a Tree_t.tree ->
  'a Tree_edge_t.edge list
;;

val edge_list_of_left_element_predicate_off_tree :
    ('a -> bool) -> 'a Tree_t.tree ->
      'a Tree_edge_t.edge list
;;

val edge_list_of_right_element_predicate_off_tree :
    ('a -> bool) -> 'a Tree_t.tree ->
      'a Tree_edge_t.edge list
;;

(** {6 Converting.} *)

val print : (Format.formatter -> 'a -> unit) ->
  Format.formatter -> 'a Tree_edge_t.edge ->
    unit
;;


