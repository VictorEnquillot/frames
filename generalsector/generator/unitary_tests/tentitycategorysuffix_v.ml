open Gentest_v;;

testing "Entitycategorysuffix_v";;

(* toplevel 
   #use "tentitycategorysuffix_v.ml";; 
 *)

module Cts_v = Category_symbol_v
module Csu_v = Codefile_suffix_v
module Ecc_v = Entitycategorycodefile_v
module Ecs_v = Entitycategorysuffix_v
module Enc_v = Entitycategory_v
module Ens_v = Entity_symbol_v
module Cfs_v = Codefile_symbol_v
module Scp_v = Scope_provider_v

let nam_ent_atm = "atom";;
let nam_cat_atm = "symbol";;
let nam_cfi_atm = "type";;

let smb_ent_atm = Ens_v.make nam_ent_atm;;
let smb_cat_atm = Cts_v.make nam_cat_atm;;
let smb_cfi_atm = Cfs_v.make nam_cfi_atm;;

let enc_atm = Enc_v.make smb_ent_atm smb_cat_atm;;
let ecc_atm = Ecc_v.make smb_ent_atm smb_cat_atm smb_cfi_atm;;
let enc_aos = Enc_v.make (Ens_v.make "atom_onetied_single") smb_cat_atm;;
let ecc_aos = Ecc_v.make (Ens_v.make "atom_onetied_single") smb_cat_atm smb_cfi_atm;;

let ecs_atm = Ecs_v.entitycategorysuffix_of_entitycategorycodefile ecc_atm;;
let ecs_aos = Ecs_v.entitycategorysuffix_of_entitycategorycodefile ecc_aos;;

let sco_atm = Scp_v.provide enc_atm;;
let sco_aos = Scp_v.provide enc_aos;;
 
testi 0 (
enc_atm
(* : Entitycategory_t.entitycategory *)
=
(Entitycategory_t.Ens_t.Entity_proper_symbol
  (Entitycategory_t.Ens_t.Entity_local_symbol "atom"),
 Entitycategory_t.Cts_t.Symbol_symbol)
);;

testi 1 (
ecc_atm
(* : Entitycategorycodefile_t.entitycategorycodefile *)
=
(Entitycategorycodefile_t.Ens_t.Entity_proper_symbol
  (Entitycategorycodefile_t.Ens_t.Entity_local_symbol "atom"),
 Entitycategorycodefile_t.Cts_t.Symbol_symbol,
 Entitycategorycodefile_t.Cfs_t.Type_symbol)
);;

