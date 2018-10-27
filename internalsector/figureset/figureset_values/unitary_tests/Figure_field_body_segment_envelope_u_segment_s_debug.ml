open Make_test_v;;

testing "Figure_field_body_segment_envelope_v with
    Figure_field_body_segment_envelope_u_segment_s_debug.ml";;

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

Coordinates_general_register_v.store_force "trace-build" "false";;
Coordinates_general_register_v.store_force "trace-store" "false";;
Coordinates_general_register_v.store_force "trace-translate" "false";;
Coordinates_general_register_v.store_force "trace-provide" "false";;
Coordinates_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Figure_field_body_segment_envelope_u_segment_s_debug.ml";;

*)

let nam_dba = "db1points";;
let nam_dbo = "segment_s";;
let sof_fig = "S";;

Coordinates_general_register_v.store_force "databox-name" nam_dbo;;
Coordinates_general_register_v.store_force "database-name" nam_dba;;

let tag_fig_l = Figure_tag_all_list_by_database_name_n_databox_name_provider_v.provide (nam_dba, nam_dbo);;

test_number 1 (
( tag_fig_l : Figure_symbol_t.figure_symbol Tag_t.tag list ) =
  [(Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_domain_symbol
       (Figure_context_domain_symbol_t.Figure_context_domain_constructor
         "figure")),
    [8]);
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_database_symbol
       (Figure_context_database_symbol_t.Figure_context_database_constructor
         "db1points")),
    [1; 8]);
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_databox_symbol
       (Figure_context_databox_symbol_t.Figure_context_databox_constructor
         "segment_s")),
    [3; 1; 8]);
   (Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_field_body_symbol
       (Figure_field_body_symbol_t.Figure_field_body_segment_symbol
         (Figure_field_body_segment_symbol_t.Figure_field_body_segment_constructor
           "S"))),
    [1; 3; 1; 8]);
   (Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_field_fence_symbol
       (Figure_field_fence_symbol_t.Figure_field_fence_point_symbol
         (Figure_field_fence_point_symbol_t.Figure_field_fence_point_constructor
           "S_B"))),
    [1; 1; 3; 1; 8]);
   (Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_field_fence_symbol
       (Figure_field_fence_symbol_t.Figure_field_fence_point_symbol
         (Figure_field_fence_point_symbol_t.Figure_field_fence_point_constructor
           "S_C"))),
    [2; 1; 3; 1; 8])]
);;

let tag_fig_seg = List_v.only_element_of_predicate_off_list 
      (fun (s, i) -> Figure_symbol_v.string_off s = sof_fig) 
    tag_fig_l
  ;;

(* Argument tag_fbs *)

let tag_fbs = Tag_v.map_entity 
    Figure_symbol_v.figure_field_body_segment_symbol_off_figure_symbol 
    tag_fig_seg
;; 

test_number 2 (
(tag_fbs : Figure_field_body_segment_symbol_t.figure_field_body_segment_symbol Tag_t.tag ) =
  (Figure_field_body_segment_symbol_t.Figure_field_body_segment_constructor "S",
   [1; 3; 1; 8])
);;

open Figure_field_body_segment_envelope_v;;

(** {6 Builders} *)

let bui_fbs = builder_tag_list_of_tag tag_fbs;; 

test_number 3 (
(bui_fbs : Figure_symbol_t.figure_symbol Tag_t.tag list ) =
[(Figure_symbol_t.Figure_field_symbol
   (Figure_field_symbol_t.Figure_field_fence_symbol
     (Figure_field_fence_symbol_t.Figure_field_fence_point_symbol
       (Figure_field_fence_point_symbol_t.Figure_field_fence_point_constructor
         "S_B"))),
  [1; 1; 3; 1; 8]);
 (Figure_symbol_t.Figure_field_symbol
   (Figure_field_symbol_t.Figure_field_fence_symbol
     (Figure_field_fence_symbol_t.Figure_field_fence_point_symbol
       (Figure_field_fence_point_symbol_t.Figure_field_fence_point_constructor
         "S_C"))),
  [2; 1; 3; 1; 8])]
);;

(** {6 Containee_tag_list} *)

let con_fbs = containee_tag_list_of_tag tag_fbs;;

