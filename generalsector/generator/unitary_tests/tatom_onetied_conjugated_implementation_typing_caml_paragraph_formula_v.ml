open Gentest_v;;

testing "Atom_onetied_conjugated Caml_paragraph_types_definitions_formula_v";;

(* toplevel 
   #use "tatom_onetied_conjugated_caml_paragraph_types_definitions_formula_v.ml";; 
 *)

module Cls_v = Caml_line_symbol_v
module Cmt_v = Constructor_tag_tree_v
module Cmtp_v = Constructor_tag_tree_provider_v
module Cnm_v = Constructor_tag_v
module Cns_v = Constructor_symbol_v
module Cpc_v = Caml_paragraph_context_v
module Cpf_v = Caml_paragraph_formula_v
module Cps_t = Caml_paragraph_symbol_t
module Cps_v = Caml_paragraph_symbol_v
module Cst_v = Constructor_symbol_tree_v
module Cts_v = Category_symbol_v
module Dbt_v = Doublet_v
module Ens_v = Entity_symbol_v
module Its_v = Item_symbol_v
module Cfs_t = Codefile_symbol_t
module Cfs_v = Codefile_symbol_v
module Tgp_v = Target_value_provider_v
module Tgv_v = Target_value_v
module Tre_v = Tree_v

let nam_ent = "atom_onetied_conjugated";;
let smb_ent = Ens_v.make nam_ent;;
let smb_cat = Cts_v.category_symbol;;
let smb_cfi = Cfs_v.codefile_type;;
let smb_itm = Its_v.typing;;
let smb_epr = Ens_v.entity_proper_symbol_of_string nam_ent;;
let smb_ent = Ens_v.make nam_ent;;
let smb_cnt = Cns_v.make smb_ent;;

let val_tgt = Tgv_v.make smb_epr smb_cat smb_cfi;;
Tgp_v.store_force "current" val_tgt;; 

let kyl_itm = [("item", Its_v.name smb_itm); ("codefile", Cfs_v.name smb_cfi); ("category", Cts_v.name smb_cat); ("entity", Ens_v.name smb_ent)];;

let mrk_cnt_t = Cmtp_v.provide smb_cnt;;
let mrk_cnt = Tre_v.root_off_tree mrk_cnt_t;; 
let pth_cnt = [mrk_cnt];;

let ctt_cpg = Cpc_v.make pth_cnt kyl_itm;;
let smb_cpg = Cps_v.bottom_caml_paragraph_symbol_of_bottom_caml_paragraph_context ctt_cpg;;
let smb_cnt = Dbt_v.left_off_doublet mrk_cnt;;

let ctt_cps_l = Cpc_v.son_caml_paragraph_context_list_off_caml_paragraph_context ctt_cpg;;
let frm_cpg = Cpf_v.retrieve smb_cpg;;

testi 0 (
pth_cnt
(* : Constructor_path_t.constructor_path *)
=
[mrk_cnt]
);;

testi 1 (
frm_cpg 
(* : Caml_paragraph_formula_t.caml_paragraph_formula *)
=
[Caml_paragraph_formula_t.Cls_t.Singlet_symbol
  (Caml_paragraph_formula_t.Cls_t.Type_definition_symbol
    ([(Caml_paragraph_formula_t.Cls_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
        (Caml_paragraph_formula_t.Cls_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
          (Caml_paragraph_formula_t.Cls_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_nodeoneline_symbol
            "atom_onetied_conjugated")),
       [1])],
     [("item", "typing"); ("codefile", "type"); ("category", "symbol");
      ("entity", "atom_onetied_conjugated")]));
 Caml_paragraph_formula_t.Cls_t.Constant_symbol
  (Caml_paragraph_formula_t.Cls_t.Basic_type_line_symbol "o_c");
 Caml_paragraph_formula_t.Cls_t.Constant_symbol
  Caml_paragraph_formula_t.Cls_t.Double_semicolon_symbol]
);;

