open Gentest_v;;

testing "Codefile_value_v";;

(* toplevel 
   #use "tcodefile_value_v.ml";; 
 *)

module Cts_v = Category_symbol_v
module Ens_v = Entity_symbol_v
module Its_v = Item_symbol_v
module Cff_v = Codefile_formula_v
module Cfs_t = Codefile_symbol_t
module Cfs_v = Codefile_symbol_v
module Cfv_v = Codefile_value_v
module Fio_v = Fileio_v
module Tgv_v = Target_value_v
module Tgp_v = Target_value_provider_v

let smb_ent = Ens_v.make "atom";;
let smb_cat = Cts_v.make "symbol";;
let smb_cfi = Cfs_v.make "type";;

let val_tgt = Tgv_v.make smb_epr smb_cat smb_cfi ;;
Tgp_v.store_force "current" val_tgt;; 

let smb_abb = Its_v.upgrading;;

let smb_cfi_typ = Cfs_t.Type_symbol;;
let frm_cfi_typ = Cff_v.retrieve (smb_cfi_typ, smb_cat);;

let kyl_cfi_typ = [("codefile", "type"); ("category", "symbol"); ("entity", "atom")];;
let nam_fil_cfi_typ = Cfv_v.codefile_file_name_of_key_list kyl_cfi_typ;;
let val_cfi_typ = Cfv_v.make kyl_cfi_typ;;

let smb_cfi_fun = Cfs_t.Implementation_symbol;;
let frm_cfi_fun = Cff_v.retrieve (smb_cfi_fun, smb_cat);;

let kyl_cfi_fun = [("codefile", "function"); ("category", "symbol"); ("entity", "atom")];;
let nam_fil_cfi_fun = Cfv_v.codefile_file_name_of_key_list kyl_cfi_fun;;
let val_cfi_fun = Cfv_v.make kyl_cfi_fun;;

testi 0 (
frm_cfi_typ
(* Item_symbol_t.item_symbol list *) 
= 
[Its_v.heading;
 Its_v.modules;
 Its_v.typing;
 Its_v.ending]
);;

testi 1 (
Cfv_v.print Format.str_formatter val_cfi_typ;
Format.flush_str_formatter ()
=
Cfv_v.name val_cfi_typ
);;

testi 2 (
nam_fil_cfi_typ
(* : string *)
= 
"atom_symbol_t.ml"
);;

let oc = Fio_v.open_write_of_string_of_string_of_file_name "tcodefile_value_v" "oc" nam_fil_cfi_typ;; 
Cfv_v.write oc val_cfi_typ;;
close_out oc;