test_number 4 (
(con_fbs :
  Figure_field_fence_point_symbol_t.figure_field_fence_point_symbol Tag_t.tag
  list ) =
  [(Figure_field_fence_point_symbol_t.Figure_field_fence_point_constructor
     "S_B",
    [1; 1; 3; 1; 8]);
   (Figure_field_fence_point_symbol_t.Figure_field_fence_point_constructor
     "S_C",
    [2; 1; 3; 1; 8])]
);;

(** {6 Fence} *)

let fen_fbs = fence_as_list_of_tag tag_fbs;;

test_number 5 (
(fen_fbs : Figure_symbol_t.figure_symbol Tag_t.tag list ) =
  [(Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_field_fence_symbol
       (Figure_field_fence_symbol_t.Figure_field_fence_point_symbol
         (Figure_field_fence_point_symbol_t.Figure_field_fence_point_constructor
           "S_B"))),
    [1; 1; 3; 1; 8]);
   (Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_field_fence_symbol
       (Figure_field_fence_symbol_t.Figure_field_fence_point_symbol
         (Figure_field_fence_point_symbol_t.Figure_field_fence_point_constructor
           "S_C"))),
    [2; 1; 3; 1; 8])]
);;

let fco_fbs = fence_coerced_down_of_tag tag_fbs ;;

test_number 6 (
( fco_fbs :
  Figure_field_fence_point_symbol_t.figure_field_fence_point_symbol Tag_t.tag
  list ) =
  [(Figure_field_fence_point_symbol_t.Figure_field_fence_point_constructor
     "S_B",
    [1; 1; 3; 1; 8]);
   (Figure_field_fence_point_symbol_t.Figure_field_fence_point_constructor
     "S_C",
    [2; 1; 3; 1; 8])]
);;

(** {6 Border} *)

let bor_fbs = border_of_tag tag_fbs;;

test_number 7 (
(bor_fbs :
  Elementary_border_symbol_t.elementary_border_symbol Tag_t.tag list ) =
  [(Elementary_border_symbol_t.Elementary_border_coordinate_symbol
     (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
       (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_symbol
         (Elementary_border_coordinate_homogeneous_cartesian_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_x_symbol
           (Elementary_border_coordinate_homogeneous_cartesian_x_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_x_constructor
             "S_B")))),
    [1; 1; 3; 1; 7]);
   (Elementary_border_symbol_t.Elementary_border_coordinate_symbol
     (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
       (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_symbol
         (Elementary_border_coordinate_homogeneous_cartesian_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_y_symbol
           (Elementary_border_coordinate_homogeneous_cartesian_y_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_y_constructor
             "S_B")))),
    [2; 1; 3; 1; 7]);
   (Elementary_border_symbol_t.Elementary_border_coordinate_symbol
     (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
       (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_symbol
         (Elementary_border_coordinate_homogeneous_cartesian_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_z_symbol
           (Elementary_border_coordinate_homogeneous_cartesian_z_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_z_constructor
             "S_B")))),
    [3; 1; 3; 1; 7]);
   (Elementary_border_symbol_t.Elementary_border_coordinate_symbol
     (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
       (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_symbol
         (Elementary_border_coordinate_homogeneous_cartesian_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_x_symbol
           (Elementary_border_coordinate_homogeneous_cartesian_x_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_x_constructor
             "S_C")))),
    [1; 2; 3; 1; 7]);
   (Elementary_border_symbol_t.Elementary_border_coordinate_symbol
     (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
       (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_symbol
         (Elementary_border_coordinate_homogeneous_cartesian_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_y_symbol
           (Elementary_border_coordinate_homogeneous_cartesian_y_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_y_constructor
             "S_C")))),
    [2; 2; 3; 1; 7]);
   (Elementary_border_symbol_t.Elementary_border_coordinate_symbol
     (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
       (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_symbol
         (Elementary_border_coordinate_homogeneous_cartesian_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_z_symbol
           (Elementary_border_coordinate_homogeneous_cartesian_z_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_z_constructor
             "S_C")))),
    [3; 2; 3; 1; 7])]
);;

(** {6 Border} *)

let bor_fbs = border_of_tag tag_fbs;;

