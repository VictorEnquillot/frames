open Gentest_v;;

testing "Type_definition Caml_line_value_v";;

(* toplevel 
   #use "ttype_definition_caml_line_value_v.ml";; 
 *)

module Clv_v = Caml_line_value_v
module Cls_t = Caml_line_symbol_t
module Cmt_v = Constructor_tag_tree_v
module Cmtp_v = Constructor_tag_tree_provider_v
module Cnm_v = Constructor_tag_v
module Cns_v = Constructor_symbol_v
module Cpf_v = Caml_paragraph_formula_v
module Cps_v = Caml_paragraph_symbol_v
module Cts_v = Category_symbol_v
module Ens_v = Entity_symbol_v
module Its_v = Item_symbol_v
module Cfs_t = Codefile_symbol_t
module Cfs_v = Codefile_symbol_v
module Tgp_v = Target_value_provider_v
module Tgv_v = Target_value_v
module Tre_v = Tree_v

let nam_ent = "atom";;
let smb_ent = Ens_v.make nam_ent;;
let smb_cat = Cts_v.category_symbol;;
let smb_cfi = Cfs_v.codefile_type;;

let val_tgt = Tgv_v.make smb_epr smb_cat smb_cfi ;;
Tgp_v.store_force "current" val_tgt;; 

let smb_itm = Its_v.typing;;
let kyl_itm = [("item", Its_v.name smb_itm); ("codefile", Cfs_v.name smb_cfi); ("category", Cts_v.name smb_cat); ("entity", Ens_v.name smb_ent)];;

let smb_cpg = Cps_v.type_definition;;
let kyl_cpg = ("caml_paragraph", "type_definition") :: kyl_itm;;

let kyl_cli_tdf = ("caml_line", "type_definition") :: kyl_cpg;;
let kyl_cli_pee = ("caml_line", "type_pipe_se_of_se") :: kyl_cpg;;

(* Constructor tag tree *)
let mrk_cnt_t = Cmtp_v.provide smb_cnt;;
let smb_cnt_atm = Cns_v.make nam_ent;;
let mrk_cnt_atm = Cnm_v.make smb_cnt_atm 1;;

let pth_cnt_atm = Cmt_v.constructor_path_of_constructor_tag_of_constructor_tag_tree mrk_cnt_atm mrk_cnt_t;;

let smb_cnt_atw = Cns_v.make "atom_twotied";;
let mrk_cnt_atw = Cnm_v.make smb_cnt_atw 2;;

let pth_cnt_atw = Cmt_v.constructor_path_of_constructor_tag_of_constructor_tag_tree mrk_cnt_atw mrk_cnt_t;;

let frm_cli_tdf = Clf_v.retrieve pth_cnt_atm kyl_cli_tdf;;
let val_cli_tdf = Clv_v.make pth_cnt_atm kyl_cli_tdf;;

let frm_cli_pee = Clf_v.retrieve pth_cnt_atw kyl_cli_pee;;
let val_cli_pee = Clv_v.make pth_cnt_atw kyl_cli_pee;;

testi 0 (
pth_cnt_atm 
(* : Constructor_path_t.constructor_path *)
=
[mrk_cnt_atm]
);;

testi 1 (
frm_cli_tdf
(* : Clf_v.Clf_t.caml_line_formula *)
=
Clf_v.Clf_t.Singlet
 (Clf_v.Clf_t.Cnm_t.Cns_t.Constructor_proper_symbol
   (Clf_v.Clf_t.Cnm_t.Cns_t.Constructor_several_symbol "atom"),1)
);;

testi 2 (
val_cli_tdf
(* : Caml_line_value_t.caml_line_value *)
= 
"type atom_symbol ="
);;

testi 3 (
frm_cli_pee
(* : Clf_v.Clf_t.caml_line_formula *)
=
Clf_v.Clf_t.Singlet
 (Clf_v.Clf_t.Cnm_t.Cns_t.Constructor_proper_symbol
   (Clf_v.Clf_t.Cnm_t.Cns_t.Constructor_several_symbol "atom_twotied"), 2)
);;

testi 4 (
val_cli_pee
(* : Caml_line_value_t.caml_line_value *)
= 
"  | Atom_twotied_symbol of Ats_t.atom_twotied_symbol"
);;
