open Gentest_v;;

testing "String Entitycategorycodefile_v";;

(* toplevel 
   #use "tstring_entitycategorycodefile_v.ml";; 
 *)

module Aab_v = Abbreviation_argument_v
module Amd_v = Abbreviation_module_v
module Cts_v = Category_symbol_v
module Ecc_v = Entitycategorycodefile_v
module Ecs_v = Entitycategorysuffix_v
module Enc_v = Entitycategory_v
module Ens_v = Entity_symbol_v
module Cfs_v = Codefile_symbol_v
module Cfp_v = Codefile_filename_provider_v
module Scp_v = Scope_provider_v

let nam_ent = "string";;
let nam_cat = "empty";;
let nam_cfi = "implementation";;

let smb_ent = Ens_v.make nam_ent;;
let smb_cat = Cts_v.make nam_cat;;
let smb_cfi = Cfs_v.make nam_cfi;;

let ecc = Ecc_v.make smb_ent smb_cat smb_cfi;;
let ecs = Ecs_v.entitycategorysuffix_of_entitycategorycodefile ecc;;
let enc = Enc_v.make smb_ent smb_cat;;

let ecc_fake = Ecc_v.make smb_ent Cts_v.category_symbol Cfs_v.codefile_type;;
let ecs_fake = Ecs_v.entitycategorysuffix_of_entitycategorycodefile ecc_fake;;
let enc_fake = Enc_v.make smb_ent Cts_v.category_symbol;;

testi 0 (
 (Ens_v.is_entity_barebasic_symbol_off_string nam_ent)
);;

testi 1 (
not (Ens_v.is_entity_bare_symbol_off_string nam_ent)
);;

testi 2 (
 not (Ens_v.is_entity_external_symbol_off_string nam_ent)
);;

testi 3 (
not (Ens_v.is_entity_local_symbol_off_string nam_ent)
);;

testi 4 (
 (Ens_v.is_entity_fictive_symbol_off_string nam_ent)
);;

testi 5 (
not (Ens_v.is_entity_proper_symbol_off_string nam_ent)
);;

testi 6 (
smb_ent 
(* : Entity_symbol_t.entity_symbol *)
=
Entity_symbol_t.Entity_fictive_symbol
  (Entity_symbol_t.Entity_barebasic_symbol Entity_symbol_t.String)
);;

testi 7 (
enc 
(* : Entitycategory_t.entitycategory *)
=
(Entitycategory_t.Ens_t.Entity_fictive_symbol
   (Entitycategory_t.Ens_t.Entity_barebasic_symbol
      Entitycategory_t.Ens_t.String),
 Entitycategory_t.Cts_t.Empty)
);;

testi 8 (
Enc_v.name enc 
(* : string *)
  =
"string"
);;

testi 9 (
ecc
(* : Entitycategorycodefile_t.entitycategorycodefile *)
=
(Entitycategorycodefile_t.Ens_t.Entity_fictive_symbol
  (Entitycategorycodefile_t.Ens_t.Entity_barebasic_symbol
    Entitycategorycodefile_t.Ens_t.String),
 Entitycategorycodefile_t.Cts_t.Empty, 
 Entitycategorycodefile_t.Cfs_t.Empty)
);;

testi 10 (
Ecc_v.name ecc 
(* : string *)
=
"string"
);;

testi 11 (
ecs 
(* : Entitycategory_t.entitycategory *)
=
(Entitycategorysuffix_t.Ens_t.Entity_fictive_symbol
  (Entitycategorysuffix_t.Ens_t.Entity_barebasic_symbol
    Entitycategorysuffix_t.Ens_t.String),
 Entitycategorysuffix_t.Cts_t.Empty, 
 Entitycategorysuffix_t.Cfs_t.Empty)
);;

testi 12 (
Ecs_v.name ecs
(* : string *)
= 
"string"
);;

testi 13 (
Ecs_v.name_capitalized ecs
(* : string *)
= 
"String"
);;

testi 14 (
Aab_v.abbreviation_argument_of_entity_symbol smb_ent
=
"str"
);;

testi 15 (
Amd_v.abbreviation_module_of_entity_symbol smb_ent
=
""
);;

testi 16 (
Aab_v.abbreviation_argument_of_category_symbol smb_cat
=
""
);;

testi 17 (
Amd_v.abbreviation_module_of_category_symbol smb_cat
=
""
);;

testi 18 (
Aab_v.abbreviation_argument_of_entitycategory enc 
(* : Caml_line_value_t.caml_line_value *)
= 
"str"
);;

testi 19 (
Amd_v.abbreviation_module_of_entitycategory enc 
(* : Caml_line_value_t.caml_line_value *)
= 
""
);;

testi 20 (
Scp_v.provide enc
(* : Scope_t.scope *)
= 
Scope_v.scope_empty
);;

testi 21 (
Ecc_v.codefile_suffix_of_entitycategorycodefile ecc
(* : Codefile_suffix_t.codefile_suffix *)
=
Codefile_suffix_t.Empty
);;

testi 22 (
Ecs_v.codefile_suffix_name_of_entitycategorysuffix ecs
(* : Codefile_suffix_t.codefile_suffix *)
=
""
);;

testi 23 (
Cfp_v.provide ecc
(* : Cfp_v.Fln_t.filename *)
= 
Cfp_v.Fln_t.String "./string"
);;

testi 24 ( 
ecc_fake
=
(Entitycategorycodefile_t.Ens_t.Entity_fictive_symbol
  (Entitycategorycodefile_t.Ens_t.Entity_barebasic_symbol
    Entitycategorycodefile_t.Ens_t.String),
 Entitycategorycodefile_t.Cts_t.Empty, Entitycategorycodefile_t.Cfs_t.Empty)
);;

testi 25 (
Ecs_v.name ecs_fake
(* : string *)
= 
"string"
);;

testi 26 ( 
ecs_fake
=
(Entitycategorysuffix_t.Ens_t.Entity_fictive_symbol
  (Entitycategorysuffix_t.Ens_t.Entity_barebasic_symbol
    Entitycategorysuffix_t.Ens_t.String),
 Entitycategorysuffix_t.Cts_t.Empty, 
 Entitycategorysuffix_t.Cfs_t.Empty)
);;

testi 27 (
Ecs_v.name ecs_fake
(* : string *)
= 
"string"
);;

testi 28 ( 
enc_fake
(* : Entitycategory_t.entitycategory *) =
(Entitycategory_t.Ens_t.Entity_fictive_symbol
  (Entitycategory_t.Ens_t.Entity_barebasic_symbol
    Entitycategory_t.Ens_t.String),
 Entitycategory_t.Cts_t.Empty)
);;

testi 29 (
Enc_v.name enc_fake
(* : string *)
= 
"string"
);;
