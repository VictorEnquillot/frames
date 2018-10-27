open Make_test_v;;

testing "Datafile_name_list_nwchemdata_context_database_tag_provider_v with
    Datafile_name_list_nwchemdata_context_database_tag_provider_u_any.ml";;

(* Deleting Registers *)
Register_v.delete Databox_name_n_database_name_by_nwchemdata_context_databox_tag_register_v.register;;
Register_v.delete Nwchemdata_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Nwchemdata_set_fence_by_nwchemdata_tag_register_v.register;;
Register_v.delete Nwchemdata_son_tag_list_by_nwchemdata_father_tag_register_v.register;;
Register_v.delete Nwchemdata_symbol_by_sole_index_register_v.register;;
Register_v.delete Nwchemdata_symbol_subtree_by_databox_name_register_v.register;;
Register_v.delete Nwchemdata_tag_all_list_by_databox_name_register_v.register;;
Register_v.delete Nwchemdata_tag_all_list_by_nwchemdata_context_databox_tag_register_v.register;;
Register_v.delete Nwchemdata_tag_subtree_by_nwchemdata_tag_register_v.register;;
Register_v.delete Nwchemdata_tag_tree_by_databox_name_register_v.register;;




(* Tracing *)


(* toplevel 
   #use "Datafile_name_list_nwchemdata_context_database_tag_provider_u_any.ml";; 

*)

(* Debug *)

open Datafile_name_list_nwchemdata_context_database_tag_provider_v;;

let tag_dcd = Database_name_by_unit_provider_v.provide ();;

test_number 1 (
(tag_dcd : Nwchemdata_context_database_symbol_t.nwchemdata_context_database_symbol Tag_t.tag ) =
  (Nwchemdata_context_database_symbol_t.Nwchemdata_context_database_constructor "nwchem",
   [5; 3])
);;

let nof_l = Nwchemdata_nameoffile_list_nwchemdata_context_database_tag_provider_v.provide tag_dcd;;

test_number 2 (
( nof_l : string list ) =
  ["gaussian_nwchemdata_3_21g.nwc"; "gaussian_nwchemdata_6_31gss.nwc";
   "gaussian_nwchemdata_6_31gssp.nwc"; "gaussian_nwchemdata_cc_pVTZ.nwc";
   "gaussian_nwchemdata_lanl2dz.nwc"; "gaussian_nwchemdata_test.nwc";
   "gaussian_nwchemdata_test_ecp.nwc"]
);;

let nam_dfi = Database_name_v.string_off tag_dcd;;
  
let str_l = List.map
    (String_v.substitute_all_string_from_of_string (nam_dfi^"_") "") 
    nof_l;;

let nam_bas_l = List.map
    (String_v.substitute_all_string_from_of_string ".nwc" "") 
    str_l;;

let nam_bas_l = List.sort String.compare nam_bas_l;;

test_number 3 (
(nam_bas_l : string list ) =
["3_21g"; "6_31gss"; "6_31gssp"; "cc_pVTZ"; "lanl2dz"; "test"; "test_ecp"]
);;

let nam_bas_l = provide tag_dcd;;

test_number 4 (
(nam_bas_l : string list ) =
["3_21g"; "6_31gss"; "6_31gssp"; "cc_pVTZ"; "lanl2dz"; "test"; "test_ecp"]
);;


