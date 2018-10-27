open Make_test_v;;

testing "Elementary_parameter_aopef_container_v with
   Elementary_parameter_aopef_container_u_lanl2dz_debug.ml";;

(* Deleting Registers *)

Register_v.delete  Context_fullnameoffile_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_name_by_context_nameoffile_register_v.register;;
Register_v.delete  Db1figure_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Db1figure_symbol_by_sole_index_register_v.register;;
Register_v.delete  Db1figure_tag_all_list_by_db1figure_context_databox_tag_register_v.register;;
Register_v.delete  Debug_by_module_name_register_v.register;;
Register_v.delete  Elementary_border_by_elementary_tag_register_v.register;;
Register_v.delete  Elementary_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Elementary_fence_by_elementary_tag_register_v.register;;
Register_v.delete  Elementary_symbol_by_sole_index_register_v.register;;
Register_v.delete  Elementary_tag_all_list_by_elementary_context_databox_figuredata_tag_register_v.register;;
Register_v.delete  Elementary_tag_all_list_by_elementary_context_databox_skeletondata_tag_register_v.register;;
Register_v.delete  Elementary_tag_all_list_by_elementary_context_databox_tag_register_v.register;;
Register_v.delete  Elementary_tag_tree_by_elementary_tag_register_v.register;;
Register_v.delete  Nwchem_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Nwchem_lexer_symbol_reverse_list_by_database_fullnameoffile_register_v.register;;
Register_v.delete  Nwchem_symbol_by_sole_index_register_v.register;;
Register_v.delete  Nwchem_tag_all_list_by_nwchem_context_databox_tag_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;
Register_v.delete  Son_elementary_tag_list_by_father_elementary_tag_register_v.register;;





(* Tracing *)

Parameters_general_register_v.store_force "trace-build" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-retrieve" "false";;
Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-trace" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;

(* toplevel 
   #use "Elementary_parameter_aopef_container_u_lanl2dz_debug.ml";;

*)

let nam_dba = "nwchem";;
let nam_dfi = "lanl2dz";;

Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "databox-name" nam_dfi;;

let tag_ele_t = Elementary_tag_tree_by_parameters_general_provider_v.provide ();;
let tag_ele_l = Elementary_tag_all_list_by_parameters_general_provider_v.provide ();;
let tag_edo = Elementary_domain_tag_by_unit_provider_v.provide ();;

(* Domain *)

test_number 1 (
(tag_edo : Elementary_domain_symbol_t.elementary_domain_symbol Tag_t.tag ) =
  (Elementary_domain_symbol_t.Elementary_domain_constructor "elementary",
   [6])
);;

open Elementary_parameter_aopef_container_v;;

(* Parameter_aopef_coefficient *)

let tag_ele_pao = List.find 
    (fun t -> Elementary_symbol_v.is_elementary_parameter_aopef_symbol_off_elementary_symbol 
	(Tag_v.entity_off_tag t) ) 
    tag_ele_l;;

test_number 2 (
( tag_ele_pao : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_fence_symbol
    (Elementary_fence_symbol_t.Elementary_parameter_symbol
      (Elementary_parameter_symbol_t.Elementary_parameter_aopef_symbol
        (Elementary_parameter_aopef_symbol_t.Elementary_parameter_aopef_coefficient_symbol
          (Elementary_parameter_aopef_coefficient_symbol_t.Elementary_parameter_aopef_coefficient_constructor
            "ne s 1 1")))),
   [1; 1; 5; 5; 6])
);;

let tag_epa = Tag_v.map_entity Elementary_symbol_v.elementary_parameter_aopef_symbol_off_elementary_symbol tag_ele_pao;;

test_number 3 (
( tag_epa : Elementary_parameter_aopef_symbol_t.elementary_parameter_aopef_symbol Tag_t.tag ) =
  (Elementary_parameter_aopef_symbol_t.Elementary_parameter_aopef_coefficient_symbol
    (Elementary_parameter_aopef_coefficient_symbol_t.Elementary_parameter_aopef_coefficient_constructor
      "ne s 1 1"),
   [1; 1; 5; 5; 6])
);;

let con_epa = container_of_tag tag_epa ;;

test_number 4 (
(con_epa : Elementary_parameter_aopef_container_t.elementary_parameter_aopef_container ) =
  Elementary_parameter_aopef_container_t.Elementary_parameter_aopef_coefficient_container
   (Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Bohr,
    [1; 1; 1; 5; 5; 6])
);;

let fen_l = fence_as_list tag_epa;;

test_number 5 (
(fen_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
  [(Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_parameter_symbol
       (Elementary_parameter_symbol_t.Elementary_parameter_aopef_symbol
         (Elementary_parameter_aopef_symbol_t.Elementary_parameter_aopef_coefficient_symbol
           (Elementary_parameter_aopef_coefficient_symbol_t.Elementary_parameter_aopef_coefficient_constructor
             "ne s 1 1")))),
    [1; 1; 5; 5; 6])]
);;

let dfe_l = deepfence_as_list tag_epa;;

test_number 6 (
( dfe_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
  [(Elementary_symbol_t.Elementary_deepfence_symbol
     (Elementary_deepfence_symbol_t.Elementary_units_symbol
       (Elementary_units_symbol_t.Elementary_units_length_symbol
         Elementary_units_length_symbol_t.Bohr)),
    [1; 1; 1; 5; 5; 6])]
);;

