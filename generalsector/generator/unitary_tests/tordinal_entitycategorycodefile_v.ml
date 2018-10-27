open Gentest_v;;

testing "Ordinal Entitycategorycodefile_v";;

(* toplevel 
   #use "tordinal_entitycategorycodefile_v.ml";; 
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

let nam_ent = "ordinal";;
let nam_cat = "empty";;
let nam_cfi = "implementation";;

let smb_ent = Ens_v.make nam_ent;;
let smb_cat = Cts_v.make nam_cat;;
let smb_cfi = Cfs_v.make nam_cfi;;

let ecc = Ecc_v.make smb_ent smb_cat smb_cfi;;
let enc = Enc_v.make smb_ent smb_cat;;

testi 0 (
 not (Ens_v.is_entity_barebasic_symbol_off_string nam_ent)
);;

testi 1 (
not (Ens_v.is_entity_bare_symbol_off_string nam_ent)
);;

testi 2 (
 Ens_v.is_entity_external_symbol_off_string nam_ent
);;

testi 3 (
not (Ens_v.is_entity_local_symbol_off_string nam_ent)
);;

testi 4 (
not (Ens_v.is_entity_fictive_symbol_off_string nam_ent)
);;

testi 5 (
not (Ens_v.is_entity_proper_symbol_off_string nam_ent)
);;

testi 6 (
smb_ent 
(* : Entity_symbol_t.entity_symbol *)
=
Entity_symbol_t.Entity_external_symbol
 (Entity_symbol_t.Exs_t.Entity_external_type_symbol
   Entity_symbol_t.Exs_t.Ordinal)
);;

testi 7 (
enc 
(* : Entitycategory_t.entitycategory *)
=

(Entitycategory_t.Ens_t.Entity_external_symbol
  (Entitycategory_t.Ens_t.Exs_t.Entity_external_type_symbol
    Entitycategory_t.Ens_t.Exs_t.Ordinal),
 Entitycategory_t.Cts_t.Empty)
);;

testi 8 (
Enc_v.name enc 
(* : string *)
=
"ordinal"
);;

testi 9 (
ecc
(* : Entitycategorycodefile_t.entitycategorycodefile *)
=
(Entitycategorycodefile_t.Ens_t.Entity_external_symbol
  (Entitycategorycodefile_t.Ens_t.Exs_t.Entity_external_type_symbol
    Entitycategorycodefile_t.Ens_t.Exs_t.Ordinal),
 Entitycategorycodefile_t.Cts_t.Empty,
 Entitycategorycodefile_t.Cfs_t.Implementation_symbol)
);;

testi 10 (
Ecc_v.name ecc 
(* : string *)
=
"ordinal_implementation"
);;

testi 11 (
Aab_v.abbreviation_argument_of_entity_symbol smb_ent
=
"ord"
);;

testi 12 (
Amd_v.abbreviation_module_of_entity_symbol smb_ent
=
"Ord"
);;

testi 13 (
Aab_v.abbreviation_argument_of_category_symbol smb_cat
=
""
);;

testi 14 (
Amd_v.abbreviation_module_of_category_symbol smb_cat
=
""
);;

testi 15 (
Aab_v.abbreviation_argument_of_entitycategory enc 
(* : Caml_line_value_t.caml_line_value *)
= 
"ord"
);;

testi 16 (
Amd_v.abbreviation_module_of_entitycategory enc 
(* : Caml_line_value_t.caml_line_value *)
= 
"Ord"
);;

testi 17 (
Scp_v.provide enc
(* : Scope_t.scope *)
= 
Scope_t.Scope_private
);;

testi 18 (
Ecc_v.codefile_suffix_of_entitycategorycodefile ecc
(* : Codefile_suffix_t.codefile_suffix *)
=
Codefile_suffix_t.P
);;

testi 19 (
Cfp_v.provide ecc
(* : Cfp_v.Fln_t.filename *)
= 
Cfp_v.Fln_t.String "./ordinal_p.ml"
);;

(*
testi 20 ( 
Ecc_v.make (Ens_v.make "ordinal") smb_cat Cfs_v.codefile_type;;
=
fails
);;
*)
