open Make_test_v;;

testing "Parameter_as_context_sector_tag_by_unit_provider_v with
    Parameter_as_context_sector_tag_by_unit_provider_u_any.ml";;

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
   #use "Parameter_as_context_sector_tag_by_unit_provider_u_any.ml";; 

*)

open Parameter_as_context_sector_tag_by_unit_provider_v;;

let nam_ecs = Parameter_context_sector_name_by_unit_provider_v.provide ();;

test_number 1 (
(nam_ecs : string ) = 
"internal" 
);;

let soi_ecs = Context_sole_index_by_sector_name_provider_v.provide nam_ecs;;
  
test_number 2 (
(soi_ecs : int list ) = 
[5]
);;

let sym_par_ncs = 
    Parameter_symbol_v.parameter_context_sector_constructor 
      nam_ecs;;

test_number 3 (
( sym_par_ncs :
  Parameter_symbol_t.parameter_symbol ) =
  Parameter_symbol_t.Parameter_context_symbol
   (Parameter_context_symbol_t.Parameter_context_sector_symbol
     (Parameter_context_sector_symbol_t.Parameter_context_sector_constructor
       "internal"))
);;
 
let tag_par_ncs = Tag_v.make sym_par_ncs soi_ecs;;

test_number 4 (
(tag_par_ncs :
  Parameter_symbol_t.parameter_symbol
  Tag_t.tag ) =
  (Parameter_symbol_t.Parameter_context_symbol
    (Parameter_context_symbol_t.Parameter_context_sector_symbol
      (Parameter_context_sector_symbol_t.Parameter_context_sector_constructor
        "internal")),
   [5])
);;

test_number 5 (
tag_par_ncs = provide ()
);;
