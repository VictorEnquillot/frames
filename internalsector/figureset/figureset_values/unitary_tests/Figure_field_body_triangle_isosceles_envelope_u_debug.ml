open Make_test_v;;

testing "Figure_field_body_triangle_isosceles_closure_v with
    Figure_field_body_triangle_isosceles_envelope_u_debug.ml";;

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
   #use "Figure_field_body_triangle_isosceles_envelope_u_debug.ml";;

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

(* Triangle_isosceles T as Figure_field_body_triangle_isosceles *)

let sof_fig = "T";;
let tag_fig_tri = List_v.only_element_of_predicate_off_list 
      (fun (s, i) -> Figure_symbol_v.string_off s = sof_fig) 
    tag_fig_l
  ;;

let tag_fti = Figure_field_body_triangle_isosceles_tag_v.figure_field_body_triangle_isosceles_tag_off_figure_tag tag_fig_tri;;

test_number 2 (
(tag_fti : Figure_field_body_triangle_isosceles_symbol_t.figure_field_body_triangle_isosceles_symbol Tag_t.tag ) =
  (Figure_field_body_triangle_isosceles_symbol_t.Figure_field_body_triangle_isosceles_acute "T", [2; 1; 6])
);;

open Figure_field_body_triangle_isosceles_envelope_v;;

let env_fti = build tag_fti;;

test_number 3 (
( env_fti : Measure_t.measure list Trio_t.trio ) =
  ([(0.1,
     Elementary_units_symbol_t.Elementary_units_length_symbol
      Elementary_units_length_symbol_t.Nanometer);
    (0.2,
     Elementary_units_symbol_t.Elementary_units_length_symbol
      Elementary_units_length_symbol_t.Nanometer);
    (-0.2,
     Elementary_units_symbol_t.Elementary_units_length_symbol
      Elementary_units_length_symbol_t.Nanometer)],
   [(0.,
     Elementary_units_symbol_t.Elementary_units_length_symbol
      Elementary_units_length_symbol_t.Nanometer);
    (0.,
     Elementary_units_symbol_t.Elementary_units_length_symbol
      Elementary_units_length_symbol_t.Nanometer);
    (-0.2,
     Elementary_units_symbol_t.Elementary_units_length_symbol
      Elementary_units_length_symbol_t.Nanometer)],
   [(0.2,
     Elementary_units_symbol_t.Elementary_units_length_symbol
      Elementary_units_length_symbol_t.Nanometer);
    (0.,
     Elementary_units_symbol_t.Elementary_units_length_symbol
      Elementary_units_length_symbol_t.Nanometer);
    (-0.2,
     Elementary_units_symbol_t.Elementary_units_length_symbol
      Elementary_units_length_symbol_t.Nanometer)])
);;

let ent_fti = envelope_as_tuple tag_fti;;

test_number 4 (
(ent_fti : Measure_t.measure list Tuple_t.tuple ) =
  Tuple_t.Trio
   ([(0.1,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer);
     (0.2,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer);
     (-0.2,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer)],
    [(0.,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer);
     (0.,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer);
     (-0.2,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer)],
    [(0.2,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer);
     (0.,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer);
     (-0.2,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer)])
);;

let cun_fti = closure_units tag_fti;;

test_number 5 (
( cun_fti : Measure_t.measure list ) =
  [(0.1,
    Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer);
   (0.2,
    Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer);
   (-0.2,
    Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer);
   (0.,
    Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer);
   (0.,
    Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer);
   (-0.2,
    Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer);
   (0.2,
    Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer);
   (0.,
    Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer);
   (-0.2,
    Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer)]
);;

(* let cun_fti_t = closure_units_as_tuple tag_fti;; *)

let clo_fti = closure tag_fti;;

