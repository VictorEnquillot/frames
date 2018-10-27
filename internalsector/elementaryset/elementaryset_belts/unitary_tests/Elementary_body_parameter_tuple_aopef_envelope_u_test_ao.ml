open Make_test_v;;

testing "Elementary_body_parameter_tuple_aopef_envelope_v with
   Elementary_body_parameter_tuple_aopef_envelope_u_test_ao.ml";;

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

Parameters_general_register_v.store_force "trace-build" "false";;
Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Elementary_body_parameter_tuple_aopef_envelope_u_test_ao.ml";;

*)

let nam_dba = "nwchem";;
let nam_dbo = "test_ao";;

Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "databox-name" nam_dbo;;

let tag_ele_l = Elementary_tag_all_list_by_parameters_general_provider_v.provide ();;

(* Context *) 

let tag_edo = Elementary_context_domain_tag_by_unit_provider_v.provide ();;

test_number 1 (
(tag_edo : Elementary_context_domain_symbol_t.elementary_context_domain_symbol Tag_t.tag ) =
  (Elementary_context_domain_symbol_t.Elementary_context_domain_constructor "elementary",
   [7])
);;

let tag_ele_dba = Elementary_as_database_tag_by_database_name_provider_v.provide nam_dba;;

test_number 2 (
(tag_ele_dba : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
 (Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_context_database_symbol
      (Elementary_context_database_symbol_t.Elementary_context_database_constructor "nwchem")),
   [5; 7])
);;

let tag_ele_bas = List_v.only_element_of_predicate_off_list
    (fun (s, i) -> 
      (Elementary_symbol_v.string_off s = nam_dbo)
	&&
      (Elementary_symbol_v.is_elementary_context_databox_skeletondata_constructor s)
    ) tag_ele_l;;

test_number 3 (
( tag_ele_bas : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_context_databox_symbol
      (Elementary_context_databox_symbol_t.Elementary_context_databox_skeletondata_symbol
        (Elementary_context_databox_skeletondata_symbol_t.Elementary_context_databox_skeletondata_constructor
          "test_ao"))),
   [6; 5; 7])
);;

(* Argument Elementary_body_parameter_tuple_aopef_symbol he s 1 *)

let pre_tag_eta (s, i) = Elementary_symbol_v.is_elementary_body_parameter_tuple_aopef_symbol_off_elementary_symbol s;;
let pre_tag_eta_sof sof (s, i) = (Elementary_symbol_v.is_elementary_body_parameter_tuple_aopef_symbol_off_elementary_symbol s)
    && (Elementary_symbol_v.string_off s = sof);;

let tag_ele_eta_l = List.filter pre_tag_eta tag_ele_l;;

let sof_eta = "he s 1 1";;

let tag_ele_eta_hes11 = List_v.only_element_of_predicate_off_list (pre_tag_eta_sof sof_eta) tag_ele_eta_l;;

let tag_eta_hes11 = Tag_v.map_entity 
    Elementary_symbol_v.elementary_body_parameter_tuple_aopef_symbol_off_elementary_symbol
    tag_ele_eta_hes11;;

test_number 4 (
(tag_eta_hes11 :
  Elementary_body_parameter_tuple_aopef_symbol_t.elementary_body_parameter_tuple_aopef_symbol
  Tag_t.tag ) =
  (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
    "he s 1 1",
   [1; 6; 5; 7])
);;

open Elementary_body_parameter_tuple_aopef_envelope_v;;

let tag_ele_eta = tag_ele_eta_hes11;;
let tag_eta = tag_eta_hes11;;

(** {6 Border} *)

let bor_eta = border_of_tag tag_eta;;

