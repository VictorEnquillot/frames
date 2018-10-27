(** {3 The functionalities for a Tag Tree of all Constructor for an Entity.}  *)

let nam_cod = "Constructor_tag_tree_v";;

(** {6 Modules.} *)

module Cst_v = Constructor_symbol_tree_v
module Dbt_v = Doublet_v
module Tcit_v = Tree_canonical_indexed_tree_v 
module Tre_v = Tree_v

(** {6 Making.} *)

let make smb_cnt =
  let smb_cnt_t = Cst_v.make smb_cnt in
  Tcit_v.make smb_cnt_t
;;

(** {6 Extracting.} *)

let constructor_path_of_constructor_tag_of_constructor_tag_tree mrk_cnt mrk_cnt_t =
  Tre_v.path_of_node_of_tree mrk_cnt mrk_cnt_t
;;

let anyson_constructor_tag_list_of_constructor_tag_tree mrk_cnt_t =
  Tre_v.anysonnode_list_off_tree mrk_cnt_t
;;

let up_constructor_tag_list_of_constructor_tag_tree mrk_cnt_t =
  Tre_v.father_list_off_tree mrk_cnt_t
;;