test_number 6 (
( clo_fti : Closure_t.closure ) =
  Closure_t.Closure_units
   [(0.1,
     Elementary_units_symbol_t.Elementary_units_length_symbol
      Elementary_units_length_symbol_t.Nanometer);
    (0.2,
     Elementary_units_symbol_t.Elementary_units_length_symbol
      Elementary_units_length_symbol_t.Nanometer);
    (-0.2,
     Elementary_units_symbol_t.Elementary_units_length_symbol
      Elementary_units_length_symbol_t.Nanometer);
    (0.,
     Elementary_units_symbol_t.Elementary_units_length_symbol
      Elementary_units_length_symbol_t.Nanometer);
    (0.,
     Elementary_units_symbol_t.Elementary_units_length_symbol
      Elementary_units_length_symbol_t.Nanometer);
    (-0.2,
     Elementary_units_symbol_t.Elementary_units_length_symbol
      Elementary_units_length_symbol_t.Nanometer);
    (0.2,
     Elementary_units_symbol_t.Elementary_units_length_symbol
      Elementary_units_length_symbol_t.Nanometer);
    (0.,
     Elementary_units_symbol_t.Elementary_units_length_symbol
      Elementary_units_length_symbol_t.Nanometer);
    (-0.2,
     Elementary_units_symbol_t.Elementary_units_length_symbol
      Elementary_units_length_symbol_t.Nanometer)]
);;

let ent_fpo_l = figure_field_fence_point_envelope_as_tuple_list_off_figure_field_body_triangle_isosceles_tag tag_fti;;

test_number 7 (
(ent_fpo_l : Measure_t.measure list Uno_t.uno Tuple_t.tuple list ) =
  [Tuple_t.Uno
    [(0.1,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer);
     (0.2,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer);
     (-0.2,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer)];
   Tuple_t.Uno
    [(0.,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer);
     (0.,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer);
     (-0.2,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer)];
   Tuple_t.Uno
    [(0.2,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer);
     (0.,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer);
     (-0.2,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer)]]
);;

let ent_fpo_t = figure_field_fence_point_envelope_as_tuple_tuple_off_figure_field_body_triangle_isosceles_tag tag_fti;;

test_number 8 (
(ent_fpo_t : Measure_t.measure list Uno_t.uno Tuple_t.tuple Tuple_t.tuple ) =
  Tuple_t.Trio
   (Tuple_t.Uno
     [(0.1,
       Elementary_units_symbol_t.Elementary_units_length_symbol
        Elementary_units_length_symbol_t.Nanometer);
      (0.2,
       Elementary_units_symbol_t.Elementary_units_length_symbol
        Elementary_units_length_symbol_t.Nanometer);
      (-0.2,
       Elementary_units_symbol_t.Elementary_units_length_symbol
        Elementary_units_length_symbol_t.Nanometer)],
    Tuple_t.Uno
     [(0.,
       Elementary_units_symbol_t.Elementary_units_length_symbol
        Elementary_units_length_symbol_t.Nanometer);
      (0.,
       Elementary_units_symbol_t.Elementary_units_length_symbol
        Elementary_units_length_symbol_t.Nanometer);
      (-0.2,
       Elementary_units_symbol_t.Elementary_units_length_symbol
        Elementary_units_length_symbol_t.Nanometer)],
    Tuple_t.Uno
     [(0.2,
       Elementary_units_symbol_t.Elementary_units_length_symbol
        Elementary_units_length_symbol_t.Nanometer);
      (0.,
       Elementary_units_symbol_t.Elementary_units_length_symbol
        Elementary_units_length_symbol_t.Nanometer);
      (-0.2,
       Elementary_units_symbol_t.Elementary_units_length_symbol
        Elementary_units_length_symbol_t.Nanometer)])
);;

let ent_fpo_l = figure_field_fence_point_envelope_as_tuple_list_off_figure_field_body_triangle_isosceles_tag tag_fti;;

test_number 9 (
( ent_fpo_l : Measure_t.measure list Uno_t.uno Tuple_t.tuple list ) =
  [Tuple_t.Uno
    [(0.1,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer);
     (0.2,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer);
     (-0.2,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer)];
   Tuple_t.Uno
    [(0.,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer);
     (0.,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer);
     (-0.2,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer)];
   Tuple_t.Uno
    [(0.2,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer);
     (0.,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer);
     (-0.2,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer)]]
);;

let ent_fpo_t = figure_field_fence_point_envelope_as_tuple_tuple_off_figure_field_body_triangle_isosceles_tag tag_fti;;

