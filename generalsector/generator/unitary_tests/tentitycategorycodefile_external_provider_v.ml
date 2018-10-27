open Gentest_v;;

testing "Entitycategorycodefile_external_provider_v";;

(* toplevel 
   #use "tentitycategorycodefile_external_provider_v.ml";;
 *)

let nam_cod = "tentitycategorycodefile_external_provider_v.ml";;

module Ecmxp_v = Entitycategorycodefile_external_provider_v
module Ecm_v = Entitycategorycodefile_v

let ecm_ppr = Ecm_v.entitycategorycodefile_proper_of_string_of_string_of_string "atom" "symbol" "implementation";;

testi 0 (
ecm_ref 
(* : Entitycategory_t.entitycategory *)
=
  Entitycategory_t.External Entitycategory_t.Exs_t.Ordinal
);;

testi 1 (
Ecmxp_v.provide ecm_ref
(* : (Entitycategory_t.entitycategory, Sco_v.Scp_t.scope) Doublet_t.doublet *)
   =
 (Entitycategory_t.External Entitycategory_t.Exs_t.Ordinal,
  Sco_v.Scp_t.Scope_private)
);;

