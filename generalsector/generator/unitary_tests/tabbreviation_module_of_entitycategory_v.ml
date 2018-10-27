open Gentest_v;;

testing "Abbreviation_module_of_entitycategory_v";;

(* toplevel 
   #use "tabbreviation_module_of_entitycategory_v.ml";;
 *)

let nam_cod = "tabbreviation_module_of_entitycategory_v.ml";;

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
module Amd_v = Abbreviation_module_v

let smb_ent_atm = Ens_v.make "atom";;
let smb_ent_pde = Ens_v.make "polypeptide";;
let smb_ent_prg = Ens_v.make "polypeptide_regular";;
let smb_ent_pgn = Ens_v.make "polyglycine";;
let smb_ent_ppn = Ens_v.make "polyproline";;
let smb_ent_str = Ens_v.make "string";;
let smb_ent_f_s = Ens_v.make "f_s";;

let smb_cat = Cts_v.make "symbol";;

let enc_atm = Enc_v.make smb_ent_atm smb_cat;;
let enc_pde = Ens_v.make smb_ent_pde smb_cat;;
let enc_prg = Ens_v.make smb_ent_prg smb_cat;;
let enc_pgn = Ens_v.make smb_ent_pgn smb_cat;;
let enc_ppn = Ens_v.make smb_ent_ppn smb_cat;;
let enc_str = Ens_v.make smb_ent_str smb_cat;;
let enc_f_s = Ens_v.make smb_ent_f_s smb_cat;;

let abb_atm = Amd_v.abbreviation_module_of_entitycategory enc_atm;;
let abb_pde = Amd_v.abbreviation_module_of_entitycategory enc_pde;;
let abb_prg = Amd_v.abbreviation_module_of_entitycategory enc_prg;;
let abb_pgn = Amd_v.abbreviation_module_of_entitycategory enc_pgn;;
let abb_ppn = Amd_v.abbreviation_module_of_entitycategory enc_ppn;;
let abb_str = Amd_v.abbreviation_module_of_entitycategory enc_str;;
let abb_f_s = Amd_v.abbreviation_module_of_entitycategory enc_f_s;;

testi 0 (
enc_atm
(* : Entitycategory_t.entitycategory *)
=
Entitycategorysuffix_t.Ens_t.Entity_proper_symbol
  (Entitycategorysuffix_t.Ens_t.Entity_local_symbol "atom")
);;

testi 1 (
enc_pde
(* : Entitycategory_t.entitycategory *)
=
Entitycategorysuffix_t.Ens_t.Entity_proper_symbol
  (Entitycategorysuffix_t.Ens_t.Entity_local_symbol "polypeptide")
);;

testi 2 (
enc_prg 
(* : Entitycategory_t.entitycategory *)
=
Entitycategorysuffix_t.Ens_t.Entity_proper_symbol
  (Entitycategorysuffix_t.Ens_t.Entity_local_symbol "polypeptide_regular")
);;

testi 3 (
enc_pgn
(* : Entitycategory_t.entitycategory *)
=
Entitycategorysuffix_t.Ens_t.Entity_proper_symbol
  (Entitycategorysuffix_t.Ens_t.Entity_proper_datastructure_symbol "polyglycine")
);;

testi 4 (
enc_ppn 
(* : Entitycategory_t.entitycategory *)
=
Entitycategorysuffix_t.Ens_t.Entity_proper_symbol
  (Entitycategorysuffix_t.Ens_t.Entity_proper_datastructure_symbol "polyproline")
);;

testi 5 (
abb_atm
(* : string *)
= 
"At"
);;

testi 6 (
abb_pde
(* : string *)
= 
"Pd"
);;

testi 7 (
abb_prg
(* : string *)
= 
"Pr"
);;

testi 8 (
abb_pgn
(* : string *)
= 
"Pg"
);;

testi 9 (
abb_ppn
(* : string *)
= 
"Pp"
);;

testi 10 (
abb_str
(* : string *)
= 
""
);;

testi 11 (
abb_f_s
(* : string *)
= 
""
);;