test_number 10 (
(ent_fpo_t : Measure_t.measure list Uno_t.uno Tuple_t.tuple Tuple_t.tuple ) =
Tuple_t.Trio
  (Tuple_t.Uno
     [(0.1,
       Elementary_units_symbol_t.Elementary_units_length_symbol
         Elementary_units_length_symbol_t.Nanometer);
      (0.2,
       Elementary_units_symbol_t.Elementary_units_length_symbol
        Elementary_units_length_symbol_t.Nanometer);
      (-0.2,
       Elementary_units_symbol_t.Elementary_units_length_symbol
        Elementary_units_length_symbol_t.Nanometer)],
    Tuple_t.Uno
     [(0.,
       Elementary_units_symbol_t.Elementary_units_length_symbol
        Elementary_units_length_symbol_t.Nanometer);
      (0.,
       Elementary_units_symbol_t.Elementary_units_length_symbol
        Elementary_units_length_symbol_t.Nanometer);
      (-0.2,
       Elementary_units_symbol_t.Elementary_units_length_symbol
        Elementary_units_length_symbol_t.Nanometer)],
    Tuple_t.Uno
     [(0.2,
       Elementary_units_symbol_t.Elementary_units_length_symbol
        Elementary_units_length_symbol_t.Nanometer);
      (0.,
       Elementary_units_symbol_t.Elementary_units_length_symbol
        Elementary_units_length_symbol_t.Nanometer);
      (-0.2,
       Elementary_units_symbol_t.Elementary_units_length_symbol
        Elementary_units_length_symbol_t.Nanometer)])
);;

let ent_fpo_a = figure_field_fence_point_a_envelope_as_tuple_off_figure_field_body_triangle_isosceles_tag tag_fti;;

test_number 11 (
( ent_fpo_a : Measure_t.measure list Uno_t.uno Tuple_t.tuple ) =
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

let mea_fpo_tl = figure_field_fence_point_measure_tuple_list_off_figure_field_body_triangle_isosceles_tag tag_fti;;

test_number 12 (
( mea_fpo_tl : Measure_t.measure Tuple_t.tuple list ) =
  [Tuple_t.Trio
    ((0.1,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer),
     (0.2,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer),
     (-0.2,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer));
   Tuple_t.Trio
    ((0.,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer),
     (0.,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer),
     (-0.2,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer));
   Tuple_t.Trio
    ((0.2,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer),
     (0.,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer),
     (-0.2,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer))]
);;

let mea_fpo_tt = figure_field_fence_point_measure_tuple_tuple_off_figure_field_body_triangle_isosceles_tag tag_fti;;

test_number 13 (
(mea_fpo_tt : Measure_t.measure Tuple_t.tuple Tuple_t.tuple ) =
  Tuple_t.Trio
   (Tuple_t.Trio
     ((0.1,
       Elementary_units_symbol_t.Elementary_units_length_symbol
        Elementary_units_length_symbol_t.Nanometer),
      (0.2,
       Elementary_units_symbol_t.Elementary_units_length_symbol
        Elementary_units_length_symbol_t.Nanometer),
      (-0.2,
       Elementary_units_symbol_t.Elementary_units_length_symbol
        Elementary_units_length_symbol_t.Nanometer)),
    Tuple_t.Trio
     ((0.,
       Elementary_units_symbol_t.Elementary_units_length_symbol
        Elementary_units_length_symbol_t.Nanometer),
      (0.,
       Elementary_units_symbol_t.Elementary_units_length_symbol
        Elementary_units_length_symbol_t.Nanometer),
      (-0.2,
       Elementary_units_symbol_t.Elementary_units_length_symbol
        Elementary_units_length_symbol_t.Nanometer)),
    Tuple_t.Trio
     ((0.2,
       Elementary_units_symbol_t.Elementary_units_length_symbol
        Elementary_units_length_symbol_t.Nanometer),
      (0.,
       Elementary_units_symbol_t.Elementary_units_length_symbol
        Elementary_units_length_symbol_t.Nanometer),
      (-0.2,
       Elementary_units_symbol_t.Elementary_units_length_symbol
        Elementary_units_length_symbol_t.Nanometer)))
);;

let nam_env_fti = name env_fti;;

test_number 14 (
(nam_env_fti : string ) =
 "([ (0.100000, nanometer) (0.200000, nanometer) (-0.200000, nanometer) ], [ (0.000000, nanometer) (0.000000, nanometer) (-0.200000, nanometer) ], [ (0.200000, nanometer) (0.000000, nanometer) (-0.200000, nanometer) ])"
);;

