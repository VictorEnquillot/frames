open Make_test_v;;

testing "Parameter_context_tag_quadruplet_by_databox_name_n_database_name_provider_v with
    Parameter_context_tag_quadruplet_by_databox_name_n_database_name_provider_u_any.ml";;

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
   #use "Parameter_context_tag_quadruplet_by_databox_name_n_database_name_provider_u_any.ml";; 

*)

open Parameter_context_tag_quadruplet_by_databox_name_n_database_name_provider_v;;

let nam_dbo = "try_ao";;
let nam_dba = "nwchem";;
    
  let tag_ecs = Parameter_context_sector_tag_by_unit_provider_v.provide ();;
  let tag_ecd = Parameter_context_domain_tag_by_unit_provider_v.provide ();;
  let tag_pba = 
    Parameter_context_database_tag_by_database_name_provider_v.provide 
      nam_dba;;  

  let tag_pbo = 
    Parameter_context_databox_tag_by_databox_name_n_database_name_provider_v.provide 
      (nam_dbo, nam_dba);;

let tag_qua = Quadruplet_v.make tag_pbo tag_pba tag_ecd tag_ecs;;

test_number 1 (
(tag_qua :
  (Parameter_context_databox_symbol_t.parameter_context_databox_symbol
   Tag_t.tag,
   Parameter_context_database_symbol_t.parameter_context_database_symbol
   Tag_t.tag,
   Parameter_context_domain_symbol_t.parameter_context_domain_symbol
   Tag_t.tag,
   Parameter_context_sector_symbol_t.parameter_context_sector_symbol
   Tag_t.tag)
  Quadruplet_t.quadruplet ) =
  ((Parameter_context_databox_symbol_t.Parameter_context_databox_constructor
     "try_ao",
    [22; 5; 16; 5]),
   (Parameter_context_database_symbol_t.Parameter_context_database_constructor
     "nwchem",
    [5; 6; 5]),
   (Parameter_context_domain_symbol_t.Parameter_context_domain_constructor
     "parameter",
    [6; 5]),
   (Parameter_context_sector_symbol_t.Parameter_context_sector_constructor
     "internal",
    [5]))
);;

let nam_qua = Quadruplet_v.map 
    Parameter_context_databox_tag_v.string_off 
    Parameter_context_database_tag_v.string_off 
    Parameter_context_domain_tag_v.string_off 
    Parameter_context_sector_tag_v.string_off 
    tag_qua 
;;

test_number 2 (
( nam_qua : (string, string, string, string) Quadruplet_t.quadruplet ) =
  ("try_ao", "nwchem", "parameter", "internal")
);;

test_number 3 (
() = Check_consistency_by_parameter_context_name_quatuor_provider_v.provide nam_qua;
);;

test_number 4 (
tag_qua = provide (nam_dbo, nam_dba)
);;
