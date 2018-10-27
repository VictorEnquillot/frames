open Gentest_v;;

testing "Ordinal Entitycategorysuffix_v";;

(* toplevel 
   #use "tordinal_entitycategorysuffix_v.ml";; 
 *)

module Amecsp_v = Abbreviation_module_by_entitycategorysuffix_provider_v
module Aaecsp_v = Abbreviation_argument_by_entitycategorysuffix_provider_v
module Amdecp_v = Abbreviation_module_dot_entitycategory_by_entitycategorysuffix_provider_v
module Amtecsp_v = Abbreviation_moduletype_by_entitycategorysuffix_provider_v
module Maecsp_v = Abbreviation_module_by_entitycategorysuffix_provider_v

module Cts_v = Category_symbol_v
module Ecc_v = Entitycategorycodefile_v
module Ecs_v = Entitycategorysuffix_v
module Enc_v = Entitycategory_v
module Ens_v = Entity_symbol_v
module Cfs_v = Codefile_symbol_v
module Cfp_v = Codefile_filename_provider_v
module Scp_v = Scope_provider_v

let nam_ent = "ordinal";;
let nam_cat = "empty";;
let nam_cfi = "implementation";;

let smb_ent = Ens_v.make nam_ent;;
let smb_cat = Cts_v.make nam_cat;;
let smb_cfi = Cfs_v.make nam_cfi;;

let ecc = Ecc_v.make smb_ent smb_cat smb_cfi;;
let suf_cfi = Ecc_v.codefile_suffix_of_entitycategorycodefile ecc;;
let ecs = Ecs_v.make smb_ent smb_cat suf_cfi;;
let enc = Enc_v.make smb_ent smb_cat;;

testi 0 (
smb_ent 
(* : Entity_symbol_t.entity_symbol *)
=
Entity_symbol_t.Entity_external_symbol
 (Entity_symbol_t.Exs_t.Entity_external_type_symbol
   Entity_symbol_t.Exs_t.Ordinal)
);;

testi 1 (
enc 
(* : Entitycategory_t.entitycategory *)
=
(Entitycategory_t.Ens_t.Entity_external_symbol
  (Entitycategory_t.Ens_t.Exs_t.Entity_external_type_symbol
    Entitycategory_t.Ens_t.Exs_t.Ordinal),
 Entitycategory_t.Cts_t.Empty)
);;

testi 2 (
ecc
(* : Entitycategorycodefile_t.entitycategorycodefile *)
=
(Entitycategorycodefile_t.Ens_t.Entity_external_symbol
  (Entitycategorycodefile_t.Ens_t.Exs_t.Entity_external_type_symbol
    Entitycategorycodefile_t.Ens_t.Exs_t.Ordinal),
 Entitycategorycodefile_t.Cts_t.Empty,
 Entitycategorycodefile_t.Cfs_t.Implementation_symbol)
);;

testi 3 (
Ecs_v.codefile_suffix_name_of_entitycategorysuffix ecs
(* : Codefile_suffix_t.codefile_suffix *)
=
"p"
);;

testi 4 (
Ecs_v.name ecs
(* : string *)
= 
"ordinal_p"
);;

testi 5 (
Ecs_v.name_capitalized ecs
(* : string *)
= 
"Ordinal_p"
);;

testi 6 (
Ecs_v.codefile_suffix_off_entitycategorysuffix ecs
(* : Codefile_suffix_t.codefile_suffix *)
=
Codefile_suffix_t.P
);;

testi 7 (
Ecs_v.codefile_suffix_name_of_entitycategorysuffix ecs
(* : Codefile_suffix_t.codefile_suffix *)
=
"p"
);;

testi 8 (
Ecs_v.name ecs
(* : string *)
= 
"ordinal_p"
);;

testi 9 (
Ecs_v.name_capitalized ecs
(* : string *)
= 
"Ordinal_p"
);;

testi 10 (
Amecsp_v.provide ecs
(* : string *)
= 
"Ord_p"
);;

testi 11 (
Aaecsp_v.provide ecs 
(* : string *)
= 
"_ord"
);;

testi 12 (
Maecsp_v.provide ecs
= 
"Ord_p"
);;

(* fails
testi 13 (
Amtecsp_v.provide ecs
= 
"Ord_p"
);;
*)
