open Make_test_v;;

testing "Parameter_context_databox_symbol_by_any_sole_index_provider_v with
    Parameter_context_databox_symbol_by_any_sole_index_provider_u_any.ml";;

(* Deleting Registers *)
Register_v.delete Databox_name_n_database_name_by_parameter_context_databox_tag_register_v.register;;
Register_v.delete Parameter_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Parameter_fence_by_parameter_tag_register_v.register;;
Register_v.delete Parameter_son_tag_list_by_parameter_father_tag_register_v.register;;
Register_v.delete Parameter_symbol_by_sole_index_register_v.register;;
Register_v.delete Parameter_tag_all_list_by_databox_name_n_database_name_register_v.register;;
Register_v.delete Parameter_tag_all_list_by_parameter_context_databox_tag_register_v.register;;
Register_v.delete Parameter_tag_subtree_by_parameter_tag_register_v.register;;
Register_v.delete Parameter_tag_tree_by_databox_name_n_database_name_register_v.register;;
Register_v.delete Parameter_tag_tree_by_parameter_context_databox_tag_register_v.register;;

(* Tracing *)


(* toplevel 
   #use "Parameter_context_databox_symbol_by_any_sole_index_provider_u_any.ml";; 

*)


open Parameter_context_databox_symbol_by_any_sole_index_provider_v;;

let nam_dbo = "cc_pVTZ";;

let tag_nwc_l = Parameter_tag_all_list_by_databox_name_n_database_name_provider_v.provide nam_dbo;;
let soi_nwc_al = List.filter 
    (fun i -> (List.length i > 12) && (List.hd i = 1) && (List.nth i 1 = 2))
    (Doublet_list_v.right_list_off_doublet_list tag_nwc_l);;

test_number 1 (
(soi_nwc_al : Sole_index_t.sole_index list ) =
  [[1; 2; 2; 1; 2; 1; 2; 2; 2; 8; 5; 20; 2];
   [1; 2; 2; 1; 2; 2; 2; 2; 2; 8; 5; 20; 2];
   [1; 2; 2; 1; 2; 3; 2; 2; 2; 8; 5; 20; 2];
   [1; 2; 2; 4; 2; 3; 2; 2; 2; 8; 5; 20; 2];
   [1; 2; 2; 1; 2; 4; 2; 2; 2; 8; 5; 20; 2];
   [1; 2; 2; 4; 2; 4; 2; 2; 2; 8; 5; 20; 2];
   [1; 2; 2; 1; 2; 5; 2; 2; 2; 8; 5; 20; 2];
   [1; 2; 2; 4; 2; 5; 2; 2; 2; 8; 5; 20; 2];
   [1; 2; 2; 1; 2; 6; 2; 2; 2; 8; 5; 20; 2];
   [1; 2; 2; 4; 2; 6; 2; 2; 2; 8; 5; 20; 2];
   [1; 2; 2; 1; 2; 7; 2; 2; 2; 8; 5; 20; 2];
   [1; 2; 2; 4; 2; 7; 2; 2; 2; 8; 5; 20; 2];
   [1; 2; 2; 1; 2; 8; 2; 2; 2; 8; 5; 20; 2];
   [1; 2; 2; 4; 2; 8; 2; 2; 2; 8; 5; 20; 2];
   [1; 2; 2; 1; 2; 9; 2; 2; 2; 8; 5; 20; 2];
   [1; 2; 2; 4; 2; 9; 2; 2; 2; 8; 5; 20; 2];
   [1; 2; 2; 1; 2; 10; 2; 2; 2; 8; 5; 20; 2];
   [1; 2; 2; 4; 2; 10; 2; 2; 2; 8; 5; 20; 2]]
);;

let soi_any = List.nth soi_nwc_al 5;;

test_number 2 (
(soi_any : Sole_index_t.sole_index ) =
  [1; 2; 2; 4; 2; 4; 2; 2; 2; 8; 5; 20; 2]
);;

let nam_dbo = 
    Parameter_context_databox_name_by_any_sole_index_provider_v.provide 
      soi_any;;

test_number 3 (
(nam_dbo : string ) = 
"cc_pVTZ"
);;

let sym_pbo = Parameter_context_databox_symbol_v.parameter_context_databox_constructor 
      nam_dbo;;

test_number 4 (
( sym_pbo :
  Parameter_context_databox_symbol_t.parameter_context_databox_symbol ) =
  Parameter_context_databox_symbol_t.Parameter_context_databox_constructor
   "cc_pVTZ"
);;

test_number 5 (
sym_pbo = provide soi_any
);;
