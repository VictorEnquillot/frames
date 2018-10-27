(** {3 The functionalities for a canonical indexed Tree.} *)

let nam_mod = "Sole_indexed_tree_v.ml"

(** {6 Modules.} *)


(** {6 Making.} *)

let make tre =
  let sid_t = Sole_index_v.sole_index_tree_of_tree tre in
  Tree_v.map2 (fun n i -> (n, i)) tre sid_t  
;;

let sole_index_list_of_node_of_sole_indexed_tree nod nni_t =
  let nni_l = Tree_v.node_filter_of_node_predicate_off_tree 
      (fun (n, i) -> n = nod) nni_t in
  List.map Doublet_v.right_off_doublet nni_l
;;

let sole_index_list_of_node_of_tree nod tre =
  let nni_t = make tre in
  sole_index_list_of_node_of_sole_indexed_tree nod nni_t
;;

let node_of_sole_index_of_tree sid tre =
  let nni_t = make tre in
  let nni_l = Tree_v.node_filter_of_node_predicate_off_tree (fun (n, i) -> i = sid) nni_t in
  let nni = 
    try List_v.element_off_one_element_list nni_l
    with Failure "Only_one_element:List_v.element_off_one_element_list" ->
      Error_messages_v.print_fatal_error nam_mod
	"node_of_sole_index_of_tree"
	"Inner is unique" "Inner is not unique" "check"
  in
  Doublet_v.left_off_doublet nni
;;

let sole_index_path_of_sole_index_of_tree sid tre =
  let nod = node_of_sole_index_of_tree sid tre in
  let nni_t = make tre in
  Tree_v.path_of_node_off_tree (nod, sid) nni_t
;;

let path_of_sole_index_of_tree sid tre =
  let sid_pth = 
    sole_index_path_of_sole_index_of_tree sid tre 
  in
  List.map Doublet_v.left_off_doublet sid_pth
;;

