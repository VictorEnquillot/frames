open Make_test_v;;

testing "Parameter_as_context_tag_quatuor_by_databox_name_n_database_name_provider_v with
    Parameter_as_context_tag_quatuor_by_databox_name_n_database_name_provider_u_any.ml";;

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
   #use "Parameter_as_context_tag_quatuor_by_databox_name_n_database_name_provider_u_any.ml";; 

*)

open Parameter_as_context_tag_quatuor_by_databox_name_n_database_name_provider_v;;

let nam_dbo = "try_ao";;
let nam_dba = "nwchem";;
    
  let tag_par_ecs = Parameter_as_context_sector_tag_by_unit_provider_v.provide ();;
  let tag_par_ecd = Parameter_as_context_domain_tag_by_unit_provider_v.provide ();;
  let tag_par_pba = 
    Parameter_as_context_database_tag_by_database_name_provider_v.provide 
      nam_dba;;  

  let tag_par_pbo = 
    Parameter_as_context_databox_tag_by_databox_name_n_database_name_provider_v.provide 
      (nam_dbo, nam_dba);;

let tag_par_qua = Quadruplet_v.make tag_par_pbo tag_par_pba tag_par_ecd tag_par_ecs;;

test_number 1 (
(tag_par_qua :
  (Parameter_symbol_t.parameter_symbol Tag_t.tag,
   Parameter_symbol_t.parameter_symbol Tag_t.tag,
   Parameter_symbol_t.parameter_symbol Tag_t.tag,
   Parameter_symbol_t.parameter_symbol Tag_t.tag)
  Quadruplet_t.quadruplet ) =
  ((Parameter_symbol_t.Parameter_context_symbol
     (Parameter_context_symbol_t.Parameter_context_databox_symbol
       (Parameter_context_databox_symbol_t.Parameter_context_databox_constructor
         "try_ao")),
    [22; 5; 16; 5]),
   (Parameter_symbol_t.Parameter_context_symbol
     (Parameter_context_symbol_t.Parameter_context_database_symbol
       (Parameter_context_database_symbol_t.Parameter_context_database_constructor
         "nwchem")),
    [5; 6; 5]),
   (Parameter_symbol_t.Parameter_context_symbol
     (Parameter_context_symbol_t.Parameter_context_domain_symbol
       (Parameter_context_domain_symbol_t.Parameter_context_domain_constructor
         "parameter")),
    [6; 5]),
   (Parameter_symbol_t.Parameter_context_symbol
     (Parameter_context_symbol_t.Parameter_context_sector_symbol
       (Parameter_context_sector_symbol_t.Parameter_context_sector_constructor
         "internal")),
    [5]))
);;

let nam_qua = Quatuor_v.map 
      Parameter_tag_v.string_off 
      tag_par_qua;;

test_number 2 (
(nam_qua : string Quatuor_t.quatuor ) =
  ("try_ao", "nwchem", "parameter", "internal")
);;

test_number 3 (
() = Check_consistency_by_parameter_context_name_quatuor_provider_v.provide nam_qua;
);;

test_number 4 (
tag_par_qua = provide (nam_dbo, nam_dba)
);;