test_number 8 (
( bor_fbs :
  Elementary_border_symbol_t.elementary_border_symbol Tag_t.tag list ) =
  [(Elementary_border_symbol_t.Elementary_border_coordinate_symbol
     (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
       (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_symbol
         (Elementary_border_coordinate_homogeneous_cartesian_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_x_symbol
           (Elementary_border_coordinate_homogeneous_cartesian_x_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_x_constructor
             "S_B")))),
    [1; 1; 3; 1; 7]);
   (Elementary_border_symbol_t.Elementary_border_coordinate_symbol
     (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
       (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_symbol
         (Elementary_border_coordinate_homogeneous_cartesian_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_y_symbol
           (Elementary_border_coordinate_homogeneous_cartesian_y_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_y_constructor
             "S_B")))),
    [2; 1; 3; 1; 7]);
   (Elementary_border_symbol_t.Elementary_border_coordinate_symbol
     (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
       (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_symbol
         (Elementary_border_coordinate_homogeneous_cartesian_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_z_symbol
           (Elementary_border_coordinate_homogeneous_cartesian_z_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_z_constructor
             "S_B")))),
    [3; 1; 3; 1; 7]);
   (Elementary_border_symbol_t.Elementary_border_coordinate_symbol
     (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
       (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_symbol
         (Elementary_border_coordinate_homogeneous_cartesian_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_x_symbol
           (Elementary_border_coordinate_homogeneous_cartesian_x_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_x_constructor
             "S_C")))),
    [1; 2; 3; 1; 7]);
   (Elementary_border_symbol_t.Elementary_border_coordinate_symbol
     (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
       (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_symbol
         (Elementary_border_coordinate_homogeneous_cartesian_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_y_symbol
           (Elementary_border_coordinate_homogeneous_cartesian_y_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_y_constructor
             "S_C")))),
    [2; 2; 3; 1; 7]);
   (Elementary_border_symbol_t.Elementary_border_coordinate_symbol
     (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
       (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_symbol
         (Elementary_border_coordinate_homogeneous_cartesian_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_z_symbol
           (Elementary_border_coordinate_homogeneous_cartesian_z_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_z_constructor
             "S_C")))),
    [3; 2; 3; 1; 7])]
);;

(** {6 Envelope} *)

let env_fbs = envelope_of_tag tag_fbs;;

test_number 9 (
( env_fbs :
    (Elementary_border_symbol_t.elementary_border_symbol Tag_t.tag,
     Readee_t.readee)
    Doublet_t.doublet list ) =
[((Elementary_border_symbol_t.Elementary_border_coordinate_symbol
     (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
        (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_symbol
           (Elementary_border_coordinate_homogeneous_cartesian_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_x_symbol
              (Elementary_border_coordinate_homogeneous_cartesian_x_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_x_constructor
		 "S_B")))),
   [1; 1; 3; 1; 7]),
  Readee_t.Readee_units
    (1.,
      Elementary_fence_units_symbol_t.Elementary_fence_units_length_symbol
       Elementary_fence_units_length_symbol_t.Angstrom));
   ((Elementary_border_symbol_t.Elementary_border_coordinate_symbol
      (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
        (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_symbol
          (Elementary_border_coordinate_homogeneous_cartesian_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_y_symbol
            (Elementary_border_coordinate_homogeneous_cartesian_y_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_y_constructor
              "S_B")))),
     [2; 1; 3; 1; 7]),
    Readee_t.Readee_units
     (0.,
      Elementary_fence_units_symbol_t.Elementary_fence_units_length_symbol
       Elementary_fence_units_length_symbol_t.Angstrom));
   ((Elementary_border_symbol_t.Elementary_border_coordinate_symbol
      (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
        (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_symbol
          (Elementary_border_coordinate_homogeneous_cartesian_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_z_symbol
            (Elementary_border_coordinate_homogeneous_cartesian_z_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_z_constructor
              "S_B")))),
     [3; 1; 3; 1; 7]),
    Readee_t.Readee_units
     (0.,
      Elementary_fence_units_symbol_t.Elementary_fence_units_length_symbol
       Elementary_fence_units_length_symbol_t.Angstrom));
   ((Elementary_border_symbol_t.Elementary_border_coordinate_symbol
      (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
        (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_symbol
          (Elementary_border_coordinate_homogeneous_cartesian_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_x_symbol
            (Elementary_border_coordinate_homogeneous_cartesian_x_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_x_constructor
              "S_C")))),
     [1; 2; 3; 1; 7]),
    Readee_t.Readee_units
     (0.,
      Elementary_fence_units_symbol_t.Elementary_fence_units_length_symbol
       Elementary_fence_units_length_symbol_t.Angstrom));
   ((Elementary_border_symbol_t.Elementary_border_coordinate_symbol
      (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
        (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_symbol
          (Elementary_border_coordinate_homogeneous_cartesian_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_y_symbol
            (Elementary_border_coordinate_homogeneous_cartesian_y_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_y_constructor
              "S_C")))),
     [2; 2; 3; 1; 7]),
    Readee_t.Readee_units
     (1.,
      Elementary_fence_units_symbol_t.Elementary_fence_units_length_symbol
       Elementary_fence_units_length_symbol_t.Angstrom));
   ((Elementary_border_symbol_t.Elementary_border_coordinate_symbol
      (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
        (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_symbol
          (Elementary_border_coordinate_homogeneous_cartesian_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_z_symbol
            (Elementary_border_coordinate_homogeneous_cartesian_z_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_z_constructor
              "S_C")))),
     [3; 2; 3; 1; 7]),
    Readee_t.Readee_units
     (1.,
      Elementary_fence_units_symbol_t.Elementary_fence_units_length_symbol
       Elementary_fence_units_length_symbol_t.Angstrom))]
);;

