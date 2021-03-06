open Make_test_v;;

testing "Inputbox_name_list_by_unit_provider_v
   Inputbox_name_list_by_unit_provider_u_any.ml";;

(* Deleting Registers *)
Register_v.delete Box_name_n_base_name_by_sole_index_register_v.register;;
Register_v.delete Context_name_by_context_nameofdirectory_register_v.register;;
Register_v.delete Context_name_by_context_nameoffile_register_v.register;;
Register_v.delete Context_name_list_by_unit_register_v.register;;
Register_v.delete Databasefiles_fullnameofdirectory_list_by_domaindata_fullnameofdirectory_register_v.register;;
Register_v.delete Databasefiles_nameofdirectory_by_database_fullnameofdirectory_register_v.register;;
Register_v.delete Databasefiles_nameofdirectory_by_database_nameofdirectory_register_v.register;;
Register_v.delete Databasefiles_nameofdirectory_list_by_domaindata_fullnameofdirectory_register_v.register;;
Register_v.delete Databasefiles_nameofdirectory_list_by_domaindata_nameofdirectory_register_v.register;;
Register_v.delete Database_fullnameofdirectory_list_by_domaindata_fullnameofdirectory_register_v.register;;
Register_v.delete Database_name_list_by_unit_register_v.register;;
Register_v.delete Database_nameofdirectory_list_by_domaindata_fullnameofdirectory_register_v.register;;
Register_v.delete Database_nameofdirectory_list_by_domaindata_nameofdirectory_register_v.register;;
Register_v.delete Database_ordinal_by_database_name_register_v.register;;
Register_v.delete Databaseset_nameofdirectory_by_database_fullnameofdirectory_register_v.register;;
Register_v.delete Databaseset_nameofdirectory_by_database_nameofdirectory_register_v.register;;
Register_v.delete Databaseset_nameofdirectory_list_by_domaindata_fullnameofdirectory_register_v.register;;
Register_v.delete Databaseset_nameofdirectory_list_by_domaindata_nameofdirectory_register_v.register;;
Register_v.delete Databox_name_list_by_unit_register_v.register;;
Register_v.delete Databox_nameoffile_list_by_databasefiles_fullnameofdirectory_register_v.register;;
Register_v.delete Databox_nameoffile_list_by_databasefiles_nameofdirectory_register_v.register;;
Register_v.delete Databox_nameoffile_list_by_database_nameofdirectory_register_v.register;;
Register_v.delete Databox_ordinal_by_databox_name_register_v.register;;
Register_v.delete Domaindata_fullnameofdirectory_list_by_externalsector_fullnameofdirectory_register_v.register;;
Register_v.delete Domaindata_nameofdirectory_list_by_externalsector_fullnameofdirectory_register_v.register;;
Register_v.delete Domaindata_nameofdirectory_list_in_externalsector_by_unit_register_v.register;;
Register_v.delete Domaininput_nameofdirectory_list_in_entrysector_by_unit_register_v.register;;
Register_v.delete Domain_name_list_by_unit_register_v.register;;
Register_v.delete Domain_ordinal_by_domain_name_register_v.register;;
Register_v.delete Domainset_nameofdirectory_list_by_unit_register_v.register;;
Register_v.delete Domainset_nameofdirectory_list_in_internalsector_by_unit_register_v.register;;
Register_v.delete Domainset_nameofdirectory_list_in_productsector_by_unit_register_v.register;;
Register_v.delete Fullnameoffile_list_by_fullnameofdirectory_register_v.register;;
Register_v.delete Inputbasefiles_fullnameofdirectory_list_by_domaininput_fullnameofdirectory_register_v.register;;
Register_v.delete Inputbasefiles_nameofdirectory_list_by_domaininput_fullnameofdirectory_register_v.register;;
Register_v.delete Inputbasefiles_nameofdirectory_list_by_domaininput_nameofdirectory_register_v.register;;
Register_v.delete Inputbase_nameofdirectory_list_by_domaininput_fullnameofdirectory_register_v.register;;
Register_v.delete Inputbase_nameofdirectory_list_by_domaininput_nameofdirectory_register_v.register;;
Register_v.delete Inputbaseset_fullnameofdirectory_list_by_domaininput_fullnameofdirectory_register_v.register;;
Register_v.delete Inputbaseset_nameofdirectory_by_inputbase_fullnameofdirectory_register_v.register;;
Register_v.delete Inputbaseset_nameofdirectory_by_inputbase_nameofdirectory_register_v.register;;
Register_v.delete Inputbaseset_nameofdirectory_list_by_domaininput_fullnameofdirectory_register_v.register;;
Register_v.delete Inputbaseset_nameofdirectory_list_by_domaininput_nameofdirectory_register_v.register;;
Register_v.delete Inputbox_nameoffile_list_by_inputbasefiles_fullnameofdirectory_register_v.register;;
Register_v.delete Inputbox_ordinal_by_inputbox_name_register_v.register;;
Register_v.delete Nameofcodefile_list_by_fullnameofdirectory_register_v.register;;
Register_v.delete Nameofdirectory_list_by_fullnameofdirectory_register_v.register;;
Register_v.delete Nameoffile_list_by_fullnameofdirectory_register_v.register;;
Register_v.delete Nameofusedfile_list_by_fullnameofdirectory_register_v.register;;
Register_v.delete Sector_fullnameofdirectory_list_by_unit_register_v.register;;
Register_v.delete Sector_name_list_by_unit_register_v.register;;
Register_v.delete Sector_nameofdirectory_list_by_unit_register_v.register;;
Register_v.delete Sector_ordinal_by_sector_name_register_v.register;;



