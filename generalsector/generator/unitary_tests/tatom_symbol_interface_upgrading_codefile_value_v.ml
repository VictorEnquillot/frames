open Gentest_v;;

testing "Atom Symbol Interface Codefile_value_v";;

(* toplevel 
   #use "tatom_symbol_interface_codefile_value_v.ml";; 
 *)

let nam_cod = "tatom_symbol_interface_codefile_value_v.ml";; 

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

let nam_ent = "atom";;
let smb_ent = Ens_v.make nam_ent;;
let smb_epr = Ens_v.entity_proper_symbol_of_string nam_ent;;
let smb_ent = Ens_v.make nam_ent;;
let smb_cnt = Cns_v.make smb_ent;;
let smb_cat = Cts_v.category_symbol;;
let smb_cfi = Cfs_v.codefile_type;;

let val_tgt = Tgv_v.make smb_epr smb_cat smb_cfi ;;
Tgp_v.store_force "current" val_tgt;; 

let smb_cfi = Cfs_t.Interface_symbol;;
let frm_cfi = Cff_v.retrieve (smb_cfi, smb_cat);;

let kyl_cfi = [("codefile", Cfs_v.name smb_cfi); ("category", Cts_v.name smb_cat); ("entity", Ens_v.name smb_ent)];;

let nam_fil_cfi = Cfv_v.codefile_file_name_of_key_list kyl_cfi;;
let val_cfi = Cfv_v.make kyl_cfi;;

testi 0 (
frm_cfi
(* Item_symbol_t.item_symbol list *) 
= 
[Its_v.heading;
 Its_v.naming;
 Its_v.printing;
 Its_v.extracting;
 Its_v.querying;
 Its_v.upgrading;
 Its_v.including;
 Its_v.ending]
);;

testi 1 (
nam_fil_cfi
(* : string *)
= 
"atom_symbol_v.mli"
);;

(*
testi 2 (
Lst_v.drop_last_element_off_list (Cfv_v.name_list val_cfi) 
(* : string list *) = (* the date makes test fail *)

*)

let oc = Fio_v.open_write_of_string_of_string_of_file_name "tatom_symbol_interface_codefile_value_v" "oc" nam_fil_cfi;; 
Cfv_v.write oc val_cfi;;
close_out oc;

