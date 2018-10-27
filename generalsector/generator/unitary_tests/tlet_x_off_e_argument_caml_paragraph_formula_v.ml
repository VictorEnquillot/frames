open Gentest_v;;

testing "Let_b_off_t_argument Caml_paragraph_formula_v";;

(* toplevel 
   #use "tlet_b_off_t_argument_caml_paragraph_formula_v.ml";; 
 *)

module Cls_t = Caml_line_symbol_t
module Cls_v = Caml_line_symbol_v
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

let smb_ent = Ens_v.make "atom";;
let smb_cat = Cts_v.make "symbol";;
let smb_cfi = Cfs_v.make "function";;

let val_tgt = Tgv_v.make smb_epr smb_cat smb_cfi ;;
Tgp_v.store_force "current" val_tgt;; 

let smb_cfi_fun = Cfs_t.Implementation_symbol;;
let kyl_cpg_foa = [("caml_paragraph", "function_b_off_t_t_argument"); 
		   ("item", "typing"); 
		   ("codefile", "type"); 
		   ("category", "symbol"); 
		   ("entity", "atom")];;

(* Constructor tag tree *)

let mrk_cnt_t = Cmtp_v.provide "atom";;

(* Path constructor tag *)

let smb_cnt_atm = Cns_v.make "atom";;
let mrk_cnt_atm = Cnm_v.make smb_cnt_atm 1;;

let smb_cnt_atw = Cns_v.make "atom_twotied";;
let mrk_cnt_atw = Cnm_v.make smb_cnt_atw 2;;

let smb_cnt_atsd = Cns_v.make "atom_twotied_single_double";;
let mrk_cnt_atsd = Cnm_v.make smb_cnt_atsd 3;;

testi 0 (
 mrk_cnt_atw
(* : Constructor_tag_t.constructor_tag *)
=
(Constructor_tag_t.Cns_t.Constructor_proper_symbol
  (Constructor_tag_t.Cns_t.Constructor_several_symbol "atom_twotied"),
 2)
);;

testi 1 (
Cpf_v.retrieve mrk_cnt_atw kyl_cpg_foa
(* : Cls_t.caml_line_symbol list *) =
Caml_paragraph_formula_t.Indented
  [
   Caml_paragraph_formula_t.Cls_t.Let_b_off_t_function_symbol;
   Caml_paragraph_formula_t.Cls_t.Let_u_u_off_t_t_in_symbol;
   Caml_paragraph_formula_t.Cls_t.B_off_u_u_symbol;
 ] 
);;

(* atom_twotied_single_double *)

testi 2 (
 mrk_cnt_atsd
(* : Constructor_tag_t.constructor_tag *)
=
(Constructor_tag_t.Cns_t.Constructor_proper_symbol
  (Constructor_tag_t.Cns_t.Constructor_oneline_symbol
    (Constructor_tag_t.Cns_t.Constructor_nodeoneline_symbol
      "atom_twotied_single_double")),
 3)
);;

testi 3 (
Cpf_v.retrieve mrk_cnt_atsd kyl_cpg_foa
(* : Caml_paragraph_formula_t.caml_paragraph_formula *)
=
Caml_paragraph_formula_t.Indented
 [Caml_paragraph_formula_t.Cls_t.Let_b_off_t_function_symbol;
  Caml_paragraph_formula_t.Cls_t.Let_u_u_off_t_t_in_symbol;
  Caml_paragraph_formula_t.Cls_t.B_off_u_u_symbol]
);;

