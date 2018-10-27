open Gentest_v;;

testing "Scope_provider_v";;

(* toplevel 
   #use "tscope_provider_v.ml";;
 *)

let nam_cod = "tscope_provider_v.ml";;

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
module Sco_v = Scope_v
module Scp_v = Scope_provider_v

let smb_scf = Pas_v.module_scope_file;;
let val_scf = Pav_v.make smb_scf;;

let smb_ent_ord = Ens_v.make "ordinal";;
let smb_cat_ord = Cts_v.make "empty"
let smb_cfi_ord = Cfs_v.make "implementation";;

let ecc_ord = Ecc_v.make smb_ent smb_cat smb_cfi;;
let ecs_ord = Ecs_v.name ecc;;
let enc_ord = Enc_v.make smb_ent smb_cat;;

let enc_agg = Enc_v.make (Ens_v.make "aggregate") (Cts_v.make "symbol") ;;

let par_scf = Pvp_v.provide Pas_v.module_scope_file;;
let fln = Pav_v.filename_off_parameter_value par_scf 
let str_l = Fio_v.string_list_of_filename fln;;

testi 0 (
enc_ord 
(* : Entitycategory_t.entitycategory *)
=
Entitycategory_t.External Entitycategory_t.Exs_t.Ordinal
);;

testi 1 (
enc_agg
(* : Entitycategory_t.entitycategory *)
=
Entitycategory_t.Proper
  (Entitycategory_t.Ens_t.Entity_proper_datastructure_symbol "aggregate",
   Entitycategory_t.Cts_t.Symbol_symbol)
);;

testi 2 (
Sco_v.entitycategory_private_scope_list ()
(* : Entitycategory_t.entitycategory list *)
  =
[Entitycategory_t.External Entitycategory_t.Exs_t.Ordinal;
 Entitycategory_t.External Entitycategory_t.Exs_t.Index]
);;

testi 3 (
Scp_v.provide enc_ord 
(* : Scope_t.scope *)
= 
Scope_t.Scope_private
);;

testi 4 (
Scp_v.provide enc_agg
(* : Scope_t.scope *)
= 
Scope_t.Scope_public
);;
