open Gentest_v;;

testing "Atom Symbol Type Typing Caml_paragraph_value_v";;

(* toplevel 
   #use "tatom_symbol_type_typing_caml_paragraph_value_v.ml";; 
 *)

let nam_cod = "tatom_symbol_type_typing_caml_paragraph_value_v.ml";; 

module Clv_v = Caml_line_value_v
module Cls_t = Caml_line_symbol_t
module Cls_v = Caml_line_symbol_v
module Cmt_v = Constructor_tag_tree_v
module Cmtp_v = Constructor_tag_tree_provider_v
module Cnm_v = Constructor_tag_v
module Cns_v = Constructor_symbol_v
module Cpc_v = Caml_paragraph_context_v
module Cpf_v = Caml_paragraph_formula_v
module Cps_v = Caml_paragraph_symbol_v
module Cpv_v = Caml_paragraph_value_v
module Cts_v = Category_symbol_v
module Ens_v = Entity_symbol_v
module Fio_v = Fileio_v
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
let ctt_cps = Cpc_v.son_caml_paragraph_context_list_off_caml_paragraph_context ctt_cpg;;

let smb_cpg = Cps_v.bottom_caml_paragraph_symbol_of_bottom_caml_paragraph_context ctt_cpg;;
let nam_cpg = Cps_v.name smb_cpg;;
let frm_cpg = Cpf_v.retrieve smb_cpg;;
let ctt_cps_l = Cpc_v.son_caml_paragraph_context_list_off_caml_paragraph_context ctt_cpg;;

let nam_fil_cpg = Cpv_v.caml_paragraph_file_name_of_caml_paragraph_symbol smb_cpg;;
let val_cpg = Cpv_v.make smb_cpg;;

testi 0 (
smb_cpg 
(* : Caml_paragraph_symbol_t.caml_paragraph_symbol *)
=
Cps_v.type_definition ctt_cpg
);;

testi 1 (
frm_cpg 
(* : Caml_paragraph_formula_t.caml_paragraph_formula *)
=
[
Cls_v.type_definition ctt_cpg;
Cls_v.type_pipe_s_of_s_dot_s (List.nth ctt_cps_l 0);
Cls_v.type_pipe_s_of_s_dot_s (List.nth ctt_cps_l 1);
Cls_v.type_pipe_s_of_s_dot_s (List.nth ctt_cps_l 2);
Cls_v.type_pipe_s_of_s_dot_s (List.nth ctt_cps_l 3);
Cls_v.type_pipe_s_of_s_dot_s (List.nth ctt_cps_l 4);
Cls_v.type_pipe_s_of_s_dot_s (List.nth ctt_cps_l 5);
Cls_v.type_pipe_s_of_s_dot_s (List.nth ctt_cps_l 6);
Caml_paragraph_formula_t.Cls_t.Constant_symbol
 Caml_paragraph_formula_t.Cls_t.Double_semicolon_symbol
]
);;
(*
let c = Cns_v.constructor_symbol_of_entityname "error_messages";;
*)
testi 2 (
ctt_cps_l 
(* : Caml_paragraph_context_t.caml_paragraph_context list *)
=
  [([(Cns_v.constructor_symbol_of_entityname "atom_zerotied", [1; 1]);
     ((Cns_v.constructor_symbol_of_entityname "atom"), [1])],
    kyl_itm);
   ([((Cns_v.constructor_symbol_of_entityname
         "atom_onetied"),
      [1; 1]);
     ((Cns_v.constructor_symbol_of_entityname
         "atom"),
      [1])],
    kyl_itm);
   ([((Cns_v.constructor_symbol_of_entityname
         "atom_twotied"),
      [1; 1]);
     ((Cns_v.constructor_symbol_of_entityname
         "atom"),
      [1])],
    kyl_itm);
   ([((Cns_v.constructor_symbol_of_entityname
         "atom_threetied"),
      [1; 1]);
     ((Cns_v.constructor_symbol_of_entityname
         "atom"),
      [1])],
    kyl_itm);
   ([((Cns_v.constructor_symbol_of_entityname
         "atom_fourtied"),
      [1; 1]);
     ((Cns_v.constructor_symbol_of_entityname
         "atom"),
      [1])],
    kyl_itm);
   ([((Cns_v.constructor_symbol_of_entityname "atom_fivetied"),
      [1; 1]);
     ((Cns_v.constructor_symbol_of_entityname
         "atom"),
      [1])],
    kyl_itm);
   ([((Cns_v.constructor_symbol_of_entityname
           "atom_sixtied"),
      [1; 1]);
     ((Cns_v.constructor_symbol_of_entityname
         "atom"),
      [1])],
    kyl_itm)]
);;

testi 3 (
val_cpg
(* : Caml_paragraph_value_t.caml_paragraph_value *)
=
["type atom_symbol =";
 "  | Atom_zerotied_symbol of A0s_t.atom_zerotied_symbol";
 "  | Atom_onetied_symbol of A1s_t.atom_onetied_symbol";
 "  | Atom_twotied_symbol of A2s_t.atom_twotied_symbol";
 "  | Atom_threetied_symbol of A3s_t.atom_threetied_symbol";
 "  | Atom_fourtied_symbol of A4s_t.atom_fourtied_symbol";
 "  | Atom_fivetied_symbol of A5s_t.atom_fivetied_symbol";
 "  | Atom_sixtied_symbol of A6s_t.atom_sixtied_symbol"; ";;"]
);;

testi 4 (
nam_fil_cpg
(* : string *)
= 
"atom_symbol_typing_type_definition_t.ml"
);;

let oc = Fio_v.open_write_of_string_of_string_of_file_name nam_cod "oc" nam_fil_cpg;; 
Cpv_v.write oc val_cpg;;
close_out oc;

