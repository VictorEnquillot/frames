open Make_test_v;;

testing "Elementary_body_parameter_tuple_container_v with
    Elementary_body_parameter_tuple_container_u_test_ao_debug.ml";;

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

Parameters_general_register_v.store_force "trace-retrieve" "false";;
Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Elementary_body_parameter_tuple_container_u_test_ao_debug.ml";;

*)

(* Database file *)

let nam_dbo = "test_ao";;
let nam_dba = "nwchem";;
Parameters_general_register_v.store "databox-name" nam_dbo;;
Parameters_general_register_v.store "database-name" nam_dba;;

let tag_ele_l = Elementary_tag_all_list_by_parameters_general_provider_v.provide () ;;

let pre_tag_eta_sof sof (s, i) = 
  (Elementary_symbol_v.elementary_body_parameter_tuple_aopef_constructor sof=s)
;;
 
let sof_ele_eta = "he s 2 1";;

let tag_ele_eta = List_v.only_element_of_predicate_off_list (pre_tag_eta_sof sof_ele_eta) tag_ele_l;;

test_number 1 (
(tag_ele_eta : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
      (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
        (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
          "he s 2 1"))),
   [3; 6; 5; 6])
);;

open Elementary_body_parameter_tuple_container_v;; 
     
(* Argument *)

let tag_ept = Tag_v.map_entity Elementary_symbol_v.elementary_body_parameter_tuple_symbol_off_elementary_symbol tag_ele_eta;;

test_number 2 (  
(tag_ept :
 Elementary_body_parameter_tuple_symbol_t.elementary_body_parameter_tuple_symbol
  Tag_t.tag ) =
  (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
    (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
      "he s 2 1"),
   [3; 6; 5; 6])
);;

(** {6 Coercing Up Elementary_body_parameter_tuple_coefficient Tag} *)

test_number 3 (
tag_ele_eta = coerce_up_tag tag_ept
);;

(** {6 Builders} *)

(** {9 Builder Tag list} *)

let tag_bui_l = builder_tag_list tag_ept;;

