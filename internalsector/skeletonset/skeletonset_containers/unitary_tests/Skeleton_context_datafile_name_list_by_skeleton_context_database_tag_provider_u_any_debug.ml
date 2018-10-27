open Make_test_v;;

testing "Skeleton_context_datafile_name_list_by_skeleton_context_database_tag_provider_v with
    Skeleton_context_datafile_name_list_by_skeleton_context_database_tag_provider_u_any_debug.ml";;

(* Deleting Registers *)

Register_v.delete  Context_fullnameoffile_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_index_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_name_by_context_nameoffile_register_v.register;;
Register_v.delete  Debug_by_module_name_register_v.register;;
Register_v.delete  Elementary_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Elementary_deepfence_by_elementary_tag_register_v.register;;
Register_v.delete  Elementary_symbol_by_sole_index_register_v.register;;
Register_v.delete  Elementary_tag_all_list_by_elementary_basisset_tag_register_v.register;;
Register_v.delete  Elementary_tag_tree_by_elementary_tag_register_v.register;;
Register_v.delete  Nwchem_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Nwchem_lexer_symbol_reverse_list_by_database_fullnameoffile_register_v.register;;
Register_v.delete  Nwchem_symbol_by_sole_index_register_v.register;;
Register_v.delete  Nwchem_tag_all_list_by_nwchem_context_basisset_tag_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;
Register_v.delete  Skeleton_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Skeleton_symbol_by_sole_index_register_v.register;;
Register_v.delete  Skeleton_tag_all_list_by_skeleton_context_datafile_tag_register_v.register;;
Register_v.delete  Skeleton_tag_subtree_by_skeleton_tag_register_v.register;;
Register_v.delete  Son_nwchem_tag_list_by_father_nwchem_tag_register_v.register;;


(* Tracing *)

Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Skeleton_context_datafile_name_list_by_skeleton_context_database_tag_provider_u_any_debug.ml";; 

*)

(* Debug *)

open Skeleton_context_datafile_name_list_by_skeleton_context_database_tag_provider_v;;

let tag_dcd = Skeleton_context_database_tag_by_unit_provider_v.provide ();;

test_number 1 (
(tag_dcd : Skeleton_context_database_symbol_t.skeleton_context_database_symbol Tag_t.tag ) =
  (Skeleton_context_database_symbol_t.Skeleton_context_database_constructor "nwchem",
   [5; 3])
);;

let nof_l = Skeleton_nameoffile_list_by_skeleton_context_database_tag_provider_v.provide tag_dcd;;

test_number 2 (
( nof_l : string list ) =
  ["nwchem_3_21g.dgn"; "nwchem_6_31gss.dgn";
   "nwchem_6_31gssp.dgn"; "nwchem_cc_pvtz.dgn";
   "nwchem_lanl2dz.dgn"; "nwchem_test.dgn";
   "nwchem_test_ecp.dgn"]
);;

let nam_dba = Skeleton_context_database_tag_v.string_off tag_dcd;;
  
let str_l = List.map
    (String_v.substitute_all_string_from_of_string (nam_dba^"_") "") 
    nof_l;;

let nam_bas_l = List.map
    (String_v.substitute_all_string_from_of_string ".dgn" "") 
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


