open Make_test_v;;

testing "Dgn_nameoffile_list_by_dgn_context_database_tag_provider_v with
    Dgn_nameoffile_list_by_dgn_context_database_tag_provider_u_any_debug.ml";;

(* Deleting Registers *)

Register_v.delete  Debug_by_module_name_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;

(* Tracing *)

Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Dgn_nameoffile_list_by_dgn_context_database_tag_provider_u_any_debug.ml";; 

*)

(* Debug *)

open Dgn_nameoffile_list_by_dgn_context_database_tag_provider_v;;

let tag_dcd = Dgn_context_database_tag_by_unit_provider_v.provide ();;

test_number 1 (
(tag_dcd : Dgn_context_database_symbol_t.nwchem_context_database_symbol Tag_t.tag ) =
  (Dgn_context_database_symbol_t.Dgn_context_database_constructor "gaussian_nwchem",
   [5; 3])
);;

let nam_dir_dcd = 
  Database_fullnameofdirectory_by_dgn_context_database_tag_provider_v.provide 
    tag_dcd;;

let nam_dir_dab = nam_dir_dcd ^ "/files";;

test_number 2 (
(nam_dir_dab : string ) =
  "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_nwchem/files"
);;

let nof_l = provide tag_dcd;;

test_number 3 (
( nof_l : string list ) =  
["gaussian_nwchem_3_21g.nwc"; "gaussian_nwchem_6_31gss.nwc";
   "gaussian_nwchem_6_31gssp.nwc"; "gaussian_nwchem_cc_pvtz.nwc";
   "gaussian_nwchem_lanl2dz.nwc"; "gaussian_nwchem_test.nwc";
   "gaussian_nwchem_test_ecp.nwc"]
);;


