open Make_test_v;;

testing "Elementary_body_coordinate_tuple_heterogeneous_envelope_v with
   Elementary_body_coordinate_tuple_heterogeneous_envelope_u_segment_s.ml";;

(* Deleting Registers *)

Register_v.delete  Context_fullnameoffile_all_list_by_unit_register_v.register;;
Register_v.delete  Context_fullnameoffile_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_name_by_context_nameoffile_register_v.register;;
Register_v.delete  Database_name_n_databox_name_by_db1figure_context_databox_tag_register_v.register;;
Register_v.delete  Database_name_n_databox_name_by_db1points_context_databox_tag_register_v.register;;
Register_v.delete  Db1figure_as_body_sequence_float_tag_subtree_list_by_db1figure_context_databox_tag_register_v.register;;
Register_v.delete  Db1figure_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Db1figure_symbol_by_sole_index_register_v.register;;
Register_v.delete  Db1figure_tag_all_list_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Db1figure_tag_tree_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Elementary_border_by_elementary_tag_register_v.register;;
Register_v.delete  Elementary_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Elementary_fence_by_elementary_tag_register_v.register;;
Register_v.delete  Coordinate_symbol_by_sole_index_register_v.register;;
Register_v.delete  Elementary_tag_all_list_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Elementary_tag_subtree_by_elementary_tag_register_v.register;;
Register_v.delete  Elementary_tag_tree_by_elementary_context_databox_tag_register_v.register;;
Register_v.delete  Measure_actual_by_elementary_fence_units_actual_tag_register_v.register;;
Register_v.delete  Db1points_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Db1points_symbol_by_sole_index_register_v.register;;
Register_v.delete  Db1points_tag_all_list_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Db1points_tag_all_list_by_db1points_context_databox_tag_register_v.register;;
Register_v.delete  Db1points_tag_tree_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Son_elementary_tag_list_by_father_elementary_tag_register_v.register;;
Register_v.delete  Trace_what_by_module_name_register_v.register;;






(* Tracing *)


(* toplevel 
   #use "Elementary_body_coordinate_tuple_heterogeneous_envelope_u_segment_s.ml";;

*)

let nam_dba = "db1points";;
let nam_dbo = "segment_s";;


let tag_ele_l = Elementary_tag_all_list_by_coordinates_general_provider_v.provide ();;

(* Context *) 

let tag_edo = Elementary_context_domain_tag_by_unit_provider_v.provide ();;

test_number 1 (
(tag_edo : Elementary_context_domain_symbol_t.elementary_context_domain_symbol Tag_t.tag ) =
  (Elementary_context_domain_symbol_t.Elementary_context_domain_constructor "elementary",
   [7])
);;

let tag_ele_dba = Elementary_as_database_tag_by_database_name_provider_v.provide nam_dba;;

test_number 2 (
(tag_ele_dba : Coordinate_symbol_t.coordinate_symbol Tag_t.tag ) =
 (Coordinate_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_context_database_symbol
      (Elementary_context_database_symbol_t.Elementary_context_database_constructor "db1points")),
   [5; 7])
);;

let tag_ele_bas = List_v.only_element_of_predicate_off_list
    (fun (s, i) -> 
      (Coordinate_symbol_v.string_off s = nam_dbo)
	&&
      (Coordinate_symbol_v.is_elementary_context_databox_skeletondata_constructor s)
    ) tag_ele_l;;

test_number 3 (
( tag_ele_bas : Coordinate_symbol_t.coordinate_symbol Tag_t.tag ) =
  (Coordinate_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_context_databox_symbol
      (Elementary_context_databox_symbol_t.Elementary_context_databox_skeletondata_symbol
        (Elementary_context_databox_skeletondata_symbol_t.Elementary_context_databox_skeletondata_constructor
          "segment_s"))),
   [6; 5; 7])
);;

(* Argument Elementary_body_coordinate_tuple_heterogeneous_symbol he s 1 *)

let pre_tag_eta (s, i) = Coordinate_symbol_v.is_elementary_body_coordinate_tuple_heterogeneous_symbol_off_coordinate_symbol s;;
let pre_tag_eta_sof sof (s, i) = (Coordinate_symbol_v.is_elementary_body_coordinate_tuple_heterogeneous_symbol_off_coordinate_symbol s)
    && (Coordinate_symbol_v.string_off s = sof);;

let tag_ele_eta_l = List.filter pre_tag_eta tag_ele_l;;

let sof_eta = "he s 1 1";;

let tag_ele_eta_hes11 = List_v.only_element_of_predicate_off_list (pre_tag_eta_sof sof_eta) tag_ele_eta_l;;

let tag_eta_hes11 = Tag_v.map_entity 
    Coordinate_symbol_v.elementary_body_coordinate_tuple_heterogeneous_symbol_off_coordinate_symbol
    tag_ele_eta_hes11;;

test_number 4 (
(tag_eta_hes11 :
  Elementary_body_coordinate_tuple_heterogeneous_symbol_t.elementary_body_coordinate_tuple_heterogeneous_symbol
  Tag_t.tag ) =
  (Elementary_body_coordinate_tuple_heterogeneous_symbol_t.Elementary_body_coordinate_tuple_heterogeneous_constructor
    "he s 1 1",
   [1; 6; 5; 7])
);;

open Elementary_body_coordinate_tuple_heterogeneous_envelope_v;;

