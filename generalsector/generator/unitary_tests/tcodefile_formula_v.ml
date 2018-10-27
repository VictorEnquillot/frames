open Gentest_v;;

testing "Codefile_formula_v";;

(* toplevel 
   #use "tcodefile_formula_v.ml";; 
 *)

module Cts_v = Category_symbol_v
module Ens_v = Entity_symbol_v
module Its_v = Item_symbol_v
module Cff_v = Codefile_formula_v
module Cfs_t = Codefile_symbol_t
module Cfs_v = Codefile_symbol_v

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

let smb_cfi_fun = Cfs_t.Implementation_symbol;;
let frm_cfi_fun = Cff_v.retrieve (smb_cfi_fun, smb_cat);;

testi 0 (
Its_v.name smb_abb 
=
 "upgrading"
);;

testi 1 (
Cfs_v.name smb_cfi_typ
(* : string *)
= 
"type"
);;

testi 2 (
frm_cfi_typ
(* Item_symbol_t.item_symbol list *) 
= 
[Its_v.heading;
 Its_v.modules; 
 Its_v.typing;
 Its_v.ending]
);;

testi 3 (
frm_cfi_fun 
(* : Codefile_formula_t.codefile_formula *)
=
[
 Its_v.heading; 
 Its_v.modules;
 Its_v.naming;
 Its_v.extracting;
 Its_v.querying;
 Its_v.upgrading;
 Its_v.including; 
 Its_v.ending
]
);;