(* Tracing *)

(* toplevel 
   #use "Inputbox_name_list_by_unit_provider_u_any.ml";;

*)

open Inputbox_name_list_by_unit_provider_v;;

let nof_ifi_l = Inputbox_nameoffile_list_by_unit_provider_v.provide ();;

test_number 1 (
( nof_ifi_l : String.t list ) = 
  ["Comments.loc"; "Define.loc"; "Define_context_con_hom.loc";
   "Define_context_con_nwc.loc"; "Define_coordinate_phi.loc";
   "Define_evaluating_expression.loc"; "Define_external_aopef_hes11.loc";
   "Define_float.loc"; "Define_integer.loc"; "Define_numerical.loc";
   "Define_operator_hom_b_2.loc"; "Define_operator_hom_b_2_fail.loc";
   "Define_operator_xxx.loc"; "Define_point_tag.loc"; "Define_run.loc";
   "Define_string.loc"; "Define_symbol_triangle_t.loc"; "Define_target.loc";
   "Define_target_poi_h_fail.loc"; "Define_target_point_t_a.loc";
   "Define_target_with_substitution.loc"; "Define_title.loc";
   "Define_units.loc"; "Define_word.loc"; "Full.loc";
   "Generate_figureset.loc"; "Include.loc"; "Point_a_print.loc";
   "Print_aopef_he2p1.loc"; "Print_aopef_hes11.loc";
   "Print_coordinate_phi_point_a_a.loc";
   "Print_coordinate_tuple_point_t_a.loc"; "Print_copy_aopef_hes11.loc";
   "Print_debug_length_segment_bc.loc";
   "Print_distance_point_bc_b_point_bc_c.loc";
   "Print_homothety_coordinate_tuple_t_a.loc";
   "Print_homothety_n_translation_point_a.loc";
   "Print_homothety_point_a.loc"; "Print_homothety_triangle_x.loc";
   "Print_parameter_tuple_aopef_hes11.loc";
   "Print_parameter_tuple_aopef_nep21.loc"; "Print_perimeter_triangle_t.loc";
   "Print_point_t_a.loc"; "Print_point_tag_a_a.loc";
   "Print_point_tag_a_a_point_tag_t_a.loc"; "Print_point_tag_t_a.loc";
   "Print_point_tra_s_translation.loc"; "Print_point_value_a_a.loc";
   "Print_segment.loc"; "Print_translation_coordinate_tuple_t_a.loc";
   "Print_translation_point_tra_bc.loc"; "Print_triangle_t.loc";
   "Provide_point_tag_a.loc"; "Set.loc"; "Set_debug.loc";
   "Set_debug_module.loc"; "Test.loc";
   "Triangle_t_perimeter_two_transformations.loc"; "Write.loc"]
);;

let nam_nun_ifi_l = List.map
      Context_name_by_context_nameoffile_provider_v.provide
      nof_ifi_l;;

test_number 2 (
(nam_nun_ifi_l : String.t list ) = 
  ["Comments"; "Define"; "Define_context_con_hom"; "Define_context_con_nwc";
   "Define_coordinate_phi"; "Define_evaluating_expression";
   "Define_external_aopef_hes11"; "Define_float"; "Define_integer";
   "Define_numerical"; "Define_operator_hom_b_2";
   "Define_operator_hom_b_2_fail"; "Define_operator_xxx"; "Define_point_tag";
   "Define_run"; "Define_string"; "Define_symbol_triangle_t";
   "Define_target"; "Define_target_poi_h_fail"; "Define_target_point_t_a";
   "Define_target_with_substitution"; "Define_title"; "Define_units";
   "Define_word"; "Full"; "Generate_figureset"; "Include"; "Point_a_print";
   "Print_aopef_he2p1"; "Print_aopef_hes11";
   "Print_coordinate_phi_point_a_a"; "Print_coordinate_tuple_point_t_a";
   "Print_copy_aopef_hes11"; "Print_debug_length_segment_bc";
   "Print_distance_point_bc_b_point_bc_c";
   "Print_homothety_coordinate_tuple_t_a";
   "Print_homothety_n_translation_point_a"; "Print_homothety_point_a";
   "Print_homothety_triangle_x"; "Print_parameter_tuple_aopef_hes11";
   "Print_parameter_tuple_aopef_nep21"; "Print_perimeter_triangle_t";
   "Print_point_t_a"; "Print_point_tag_a_a";
   "Print_point_tag_a_a_point_tag_t_a"; "Print_point_tag_t_a";
   "Print_point_tra_s_translation"; "Print_point_value_a_a"; "Print_segment";
   "Print_translation_coordinate_tuple_t_a";
   "Print_translation_point_tra_bc"; "Print_triangle_t";
   "Provide_point_tag_a"; "Set"; "Set_debug"; "Set_debug_module"; "Test";
   "Triangle_t_perimeter_two_transformations"; "Write"]
);;

let nam_ifi_l = List_v.left_once_list_off_list nam_nun_ifi_l;;

test_number 3 (
nam_ifi_l = provide ()
);;

