open Gentest_v;;

testing "Doublet Entitycategorysuffix_v";;

(* toplevel 
   #use "tdoublet_entitycategorysuffix_v.ml";; 
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

let nam_ent = "doublet";;
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
 (Entity_symbol_t.Exs_t.Entity_external_datastructure_symbol
   Entity_symbol_t.Exs_t.Doublet)
);;

testi 1 (
Ens_v.name_capitalized smb_ent
(* : string *)
= 
"Doublet"
);;

testi 2 (
enc 
(* : Entitycategory_t.entitycategory *)
=
(Entitycategory_t.Ens_t.Entity_external_symbol
  (Entitycategory_t.Ens_t.Exs_t.Entity_external_datastructure_symbol
    Entitycategory_t.Ens_t.Exs_t.Doublet),
 Entitycategory_t.Cts_t.Empty)
);;

testi 3 (
ecc
(* : Entitycategorycodefile_t.entitycategorycodefile *)
=
(Entitycategorycodefile_t.Ens_t.Entity_external_symbol
  (Entitycategorycodefile_t.Ens_t.Exs_t.Entity_external_datastructure_symbol
    Entitycategorycodefile_t.Ens_t.Exs_t.Doublet),
 Entitycategorycodefile_t.Cts_t.Empty,
 Entitycategorycodefile_t.Cfs_t.Implementation_symbol)
);;

testi 4 (
Ecs_v.codefile_suffix_name_of_entitycategorysuffix ecs
(* : Codefile_suffix_t.codefile_suffix *)
=
"v"
);;

testi 5 (
Ecs_v.name ecs
(* : string *)
= 
"doublet_v"
);;

testi 6 (
Ecs_v.name_capitalized ecs
(* : string *)
= 
"Doublet_v"
);;

testi 7 (
Ecs_v.codefile_suffix_off_entitycategorysuffix ecs
(* : Codefile_suffix_t.codefile_suffix *)
=
Codefile_suffix_t.V
);;

testi 8 (
Ecs_v.codefile_suffix_name_of_entitycategorysuffix ecs
(* : Codefile_suffix_t.codefile_suffix *)
=
"v"
);;

testi 9 (
Ecs_v.name ecs
(* : string *)
= 
"doublet_v"
);;

testi 10 (
Ecs_v.name_capitalized ecs
(* : string *)
= 
"Doublet_v"
);;

testi 11 (
Amecsp_v.provide ecs
(* : string *)
= 
"Dbt_v"
);;

testi 12 (
Aaecsp_v.provide ecs 
(* : string *)
= 
"_dbt"
);;

testi 13 (
Maecsp_v.provide ecs
= 
"Dbt_v"
);;

testi 14 (
Amtecsp_v.provide ecs
= 
"Dbt_t"
);;

