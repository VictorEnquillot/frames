open Make_test_v;;

testing "Elementary_border_coordinate_heterogeneous_envelope_v with
   Elementary_border_coordinate_heterogeneous_envelope_u_segment_s.ml";;

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
   #use "Elementary_border_coordinate_heterogeneous_envelope_u_segment_s.ml";;

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

(* Argument Elementary_border_coordinate_heterogeneous_symbol he s 1 1 *)

let pre_tag_epa (s, i) = Coordinate_symbol_v.is_elementary_border_coordinate_heterogeneous_symbol_off_coordinate_symbol s;;
let pre_tag_epa_sof sof (s, i) = (Coordinate_symbol_v.is_elementary_border_coordinate_heterogeneous_symbol_off_coordinate_symbol s)
    && (Coordinate_symbol_v.string_off s = sof);;

let tag_ele_pae_l = List.filter pre_tag_epa tag_ele_l;;

let sof_epa = "he s 1 1";;

let tag_ele_pae_hes11_l = List.filter (pre_tag_epa_sof sof_epa) tag_ele_pae_l;;

let tag_eao_hes11_l = List.map
    (Tag_v.map_entity Coordinate_symbol_v.elementary_border_coordinate_heterogeneous_symbol_off_coordinate_symbol) tag_ele_pae_hes11_l;;

