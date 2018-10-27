(** {3 The functionalities for a Doublet_tree of all Constructor_symbol for an Entity.}  *)

let nam_cod = "Constructor_path_tree_v";;

(** {6 Modules.} *)

module Cmt_v = Constructor_tag_tree_v
module Tre_v = Tree_v 

(** {6 Making.} *)

let constructor_path_tree_of_constructor_tag_tree mrk_cnt_t =
  Tre_v.map 
    (fun m -> 
      Cmt_v.constructor_path_of_constructor_tag_of_constructor_tag_tree 
	m mrk_cnt_t) mrk_cnt_t
;;

let make smb_cnt =
  let mrk_cnt_t = Cmt_v.make smb_cnt in
  constructor_path_tree_of_constructor_tag_tree mrk_cnt_t
;;