test_number 5 (
(bor_eta : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
  [(Elementary_symbol_t.Elementary_border_symbol
     (Elementary_border_symbol_t.Elementary_border_parameter_symbol
       (Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
         (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_exponent_symbol
           (Elementary_border_parameter_aopef_exponent_symbol_t.Elementary_border_parameter_aopef_exponent_constructor
             "he s 1 1")))),
    [1; 1; 6; 5; 7]);
   (Elementary_symbol_t.Elementary_border_symbol
     (Elementary_border_symbol_t.Elementary_border_parameter_symbol
       (Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
         (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_coefficient_symbol
           (Elementary_border_parameter_aopef_coefficient_symbol_t.Elementary_border_parameter_aopef_coefficient_constructor
             "he s 1 1")))),
    [2; 1; 6; 5; 7])]
);;

(** {6 Coerce Down Border} *)

let tag_epa_l = elementary_border_parameter_aopef_tag_list_of_tag tag_eta;;

test_number 6 (
( tag_epa_l :
  Elementary_border_parameter_aopef_symbol_t.elementary_border_parameter_aopef_symbol
  Tag_t.tag list ) =
  [(Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_exponent_symbol
     (Elementary_border_parameter_aopef_exponent_symbol_t.Elementary_border_parameter_aopef_exponent_constructor
       "he s 1 1"),
    [1; 1; 6; 5; 7]);
   (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_coefficient_symbol
     (Elementary_border_parameter_aopef_coefficient_symbol_t.Elementary_border_parameter_aopef_coefficient_constructor
       "he s 1 1"),
    [2; 1; 6; 5; 7])]
);;

(** {6 Envelope} *)

let env_eta = envelope_of_tag tag_eta;;

test_number 7 (
( env_eta :
  (Elementary_border_parameter_aopef_symbol_t.elementary_border_parameter_aopef_symbol
   Tag_t.tag, float,
   Elementary_fence_units_actual_length_symbol_t.elementary_fence_units_actual_length_symbol)
  Triplet_t.triplet list ) =
  [((Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_exponent_symbol
      (Elementary_border_parameter_aopef_exponent_symbol_t.Elementary_border_parameter_aopef_exponent_constructor
        "he s 1 1"),
     [1; 1; 6; 5; 7]),
    13.6267, Elementary_fence_units_actual_length_symbol_t.Bohr);
   ((Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_coefficient_symbol
      (Elementary_border_parameter_aopef_coefficient_symbol_t.Elementary_border_parameter_aopef_coefficient_constructor
        "he s 1 1"),
     [2; 1; 6; 5; 7]),
    0.17523, Elementary_fence_units_actual_length_symbol_t.Bohr)]
);;

(** {6 Tagged_measure Triplet List} *)

let tml_eta_tl = tagged_measure_actual_length_triplet_list_of_tag tag_eta;;

test_number 8 (
(tml_eta_tl :
  (Elementary_border_parameter_aopef_symbol_t.elementary_border_parameter_aopef_symbol
   Tag_t.tag, float,
   Elementary_fence_units_actual_length_symbol_t.elementary_fence_units_actual_length_symbol)
  Triplet_t.triplet list ) =
  [((Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_exponent_symbol
      (Elementary_border_parameter_aopef_exponent_symbol_t.Elementary_border_parameter_aopef_exponent_constructor
        "he s 1 1"),
     [1; 1; 6; 5; 7]),
    13.6267, Elementary_fence_units_actual_length_symbol_t.Bohr);
   ((Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_coefficient_symbol
      (Elementary_border_parameter_aopef_coefficient_symbol_t.Elementary_border_parameter_aopef_coefficient_constructor
        "he s 1 1"),
     [2; 1; 6; 5; 7]),
    0.17523, Elementary_fence_units_actual_length_symbol_t.Bohr)]
);;

(** {6 Tagged_readee Doublet List} *)

let tpl_eta_dl = tagged_readee_doublet_list_of_tag tag_eta;;

test_number 9 (
( tpl_eta_dl :
  (Elementary_border_parameter_aopef_symbol_t.elementary_border_parameter_aopef_symbol
   Tag_t.tag, Readee_t.readee)
  Doublet_t.doublet list ) =
  [((Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_exponent_symbol
      (Elementary_border_parameter_aopef_exponent_symbol_t.Elementary_border_parameter_aopef_exponent_constructor
        "he s 1 1"),
     [1; 1; 6; 5; 7]),
    Readee_t.Readee_units
     (Measure_t.Measure_actual_length
       (13.6267, Elementary_fence_units_actual_length_symbol_t.Bohr)));
   ((Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_coefficient_symbol
      (Elementary_border_parameter_aopef_coefficient_symbol_t.Elementary_border_parameter_aopef_coefficient_constructor
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
