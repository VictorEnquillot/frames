open Make_test_v;;

testing "Basisset_name_list_by_dgn_context_database_tag_provider_v with
    Basisset_name_list_by_dgn_context_database_tag_provider_u_any_debug.ml";;

(* Deleting Registers *)

Register_v.delete  Debug_by_module_name_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;

(* Tracing *)

Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Basisset_name_list_by_dgn_context_database_tag_provider_u_any_debug.ml";; 

*)

(* Debug *)

open Basisset_name_list_by_dgn_context_database_tag_provider_v;;

let tag_dcd = Dgn_context_database_tag_by_unit_provider_v.provide ();;

test_number 1 (
(tag_dcd : Dgn_context_database_symbol_t.nwchem_context_database_symbol Tag_t.tag ) =
  (Dgn_context_database_symbol_t.Dgn_context_database_constructor "gaussian_nwchem",
   [5; 3])
);;

let nof_l = Dgn_nameoffile_list_by_dgn_context_database_tag_provider_v.provide tag_dcd;;

test_number 2 (
( nof_l : string list ) =
  ["gaussian_nwchem_3_21g.nwc"; "gaussian_nwchem_6_31gss.nwc";
   "gaussian_nwchem_6_31gssp.nwc"; "gaussian_nwchem_cc_pvtz.nwc";
   "gaussian_nwchem_lanl2dz.nwc"; "gaussian_nwchem_test.nwc";
   "gaussian_nwchem_test_ecp.nwc"]
);;

let nam_dba = Dgn_context_database_tag_v.string_off tag_dcd;;
  
let str_l = List.map
    (String_v.substitute_all_string_from_of_string (nam_dba^"_") "") 
    nof_l;;

let nam_bas_l = List.map
    (String_v.substitute_all_string_from_of_string ".nwc" "") 
    str_l;;

let nam_bas_l = List.sort String.compare nam_bas_l;;

test_number 3 (
(nam_bas_l : string list ) =
["3_21g"; "6_31gss"; "6_31gssp"; "cc_pvtz"; "lanl2dz"; "test"; "test_ecp"]
);;

let nam_bas_l = provide tag_dcd;;

test_number 4 (
(nam_bas_l : string list ) =
["3_21g"; "6_31gss"; "6_31gssp"; "cc_pvtz"; "lanl2dz"; "test"; "test_ecp"]
);;


