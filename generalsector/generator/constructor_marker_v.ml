(** {3 The functionalities for a Tag for a Constructor.} *)

module Cns_v = Constructor_symbol_v
module Dbt_v = Doublet_v
module Tci_v = Tree_canonical_index_v

(** {6 Making.} *)

let make smb_cnt tci_cnt =
  Dbt_v.make smb_cnt tci_cnt 
;;

let name mrk_cnt =
  Dbt_v.name Cns_v.name Tci_v.name mrk_cnt
;;

let constructor_symbol_off_constructor_tag mrk_cnt =
  Dbt_v.left_off_doublet mrk_cnt
;;

let constructor_proper_tree_canonical_index_off_constructor_tag mrk_cnt =
  Dbt_v.right_off_doublet mrk_cnt
;;

let constructor_depth_off_constructor_tag mrk_cnt =
  let tci = constructor_proper_tree_canonical_index_off_constructor_tag mrk_cnt in
  List.length tci
;;
