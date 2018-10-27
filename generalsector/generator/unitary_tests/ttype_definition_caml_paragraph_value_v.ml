open Gentest_v;;

testing "Type_definition Caml_paragraph_value_v";;

(* toplevel 
   #use "ttype_definition_caml_paragraph_value_v.ml";; 
 *)

module Clv_v = Caml_line_value_v
module Cls_t = Caml_line_symbol_t
module Cmt_v = Constructor_tag_tree_v
module Cmtp_v = Constructor_tag_tree_provider_v
module Cnm_v = Constructor_tag_v
module Cns_v = Constructor_symbol_v
module Cpf_v = Caml_paragraph_formula_v
module Cps_v = Caml_paragraph_symbol_v
module Cpv_v = Caml_paragraph_value_v
module Cts_v = Category_symbol_v
module Ens_v = Entity_symbol_v
module Its_v = Item_symbol_v
module Cfs_t = Codefile_symbol_t
module Cfs_v = Codefile_symbol_v
module Tgp_v = Target_value_provider_v
module Tgv_v = Target_value_v
module Tre_v = Tree_v

let smb_ent = Ens_v.make "atom";;
let smb_cat = Cts_v.make "symbol";;
let smb_cfi = Cfs_v.make "type";;

let val_tgt = Tgv_v.make smb_epr smb_cat smb_cfi ;;
Tgp_v.store_force "current" val_tgt;; 

let smb_cfi_typ = Cfs_t.Type_symbol;;
let smb_cpg_typ = Cps_v.type_definition;;
let kyl_cpg_typ = [("caml_paragraph", "type_definition"); 
		   ("item", "typing"); 
		   ("codefile", "type"); 
		   ("category", "symbol"); 
		   ("entity", "atom")];;
let kyl_cli_typ = ("caml_line", "type_definition") :: kyl_cpg_typ;;

(* Constructor tag tree *)

let mrk_cnt_t = Cmtp_v.provide "atom";;
let smb_cnt_atm = Cns_v.make "atom";;
let mrk_cnt_atm = Cnm_v.make smb_cnt_atm 1;;

let pth_cnt_atm = Cmt_v.constructor_path_of_constructor_tag_of_constructor_tag_tree mrk_cnt_atm mrk_cnt_t;;

let frm_cpg_typ = Cpf_v.retrieve mrk_cnt_atm kyl_cpg_typ;;
let val_cpg_typ = Cpv_v.make pth_cnt_atm kyl_cpg_typ;;

testi 0 (
pth_cnt_atm 
(* : Constructor_path_t.constructor_path *)
=
[mrk_cnt_atm]
);;

testi 1 (
frm_cpg_typ
(* : Caml_paragraph_formula_t.caml_paragraph_formula *)
  =
Caml_paragraph_formula_t.Nonindented
  [
   Caml_paragraph_formula_t.Cls_t.Type_definition_symbol;
   Caml_paragraph_formula_t.Cls_t.Type_pipe_s_of_s_dot_s_symbol;
   Caml_paragraph_formula_t.Cls_t.Type_pipe_s_of_s_dot_s_symbol;
   Caml_paragraph_formula_t.Cls_t.Type_pipe_s_of_s_dot_s_symbol;
   Caml_paragraph_formula_t.Cls_t.Type_pipe_s_of_s_dot_s_symbol;
   Caml_paragraph_formula_t.Cls_t.Type_pipe_s_of_s_dot_s_symbol;
   Caml_paragraph_formula_t.Cls_t.Type_pipe_s_of_s_dot_s_symbol;
   Caml_paragraph_formula_t.Cls_t.Type_pipe_s_of_s_dot_s_symbol;
]
);;

testi 2 (
val_cpg_typ
(* : Caml_paragraph_value_t.caml_paragraph_value *)
=
[
 "type atom_symbol ="; 
 "  | Atom_symbol of Ats_t.atom_symbol";
 "  | Atom_symbol of Ats_t.atom_symbol";
 "  | Atom_symbol of Ats_t.atom_symbol";
 "  | Atom_symbol of Ats_t.atom_symbol";
 "  | Atom_symbol of Ats_t.atom_symbol";
 "  | Atom_symbol of Atom_symbol_t.atom_symbol";
 "  | Atom_symbol of Atom_symbol_t.atom_symbol";
]
);;
