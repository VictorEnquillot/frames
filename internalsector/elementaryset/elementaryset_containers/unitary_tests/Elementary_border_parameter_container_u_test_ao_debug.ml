open Make_test_v;;

testing "Elementary_border_parameter_container_v with
    Elementary_border_parameter_container_u_test_ao_debug.ml";;

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
   #use "Elementary_border_parameter_container_u_test_ao_debug.ml";;

*)

(* Database file *)

let nam_dbo = "test_ao";;
let nam_dba = "nwchem";;
Parameters_general_register_v.store "databox-name" nam_dbo;;
Parameters_general_register_v.store "database-name" nam_dba;;

let tag_ele_l = Elementary_tag_all_list_by_parameters_general_provider_v.provide () ;;

let pre_tag_eac_sof sof (s, i) = 
  (Elementary_symbol_v.elementary_border_parameter_aopef_coefficient_constructor sof=s)
;;
 
let sof_ele_eac = "he s 2 1";;

let tag_ele_eac = List_v.only_element_of_predicate_off_list (pre_tag_eac_sof sof_ele_eac) tag_ele_l;;

test_number 1 (
(tag_ele_eac : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_border_symbol
    (Elementary_border_symbol_t.Elementary_border_parameter_symbol
      (Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
        (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_coefficient_symbol
          (Elementary_border_parameter_aopef_coefficient_symbol_t.Elementary_border_parameter_aopef_coefficient_constructor
            "he s 2 1")))),
   [2; 3; 6; 5; 6])
);;

open Elementary_border_parameter_container_v;; 
     
(* Argument *)

let tag_ebp = Tag_v.map_entity Elementary_symbol_v.elementary_border_parameter_symbol_off_elementary_symbol tag_ele_eac;;

test_number 2 (  
( tag_ebp :
  Elementary_border_parameter_symbol_t.elementary_border_parameter_symbol
  Tag_t.tag ) =
  (Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
    (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_coefficient_symbol
      (Elementary_border_parameter_aopef_coefficient_symbol_t.Elementary_border_parameter_aopef_coefficient_constructor
        "he s 2 1")),
   [2; 3; 6; 5; 6])
);;

(** {6 Coercing Up Elementary_border_parameter_aopef_coefficient Tag} *)

test_number 3 (
tag_ele_eac = coerce_up_tag tag_ebp
);;

(** {6 Builder Tag list} *)

let tag_bui_l = builder_tag_list tag_ebp;;

test_number 4 (
(tag_bui_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
  [(Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_fence_units_symbol
       (Elementary_fence_units_symbol_t.Elementary_fence_units_length_symbol
         Elementary_fence_units_length_symbol_t.Bohr)),
    [1; 2; 3; 6; 5; 6])]
);;

(** {6 Builder Tag Datastructure} *)

let tag_bui = builder_tag_uno tag_ebp;;

test_number 5 (
(tag_bui : Elementary_symbol_t.elementary_symbol Tag_t.tag Uno_t.uno ) =
  (Elementary_symbol_t.Elementary_fence_symbol
    (Elementary_fence_symbol_t.Elementary_fence_units_symbol
      (Elementary_fence_units_symbol_t.Elementary_fence_units_length_symbol
        Elementary_fence_units_length_symbol_t.Bohr)),
   [1; 2; 3; 6; 5; 6])
);;

(** {6 Building as Builder Tag uno} *)

let bug_ebp = building_of_tag tag_ebp;;

test_number 6 (
(bug_ebp : Elementary_symbol_t.elementary_symbol Tag_t.tag Uno_t.uno ) =
(Elementary_symbol_t.Elementary_fence_symbol
   (Elementary_fence_symbol_t.Elementary_fence_units_symbol
      (Elementary_fence_units_symbol_t.Elementary_fence_units_length_symbol
         Elementary_fence_units_length_symbol_t.Bohr)),
 [1; 2; 3; 6; 5; 6])
);;

(** {6 Builder Tag tuple} *)

let tag_bui_t = builder_tag_tuple tag_ebp;;

test_number 7 (
(tag_bui_t :
   Elementary_symbol_t.elementary_symbol Tag_t.tag Uno_t.uno Tuple_t.tuple ) =
  Tuple_t.Uno
   (Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_fence_units_symbol
       (Elementary_fence_units_symbol_t.Elementary_fence_units_length_symbol
         Elementary_fence_units_length_symbol_t.Bohr)),
    [1; 2; 3; 6; 5; 6])
);;

