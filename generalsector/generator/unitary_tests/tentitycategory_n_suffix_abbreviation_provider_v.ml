open Gentest_v;;

testing "Entitycategory_n_codefile_suffix_abbreviation_provider_v";;

(* toplevel 
   #use "tentitycategory_n_codefile_suffix_abbreviation_provider_v.ml";;
 *)

module Enc_v = Entitycategory_v
module Ecns_v = Entitycategory_n_codefile_suffix_v
module Ecsap_v = Entitycategory_n_codefile_suffix_abbreviation_provider_v
module Msu_v = Codefile_suffix_v

let enc_ppr = Enc_v.entitycategory_proper_of_string_of_string "atom" "symbol";;
let enc = Enc_v.make_of_entitycategory_proper enc_ppr;;
let suf = Msu_v.make "v";;
let ecs = Ecns_v.make enc suf;;

let nam_ecs = Ecns_v.name ecs;;
let abm_ecs = Ecns_v.abbreviation_module ecs;;
let aba_ecs = Ecns_v.abbreviation_argument ecs;;

testi 0 (
nam_ecs 
=
"atom_symbol_v"
);;

testi 1 (
abm_ecs 
=
"Ats_v"
);;

testi 2 (
aba_ecs 
=
"smb_atm"
);;

testi 3 (
Ecsap_v.provide ecs
=
abm_ecs
);;

