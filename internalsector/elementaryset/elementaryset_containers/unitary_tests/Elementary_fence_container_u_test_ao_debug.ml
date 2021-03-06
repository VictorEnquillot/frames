open Make_test_v;;

testing "Elementary_fence_container_v with
    Elementary_fence_container_u_test_ao_debug.ml";;

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
   #use "Elementary_fence_container_u_test_ao_debug.ml";;

*)

(* Database file *)

let nam_dbo = "test_ao";;
let nam_dba = "nwchem";;
Parameters_general_register_v.store "databox-name" nam_dbo;;
Parameters_general_register_v.store "database-name" nam_dba;;

let tag_ele_l = Elementary_tag_all_list_by_parameters_general_provider_v.provide () ;;

let pre_tag_efu_soi soi (s, i) = 
  (Elementary_symbol_v.is_bohr s) && (soi = i) 
;;
 
let sym_ele_ful = Elementary_symbol_v.bohr;;
let soi_ele_ful = [1; 1; 5; 6; 5; 6];;

let tag_ele_ful = List_v.only_element_of_predicate_off_list (pre_tag_efu_soi soi_ele_ful) tag_ele_l;;

test_number 1 (
(tag_ele_ful : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_fence_symbol
    (Elementary_fence_symbol_t.Elementary_fence_units_symbol
      (Elementary_fence_units_symbol_t.Elementary_fence_units_length_symbol
        Elementary_fence_units_length_symbol_t.Bohr)),
   [1; 1; 5; 6; 5; 6])
);;

open Elementary_fence_container_v;;
     
(* Argument *)

let tag_efe = Tag_v.map_entity Elementary_symbol_v.elementary_fence_symbol_off_elementary_symbol tag_ele_ful;;

test_number 2 (  
(tag_efe : Elementary_fence_symbol_t.elementary_fence_symbol Tag_t.tag ) =
  (Elementary_fence_symbol_t.Elementary_fence_units_symbol
    (Elementary_fence_units_symbol_t.Elementary_fence_units_length_symbol
      Elementary_fence_units_length_symbol_t.Bohr),
   [1; 1; 5; 6; 5; 6])
);;

(** {6 Container as Datastructure} *)

let con_efe = container_of_tag tag_efe;;

test_number 3 (
( con_efe : Elementary_fence_container_t.elementary_fence_container ) =
  Elementary_fence_container_t.Elementary_fence_units_container
   (Elementary_fence_units_container_t.Elementary_fence_units_length_container
     (Elementary_fence_units_length_symbol_t.Bohr, [1; 1; 5; 6; 5; 6]))
);;

(** {6 Builder Tag List} *)

let bui_efe_l = builder_tag_list tag_efe;;

test_number 4 (
( bui_efe_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
  [(Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_fence_units_symbol
       (Elementary_fence_units_symbol_t.Elementary_fence_units_length_symbol
         Elementary_fence_units_length_symbol_t.Bohr)),
    [1; 1; 5; 6; 5; 6])]
);;

let bug_efe = building_of_tag tag_efe;;

test_number 5 (
( con_efe : Elementary_fence_container_t.elementary_fence_container ) =
  Elementary_fence_container_t.Elementary_fence_units_container
   (Elementary_fence_units_container_t.Elementary_fence_units_length_container
     (Elementary_fence_units_length_symbol_t.Bohr, [1; 1; 5; 6; 5; 6]))
);;

let bui_efe_t = builder_tag_tuple tag_efe;;

test_number 6 (
( bui_efe_t :
    Elementary_symbol_t.elementary_symbol Tag_t.tag Tuple_t.tuple ) =
  Tuple_t.Uno
   (Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_fence_units_symbol
       (Elementary_fence_units_symbol_t.Elementary_fence_units_length_symbol
         Elementary_fence_units_length_symbol_t.Bohr)),
    [1; 1; 5; 6; 5; 6])
);;

let fen_efe_l = fence_as_list tag_efe;;

test_number 7 (
(fen_efe_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
  [(Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_fence_units_symbol
       (Elementary_fence_units_symbol_t.Elementary_fence_units_length_symbol
         Elementary_fence_units_length_symbol_t.Bohr)),
    [1; 1; 5; 6; 5; 6])]
);;

let fen_efe_t = fence_as_tuple tag_efe;;

test_number 8 (
(fen_efe_t : Elementary_symbol_t.elementary_symbol Tag_t.tag Tuple_t.tuple )=
  Tuple_t.Uno
   (Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_fence_units_symbol
       (Elementary_fence_units_symbol_t.Elementary_fence_units_length_symbol
         Elementary_fence_units_length_symbol_t.Bohr)),
    [1; 1; 5; 6; 5; 6])
);;

let fen_efe_tl = fence_as_tuple_list tag_efe;;

test_number 9 (
(fen_efe_tl :
  Elementary_symbol_t.elementary_symbol Tag_t.tag Tuple_t.tuple list ) =
  [Tuple_t.Uno
    (Elementary_symbol_t.Elementary_fence_symbol
      (Elementary_fence_symbol_t.Elementary_fence_units_symbol
        (Elementary_fence_units_symbol_t.Elementary_fence_units_length_symbol
          Elementary_fence_units_length_symbol_t.Bohr)),
     [1; 1; 5; 6; 5; 6])]
);;

