open Gentest_v;;

testing "Abbreviation_module_dot_entitycategory_by_entitycategorysuffix_provider_v";;

(* toplevel 
   #use "tabbreviation_module_dot_entitycategory_by_entitycategorysuffix_provider_v.ml";;
 *)

let nam_cod = "tabbreviation_module_dot_entitycategory_by_entitycategorysuffix_provider_v.ml";;

module Cfs_v = Codefile_symbol_v
module Cts_v = Category_symbol_v
module Ecc_v = Entitycategorycodefile_v
module Ecs_v = Entitycategorysuffix_v
module Enc_v = Entitycategory_v
module Ens_v = Entity_symbol_v
module Fio_v = Fileio_v
module Pas_t = Parameter_symbol_t
module Pas_v = Parameter_symbol_v
module Pav_v = Parameter_value_v
module Pvp_v = Parameter_value_provider_v
module Madecp_v = Abbreviation_module_dot_entitycategory_by_entitycategorysuffix_provider_v

let smb_ent_atm = Ens_v.make "atom";;
let smb_ent_pde = Ens_v.make "polypeptide";;
let smb_ent_prg = Ens_v.make "polypeptide_regular";;
let smb_ent_pgn = Ens_v.make "polyglycine";;
let smb_ent_ppn = Ens_v.make "polyproline";;
let smb_ent_str = Ens_v.make "string";;
let smb_ent_f_s = Ens_v.make "f_s";;

let smb_cat = Cts_v.make "symbol"
let smb_cfi = Cfs_v.make "implementation";;

let ecc_atm = Ecc_v.make smb_ent_atm smb_cat smb_cfi;;
let ecs_atm = Ecs_v.entitycategorysuffix_of_entitycategorycodefile ecc_atm;;

let ecc_pde = Ecc_v.make smb_ent_pde smb_cat smb_cfi;;
let ecs_pde = Ecs_v.entitycategorysuffix_of_entitycategorycodefile ecc_pde;;

let ecc_prg = Ecc_v.make smb_ent_prg smb_cat smb_cfi;;
let ecs_prg = Ecs_v.entitycategorysuffix_of_entitycategorycodefile ecc_prg;;

let ecc_pgn = Ecc_v.make smb_ent_pgn smb_cat smb_cfi;;
let ecs_pgn = Ecs_v.entitycategorysuffix_of_entitycategorycodefile ecc_pgn;;

let ecc_ppn = Ecc_v.make smb_ent_ppn smb_cat smb_cfi;;
let ecs_ppn = Ecs_v.entitycategorysuffix_of_entitycategorycodefile ecc_ppn;;

let ecc_str = Ecc_v.make smb_ent_str smb_cat smb_cfi;;
let ecs_str = Ecs_v.entitycategorysuffix_of_entitycategorycodefile ecc_str;;

let ecc_f_s = Ecc_v.make smb_ent_f_s smb_cat smb_cfi;;
let ecs_f_s = Ecs_v.entitycategorysuffix_of_entitycategorycodefile ecc_f_s;;

let abb_atm = Madecp_v.provide ecs_atm;;
let abb_pde = Madecp_v.provide ecs_pde;;
let abb_prg = Madecp_v.provide ecs_prg;;
let abb_pgn = Madecp_v.provide ecs_pgn;;
let abb_ppn = Madecp_v.provide ecs_ppn;;
let abb_str = Madecp_v.provide ecs_str;;
let abb_f_s = Madecp_v.provide ecs_f_s;;

testi 0 (
ecs_atm
(* : Entitycategory_t.entitycategory *)
=
  (Entitycategorysuffix_t.Ens_t.Entity_proper_symbol
    (Entitycategorysuffix_t.Ens_t.Entity_local_symbol "atom"),
   Entitycategorysuffix_t.Cts_t.Symbol_symbol,
   Entitycategorysuffix_t.Cfs_t.V)
);;

testi 1 (
ecs_pde
(* : Entitycategory_t.entitycategory *)
=
(Entitycategorysuffix_t.Ens_t.Entity_proper_symbol
  (Entitycategorysuffix_t.Ens_t.Entity_local_symbol "polypeptide"),
 Entitycategorysuffix_t.Cts_t.Symbol_symbol, Entitycategorysuffix_t.Cfs_t.V)
);;

testi 2 (
ecs_prg 
(* : Entitycategory_t.entitycategory *)
=
(Entitycategorysuffix_t.Ens_t.Entity_proper_symbol
  (Entitycategorysuffix_t.Ens_t.Entity_local_symbol "polypeptide_regular"),
 Entitycategorysuffix_t.Cts_t.Symbol_symbol, Entitycategorysuffix_t.Cfs_t.V)
);;

testi 3 (
ecs_pgn
(* : Entitycategory_t.entitycategory *)
=
(Entitycategorysuffix_t.Ens_t.Entity_proper_symbol
  (Entitycategorysuffix_t.Ens_t.Entity_proper_datastructure_symbol "polyglycine"),
 Entitycategorysuffix_t.Cts_t.Symbol_symbol, Entitycategorysuffix_t.Cfs_t.V)
);;

testi 4 (
ecs_ppn 
(* : Entitycategory_t.entitycategory *)
=
(Entitycategorysuffix_t.Ens_t.Entity_proper_symbol
  (Entitycategorysuffix_t.Ens_t.Entity_proper_datastructure_symbol "polyproline"),
 Entitycategorysuffix_t.Cts_t.Symbol_symbol, Entitycategorysuffix_t.Cfs_t.V)
);;

testi 5 (
abb_atm
(* : string *)
= 
"Ats_v.atom_symbol"
);;

testi 6 (
abb_pde
(* : string *)
= 
"Pds_v.polypeptide_symbol"
);;

testi 7 (
abb_prg
(* : string *)
= 
"Prs_v.polypeptide_regular_symbol"
);;

testi 8 (
abb_pgn
(* : string *)
= 
"Pgs_v.polyglycine_symbol"
);;

testi 9 (
abb_ppn
(* : string *)
= 
"Pps_v.polyproline_symbol"
);;

testi 10 (
abb_str
(* : string *)
= 
"string"
);;

testi 11 (
abb_f_s
(* : string *)
= 
"f_s"
);;

