open Make_test_v;;

testing "Figure_field_fence_point_envelope_v with
    Figure_field_fence_point_envelope_u_point_a_debug.ml";;

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
   #use "Figure_field_fence_point_envelope_u_point_a_debug.ml";;

*)

let nam_dba = "db1points";;
let nam_dbo = "point_a";;
let sof_fig = "A";;

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
         "point_a")),
    [1; 1; 8]);
   (Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_field_fence_symbol
       (Figure_field_fence_symbol_t.Figure_field_fence_point_symbol
         (Figure_field_fence_point_symbol_t.Figure_field_fence_point_constructor
           "A"))),
    [1; 1; 1; 8])]
);;

let tag_fig_poi = List_v.only_element_of_predicate_off_list 
      (fun (s, i) -> Figure_symbol_v.string_off s = sof_fig) 
    tag_fig_l
  ;;

(* Argument tag_ffp *)

let tag_ffp = Tag_v.map_entity 
    Figure_symbol_v.figure_field_fence_point_symbol_off_figure_symbol 
    tag_fig_poi
;; 

test_number 2 (
(tag_ffp : Figure_field_fence_point_symbol_t.figure_field_fence_point_symbol Tag_t.tag ) =
  (Figure_field_fence_point_symbol_t.Figure_field_fence_point_constructor "A",
   [1; 1; 1; 8])
);;

open Figure_field_fence_point_envelope_v;;

(** {6 Fence} *)

let fen_ffp = fence_as_list_of_tag tag_ffp;;

test_number 3 (
(fen_ffp : Figure_symbol_t.figure_symbol Tag_t.tag list ) =
  [(Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_field_fence_symbol
       (Figure_field_fence_symbol_t.Figure_field_fence_point_symbol
         (Figure_field_fence_point_symbol_t.Figure_field_fence_point_constructor
           "A"))),
    [1; 1; 1; 8])]
);;

(** {6 Bridge} *)

let bri_ffp = bridge_of_tag tag_ffp;;

test_number 4 (
(bri_ffp : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_body_coordinate_tuple_symbol
      (Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_heterogeneous_symbol
        (Elementary_body_coordinate_tuple_heterogeneous_symbol_t.Elementary_body_coordinate_tuple_heterogeneous_spherical_symbol
          (Elementary_body_coordinate_tuple_heterogeneous_spherical_symbol_t.Elementary_body_coordinate_tuple_heterogeneous_spherical_constructor
            "A")))),
   [1; 1; 1; 7])
);;


let bri_ffp_ect = bridge_as_elementary_body_coordinate_tuple_tag_of_tag tag_ffp;;

test_number 5 (
(bri_ffp_ect :
  Elementary_body_coordinate_tuple_symbol_t.elementary_body_coordinate_tuple_symbol
  Tag_t.tag ) =
  (Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_heterogeneous_symbol
    (Elementary_body_coordinate_tuple_heterogeneous_symbol_t.Elementary_body_coordinate_tuple_heterogeneous_spherical_symbol
      (Elementary_body_coordinate_tuple_heterogeneous_spherical_symbol_t.Elementary_body_coordinate_tuple_heterogeneous_spherical_constructor
        "A")),
   [1; 1; 1; 7])
);;

(** {6 Envelope} *)

let env_ffp = envelope_of_tag tag_ffp;;

