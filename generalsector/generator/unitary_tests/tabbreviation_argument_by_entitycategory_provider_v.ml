open Gentest_v;;

testing "Abbreviation_argument_by_entitycategory_provider_v";;

(* toplevel 
   #use "tabbreviation_argument_by_entitycategory_provider_v.ml";;
 *)

let nam_cod = "tabbreviation_module_by_entitycategory_provider_v.ml";;

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
module Aaecp_v = Abbreviation_argument_by_entitycategory_provider_v

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
let enc_atm = Ecc_v.entitycategory_off_entitycategorycodefile ecc_atm;;

let ecc_pde = Ecc_v.make smb_ent_pde smb_cat smb_cfi;;
let enc_pde = Ecc_v.entitycategory_off_entitycategorycodefile ecc_pde;;

let ecc_prg = Ecc_v.make smb_ent_prg smb_cat smb_cfi;;
let enc_prg = Ecc_v.entitycategory_off_entitycategorycodefile ecc_prg;;

let ecc_pgn = Ecc_v.make smb_ent_pgn smb_cat smb_cfi;;
let enc_pgn = Ecc_v.entitycategory_off_entitycategorycodefile ecc_pgn;;

let ecc_ppn = Ecc_v.make smb_ent_ppn smb_cat smb_cfi;;
let enc_ppn = Ecc_v.entitycategory_off_entitycategorycodefile ecc_ppn;;

let ecc_str = Ecc_v.make smb_ent_str smb_cat smb_cfi;;
let enc_str = Ecc_v.entitycategory_off_entitycategorycodefile ecc_str;;

let ecc_f_s = Ecc_v.make smb_ent_f_s smb_cat smb_cfi;;
let enc_f_s = Ecc_v.entitycategory_off_entitycategorycodefile ecc_f_s;;

let abb_atm = Aaecp_v.provide enc_atm;;
let abb_pde = Aaecp_v.provide enc_pde;;
let abb_prg = Aaecp_v.provide enc_prg;;
let abb_pgn = Aaecp_v.provide enc_pgn;;
let abb_ppn = Aaecp_v.provide enc_ppn;;
let abb_str = Aaecp_v.provide enc_str;;
let abb_f_s = Aaecp_v.provide enc_f_s;;

testi 0 (
enc_atm
(* : Entitycategory_t.entitycategory *)
=
  (Entitycategorysuffix_t.Ens_t.Entity_proper_symbol
    (Entitycategorysuffix_t.Ens_t.Entity_local_symbol "atom"),
   Entitycategorysuffix_t.Cts_t.Symbol_symbol)
);;

testi 1 (
enc_pde
(* : Entitycategory_t.entitycategory *)
=
(Entitycategorysuffix_t.Ens_t.Entity_proper_symbol
  (Entitycategorysuffix_t.Ens_t.Entity_local_symbol "polypeptide"),
 Entitycategorysuffix_t.Cts_t.Symbol_symbol)
);;

testi 2 (
enc_prg 
(* : Entitycategory_t.entitycategory *)
=
(Entitycategorysuffix_t.Ens_t.Entity_proper_symbol
  (Entitycategorysuffix_t.Ens_t.Entity_local_symbol "polypeptide_regular"),
 Entitycategorysuffix_t.Cts_t.Symbol_symbol)
);;

testi 3 (
enc_pgn
(* : Entitycategory_t.entitycategory *)
=
(Entitycategorysuffix_t.Ens_t.Entity_proper_symbol
  (Entitycategorysuffix_t.Ens_t.Entity_proper_datastructure_symbol "polyglycine"),
 Entitycategorysuffix_t.Cts_t.Symbol_symbol)
);;

testi 4 (
enc_ppn 
(* : Entitycategory_t.entitycategory *)
=
(Entitycategorysuffix_t.Ens_t.Entity_proper_symbol
  (Entitycategorysuffix_t.Ens_t.Entity_proper_datastructure_symbol "polyproline"),
 Entitycategorysuffix_t.Cts_t.Symbol_symbol)
);;

testi 5 (
abb_atm
(* : string *)
= 
"smb_atm"
);;

testi 6 (
abb_pde
(* : string *)
= 
"smb_pde"
);;

testi 7 (
abb_prg
(* : string *)
= 
"smb_prg"
);;

testi 8 (
abb_pgn
(* : string *)
= 
"smb_pgn"
);;

testi 9 (
abb_ppn
(* : string *)
= 
"smb_ppn"
);;

testi 10 (
abb_str
(* : string *)
= 
"str"
);;

testi 11 (
abb_f_s
(* : string *)
= 
""
);;

