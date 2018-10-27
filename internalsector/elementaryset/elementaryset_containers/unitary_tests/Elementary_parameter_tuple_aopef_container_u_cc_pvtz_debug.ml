open Make_test_v;;

testing "Elementary_parameter_tuple_aopef_container_v with
   Elementary_parameter_tuple_aopef_container_u_cc_pvtz_debug.ml";;

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
Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Elementary_parameter_tuple_aopef_container_u_cc_pvtz_debug.ml";;

*)

let nam_dba = "nwchem";;
let nam_dfi = "cc_pvtz";;

Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "databox-name" nam_dfi;;

let tag_ele_l = Elementary_tag_all_list_by_parameters_general_provider_v.provide ();;

(* Context *) 
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

let tag_ele_bas = List_v.only_element_of_predicate_off_list
    (fun (s, i) -> 
      (Elementary_symbol_v.string_off s = nam_dfi)
	&&
      (Elementary_symbol_v.is_elementary_basisset_constructor s)
    ) tag_ele_l;;

test_number 3 (
( tag_ele_bas : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_databox_symbol
      (Elementary_databox_symbol_t.Elementary_basisset_symbol
        (Elementary_basisset_symbol_t.Elementary_basisset_constructor
          "cc_pvtz"))),
   [4; 5; 6])
);;

open Elementary_parameter_tuple_aopef_container_v;;

(* Argument Elementary_parameter_tuple_aopef_symbol ne 2 p 1 *)

let pre_tag_pta (s, i) = Elementary_symbol_v.is_elementary_parameter_tuple_aopef_symbol_off_elementary_symbol s;;
let pre_tag_pta_sof sof (s, i) = (Elementary_symbol_v.is_elementary_parameter_tuple_aopef_symbol_off_elementary_symbol s)
    && (Elementary_symbol_v.string_off s = sof);;

let tag_ele_pta_l = List.filter pre_tag_pta tag_ele_l;;

let sof_pta = "ne p 2 1";;

let tag_ele_pta_nep21_l = List.filter (pre_tag_pta_sof sof_pta) tag_ele_pta_l;;

let tag_pta_nep21_l = List.map
    (Tag_v.map_entity Elementary_symbol_v.elementary_parameter_tuple_aopef_symbol_off_elementary_symbol) tag_ele_pta_nep21_l;;

test_number 4 (
(tag_pta_nep21_l :
  Elementary_parameter_tuple_aopef_symbol_t.elementary_parameter_tuple_aopef_symbol
  Tag_t.tag list ) =
  [(Elementary_parameter_tuple_aopef_symbol_t.Elementary_parameter_tuple_aopef_constructor
     "ne p 2 1",
    [156; 4; 5; 6])]
);;

let tag_ele_pta = List_v.only_element_of_predicate_off_list (pre_tag_pta_sof sof_pta) tag_ele_pta_l;;

test_number 5 (
( tag_ele_pta : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_parameter_tuple_symbol
      (Elementary_parameter_tuple_symbol_t.Elementary_parameter_tuple_aopef_symbol
        (Elementary_parameter_tuple_aopef_symbol_t.Elementary_parameter_tuple_aopef_constructor
          "ne p 2 1"))),
   [156; 4; 5; 6])
);;

let tag_pta = Tag_v.map_entity Elementary_symbol_v.elementary_parameter_tuple_aopef_symbol_off_elementary_symbol tag_ele_pta;;

test_number 6 (
( tag_pta :
  Elementary_parameter_tuple_aopef_symbol_t.elementary_parameter_tuple_aopef_symbol
  Tag_t.tag ) =
  (Elementary_parameter_tuple_aopef_symbol_t.Elementary_parameter_tuple_aopef_constructor
    "ne p 2 1",
   [156; 4; 5; 6])
);;

let con_pta = container_of_tag tag_pta;;

test_number 7 (
(con_pta :
   Elementary_parameter_aopef_symbol_t.elementary_parameter_aopef_symbol
   Tag_t.tag Duo_t.duo ) =
((Elementary_parameter_aopef_symbol_t.Elementary_parameter_aopef_exponent_symbol
    (Elementary_parameter_aopef_exponent_symbol_t.Elementary_parameter_aopef_exponent_constructor
       "ne p 2 1"),
  [1; 156; 4; 5; 6]),
 (Elementary_parameter_aopef_symbol_t.Elementary_parameter_aopef_coefficient_symbol
    (Elementary_parameter_aopef_coefficient_symbol_t.Elementary_parameter_aopef_coefficient_constructor
       "ne p 2 1"),
  [2; 156; 4; 5; 6]))
);;

let fen_pta = Elementary_parameter_tuple_aopef_container_v.fence_as_list tag_pta;;

test_number 8 (
(fen_pta : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
  [(Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_parameter_symbol
       (Elementary_parameter_symbol_t.Elementary_parameter_aopef_symbol
         (Elementary_parameter_aopef_symbol_t.Elementary_parameter_aopef_exponent_symbol
           (Elementary_parameter_aopef_exponent_symbol_t.Elementary_parameter_aopef_exponent_constructor
             "ne p 2 1")))),
    [1; 156; 4; 5; 6]);
   (Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_parameter_symbol
       (Elementary_parameter_symbol_t.Elementary_parameter_aopef_symbol
         (Elementary_parameter_aopef_symbol_t.Elementary_parameter_aopef_coefficient_symbol
           (Elementary_parameter_aopef_coefficient_symbol_t.Elementary_parameter_aopef_coefficient_constructor
             "ne p 2 1")))),
    [2; 156; 4; 5; 6])]
);;

let dfe_pta = Elementary_parameter_tuple_aopef_container_v.deepfence_as_list tag_pta;;

test_number 9 (
(dfe_pta : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
  [(Elementary_symbol_t.Elementary_deepfence_symbol
     (Elementary_deepfence_symbol_t.Elementary_units_symbol
       (Elementary_units_symbol_t.Elementary_units_length_symbol
         Elementary_units_length_symbol_t.Bohr)),
    [1; 1; 156; 4; 5; 6]);
   (Elementary_symbol_t.Elementary_deepfence_symbol
     (Elementary_deepfence_symbol_t.Elementary_units_symbol
       (Elementary_units_symbol_t.Elementary_units_length_symbol
         Elementary_units_length_symbol_t.Bohr)),
    [1; 2; 156; 4; 5; 6])]
);;


