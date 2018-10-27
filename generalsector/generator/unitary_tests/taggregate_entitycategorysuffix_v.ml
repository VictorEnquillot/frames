open Gentest_v;;

testing "Aggregate Entitycategorysuffix_v";;

(* toplevel 
   #use "taggregate_entitycategorysuffix_v.ml";; 
 *)

module Cts_v = Category_symbol_v
module Csu_v = Codefile_suffix_v
module Ecc_v = Entitycategorycodefile_v
module Ecs_v = Entitycategorysuffix_v
module Enc_v = Entitycategory_v
module Ens_v = Entity_symbol_v
module Cfs_v = Codefile_symbol_v
module Scp_v = Scope_provider_v

let ent = "aaggregate";;
let cat = "symbol";;

let smb_ent = Ens_v.make ent;;
let smb_cat = Cts_v.make cat;;
let smb_cfi = Cfs_v.make "type";;
let suf_cfi = Csu_v.make "t";;

let ecn_t = Enc_v.make smb_ent smb_cat;;
let ecc_t = Ecc_v.make smb_ent smb_cat smb_cfi;;
let ecc_b = Ecc_v.make (Ens_v.make "atom_onetied_single") smb_cat smb_cfi;;

let ecs_t = Ecs_v.make smb_ent smb_cat suf_cfi;;
let ecs_b = Ecs_v.make (Ens_v.make "atom_onetied_single") smb_cat suf_cfi;;

let sco_t = Scp_v.provide ecc_t;;
let sco_b = Scp_v.provide ecc_b;;
 
testi 0 (
ecn_t
(* : Entitycategory_t.entitycategory *)
=
Entitycategory_t.Proper
 (Entitycategory_t.Ens_t.Entity_local_symbol "atom",
  Entitycategory_t.Cts_t.Symbol_symbol)
);;

testi 1 (
ecc_t
(* : Entitycategorycodefile_t.entitycategorycodefile *)
=
Entitycategorycodefile_t.Proper
 (Entitycategorycodefile_t.Ens_t.Entity_local_symbol "atom",
  Entitycategorycodefile_t.Cts_t.Symbol_symbol,
  Entitycategorycodefile_t.Cfs_t.Type_symbol)
);;

testi 2 (
Aab_v.abbreviation_argument_of_entity_symbol smb_ent
=
"atm"
);;

testi 3 (
Aab_v.abbreviation_argument_of_entity_symbol (Ens_v.make "atom_zerotied")
=
"azd"
);;

testi 4 (
Amd_v.abbreviation_module_of_entity_symbol smb_ent
=
"At"
);;

testi 5 (
Aab_v.abbreviation_argument_of_category_symbol smb_cat
=
"smb"
);;

testi 6 (
Amd_v.abbreviation_module_of_category_symbol smb_cat
=
"s"
);;

testi 7 (
Ecs_v.codefile_suffix_of_entitycategorycodefile ecc_t
=
Codefile_suffix_t.T
);;

testi 8 (
Aab_v.abbreviation_argument_of_entitycategory ecn_t 
(* : Caml_line_value_t.caml_line_value *)
= 
"smb_atm"
);;

testi 9 (
Amd_v.abbreviation_module_of_entitycategory ecn_t 
(* : Caml_line_value_t.caml_line_value *)
= 
"Ats"
);;

testi 10 (
Ecs_v.abbreviation_argument ecs_t 
(* : Caml_line_value_t.caml_line_value *)
= 
"smb_atm"
);;

testi 11 (
Ecs_v.abbreviation_module ecs_t 
(* : Caml_line_value_t.caml_line_value *)
= 
"Ats_t"
);;

testi 12 (
Ecs_v.abbreviation_argument ecs_b 
(* : Caml_line_value_t.caml_line_value *)
= 
"smb_aos"
);;

testi 13 (
Ecs_v.abbreviation_module ecs_b
(* : Caml_line_value_t.caml_line_value *)
= 
"A1ss_t"
);;