let tag_ele_eta = tag_ele_eta_hes11;;
let tag_eta = tag_eta_hes11;;

(** {6 Border} *)

let bor_eta = border_of_tag tag_eta;;

test_number 5 (
(bor_eta : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Elementary_border_symbol
     (Elementary_border_symbol_t.Elementary_border_coordinate_symbol
       (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_heterogeneous_symbol
         (Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_phi_symbol
           (Elementary_border_coordinate_heterogeneous_spherical_phi_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_phi_constructor
             "he s 1 1")))),
    [1; 1; 6; 5; 7]);
   (Coordinate_symbol_t.Elementary_border_symbol
     (Elementary_border_symbol_t.Elementary_border_coordinate_symbol
       (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_heterogeneous_symbol
         (Elementary_border_coordinate_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
           (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
             "he s 1 1")))),
    [2; 1; 6; 5; 7])]
);;

(** {6 Coerce Down Border} *)

let tag_epa_l = elementary_border_coordinate_heterogeneous_tag_list_of_tag tag_eta;;

test_number 6 (
( tag_epa_l :
  Elementary_border_coordinate_heterogeneous_symbol_t.elementary_border_coordinate_heterogeneous_symbol
  Tag_t.tag list ) =
  [(Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_phi_symbol
     (Elementary_border_coordinate_heterogeneous_spherical_phi_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_phi_constructor
       "he s 1 1"),
    [1; 1; 6; 5; 7]);
   (Elementary_border_coordinate_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
     (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
       "he s 1 1"),
    [2; 1; 6; 5; 7])]
);;

(** {6 Envelope} *)

let env_eta = envelope_of_tag tag_eta;;

test_number 7 (
( env_eta :
  (Elementary_border_coordinate_heterogeneous_symbol_t.elementary_border_coordinate_heterogeneous_symbol
   Tag_t.tag, float,
   Elementary_fence_units_actual_length_symbol_t.elementary_fence_units_actual_length_symbol)
  Triplet_t.triplet list ) =
  [((Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_phi_symbol
      (Elementary_border_coordinate_heterogeneous_spherical_phi_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_phi_constructor
        "he s 1 1"),
     [1; 1; 6; 5; 7]),
    13.6267, Elementary_fence_units_actual_length_symbol_t.Bohr);
   ((Elementary_border_coordinate_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
      (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
        "he s 1 1"),
     [2; 1; 6; 5; 7]),
    0.17523, Elementary_fence_units_actual_length_symbol_t.Bohr)]
);;

(** {6 Tagged_measure Triplet List} *)

let tml_eta_tl = tagged_measure_actual_length_triplet_list_of_tag tag_eta;;

test_number 8 (
(tml_eta_tl :
  (Elementary_border_coordinate_heterogeneous_symbol_t.elementary_border_coordinate_heterogeneous_symbol
   Tag_t.tag, float,
   Elementary_fence_units_actual_length_symbol_t.elementary_fence_units_actual_length_symbol)
  Triplet_t.triplet list ) =
  [((Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_phi_symbol
      (Elementary_border_coordinate_heterogeneous_spherical_phi_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_phi_constructor
        "he s 1 1"),
     [1; 1; 6; 5; 7]),
    13.6267, Elementary_fence_units_actual_length_symbol_t.Bohr);
   ((Elementary_border_coordinate_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
      (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
        "he s 1 1"),
     [2; 1; 6; 5; 7]),
    0.17523, Elementary_fence_units_actual_length_symbol_t.Bohr)]
);;

(** {6 Tagged_readee Doublet List} *)

let tpl_eta_dl = tagged_readee_doublet_list_of_tag tag_eta;;

test_number 9 (
( tpl_eta_dl :
  (Elementary_border_coordinate_heterogeneous_symbol_t.elementary_border_coordinate_heterogeneous_symbol
   Tag_t.tag, Readee_t.readee)
  Doublet_t.doublet list ) =
  [((Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_phi_symbol
      (Elementary_border_coordinate_heterogeneous_spherical_phi_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_phi_constructor
        "he s 1 1"),
     [1; 1; 6; 5; 7]),
    Readee_t.Readee_units
     (Measure_t.Measure_actual_length
       (13.6267, Elementary_fence_units_actual_length_symbol_t.Bohr)));
   ((Elementary_border_coordinate_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
      (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
        "he s 1 1"),
     [2; 1; 6; 5; 7]),
    Readee_t.Readee_units
     (Measure_t.Measure_actual_length
       (0.17523, Elementary_fence_units_actual_length_symbol_t.Bohr)))]
);;

(** {6 Float List} *)

let flo_eta_l = float_list_of_tag tag_eta;;

test_number 10 (
(flo_eta_l : float list ) = 
[13.6267; 0.17523]
);;

(** {6 Units List} *)

let tag_eul_eta_l = elementary_fence_units_actual_length_list_tag_of_tag tag_eta;;

test_number 11 (
( tag_eul_eta_l :
  Elementary_fence_units_actual_length_symbol_t.elementary_fence_units_actual_length_symbol
  list ) =
  [Elementary_fence_units_actual_length_symbol_t.Bohr;
   Elementary_fence_units_actual_length_symbol_t.Bohr]
);;

let tex_eta = text_of_tag tag_eta;;

test_number 12 (
(tex_eta : string list ) =
  ["exponent 13.626700 bohr"; 
   "coefficient 0.175230 bohr"]
);;
