open Gentest_v;;

testing "Ordinal Scope_provider_v";;

(* toplevel 
   #use "tordinal_scope_provider_v.ml";;
 *)

let nam_cod = "tordinal_scope_provider_v.ml";;

module Cfs_v = Codefile_symbol_v
module Cts_v = Category_symbol_v
module Ecc_v = Entitycategorycodefile_v
module Ecs_v = Entitycategorysuffix_v
module Enc_v = Entitycategory_v
module Ens_v = Entity_symbol_v
module Fio_v = Fileio_v
module Fln_v = Filename_p
module Pas_t = Parameter_symbol_t
module Pas_v = Parameter_symbol_v
module Pav_v = Parameter_value_v
module Pvp_v = Parameter_value_provider_v
module Sco_v = Scope_v
module Scp_v = Scope_provider_v

let smb_scf = Pas_v.module_scope_file;;
let val_scf = Pav_v.make smb_scf;;

let smb_ent = Ens_v.make "ordinal";;
let smb_cat = Cts_v.make "symbol"
let smb_cfi = Cfs_v.make "implementation";;

let enc = Enc_v.make smb_ent smb_cat;;
let ecc = Ecc_v.make smb_ent smb_cat smb_cfi;;
let ecs = Ecs_v.entitycategorysuffix_of_entitycategorycodefile ecc;;

let par_scf = Pvp_v.provide Pas_v.module_scope_file;;
let fln = Pav_v.filename_off_parameter_value par_scf 
let str_l = Fio_v.string_list_of_filename fln;;

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
Enc_v.category_symbol_off_entitycategory enc
(* : Category_symbol_t.category_symbol *)
= 
Category_symbol_t.Empty
);;

testi 3 (
ecc
(* : Entitycategorycodefile_t.entitycategorycodefile *)
=
(Entitycategorycodefile_t.Ens_t.Entity_external_symbol
  (Entitycategorycodefile_t.Ens_t.Exs_t.Entity_external_type_symbol
    Entitycategorycodefile_t.Ens_t.Exs_t.Ordinal),
 Entitycategorycodefile_t.Cts_t.Empty,
 Entitycategorycodefile_t.Cfs_t.Implementation_symbol)
);;

testi 4 (
ecs
(* : Entitycategorysuffix_t.entitycategorysuffix *)
=
(Entitycategorysuffix_t.Ens_t.Entity_external_symbol
  (Entitycategorysuffix_t.Ens_t.Exs_t.Entity_external_type_symbol
    Entitycategorysuffix_t.Ens_t.Exs_t.Ordinal),
 Entitycategorysuffix_t.Cts_t.Empty, Entitycategorysuffix_t.Cfs_t.P)
);;

testi 5 (
par_scf
(* : Pvp_v.Pav_t.parameter_value *)
=
  Pvp_v.Pav_t.Filename_palue (Pvp_v.Pav_t.Fln_t.String "./private_scope.dat")
);;

testi 6 (
fln
(* : Pav_v.Pav_t.Fln_t.filename *)
=
Filename_p.String "./private_scope.dat"
);;

testi 7 (
Sco_v.entitycategory_private_scope_list ()
(* : Entitycategory_t.entitycategory list *)
  =
[(Entitycategory_t.Ens_t.Entity_external_symbol
   (Entitycategory_t.Ens_t.Exs_t.Entity_external_type_symbol
     Entitycategory_t.Ens_t.Exs_t.Ordinal),
  Entitycategory_t.Cts_t.Empty);
 (Entitycategory_t.Ens_t.Entity_external_symbol
   (Entitycategory_t.Ens_t.Exs_t.Entity_external_type_symbol
     Entitycategory_t.Ens_t.Exs_t.Index),
  Entitycategory_t.Cts_t.Empty)]
);;

testi 8 (
Scp_v.provide enc 
(* : Scope_t.scope *)
= 
Scope_t.Scope_private
);;