(** {6 Closure} *)

let clo_fbs = closure_of_tag tag_fbs;;

test_number 10 (
( clo_fbs : Readee_t.readee list ) =
  [Readee_t.Readee_units
    (1.,
     Elementary_fence_units_symbol_t.Elementary_fence_units_length_symbol
      Elementary_fence_units_length_symbol_t.Angstrom);
   Readee_t.Readee_units
    (0.,
     Elementary_fence_units_symbol_t.Elementary_fence_units_length_symbol
      Elementary_fence_units_length_symbol_t.Angstrom);
   Readee_t.Readee_units
    (0.,
     Elementary_fence_units_symbol_t.Elementary_fence_units_length_symbol
      Elementary_fence_units_length_symbol_t.Angstrom);
   Readee_t.Readee_units
    (0.,
     Elementary_fence_units_symbol_t.Elementary_fence_units_length_symbol
      Elementary_fence_units_length_symbol_t.Angstrom);
   Readee_t.Readee_units
    (1.,
     Elementary_fence_units_symbol_t.Elementary_fence_units_length_symbol
      Elementary_fence_units_length_symbol_t.Angstrom);
   Readee_t.Readee_units
    (1.,
     Elementary_fence_units_symbol_t.Elementary_fence_units_length_symbol
      Elementary_fence_units_length_symbol_t.Angstrom)]
);;

(** {6 Float List} *)

let flo_fbs = float_list_of_tag tag_fbs;;

test_number 11 (
(flo_fbs : float list ) = 
[1.; 0.; 0.; 0.; 1.; 1.]
);;

(** {6 Units List} *)

let efu_fbs = elementary_fence_units_tag_list_of_tag tag_fbs ;;

test_number 12 (
( efu_fbs :
  Elementary_fence_units_symbol_t.elementary_fence_units_symbol list ) =
  [Elementary_fence_units_symbol_t.Elementary_fence_units_length_symbol
    Elementary_fence_units_length_symbol_t.Angstrom;
   Elementary_fence_units_symbol_t.Elementary_fence_units_length_symbol
    Elementary_fence_units_length_symbol_t.Angstrom;
   Elementary_fence_units_symbol_t.Elementary_fence_units_length_symbol
    Elementary_fence_units_length_symbol_t.Angstrom;
   Elementary_fence_units_symbol_t.Elementary_fence_units_length_symbol
    Elementary_fence_units_length_symbol_t.Angstrom;
   Elementary_fence_units_symbol_t.Elementary_fence_units_length_symbol
    Elementary_fence_units_length_symbol_t.Angstrom;
   Elementary_fence_units_symbol_t.Elementary_fence_units_length_symbol
    Elementary_fence_units_length_symbol_t.Angstrom]
);;

(** {6 Text} *)

let tex_fbs = text_of_tag tag_fbs;;

test_number 13 (
(tex_fbs : string list ) =
  ["length 1.000000 angstrom"; "length 0.000000 angstrom";
   "length 0.000000 angstrom"; "length 0.000000 angstrom";
   "length 1.000000 angstrom"; "length 1.000000 angstrom"]
);;
