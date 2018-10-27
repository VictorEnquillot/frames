open Make_test_v;;

testing "Nwchemdata_databox_name_by_unit_provider_v with
    Nwchemdata_databox_name_by_unit_provider_u_lanl2dz.ml";;

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
   #use "Nwchemdata_databox_name_by_unit_provider_u_lanl2dz.ml";; 

*)

let nam_bas = "lanl2dz";;
 
(* Debug *)

open Nwchemdata_databox_name_by_unit_provider_v;;

let nam_bas = Parameters_general_provider_v.provide "databox-name";;
let nam_dfi = Nwchemdata_context_database_name_by_unit_provider_v.provide ();;

test_number 1 (
(nam_dfi : string) =
"nwchem"
);;

let nam_bas_l = Datafile_name_list_nwchemdata_context_database_tag_provider_v.provide nam_dfi;;

test_number 2 (
(nam_bas_l : string list ) =
 ["3_21g"; "6_31gss"; "6_31gssp"; "cc_pVTZ"; "lanl2dz"; "test"; "test_ecp"]
);;

let boo = List.exists (fun s -> s = nam_bas) nam_bas_l;;

test_number 3 (
boo
);;

let nam_bas = provide ();;

test_number 4 (
(nam_bas : string ) = 
"lanl2dz"
);;

