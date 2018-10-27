open Make_test_v;;

testing "Elementary_context_container_v with
   Elementary_context_container_u_lanl2dz_debug.ml";;

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
   #use "Elementary_context_container_u_lanl2dz_debug.ml";;

*)

let nam_dba = "nwchem";;
let nam_dfi = "lanl2dz";;

Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "databox-name" nam_dfi;;

let tag_ele_t = Elementary_tag_tree_by_parameters_general_provider_v.provide ();;
let tag_ele_l = Elementary_tag_all_list_by_parameters_general_provider_v.provide ();;
let tag_edo = Elementary_domain_tag_by_unit_provider_v.provide ();;

test_number 1 (
(tag_edo : Elementary_domain_symbol_t.elementary_domain_symbol Tag_t.tag ) =
  (Elementary_domain_symbol_t.Elementary_domain_constructor "elementary",
   [6])
);;

let tag_ele_dba = Elementary_as_database_tag_by_database_name_provider_v.provide nam_dba;;

test_number 2 (
(tag_ele_dba : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
 (Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_database_symbol
      (Elementary_database_symbol_t.Elementary_database_constructor "nwchem")),
   [5; 6])
);;

(* Domain *)

let tag_ele_fat = List.find 
    (fun t -> Elementary_symbol_v.is_elementary_domain_symbol_off_elementary_symbol 
	(Tag_v.entity_off_tag t) ) 
    tag_ele_l;;

test_number 3 (
(tag_ele_fat : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_domain_symbol
      (Elementary_domain_symbol_t.Elementary_domain_constructor "elementary")),
   [6])
);;

open Elementary_context_container_v;;

let tag_eco = Tag_v.map_entity Elementary_symbol_v.elementary_context_symbol_off_elementary_symbol tag_ele_dba;;

test_number 4 (
(tag_eco : Elementary_context_symbol_t.elementary_context_symbol Tag_t.tag ) =
  (Elementary_context_symbol_t.Elementary_database_symbol
    (Elementary_database_symbol_t.Elementary_database_constructor "nwchem"),
   [5; 6])
);;

let tag_ele_bui_l =
    Son_elementary_tag_list_by_father_elementary_tag_provider_v.provide 
      tag_ele_dba;;

let tag_bui_l = List.map 
    (Tag_v.map_entity (* Coerce Down *)
       Elementary_symbol_v.elementary_databox_symbol_off_elementary_symbol)
    tag_ele_bui_l;;

let con_eco = container_of_tag tag_eco ;;

test_number 5 (
(con_eco : Elementary_context_container_t.elementary_context_container ) =
  Elementary_context_container_t.Elementary_database_container
   [(Elementary_databox_symbol_t.Elementary_basisset_symbol
      (Elementary_basisset_symbol_t.Elementary_basisset_constructor "lanl2dz"),
     [5; 5; 6])]
);;

let fen_l = fence_as_list tag_eco;;

let fen_ne_s_l = List.filter (fun (s, i) -> String.sub (Elementary_symbol_v.string_off s) 0 4 = "ne s") fen_l;;

