open Make_test_v;;

testing "Figure_set_body_triangle_closure_v with
    Figure_set_body_triangle_envelope_u_debug.ml";;

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
Register_v.delete  Figure_set_fence_by_figure_tag_register_v.register;;
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
   #use "Figure_set_body_triangle_envelope_u_debug.ml";;

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
let tag_fig_tri = List_v.only_element_of_predicate_off_list 
      (fun (s, i) -> Figure_symbol_v.string_off s = "T") 
    tag_fig_l
  ;;

test_number 2 (
(tag_fig_tri : Figure_symbol_t.figure_symbol Tag_t.tag ) =
  (Figure_symbol_t.Figure_field_symbol
    (Figure_field_symbol_t.Figure_body_symbol
      (Figure_body_symbol_t.Figure_set_body_triangle_symbol
        (Figure_set_body_triangle_symbol_t.Figure_set_body_triangle_isosceles_symbol
          (Figure_set_body_triangle_isosceles_symbol_t.Figure_set_body_triangle_isosceles_acute
            "T")))),
   [2; 1; 6])
);;

(* Triangle_isosceles_acute T as Figure_set_body_triangle *)

let tag_ftr = Figure_set_body_triangle_tag_v.figure_set_body_triangle_tag_off_figure_tag tag_fig_tri;; 

test_number 3 (
(tag_ftr : Figure_set_body_triangle_symbol_t.figure_set_body_triangle_symbol Tag_t.tag ) =
  (Figure_set_body_triangle_symbol_t.Figure_set_body_triangle_isosceles_symbol
    (Figure_set_body_triangle_isosceles_symbol_t.Figure_set_body_triangle_isosceles_acute "T"),
   [2; 1; 6])
);;

open Figure_set_body_triangle_envelope_v;; 
  
let env_ftr = build tag_ftr;;

test_number 4 (
( env_ftr : Figure_set_body_triangle_envelope_t.figure_set_body_triangle_envelope ) =
  Figure_set_body_triangle_envelope_t.Figure_set_body_triangle_isosceles_envelope
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

let ent_ftr = envelope_as_tuple tag_ftr ;;

test_number 5 ( 
(ent_ftr : Measure_t.measure list Tuple_t.tuple ) =
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

let ent_ftr_l = envelope_as_tuple_list tag_ftr ;;

test_number 6 (
[]
);;

let env_fti = figure_set_body_triangle_isosceles_envelope_off_figure_set_body_triangle_envelope env_ftr;;

test_number 7 (
( env_fti :
  Figure_set_body_triangle_isosceles_envelope_t.figure_set_body_triangle_isosceles_envelope ) =
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

test_number 8 (
env_ftr = figure_set_body_triangle_envelope_of_figure_set_body_triangle_isosceles_envelope env_fti
);;

let cun_ftr = closure_units tag_ftr;;

test_number 9 (
( cun_ftr : Measure_t.measure list ) =
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

let mea_fpo_tl = figure_set_fence_point_measure_tuple_list_off_figure_set_body_triangle_tag tag_ftr;;

test_number 10 (
(mea_fpo_tl : Measure_t.measure Tuple_t.tuple list ) =
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

let mea_fpo_tt = figure_set_fence_point_measure_tuple_tuple_off_figure_set_body_triangle_tag tag_ftr;;

test_number 11 (
( mea_fpo_tt : Measure_t.measure Tuple_t.tuple Tuple_t.tuple ) =
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

let nam_env_ftr = name env_ftr;;

test_number 12 (
(nam_env_ftr : string ) =
"([ (0.100000, nanometer) (0.200000, nanometer) (-0.200000, nanometer) ], [ (0.000000, nanometer) (0.000000, nanometer) (-0.200000, nanometer) ], [ (0.200000, nanometer) (0.000000, nanometer) (-0.200000, nanometer) ])"
);;
