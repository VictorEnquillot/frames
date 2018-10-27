(** {3 The functionalities for a Doublet_tree of all Caml_paragraph_symbol for an Entity.}  *)

let nam_cod = "Caml_paragraph_value_tree_v";;

(** {6 Modules.} *)

module Cpst_v = Caml_paragraph_symbol_tree_v
module Tre_v = Tree_v 

(** {6 Making.} *)

let make nam_ent =
  let smb_cnt_t = Cpst_v.make nam_ent in
  Tre_v.node_n_depth_tree_of_tree smb_cnt_t
;;
