open Gentest_v;;

testing "Atom Symbol Implementation Extracting Top Caml_paragraph_value_v";;

(* toplevel 
   #use "tatom_symbol_implementation_extracting_top_caml_paragraph_value_v.ml";; 
 *)

let nam_cod = "tatom_symbol_implementation_extracting_top_caml_paragraph_value_v.ml";; 

module Cls_v = Caml_line_symbol_v
module Cmt_v = Constructor_tag_tree_v
module Cmtp_v = Constructor_tag_tree_provider_v
module Cnm_v = Constructor_tag_v
module Cns_v = Constructor_symbol_v
module Cpc_v = Caml_paragraph_context_v
module Cps_t = Caml_paragraph_symbol_t
module Cps_v = Caml_paragraph_symbol_v
module Cpf_v = Caml_paragraph_formula_v
module Cpv_v = Caml_paragraph_value_v
module Cst_v = Constructor_symbol_tree_v
module Cts_v = Category_symbol_v
module Dbt_v = Doublet_v
module Ens_v = Entity_symbol_v
module Itf_v = Item_formula_v
module Cpt_v = Constructor_path_tree_v
module Its_v = Item_symbol_v
module Cfs_t = Codefile_symbol_t
module Cfs_v = Codefile_symbol_v
module Tgp_v = Target_value_provider_v
module Tgv_v = Target_value_v
module Tre_v = Tree_v

let nam_ent = "atom";;
let smb_ent = Ens_v.make nam_ent;;
let smb_cnt = Cns_v.make smb_ent;;
let smb_cat = Cts_v.category_symbol;;
let smb_cfi = Cfs_v.codefile_implementation;;
let smb_itm = Its_v.extracting;;

let kyl_itm = [("item", Its_v.name smb_itm); ("codefile", Cfs_v.name smb_cfi); ("category", Cts_v.name smb_cat); ("entity", Ens_v.name smb_ent)];;

let mrk_cnt_t = Cmtp_v.provide smb_cnt;;
let mrk_cnt = Tre_v.root_off_tree mrk_cnt_t;; 

let pth_cnt_t = Cpt_v.constructor_path_tree_of_constructor_tag_tree mrk_cnt_t;;
let pth_cnt = Tre_v.root_off_tree pth_cnt_t;;
let pth_cnt_l = Tre_v.list_off_tree pth_cnt_t;;

let ctt_cpg_t = Cpc_v.caml_paragraph_context_tree_of_constructor_tag_tree_of_item_key_list mrk_cnt_t kyl_itm;;
let ctt_cpg_l = Tre_v.list_off_tree ctt_cpg_t;;
let ctt_cpg = Tre_v.root_off_tree ctt_cpg_t;; 

let smb_cpg = Cps_v.bottom_caml_paragraph_symbol_of_bottom_caml_paragraph_context ctt_cpg;;
let smb_cnt = Dbt_v.left_off_doublet mrk_cnt;;

let smb_cns_l = Cst_v.anyson_constructor_symbol_list_of_constructor_symbol smb_cnt;;

let frm_cpg = Cpf_v.retrieve smb_cpg;;
let smb_cli_l = frm_cpg;;
let val_cpg = Cpv_v.make smb_cpg;;

testi 0 (
mrk_cnt
(* : Cmtp_v.Csdt_t.Cnm_t.constructor_tag *)
=
(Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_proper_symbol
  (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_several_symbol "atom"),
 [1])
);;

testi 1 (
pth_cnt
(* : Constructor_path_t.constructor_path *)
=
[mrk_cnt]
);;

testi 2 (
frm_cpg 
(* : Caml_paragraph_formula_t.caml_paragraph_formula *)
=
  [Caml_paragraph_formula_t.Cls_t.Constant_symbol
    (Caml_paragraph_formula_t.Cls_t.Comment_line_item_symbol
      ([(Caml_paragraph_formula_t.Cls_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
          (Caml_paragraph_formula_t.Cls_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
            "atom"),
         [1])],
       [("item", "extracting"); ("codefile", "implementation");
        ("category", "symbol"); ("entity", "atom")]))]
);;

testi 3 (
val_cpg
(* : Caml_paragraph_value_t.caml_paragraph_value *)
= 
["(** {6 Extracting.} *)"]
);;
