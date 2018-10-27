(** {3 The functionalities fro a Datastructure Tree of Entitycategorycodefile.} *)

module Cstp_v = Constructor_symbol_tree_provider_v
module Cns_v = Constructor_symbol_v
module Cpc_v = Caml_paragraph_context_v
module Ecc_v = Entitycategorycodefile_v
module Tre_v = Tree_v
module Kyl_v = Key_list_v

let make kyl_itm =
  let smb_cat = Kyl_v.category_symbol_off_key_list kyl_itm in
  let smb_cfi = Kyl_v.codefile_symbol_off_key_list kyl_itm in
  let smb_ent = Kyl_v.entity_symbol_off_key_list kyl_itm in 

  let smb_cnt = Cns_v.make smb_ent in
  let smb_cnt_t = Cstp_v.provide smb_cnt in 
  let smb_ent_t = Tre_v.map Cns_v.entity_symbol_off_constructor_symbol smb_cnt_t in
 
  Tre_v.map (fun e -> Ecc_v.make e smb_cat smb_cfi) smb_ent_t
;;

let datastructure_entitycategorycodefile_list_of_key_list kyl_itm =
  let ecc_t = make kyl_itm in
  Tre_v.list_off_tree ecc_t 
;;
(*
let top_entitycategorycodefile_off_datastructure_triplet dst_trp =
  Trp_v.left_off_triplet dst_trp 
;;

let kind_entitycategorycodefile_off_datastructure_triplet dst_trp =
  Trp_v.middle_off_triplet dst_trp 
;;

let son_entitycategorycodefile_list_off_datastructure_triplet dst_trp =
  Trp_v.right_off_triplet dst_trp 
;;

let top_entitycategorycodefile_off_caml_paragraph_context ctt_cpg =
  let dst_trp = datastructure_triplet_of_caml_paragraph_context ctt_cpg in
  Trp_v.left_off_triplet dst_trp 
;;

let kind_entitycategorycodefile_off_caml_paragraph_context ctt_cpg =
  let dst_trp = datastructure_triplet_of_caml_paragraph_context ctt_cpg in
  Trp_v.middle_off_triplet dst_trp 
;;

let son_entitycategorycodefile_list_off_caml_paragraph_context ctt_cpg =
  let dst_trp = datastructure_triplet_of_caml_paragraph_context ctt_cpg in
  Trp_v.right_off_triplet dst_trp 
;;
*)
