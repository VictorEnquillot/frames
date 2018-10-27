(** {3 The functionalities for a Edge in a Tree. *)

let nam_mod = "Tree_edge_v";;


(** {6 From Pair.} *)

let make = Pair_v.make
;;

let left_off_edge = Pair_v.left_off_pair
;;

let right_off_edge = Pair_v.right_off_pair
;;

let print = Pair_v.print
;;

(** {6 Specific.} *)

let sonedge_list_off_tree = function
  | Tree_t.Empty 
  | Tree_t.Leaf _ -> []
  | Tree_t.Inner (rot, tre_l) as t ->
      let son_l = Tree_v.topson_node_list_off_tree t in  
      List.map (fun s -> (rot, s)) son_l
;;

let rec edge_list_off_tree = function
  | Tree_t.Empty 
  | Tree_t.Leaf _ -> []
  | Tree_t.Inner (rot, tre_l) as t ->
      (sonedge_list_off_tree t) @
      List.flatten (List.map edge_list_off_tree tre_l)
;;

let edge_filter p tre =
  let edg_l = edge_list_off_tree tre in
  List.filter p edg_l
;;

let edge_list_of_left_element_predicate_off_tree elt_p tre =
  let edg_p = fun (l, r) -> (elt_p l) && (r=r) in
  edge_filter edg_p tre 
  (* all pairs (elt, bridge_head) from tree *)
;;

let edge_list_of_right_element_predicate_off_tree elt_p tre =
  let edg_p = fun (l, r) -> l=l && (elt_p r) in
  edge_filter edg_p tre 
  (* all pairs (elt, bridge_head) from tree *)
;;