test_number 6 (
(fen_ne_s_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
  [(Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_parameter_symbol
       (Elementary_parameter_symbol_t.Elementary_parameter_aopef_symbol
         (Elementary_parameter_aopef_symbol_t.Elementary_parameter_aopef_coefficient_symbol
           (Elementary_parameter_aopef_coefficient_symbol_t.Elementary_parameter_aopef_coefficient_constructor
             "ne s 1 1")))),
    [1; 1; 5; 5; 6]);
   (Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_parameter_symbol
       (Elementary_parameter_symbol_t.Elementary_parameter_aopef_symbol
         (Elementary_parameter_aopef_symbol_t.Elementary_parameter_aopef_exponent_symbol
           (Elementary_parameter_aopef_exponent_symbol_t.Elementary_parameter_aopef_exponent_constructor
             "ne s 1 1")))),
    [2; 1; 5; 5; 6]);
   (Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_parameter_symbol
       (Elementary_parameter_symbol_t.Elementary_parameter_aopef_symbol
         (Elementary_parameter_aopef_symbol_t.Elementary_parameter_aopef_coefficient_symbol
           (Elementary_parameter_aopef_coefficient_symbol_t.Elementary_parameter_aopef_coefficient_constructor
             "ne s 1 2")))),
    [1; 2; 5; 5; 6]);
   (Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_parameter_symbol
       (Elementary_parameter_symbol_t.Elementary_parameter_aopef_symbol
         (Elementary_parameter_aopef_symbol_t.Elementary_parameter_aopef_exponent_symbol
           (Elementary_parameter_aopef_exponent_symbol_t.Elementary_parameter_aopef_exponent_constructor
             "ne s 1 2")))),
    [2; 2; 5; 5; 6]);
   (Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_parameter_symbol
       (Elementary_parameter_symbol_t.Elementary_parameter_aopef_symbol
         (Elementary_parameter_aopef_symbol_t.Elementary_parameter_aopef_coefficient_symbol
           (Elementary_parameter_aopef_coefficient_symbol_t.Elementary_parameter_aopef_coefficient_constructor
             "ne s 1 3")))),
    [1; 3; 5; 5; 6]);
   (Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_parameter_symbol
       (Elementary_parameter_symbol_t.Elementary_parameter_aopef_symbol
         (Elementary_parameter_aopef_symbol_t.Elementary_parameter_aopef_exponent_symbol
           (Elementary_parameter_aopef_exponent_symbol_t.Elementary_parameter_aopef_exponent_constructor
             "ne s 1 3")))),
    [2; 3; 5; 5; 6]);
   (Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_parameter_symbol
       (Elementary_parameter_symbol_t.Elementary_parameter_aopef_symbol
         (Elementary_parameter_aopef_symbol_t.Elementary_parameter_aopef_coefficient_symbol
           (Elementary_parameter_aopef_coefficient_symbol_t.Elementary_parameter_aopef_coefficient_constructor
             "ne s 1 4")))),
    [1; 4; 5; 5; 6]);
   (Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_parameter_symbol
       (Elementary_parameter_symbol_t.Elementary_parameter_aopef_symbol
         (Elementary_parameter_aopef_symbol_t.Elementary_parameter_aopef_exponent_symbol
           (Elementary_parameter_aopef_exponent_symbol_t.Elementary_parameter_aopef_exponent_constructor
             "ne s 1 4")))),
    [2; 4; 5; 5; 6]);
   (Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_parameter_symbol
       (Elementary_parameter_symbol_t.Elementary_parameter_aopef_symbol
         (Elementary_parameter_aopef_symbol_t.Elementary_parameter_aopef_coefficient_symbol
           (Elementary_parameter_aopef_coefficient_symbol_t.Elementary_parameter_aopef_coefficient_constructor
             "ne s 2 1")))),
    [1; 5; 5; 5; 6]);
   (Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_parameter_symbol
       (Elementary_parameter_symbol_t.Elementary_parameter_aopef_symbol
         (Elementary_parameter_aopef_symbol_t.Elementary_parameter_aopef_exponent_symbol
           (Elementary_parameter_aopef_exponent_symbol_t.Elementary_parameter_aopef_exponent_constructor
             "ne s 2 1")))),
    [2; 5; 5; 5; 6]);
   (Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_parameter_symbol
       (Elementary_parameter_symbol_t.Elementary_parameter_aopef_symbol
         (Elementary_parameter_aopef_symbol_t.Elementary_parameter_aopef_coefficient_symbol
           (Elementary_parameter_aopef_coefficient_symbol_t.Elementary_parameter_aopef_coefficient_constructor
             "ne s 2 2")))),
    [1; 6; 5; 5; 6]);
   (Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_parameter_symbol
       (Elementary_parameter_symbol_t.Elementary_parameter_aopef_symbol
         (Elementary_parameter_aopef_symbol_t.Elementary_parameter_aopef_exponent_symbol
           (Elementary_parameter_aopef_exponent_symbol_t.Elementary_parameter_aopef_exponent_constructor
             "ne s 2 2")))),
    [2; 6; 5; 5; 6]);
   (Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_parameter_symbol
       (Elementary_parameter_symbol_t.Elementary_parameter_aopef_symbol
         (Elementary_parameter_aopef_symbol_t.Elementary_parameter_aopef_coefficient_symbol
           (Elementary_parameter_aopef_coefficient_symbol_t.Elementary_parameter_aopef_coefficient_constructor
             "ne s 2 3")))),
    [1; 7; 5; 5; 6]);
   (Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_parameter_symbol
       (Elementary_parameter_symbol_t.Elementary_parameter_aopef_symbol
         (Elementary_parameter_aopef_symbol_t.Elementary_parameter_aopef_exponent_symbol
           (Elementary_parameter_aopef_exponent_symbol_t.Elementary_parameter_aopef_exponent_constructor
             "ne s 2 3")))),
    [2; 7; 5; 5; 6]);
   (Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_parameter_symbol
       (Elementary_parameter_symbol_t.Elementary_parameter_aopef_symbol
         (Elementary_parameter_aopef_symbol_t.Elementary_parameter_aopef_coefficient_symbol
           (Elementary_parameter_aopef_coefficient_symbol_t.Elementary_parameter_aopef_coefficient_constructor
             "ne s 3 1")))),
    [1; 8; 5; 5; 6]);
   (Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_parameter_symbol
       (Elementary_parameter_symbol_t.Elementary_parameter_aopef_symbol
         (Elementary_parameter_aopef_symbol_t.Elementary_parameter_aopef_exponent_symbol
           (Elementary_parameter_aopef_exponent_symbol_t.Elementary_parameter_aopef_exponent_constructor
             "ne s 3 1")))),
    [2; 8; 5; 5; 6])]
);;

let fen_ne_s_l = List.filter (fun (s, i) -> String.sub (Elementary_symbol_v.string_off s) 0 4 = "ne s") fen_l;;

let dfe_l = deepfence_as_list tag_eco;;

let dfe_sl = List_v.sublist_of_int_of_length_of_list 0 3 dfe_l;;

test_number 7 (
( dfe_sl : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
  [(Elementary_symbol_t.Elementary_deepfence_symbol
     (Elementary_deepfence_symbol_t.Elementary_units_symbol
       (Elementary_units_symbol_t.Elementary_units_length_symbol
         Elementary_units_length_symbol_t.Bohr)),
    [1; 1; 1; 5; 5; 6]);
   (Elementary_symbol_t.Elementary_deepfence_symbol
     (Elementary_deepfence_symbol_t.Elementary_units_symbol
       (Elementary_units_symbol_t.Elementary_units_length_symbol
         Elementary_units_length_symbol_t.Bohr)),
    [1; 2; 1; 5; 5; 6]);
   (Elementary_symbol_t.Elementary_deepfence_symbol
     (Elementary_deepfence_symbol_t.Elementary_units_symbol
       (Elementary_units_symbol_t.Elementary_units_length_symbol
         Elementary_units_length_symbol_t.Bohr)),
    [1; 1; 2; 5; 5; 6])]
);;

