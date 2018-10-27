(** {3 The functionalities for a Tag for a Entitycategorycodefile.} *)

module Ecc_v = Entitycategorycodefile_v
module Dbt_v = Doublet_v
module Tci_v = Tree_canonical_index_v

(** {6 Making.} *)

let make smb_cnt tci_cnt =
  Dbt_v.make smb_cnt tci_cnt 
;;

let name mrk_cnt =
  Dbt_v.name Ecc_v.name Tci_v.name mrk_cnt
;;

let entitycategorycodefile_off_entitycategorycodefile_tag mrk_cnt =
  Dbt_v.left_off_doublet mrk_cnt
;;

let entitycategorycodefile_proper_tree_canonical_index_off_entitycategorycodefile_tag mrk_cnt =
  Dbt_v.right_off_doublet mrk_cnt
;;

let entitycategorycodefile_depth_off_entitycategorycodefile_tag mrk_cnt =
  let tci = entitycategorycodefile_proper_tree_canonical_index_off_entitycategorycodefile_tag mrk_cnt in
  List.length tci
;;
