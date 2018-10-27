open Gentest_v;;

testing "Polypeptide Symbol Type Codefile_value_v";;

(* toplevel 
   #use "tpolypeptide_symbol_type_codefile_value_v.ml";; 
 *)

let nam_cod = "tpolypeptide_symbol_type_codefile_value_v.ml";; 

module Cns_v = Constructor_symbol_v
module Cts_v = Category_symbol_v
module Ens_v = Entity_symbol_v
module Fio_v = Fileio_v
module Its_v = Item_symbol_v
module Lst_v = List_v
module Cff_v = Codefile_formula_v
module Cfs_t = Codefile_symbol_t
module Cfs_v = Codefile_symbol_v
module Cfv_v = Codefile_value_v
module Tgp_v = Target_value_provider_v
module Tgv_v = Target_value_v

let nam_ent = "polypeptide";;
let smb_ent = Ens_v.make nam_ent;; 
let smb_epr = Ens_v.entity_proper_symbol_of_string nam_ent;;
let smb_ent = Ens_v.make nam_ent;;
let smb_cnt = Cns_v.make smb_ent;;
let smb_cat = Cts_v.category_symbol;;
let smb_cfi = Cfs_v.codefile_type;;

(*
let val_tgt = Tgv_v.make smb_epr smb_cat smb_cfi ;;
Tgp_v.store_force "current" val_tgt;; 
*)

let frm_cfi = Cff_v.retrieve (smb_cfi, smb_cat);;

let kyl_cfi = [("codefile", Cfs_v.name smb_cfi); ("category", Cts_v.name smb_cat); ("entity", Ens_v.name smb_ent)];;

let nam_fil_cfi = Cfv_v.codefile_file_name_of_key_list kyl_cfi;;
let val_cfi = Cfv_v.make kyl_cfi;;

testi 0 (
frm_cfi
(* Item_symbol_t.item_symbol list *) 
= 
[Its_v.heading;
 Its_v.modules;
 Its_v.typing;
 Its_v.ending]
);;

testi 1 (
Lst_v.drop_last_element_off_list (Cfv_v.name_list val_cfi) 
(* : string list *) = (* the date makes test fail *)

["(** {3 A Symbol for a Polypeptide.} *)";
 "(** {6 Modules.} *)module Prs_t = Polypeptide_regular_symbol_t\nmodule Pps_t = Polyproline_symbol_t\nmodule Pgs_t = Polyglycine_symbol_t";
 "(** {6 Typing.} *)type polypeptide_symbol =\n  | Polypeptide_regular_symbol of Prs_t.polypeptide_regular_symbol\n  | Polyproline_symbol of Pps_t.polyproline_symbol\n  | Polyglycine_symbol of Pgs_t.polyglycine_symbol\n;;"]
);;

testi 2 (
nam_fil_cfi
(* : string *)
= 
"polypeptide_symbol_t.ml"
);;

let oc = Fio_v.open_write_of_string_of_string_of_file_name nam_cod "oc" nam_fil_cfi;; 
Cfv_v.write oc val_cfi;;
close_out oc;

