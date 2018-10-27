open Make_test_v;;

testing "Basisset_name_by_unit_provider_v with
    Basisset_name_by_unit_provider_u_lanl2dz_debug.ml";;

(* Deleting Registers *)

Register_v.delete  Debug_by_module_name_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;

(* Tracing *)

Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Basisset_name_by_unit_provider_u_lanl2dz_debug.ml";; 

*)

let nam_dgn = "gaussian_nwchem";;
let nam_bas = "lanl2dz";;
Parameters_general_register_v.store "basisset-name" nam_bas;;
 
(* Debug *)

open Basisset_name_by_unit_provider_v;;

let tag_dcb = Dgn_context_database_tag_by_unit_provider_v.provide ();;

test_number 1 (
( tag_dcb : Dgn_context_database_symbol_t.nwchem_context_database_symbol Tag_t.tag ) =
  (Dgn_context_database_symbol_t.Dgn_context_database_constructor
    "gaussian_nwchem",
   [5; 3])
);;

let nam_bas_l = Basisset_name_list_by_dgn_context_database_tag_provider_v.provide tag_dcb;;

test_number 2 (
(nam_bas_l : string list ) =
 ["3_21g"; "6_31gss"; "6_31gssp"; "cc_pvtz"; "lanl2dz"; "test"; "test_ecp"]
);;

let boo = List.exists (fun s -> s = nam_bas) nam_bas_l;;

test_number 3 (
boo
);;
