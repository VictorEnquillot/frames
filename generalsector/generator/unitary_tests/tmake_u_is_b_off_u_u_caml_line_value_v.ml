open Gentest_v;;

testing "U_is_b_off_u_u Caml_line_value_v";;

(* toplevel 
   #use "tmake_u_is_b_off_u_u_caml_line_value_v.ml";; 
 *)

module Clv_v = Caml_line_value_v
module Cmtp_v = Constructor_tag_tree_provider_v
module Cns_t = Constructor_symbol_t
module Cts_v = Category_symbol_v
module Cpc_v = Caml_paragraph_context_v
module Cps_v = Caml_paragraph_symbol_v
module Ens_v = Entity_symbol_v
module Its_v = Item_symbol_v
module Itv_v = Item_value_v
module Itf_v = Item_formula_v
module Cfs_t = Codefile_symbol_t
module Cfs_v = Codefile_symbol_v
module Tgv_v = Target_value_v
module Tgp_v = Target_value_provider_v
module Tre_t = Tree_t
module Tre_v = Tree_v

let nam_ent = "atom";;
let smb_ent = Ens_v.make nam_ent;;
let smb_cat = Cts_v.category_symbol;;
let smb_cfi = Cfs_v.codefile_implementation;;
let smb_itm = Its_v.querying;;

let val_tgt = Tgv_v.make smb_epr smb_cat smb_cfi;;
Tgp_v.store_force "current" val_tgt;; 

let mrk_cnt_t = Cmtp_v.provide smb_cnt;;
let mrk_cne_t =
    Tre_v.subtree_remove (fun (s, d) -> ( 
      match s with
      | Cns_t.Constructor_fictive_symbol _ -> true
      | _ -> false
)
) mrk_cnt_t;;

let kyl_itm = [("item", Its_v.name smb_itm); ("codefile", Cfs_v.name smb_cfi); ("category", Cts_v.name smb_cat); ("entity", Ens_v.name smb_ent)];;


let frm_itm = Itf_v.retrieve kyl_itm;;
let smb_cpg_t = frm_itm;;

let smb_cpg_l = Tre_v.list_off_tree smb_cpg_t;;
let smb_cpg_25 = List.nth smb_cpg_l 25;;
let ctt_cpg_25 = Cps_v.caml_paragraph_context_off_caml_paragraph_symbol smb_cpg_25;;
let ecmu_25 = Cpc_v.up_entitycategorycodefile_off_caml_paragraph_context ctt_cpg_25;;
let ecmb_25 = Cpc_v.bottom_entitycategorycodefile_off_caml_paragraph_context ctt_cpg_25;;

testi 0 (
Clv_v.make_u_is_b_off_u_u ecmu_25 ecmb_25
(* : Caml_line_value_t.caml_line_value *) 
=
"      Ats_v.is_atom_threetied_single_single_single_symbol_off_atom_threetied_symbol smb_atd"
);;
