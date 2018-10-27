open Make_test_v;;

testing "Elementary_fence_units_actual_length_enevelope_v with
    Elementary_fence_units_actual_length_enevelope_u_test_ao.ml";;

(* Deleting Registers *)

Register_v.delete  Context_fullnameoffile_all_list_by_unit_register_v.register;;
Register_v.delete  Context_fullnameoffile_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_name_by_context_nameoffile_register_v.register;;
Register_v.delete  Database_name_n_databox_name_by_db1figure_context_databox_tag_register_v.register;;
Register_v.delete  Database_name_n_databox_name_by_nwchem_context_databox_tag_register_v.register;;
Register_v.delete  Db1figure_as_body_sequence_float_tag_subtree_list_by_db1figure_context_databox_tag_register_v.register;;
Register_v.delete  Db1figure_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Db1figure_symbol_by_sole_index_register_v.register;;
Register_v.delete  Db1figure_tag_all_list_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Db1figure_tag_tree_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Elementary_border_by_elementary_tag_register_v.register;;
Register_v.delete  Elementary_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Elementary_fence_by_elementary_tag_register_v.register;;
Register_v.delete  Elementary_symbol_by_sole_index_register_v.register;;
Register_v.delete  Elementary_tag_all_list_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Elementary_tag_subtree_by_elementary_tag_register_v.register;;
Register_v.delete  Elementary_tag_tree_by_elementary_context_databox_tag_register_v.register;;
Register_v.delete  Measure_actual_by_elementary_fence_units_actual_tag_register_v.register;;
Register_v.delete  Nwchem_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Nwchem_symbol_by_sole_index_register_v.register;;
Register_v.delete  Nwchem_tag_all_list_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Nwchem_tag_all_list_by_nwchem_context_databox_tag_register_v.register;;
Register_v.delete  Nwchem_tag_tree_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;
Register_v.delete  Son_elementary_tag_list_by_father_elementary_tag_register_v.register;;
Register_v.delete  Trace_what_by_module_name_register_v.register;;








(* Tracing *)

Parameters_general_register_v.store_force "trace-retrieve" "false";;
Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Elementary_fence_units_actual_length_enevelope_u_test_ao.ml";;

*)

(* Database file *)

let nam_bas = "test_ao";;
let nam_dba = "nwchem";;
Parameters_general_register_v.store "databox-name" nam_bas;;
Parameters_general_register_v.store "database-name" nam_dba;;

let tag_ele_l = Elementary_tag_all_list_by_parameters_general_provider_v.provide () ;;

let pre_tag_efu_soi soi (s, i) = 
  (Elementary_symbol_v.is_bohr s) && (soi = i) 
;;
 
let sym_ele_ful = Elementary_symbol_v.bohr;;
let soi_ele_ful = [1; 1; 5; 6; 5; 7];;

let tag_ele_ful = List_v.only_element_of_predicate_off_list (pre_tag_efu_soi soi_ele_ful) tag_ele_l;;

test_number 1 (
(tag_ele_ful : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =

  (Elementary_symbol_t.Elementary_fence_symbol
    (Elementary_fence_symbol_t.Elementary_fence_units_actual_symbol
      (Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
        Elementary_fence_units_actual_length_symbol_t.Bohr)),
   [1; 1; 5; 6; 5; 7])
);;

open Elementary_fence_units_actual_length_enevelope_v;; 
     
(* Argument *)

let tag_ful = Tag_v.map_entity Elementary_symbol_v.elementary_fence_units_actual_length_symbol_off_elementary_symbol tag_ele_ful;;

test_number 2 (  
(tag_ful :
  Elementary_fence_units_actual_length_symbol_t.elementary_fence_units_actual_length_symbol
  Tag_t.tag ) =
  (Elementary_fence_units_actual_length_symbol_t.Bohr, [1; 1; 5; 6; 5; 7])
);;

(** {6 Coercing Up Tag} *)

let bui_ful = builder_tag_of_containee_tag tag_ful;;

test_number 3 (
bui_ful = tag_ele_ful
);;

(** {6 Coercing Down Tag} *)

let cne_ful = containee_tag_off_builder_tag tag_ele_ful;;

test_number 4 (
cne_ful = tag_ful
);;

(** {6 Builder Tag Datastructures : Building} *)

let bug_ful = building_of_tag tag_ful;;

test_number 5 (
( bug_ful : Elementary_symbol_t.elementary_symbol Tag_t.tag Uno_t.uno ) =
  (Elementary_symbol_t.Elementary_fence_symbol
    (Elementary_fence_symbol_t.Elementary_fence_units_actual_symbol
      (Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
        Elementary_fence_units_actual_length_symbol_t.Bohr)),
   [1; 1; 5; 6; 5; 7])
);;

test_number 6 (
bug_ful = builder_tag_uno tag_ful
);;


let bui_ful_l = builder_tag_list tag_ful;;

test_number 7 (
(bui_ful_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
[(Elementary_symbol_t.Elementary_fence_symbol
    (Elementary_fence_symbol_t.Elementary_fence_units_actual_symbol
       (Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
          Elementary_fence_units_actual_length_symbol_t.Bohr)),
  [1; 1; 5; 6; 5; 7])]
);;

let bui_ful_t = builder_tag_tuple tag_ful;;

test_number 8 (
( bui_ful_t :
  Elementary_symbol_t.elementary_symbol Tag_t.tag Uno_t.uno Tuple_t.tuple ) =
  Tuple_t.Uno
   (Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_fence_units_actual_symbol
       (Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
         Elementary_fence_units_actual_length_symbol_t.Bohr)),
    [1; 1; 5; 6; 5; 7])
);;

(** {6 Enevelope_of_tag : Containee Datastructure} *)

let con_ful = enevelope_of_tag tag_ful;;

test_number 9 (
(con_ful :
  Elementary_fence_units_actual_length_symbol_t.elementary_fence_units_actual_length_symbol
  Tag_t.tag Uno_t.uno ) =
  (Elementary_fence_units_actual_length_symbol_t.Bohr, [1; 1; 5; 6; 5; 7])
);;

let fen_ful_l = fence_as_list tag_ful;;

test_number 10 (
(fen_ful_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
  [(Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_fence_units_actual_symbol
       (Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
         Elementary_fence_units_actual_length_symbol_t.Bohr)),
    [1; 1; 5; 6; 5; 7])]
);;

let fen_ful_t = fence_as_tuple tag_ful;;

test_number 11 (
( fen_ful_t :
  Elementary_symbol_t.elementary_symbol Tag_t.tag Uno_t.uno Tuple_t.tuple ) =
  Tuple_t.Uno
   (Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_fence_units_actual_symbol
       (Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
         Elementary_fence_units_actual_length_symbol_t.Bohr)),
    [1; 1; 5; 6; 5; 7])
);;

let fen_ful_tl = fence_as_tuple_list tag_ful;;

test_number 12 (
(fen_ful_tl :
  Elementary_symbol_t.elementary_symbol Tag_t.tag Tuple_t.tuple list ) =
 [Tuple_t.Uno
    (Elementary_symbol_t.Elementary_fence_symbol
      (Elementary_fence_symbol_t.Elementary_fence_units_actual_symbol
        (Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
          Elementary_fence_units_actual_length_symbol_t.Bohr)),
     [1; 1; 5; 6; 5; 7])]
);;