test_number 6 (
( env_ffp :
  (Elementary_border_symbol_t.elementary_border_symbol Tag_t.tag,
   Readee_t.readee) Doublet_t.doublet list ) =
  [((Elementary_border_symbol_t.Elementary_border_coordinate_symbol
      (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_heterogeneous_symbol
        (Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_symbol
          (Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_rho_symbol
            (Elementary_border_coordinate_heterogeneous_spherical_rho_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_rho_constructor
              "A")))),
     [1; 1; 1; 1; 7]),
    Readee_t.Readee_units
     (1.,
      Elementary_fence_units_symbol_t.Elementary_fence_units_length_symbol
       Elementary_fence_units_length_symbol_t.Meter));
   ((Elementary_border_symbol_t.Elementary_border_coordinate_symbol
      (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_heterogeneous_symbol
        (Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_symbol
          (Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_phi_symbol
            (Elementary_border_coordinate_heterogeneous_spherical_phi_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_phi_constructor
              "A")))),
     [2; 1; 1; 1; 7]),
    Readee_t.Readee_units
     (0.785398163397448279,
      Elementary_fence_units_symbol_t.Elementary_fence_units_angle_symbol
       Elementary_fence_units_angle_symbol_t.Radian));
   ((Elementary_border_symbol_t.Elementary_border_coordinate_symbol
      (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_heterogeneous_symbol
        (Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_symbol
          (Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_theta_symbol
            (Elementary_border_coordinate_heterogeneous_spherical_theta_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_theta_constructor
              "A")))),
     [3; 1; 1; 1; 7]),
    Readee_t.Readee_units
     (0.785398163397448279,
      Elementary_fence_units_symbol_t.Elementary_fence_units_angle_symbol
       Elementary_fence_units_angle_symbol_t.Radian))]
);;

(** {6 Border} *)

let bor_ffp = border_of_tag tag_ffp;;

test_number 7 (
( bor_ffp :
  Elementary_border_symbol_t.elementary_border_symbol Tag_t.tag list ) =
  [(Elementary_border_symbol_t.Elementary_border_coordinate_symbol
     (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_heterogeneous_symbol
       (Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_symbol
         (Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_rho_symbol
           (Elementary_border_coordinate_heterogeneous_spherical_rho_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_rho_constructor
             "A")))),
    [1; 1; 1; 1; 7]);
   (Elementary_border_symbol_t.Elementary_border_coordinate_symbol
     (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_heterogeneous_symbol
       (Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_symbol
         (Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_phi_symbol
           (Elementary_border_coordinate_heterogeneous_spherical_phi_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_phi_constructor
             "A")))),
    [2; 1; 1; 1; 7]);
   (Elementary_border_symbol_t.Elementary_border_coordinate_symbol
     (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_heterogeneous_symbol
       (Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_symbol
         (Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_theta_symbol
           (Elementary_border_coordinate_heterogeneous_spherical_theta_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_theta_constructor
             "A")))),
    [3; 1; 1; 1; 7])]
);;

(** {6 Closure} *)

let clo_ffp = closure_of_tag tag_ffp;;

test_number 8 (
( clo_ffp : Readee_t.readee list ) =
  [Readee_t.Readee_units
    (1.,
     Elementary_fence_units_symbol_t.Elementary_fence_units_length_symbol
      Elementary_fence_units_length_symbol_t.Meter);
   Readee_t.Readee_units
    (0.785398163397448279,
     Elementary_fence_units_symbol_t.Elementary_fence_units_angle_symbol
      Elementary_fence_units_angle_symbol_t.Radian);
   Readee_t.Readee_units
    (0.785398163397448279,
     Elementary_fence_units_symbol_t.Elementary_fence_units_angle_symbol
      Elementary_fence_units_angle_symbol_t.Radian)]
);;

(** {6 Float List} *)

let flo_ffp = float_list_of_tag tag_ffp;;

test_number 9 (
(flo_ffp : float list ) = 
[1.; 0.785398163397448279; 0.785398163397448279]
);;

(** {6 Units List} *)

let efu_ffp = elementary_fence_units_tag_list_of_tag tag_ffp ;;

test_number 10 (
( efu_ffp :
  Elementary_fence_units_symbol_t.elementary_fence_units_symbol list ) =
  [Elementary_fence_units_symbol_t.Elementary_fence_units_length_symbol
    Elementary_fence_units_length_symbol_t.Meter;
   Elementary_fence_units_symbol_t.Elementary_fence_units_angle_symbol
    Elementary_fence_units_angle_symbol_t.Radian;
   Elementary_fence_units_symbol_t.Elementary_fence_units_angle_symbol
    Elementary_fence_units_angle_symbol_t.Radian]
);;

(** {6 Text} *)

let tex_ffp = text_of_tag tag_ffp;;

test_number 11 (
(tex_ffp : string list ) =
["length 1.000000 meter"; 
 "angle 0.785398 radian"; 
 "angle 0.785398 radian"]
);;
