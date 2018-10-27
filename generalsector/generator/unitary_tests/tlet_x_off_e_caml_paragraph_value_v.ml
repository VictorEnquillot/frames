open Gentest_v;;

testing "Let_b_off_t_function Caml_paragraph_value_v";;

(* toplevel 
   #use "tlet_b_off_t_function_caml_paragraph_value_v.ml";; 
 *)

module Cls_t = Caml_line_symbol_t
module Cls_v = Caml_line_symbol_v
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
let smb_cfi = Cfs_v.make "function";;

let val_tgt = Tgv_v.make smb_epr smb_cat smb_cfi ;;
Tgp_v.store_force "current" val_tgt;; 

let smb_cfi_fun = Cfs_t.Implementation_symbol;;
let kyl_cpg_fun = [("caml_paragraph", "function_function_b_off_t"); 
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

let pth_cnt_atw = Cmt_v.constructor_path_of_constructor_tag_of_constructor_tag_tree mrk_cnt_atw mrk_cnt_t;;

let pth_cnt_atsd = Cmt_v.constructor_path_of_constructor_tag_of_constructor_tag_tree mrk_cnt_atsd mrk_cnt_t;;

(* Constructor "atom_twotied" *)

testi 0 (
pth_cnt_atw 
(* : Constructor_path_t.constructor_path *)
=
[mrk_cnt_atw; mrk_cnt_atm]
);;

testi 1 (
Cpf_v.retrieve mrk_cnt_atw kyl_cpg_fun
(* : Cpf_v.Cpf_t.caml_line_formula *)
=
Caml_paragraph_formula_t.Nonindented 
[
Caml_paragraph_formula_t.Cls_t.Let_s_off_t_function_symbol;
 Caml_paragraph_formula_t.Cls_t.Pipe_t_dot_s_s_arrow_s_symbol;
 Caml_paragraph_formula_t.Cls_t.Pipe_s_off_t_print_fatal_error_symbol
]
);;

testi 2 (
Cpv_v.make pth_cnt_atw kyl_cpg_fun
(* : Caml_paragraph_value_t.caml_paragraph_value *)
=
[
 "let atom_twotied_symbol_off_atom_symbol = function";
 "  | Ats_t.Atom_twotied_symbol smb_atd -> smb_atd";
 "  | s ->  print_fatal_error\n   \"atom_twotied_symbol_off_atom_symbol\"\n    \"Atom_twotied_symbol\" (name s)"
]
);;

(* Constructor "atom_twotied_single_double" *)

testi 3 (
pth_cnt_atsd 
(* : Constructor_path_t.constructor_path *)
=
[mrk_cnt_atsd; mrk_cnt_atw; mrk_cnt_atm]
);;

testi 4 (
Cpf_v.retrieve mrk_cnt_atsd kyl_cpg_fun
(* : Cpf_v.Cpf_t.caml_line_formula *)
=
Caml_paragraph_formula_t.Nonindented 
[ 
 Caml_paragraph_formula_t.Cls_t.Let_s_off_t_function_symbol;
 Caml_paragraph_formula_t.Cls_t.Pipe_t_dot_s_s_arrow_s_symbol;
 Caml_paragraph_formula_t.Cls_t.Pipe_s_off_t_print_fatal_error_symbol
]
);;

testi 5 (
Cpv_v.make pth_cnt_atsd kyl_cpg_fun
(* : Caml_line_value_t.caml_line_value *)
=
["let atom_twotied_single_double_symbol_off_atom_symbol = function";
 "  | Ats_t.Atom_twotied_single_double_symbol smb_atsd -> smb_atsd";
 "  | s ->  print_fatal_error\n   \"atom_twotied_single_double_symbol_off_atom_symbol\"\n    \"Atom_twotied_single_double_symbol\" (name s)"]
);;
