open Make_test_v;;

testing "Skeleton_context_databox_name_list_by_skeleton_context_database_tag_provider_v with
    Skeleton_context_databox_name_list_by_skeleton_context_database_tag_provider_u_any.ml";;

(* Deleting Registers *)
Register_v.delete Basicname_databox_n_basicname_database_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Skeleton_fence_by_skeleton_tag_register_v.register;;
Register_v.delete Skeleton_son_tag_list_by_skeleton_father_tag_register_v.register;;
Register_v.delete Skeleton_symbol_by_sole_index_register_v.register;;
Register_v.delete Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_tag_subtree_by_skeleton_tag_register_v.register;;
Register_v.delete Skeleton_tag_tree_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_tag_tree_by_basicname_databox_n_basicname_database_register_v.register;;





(* Tracing *)


(* toplevel 
   #use "Skeleton_context_databox_name_list_by_skeleton_context_database_tag_provider_u_any.ml";; 

*)

(* Debug *)

open Skeleton_context_databox_name_list_by_skeleton_context_database_tag_provider_v;;

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