(** {6 Coercing Down Builder Tag to Containee Tag} *)

let tag_ful = containee_tag_off_builder_tag tag_bui;;

test_number 8 (
(tag_ful :
  Elementary_fence_units_length_symbol_t.elementary_fence_units_length_symbol
  Tag_t.tag ) =
  (Elementary_fence_units_length_symbol_t.Bohr, [1; 2; 3; 6; 5; 6])
);;

(** {6 Coercing Up Containee Tag} *)

let tag_bui = builder_tag_of_containee_tag tag_ful;;

test_number 9 (
(tag_bui : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_fence_symbol
    (Elementary_fence_symbol_t.Elementary_fence_units_symbol
      (Elementary_fence_units_symbol_t.Elementary_fence_units_length_symbol
        Elementary_fence_units_length_symbol_t.Bohr)),
   [1; 2; 3; 6; 5; 6])
);;

(** {6 Coercing Down Builder Tag to Containee Tag} *)

let cne_ebp = containee_tag_off_builder_tag tag_bui;;

test_number 10 (
( cne_ebp :
  Elementary_fence_units_length_symbol_t.elementary_fence_units_length_symbol
  Tag_t.tag ) =
  (Elementary_fence_units_length_symbol_t.Bohr, [1; 2; 3; 6; 5; 6])
);;

(** {6 Container_of_tag : Containee Datastructure} *)

test_number 11 (
bug_ebp = builder_tag_uno tag_ebp
);;

(** {6 Containee Tag Datastructures} *)

test_number 12 (
tag_ful = containee_tag_uno tag_ebp
);;

let tag_ful_t = containee_tag_tuple tag_ebp;;

test_number 13 (
( tag_ful_t :
  Elementary_fence_units_length_symbol_t.elementary_fence_units_length_symbol
  Tag_t.tag Uno_t.uno Tuple_t.tuple ) =
  Tuple_t.Uno
   (Elementary_fence_units_length_symbol_t.Bohr, [1; 2; 3; 6; 5; 6])
);;

(** {6 Fence *)

let fen_ebp_l = fence_as_list tag_ebp;;

test_number 14 (
(fen_ebp_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
  [(Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_fence_units_symbol
       (Elementary_fence_units_symbol_t.Elementary_fence_units_length_symbol
         Elementary_fence_units_length_symbol_t.Bohr)),
    [1; 2; 3; 6; 5; 6])]
);;

let fen_ebp_u = fence_as_uno tag_ebp;;

test_number 15 (
(fen_ebp_u : Elementary_symbol_t.elementary_symbol Tag_t.tag Uno_t.uno ) =
  (Elementary_symbol_t.Elementary_fence_symbol
    (Elementary_fence_symbol_t.Elementary_fence_units_symbol
      (Elementary_fence_units_symbol_t.Elementary_fence_units_length_symbol
        Elementary_fence_units_length_symbol_t.Bohr)),
   [1; 2; 3; 6; 5; 6])
);;

let fen_ebp_t = fence_as_tuple tag_ebp;;

test_number 16 (
( fen_ebp_t : Elementary_symbol_t.elementary_symbol Tag_t.tag Tuple_t.tuple ) =
  Tuple_t.Uno
   (Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_fence_units_symbol
       (Elementary_fence_units_symbol_t.Elementary_fence_units_length_symbol
         Elementary_fence_units_length_symbol_t.Bohr)),
    [1; 2; 3; 6; 5; 6])
);;

let fen_ebp_tl = fence_as_tuple_list tag_ebp;;

test_number 17 (
(fen_ebp_tl :
  Elementary_symbol_t.elementary_symbol Tag_t.tag Tuple_t.tuple list ) =
  [Tuple_t.Uno
    (Elementary_symbol_t.Elementary_fence_symbol
      (Elementary_fence_symbol_t.Elementary_fence_units_symbol
        (Elementary_fence_units_symbol_t.Elementary_fence_units_length_symbol
          Elementary_fence_units_length_symbol_t.Bohr)),
     [1; 2; 3; 6; 5; 6])]
);;