test_number 4 (
(tag_eao_hes11_l :
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

let pre_tag_eac_sof sof (s, i) = Coordinate_symbol_v.elementary_border_coordinate_heterogeneous_spherical_rho_constructor sof = s;;

let tag_ele_eac = List_v.only_element_of_predicate_off_list (pre_tag_eac_sof sof_epa) tag_ele_pae_l;;

test_number 5 (
( tag_ele_eac : Coordinate_symbol_t.coordinate_symbol Tag_t.tag ) =
  (Coordinate_symbol_t.Elementary_border_symbol
    (Elementary_border_symbol_t.Elementary_border_coordinate_symbol
      (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_heterogeneous_symbol
        (Elementary_border_coordinate_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
          (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
            "he s 1 1")))),
   [2; 1; 6; 5; 7])
);;

open Elementary_border_coordinate_heterogeneous_envelope_v;;

let tag_epa = Tag_v.map_entity Coordinate_symbol_v.elementary_border_coordinate_heterogeneous_symbol_off_coordinate_symbol tag_ele_eac;;

test_number 6 (
(tag_epa :
   Elementary_border_coordinate_heterogeneous_symbol_t.elementary_border_coordinate_heterogeneous_symbol
   Tag_t.tag ) =
  (Elementary_border_coordinate_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
    (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
      "he s 1 1"),
   [2; 1; 6; 5; 7])
);;

(** {6 Border as list of itself} *)

let bor_epa = border_of_tag tag_epa;;

test_number 7 (
( bor_epa : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Elementary_border_symbol
     (Elementary_border_symbol_t.Elementary_border_coordinate_symbol
       (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_heterogeneous_symbol
         (Elementary_border_coordinate_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
           (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
             "he s 1 1")))),
    [2; 1; 6; 5; 7])]
);;

(** {6 Measure} *)

let mle_epa = measure_actual_length_of_tag tag_epa;;

test_number 8 (
( mle_epa : Measure_actual_length_t.measure_actual_length ) =
(0.17523, Elementary_fence_units_actual_length_symbol_t.Bohr)
);;

let mea_epa = measure_actual_of_tag tag_epa;;

test_number 9 (
(mea_epa : Measure_t.measure ) =
  Measure_t.Measure_actual_length
  (0.17523, Elementary_fence_units_actual_length_symbol_t.Bohr)
);;

let mea_epa_l =  measure_list_of_tag tag_epa;;

let mca_epa = measure_canonical_of_tag_of_calculation_name tag_epa;;
 
test_number 10 (
(mca_epa : Measure_t.measure ) =
  Measure_t.Measure_actual_length
   (9.27277226695116e-12, Elementary_fence_units_actual_length_symbol_t.Meter)
);;

let mca_epa_l =  measure_canonical_list_of_tag tag_epa;;

(** {6 Envelope as Triplet} *)

let env_epa = envelope_of_tag tag_epa;;

test_number 11 (
( env_epa :
  Elementary_border_coordinate_heterogeneous_envelope_t.elementary_border_coordinate_heterogeneous_envelope ) =
  Elementary_border_coordinate_heterogeneous_envelope_t.Coordinate_set_fence_heterogeneous_spherical_rho_envelope
   ((Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
      "he s 1 1",
     [2; 1; 6; 5; 7]),
    (0.17523, Elementary_fence_units_actual_length_symbol_t.Bohr))
);;

let tml_epa_t = tagged_measure_actual_length_triplet_of_tag tag_epa;;

test_number 12 (
( tml_epa_t :
  (Elementary_border_coordinate_heterogeneous_symbol_t.elementary_border_coordinate_heterogeneous_symbol
   Tag_t.tag, float,
   Elementary_fence_units_actual_length_symbol_t.elementary_fence_units_actual_length_symbol)
  Triplet_t.triplet ) =
  ((Elementary_border_coordinate_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
     (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
       "he s 1 1"),
    [2; 1; 6; 5; 7]),
   0.17523, Elementary_fence_units_actual_length_symbol_t.Bohr)
);;

(** {6 Extracting Measure off Envelope} *)

test_number 13 (
mle_epa = measure_actual_length_off_envelope env_epa
);;

test_number 14 (
mea_epa = measure_actual_off_envelope env_epa
);;

test_number 15 (
mea_epa_l = measure_list_off_envelope env_epa
);;

test_number 16 (
mca_epa_l = measure_canonical_list_off_envelope env_epa
);;

(** {6 Readee : a Generalization of Measure} *)

let pun_epa = readee_units_off_envelope env_epa;;

test_number 17 (
(pun_epa : Measure_t.measure ) =
  Measure_t.Measure_actual_length
   (0.17523, Elementary_fence_units_actual_length_symbol_t.Bohr)
);; 

let plu_epa = readee_off_envelope env_epa;;

test_number 18 (
(plu_epa : Readee_t.readee ) =
Readee_t.Readee_units
  (Measure_t.Measure_actual_length
     (0.17523, Elementary_fence_units_actual_length_symbol_t.Bohr))
);;

test_number 19 (
pun_epa = readee_units_of_tag tag_epa
);;

test_number 20 (
plu_epa = readee_of_tag tag_epa
);;

(** {9 Closure : list of Readee} *)

let clo_epa = closure_off_envelope env_epa;;

test_number 21 (
( clo_epa : Readee_t.readee list ) =
  [Readee_t.Readee_units
    (Measure_t.Measure_actual_length
      (0.17523, Elementary_fence_units_actual_length_symbol_t.Bohr))]
);;

test_number 22 (
clo_epa = closure_of_tag tag_epa 
);;

(** {6 Tagged_readee Doublet} *)

let tpl_epa_d = tagged_readee_doublet_of_tag tag_epa;;

test_number 23 (
(tpl_epa_d :
  (Elementary_border_coordinate_heterogeneous_symbol_t.elementary_border_coordinate_heterogeneous_symbol
   Tag_t.tag, Readee_t.readee)
  Doublet_t.doublet ) =
  ((Elementary_border_coordinate_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
     (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
       "he s 1 1"),
    [2; 1; 6; 5; 7]),
   Readee_t.Readee_units
    (Measure_t.Measure_actual_length
      (0.17523, Elementary_fence_units_actual_length_symbol_t.Bohr)))
);;

(** {6 Float} *)

let flo_epa = float_of_tag tag_epa;;

test_number 24 (
(flo_epa : float ) = 
 0.17523
);; 

(** {6 Units} *)

let tag_eul_epa = elementary_fence_units_actual_length_tag_of_tag tag_epa;;

test_number 25 (
(tag_eul_epa :
  Elementary_fence_units_actual_length_symbol_t.elementary_fence_units_actual_length_symbol ) =
  Elementary_fence_units_actual_length_symbol_t.Bohr
);;

(** {6 Text} *)

let tex_epa = text_of_tag tag_epa ;;

test_number 26 (
(tex_epa : string ) = 
"coefficient 0.175230 bohr"
);;
