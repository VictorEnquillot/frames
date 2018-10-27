open Gentest_v;;

testing "Let_b_off_t_argument Caml_paragraph_value_v";;

(* toplevel 
   #use "tlet_b_off_t_argument_caml_paragraph_value_v.ml";; 
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
module Cst_v = Constructor_symbol_tree_v
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

let pth_cnt_atsd = Cmt_v.constructor_path_of_constructor_tag_of_constructor_tag_tree mrk_cnt_atsd mrk_cnt_t;;

(* Constructor "atom_twotied_single_double" *)

testi 0 (
pth_cnt_atsd 
(* : Constructor_path_t.constructor_path *)
=
[mrk_cnt_atsd; mrk_cnt_atw; mrk_cnt_atm]
);;

testi 1 (
Cpf_v.caml_line_symbol_list_off_caml_paragraph_formula  (Cpf_v.retrieve mrk_cnt_atsd kyl_cpg_foa)
(* : Caml_line_symbol_t.caml_line_symbol list *) 
=
[
 Caml_line_symbol_t.Let_b_off_t_function_symbol;
 Caml_line_symbol_t.Let_u_u_off_t_t_in_symbol;
 Caml_line_symbol_t.B_off_u_u_symbol
]
);;

testi 2 (
Cst_v.son_constructor_symbol_list_of_constructor_symbol smb_cnt_atsd
(* : Constructor_symbol_t.constructor_symbol list *)
=
[
 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Leaf_constructor_fictive_symbol
    (Constructor_symbol_t.Constructor_leave_symbol "n_sd"))
]
);;

testi 3 (
 Cpv_v.path_constructor_son_list pth_cnt_atsd
(* : Constructor_path_t.constructor_path list *)
=
[
 [(Constructor_path_t.Cnm_t.Cns_t.Constructor_fictive_symbol
     (Constructor_path_t.Cnm_t.Cns_t.Leaf_constructor_fictive_symbol
	(Constructor_path_t.Cnm_t.Cns_t.Constructor_leave_symbol
           "n_sd")),
   4); mrk_cnt_atsd; mrk_cnt_atw; mrk_cnt_atm]
]
);;
 
testi 4 (
Cpv_v.make pth_cnt_atsd kyl_cpg_foa
(* : Caml_line_value_t.caml_line_value *)
=
[
"let atom_twotied_single_double_symbol_off_atom_symbol smb_atm =";
 "  let smb_atd = atom_twotied_symbol_off_atom_symbol smb_atm in";
 "    Ats_t.atom_twotied_single_double_symbol_off_atom_twotied_symbol smb_atd";
]
);;