test_number 4 (
(tag_bui_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
  [(Elementary_symbol_t.Elementary_border_symbol
     (Elementary_border_symbol_t.Elementary_border_parameter_symbol
       (Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
         (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_exponent_symbol
           (Elementary_border_parameter_aopef_exponent_symbol_t.Elementary_border_parameter_aopef_exponent_constructor
             "he s 2 1")))),
    [1; 3; 6; 5; 6]);
   (Elementary_symbol_t.Elementary_border_symbol
     (Elementary_border_symbol_t.Elementary_border_parameter_symbol
       (Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
         (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_coefficient_symbol
           (Elementary_border_parameter_aopef_coefficient_symbol_t.Elementary_border_parameter_aopef_coefficient_constructor
             "he s 2 1")))),
    [2; 3; 6; 5; 6])]
);;

(** {9 Builder Tag Tuple} *)

let tag_bui_t = builder_tag_tuple tag_ept;;

test_number 5 (
(tag_bui_t : Elementary_symbol_t.elementary_symbol Tag_t.tag Tuple_t.tuple ) =
  Tuple_t.Duo
   ((Elementary_symbol_t.Elementary_border_symbol
      (Elementary_border_symbol_t.Elementary_border_parameter_symbol
        (Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
          (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_exponent_symbol
            (Elementary_border_parameter_aopef_exponent_symbol_t.Elementary_border_parameter_aopef_exponent_constructor
              "he s 2 1")))),
     [1; 3; 6; 5; 6]),
    (Elementary_symbol_t.Elementary_border_symbol
      (Elementary_border_symbol_t.Elementary_border_parameter_symbol
        (Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
          (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_coefficient_symbol
            (Elementary_border_parameter_aopef_coefficient_symbol_t.Elementary_border_parameter_aopef_coefficient_constructor
              "he s 2 1")))),
     [2; 3; 6; 5; 6]))
);;

(** {9 Building as Builder Tag duo} *)

let bug_ept = building_of_tag tag_ept;;

test_number 6 (
(bug_ept : Elementary_symbol_t.elementary_symbol Tag_t.tag Tuple_t.tuple ) =
  Tuple_t.Duo
   ((Elementary_symbol_t.Elementary_border_symbol
      (Elementary_border_symbol_t.Elementary_border_parameter_symbol
        (Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
          (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_exponent_symbol
            (Elementary_border_parameter_aopef_exponent_symbol_t.Elementary_border_parameter_aopef_exponent_constructor
              "he s 2 1")))),
     [1; 3; 6; 5; 6]),
    (Elementary_symbol_t.Elementary_border_symbol
      (Elementary_border_symbol_t.Elementary_border_parameter_symbol
        (Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
          (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_coefficient_symbol
            (Elementary_border_parameter_aopef_coefficient_symbol_t.Elementary_border_parameter_aopef_coefficient_constructor
              "he s 2 1")))),
     [2; 3; 6; 5; 6]))
);;

(** {6 Container} *)

(** {9 Coercing Down Builder Tag to Containee Tag} *)

let tag_cnu_l = List.map containee_up_tag_off_builder_tag tag_bui_l;;

test_number 7 (
(tag_cnu_l :
  Elementary_border_parameter_symbol_t.elementary_border_parameter_symbol
  Tag_t.tag list ) =
  [(Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
     (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_exponent_symbol
       (Elementary_border_parameter_aopef_exponent_symbol_t.Elementary_border_parameter_aopef_exponent_constructor
         "he s 2 1")),
    [1; 3; 6; 5; 6]);
   (Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
     (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_coefficient_symbol
       (Elementary_border_parameter_aopef_coefficient_symbol_t.Elementary_border_parameter_aopef_coefficient_constructor
         "he s 2 1")),
    [2; 3; 6; 5; 6])]
);;

(** {9 Coercing Up Containee_up to Builder} *)

test_number 8 (
tag_bui_l = List.map builder_tag_of_containee_up_tag tag_cnu_l
);;

(** {9 Containee_up Tag list} *)

let tag_cnu_l = containee_up_tag_list tag_ept;;

test_number 9 (
(tag_cnu_l :
  Elementary_border_parameter_symbol_t.elementary_border_parameter_symbol
  Tag_t.tag list ) =
  [(Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
     (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_exponent_symbol
       (Elementary_border_parameter_aopef_exponent_symbol_t.Elementary_border_parameter_aopef_exponent_constructor
         "he s 2 1")),
    [1; 3; 6; 5; 6]);
   (Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
     (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_coefficient_symbol
       (Elementary_border_parameter_aopef_coefficient_symbol_t.Elementary_border_parameter_aopef_coefficient_constructor
         "he s 2 1")),
    [2; 3; 6; 5; 6])]
);;

(** {9 Extracting Containees off Containee_up} *)

(** {9 Container_of_tag : Containee Datastructure} *)

(** {9 Extracting Containees off Tag} *)

(** {6 Fence *)

let fen_ept_l = fence_as_list tag_ept;;

test_number 10 (
(fen_ept_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
  [(Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_fence_units_symbol
       (Elementary_fence_units_symbol_t.Elementary_fence_units_length_symbol
         Elementary_fence_units_length_symbol_t.Bohr)),
    [1; 1; 3; 6; 5; 6]);
   (Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_fence_units_symbol
       (Elementary_fence_units_symbol_t.Elementary_fence_units_length_symbol
         Elementary_fence_units_length_symbol_t.Bohr)),
    [1; 2; 3; 6; 5; 6])]
);;

let fen_ept_t = fence_as_tuple tag_ept;;

test_number 11 (
( fen_ept_t : Elementary_symbol_t.elementary_symbol Tag_t.tag Tuple_t.tuple ) =
  Tuple_t.Duo
   ((Elementary_symbol_t.Elementary_fence_symbol
      (Elementary_fence_symbol_t.Elementary_fence_units_symbol
        (Elementary_fence_units_symbol_t.Elementary_fence_units_length_symbol
          Elementary_fence_units_length_symbol_t.Bohr)),
     [1; 1; 3; 6; 5; 6]),
    (Elementary_symbol_t.Elementary_fence_symbol
      (Elementary_fence_symbol_t.Elementary_fence_units_symbol
        (Elementary_fence_units_symbol_t.Elementary_fence_units_length_symbol
          Elementary_fence_units_length_symbol_t.Bohr)),
     [1; 2; 3; 6; 5; 6]))
);;

let fen_ept_tl = fence_as_tuple_list tag_ept;;

test_number 12 (
(fen_ept_tl :
  Elementary_symbol_t.elementary_symbol Tag_t.tag Tuple_t.tuple list ) =
 [Tuple_t.Duo
    ((Elementary_symbol_t.Elementary_fence_symbol
       (Elementary_fence_symbol_t.Elementary_fence_units_symbol
         (Elementary_fence_units_symbol_t.Elementary_fence_units_length_symbol
           Elementary_fence_units_length_symbol_t.Bohr)),
      [1; 1; 3; 6; 5; 6]),
     (Elementary_symbol_t.Elementary_fence_symbol
       (Elementary_fence_symbol_t.Elementary_fence_units_symbol
         (Elementary_fence_units_symbol_t.Elementary_fence_units_length_symbol
           Elementary_fence_units_length_symbol_t.Bohr)),
      [1; 2; 3; 6; 5; 6]))]
);;


