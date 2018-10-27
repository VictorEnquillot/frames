open Make_test_v;;

testing "Figure_fence_closure_v with
    Figure_fence_envelope_u_debug.ml";;

(* Deleting Registers *)

Register_v.delete  Context_fullnameoffile_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_index_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_name_by_context_nameoffile_register_v.register;;
Register_v.delete  Cpu_by_module_name_n_function_name_register_v.register;;
Register_v.delete  Db1figure_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Db1figure_symbol_by_sole_index_register_v.register;;
Register_v.delete  Db1figure_tag_all_list_by_db1points_context_databox_tag_register_v.register;;
Register_v.delete  Debug_by_module_name_register_v.register;;
Register_v.delete  Elementary_border_by_elementary_tag_register_v.register;;
Register_v.delete  Elementary_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Elementary_fence_by_elementary_tag_register_v.register;;
Register_v.delete  Elementary_symbol_by_sole_index_register_v.register;;
Register_v.delete  Elementary_tag_all_list_by_elementary_context_databox_figuredata_tag_register_v.register;;
Register_v.delete  Elementary_tag_all_list_by_elementary_context_databox_figuredata_tag_register_v.register;;
Register_v.delete  Elementary_tag_tree_by_elementary_tag_register_v.register;;
Register_v.delete  Figure_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Figure_fence_by_figure_tag_register_v.register;;
Register_v.delete  Figure_symbol_by_sole_index_register_v.register;;
Register_v.delete  Figure_tag_all_list_by_figure_context_databox_tag_register_v.register;;
Register_v.delete  Figure_tag_tree_by_figure_tag_register_v.register;;
Register_v.delete  Nwchem_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Nwchem_lexer_symbol_reverse_list_by_database_fullnameoffile_register_v.register;;
Register_v.delete  Nwchem_symbol_by_sole_index_register_v.register;;
Register_v.delete  Nwchem_tag_all_list_by_db1points_context_databox_tag_register_v.register;;
Register_v.delete  Coordinates_general_register_v.register;;
Register_v.delete  Readee_by_elementary_fence_tag_register_v.register;;
Register_v.delete  Son_elementary_tag_list_by_father_elementary_tag_register_v.register;;
Register_v.delete  Son_figure_list_by_figure_tag_register_v.register;;











(* Tracing *)

Coordinates_figureset_general_register_v.store_force "trace-build" "false";;
Coordinates_figureset_general_register_v.store_force "trace-store" "false";;
Coordinates_figureset_general_register_v.store_force "trace-translate" "false";;
Coordinates_figureset_general_register_v.store_force "trace-provide" "false";;
Coordinates_figureset_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Figure_fence_envelope_u_debug.ml";;

*)

let nam_dba = "db1";;
let tag_fcr = Figure_createdby_tag_by_database_name_provider_v.provide nam_dba;;

test_number 1 (
(tag_fcr : Figure_createdby_symbol_t.figure_createdby_symbol Tag_t.tag ) =
 (Figure_createdby_symbol_t.Figure_database_symbol
    (Figure_database_symbol_t.Figure_database_constructor "db1"),
   [1; 6])
);;

let tag_fig_l = Figure_tag_all_list_by_figure_createdby_tag_provider_v.provide tag_fcr;;
let tag_fig_poi = List_v.only_element_of_predicate_off_list 
      (fun (s, i) -> Figure_symbol_v.string_off s = "T_A") 
    tag_fig_l
  ;;

(* Point T_A as Figure_fence *)

let tag_fpo = Figure_field_fence_point_tag_v.figure_field_fence_point_tag_off_figure_tag tag_fig_poi;;

test_number 2 (
(tag_fpo : Figure_field_fence_point_symbol_t.figure_field_fence_point_symbol Tag_t.tag ) =
  (Figure_field_fence_point_symbol_t.Figure_field_fence_point_constructor "T_A", [1; 2; 1; 6])
);;

let tag_ffe = Figure_fence_tag_v.figure_fence_tag_off_figure_tag tag_fig_poi;; 

test_number 3 (
(tag_ffe : Figure_fence_symbol_t.figure_fence_symbol Tag_t.tag ) =
  (Figure_fence_symbol_t.Figure_field_fence_point_symbol
    (Figure_field_fence_point_symbol_t.Figure_field_fence_point_constructor "T_A"),
   [1; 2; 1; 6])
);;

open Figure_fence_envelope_v;; 
  
let env_ffe = build tag_ffe;;

test_number 4 (
(env_ffe : Figure_fence_envelope_t.figure_fence_envelope ) =
  Figure_fence_envelope_t.Figure_field_fence_point_envelope
   [(0.1,
     Elementary_units_symbol_t.Elementary_units_length_symbol
      Elementary_units_length_symbol_t.Nanometer);
    (0.2,
     Elementary_units_symbol_t.Elementary_units_length_symbol
      Elementary_units_length_symbol_t.Nanometer);
    (-0.2,
     Elementary_units_symbol_t.Elementary_units_length_symbol
      Elementary_units_length_symbol_t.Nanometer)]
);;

let ent_ffe = envelope_as_tuple tag_ffe ;;

test_number 5 (
( ent_ffe : Measure_t.measure list Uno_t.uno Tuple_t.tuple ) =
  Tuple_t.Uno
   [(0.1,
     Elementary_units_symbol_t.Elementary_units_length_symbol
      Elementary_units_length_symbol_t.Nanometer);
    (0.2,
     Elementary_units_symbol_t.Elementary_units_length_symbol
      Elementary_units_length_symbol_t.Nanometer);
    (-0.2,
     Elementary_units_symbol_t.Elementary_units_length_symbol
      Elementary_units_length_symbol_t.Nanometer)]
);;

let env_fpo = figure_field_fence_point_envelope_off_figure_fence_envelope env_ffe;;

test_number 6 (
(env_fpo : Figure_field_fence_point_envelope_t.figure_field_fence_point_envelope ) =
  [(0.1,
    Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer);
   (0.2,
    Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer);
   (-0.2,
    Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer)]
);;

test_number 7 (
env_ffe = figure_fence_envelope_of_figure_field_fence_point_envelope env_fpo
);;

let cun_ffe = closure_units tag_ffe;;

test_number 8 (
(cun_ffe : Measure_t.measure list ) =
  [(0.1,
    Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer);
   (0.2,
    Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer);
   (-0.2,
    Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer)]
);;

let nam_env_ffe = name env_ffe;;

test_number 9 (
(nam_env_ffe : string ) =
  "([ (0.100000, nanometer) (0.200000, nanometer) (-0.200000, nanometer) ])"
);;
