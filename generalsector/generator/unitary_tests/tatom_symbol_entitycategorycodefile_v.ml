open Gentest_v;;

testing "Atom Symbol Entitycategorycodefile_v";;

(* toplevel 
   #use "tatom_symbol_entitycategorycodefile_v.ml";; 
 *)

let nam_cod = "tatom_symbol_entitycategorycodefile_v.ml";;

module Cfp_v = Codefile_filename_provider_v
module Cfs_v = Codefile_symbol_v
module Csu_v = Codefile_suffix_v
module Cts_v = Category_symbol_v
module Ecc_v = Entitycategorycodefile_v
module Ecs_v = Entitycategorysuffix_v
module Enc_v = Entitycategory_v
module Ens_v = Entity_symbol_v
module Fln_v = Filename_p
module Scp_v = Scope_provider_v

let nam_ent = "atom";;
let nam_cat = "symbol";;
let nam_cfi = "type";;

let smb_ent = Ens_v.make nam_ent;;
let smb_cat = Cts_v.make nam_cat;;
let smb_cfi = Cfs_v.make nam_cfi;;

let enc = Enc_v.make smb_ent smb_cat;;
let ecc = Ecc_v.make smb_ent smb_cat smb_cfi;;
let csu = Ecc_v.codefile_suffix_of_entitycategorycodefile ecc
let ecs = Ecs_v.make smb_ent smb_cat csu;;

testi 0 (
 not (Ens_v.is_entity_barebasic_symbol_off_string nam_ent)
);;

testi 1 (
not (Ens_v.is_entity_bare_symbol_off_string nam_ent)
);;

testi 2 (
 not (Ens_v.is_entity_external_symbol_off_string nam_ent)
);;

testi 3 (
(Ens_v.is_entity_local_symbol_off_string nam_ent)
);;

testi 4 (
not (Ens_v.is_entity_fictive_symbol_off_string nam_ent)
);;

testi 5 (
 (Ens_v.is_entity_proper_symbol_off_string nam_ent)
);;

testi 6 (
smb_ent 
(* : Entity_symbol_t.entity_symbol *)
=
Entity_symbol_t.Entity_proper_symbol
 (Entity_symbol_t.Entity_local_symbol "atom")
);;

testi 7 (
 enc 
(* : Entitycategory_t.entitycategory *)
=
(Entitycategory_t.Ens_t.Entity_proper_symbol
  (Entitycategory_t.Ens_t.Entity_local_symbol "atom"),
 Entitycategory_t.Cts_t.Symbol_symbol)
);;

testi 8 (
ecc
(* : Entitycategorycodefile_t.entitycategorycodefile *)
=
(Entitycategorycodefile_t.Ens_t.Entity_proper_symbol
  (Entitycategorycodefile_t.Ens_t.Entity_local_symbol "atom"),
 Entitycategorycodefile_t.Cts_t.Symbol_symbol,
 Entitycategorycodefile_t.Cfs_t.Type_symbol)
);;

testi 9 (
Scp_v.provide enc
(* : Scope_t.scope *)
= 
Scope_t.Scope_public
);;

testi 10 (
csu 
(* : Codefile_suffix_t.codefile_suffix *)
=
Codefile_suffix_t.T
);;

testi 11 (
Ecs_v.codefile_suffix_name_of_entitycategorysuffix ecs
(* : Codefile_suffix_t.codefile_suffix *)
=
"t"
);;

testi 12 (
Ecs_v.name ecs
(* : string *)
= 
"atom_symbol_t"
);;

testi 13 (
Ecs_v.name_capitalized ecs
(* : string *)
= 
"Atom_symbol_t"
);;

testi 14 (
Fln_v.name (Cfp_v.provide ecc)
(* : string *)
= 
"atom_symbol_t.ml"
);;

testi 15 (
Ecs_v.name_capitalized ecs
(* : string *)
= 
"Atom_symbol_t"
);;
