open Make_test_v;;

testing "Measure_canonical_by_elementary_fence_units_canonical_tag_provider_v with
   Measure_canonical_by_elementary_fence_units_canonical_tag_provider_u_point_a.ml";;

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
Register_v.delete  Elementary_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Elementary_symbol_by_sole_index_register_v.register;;
Register_v.delete  Elementary_tag_all_list_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Measure_actual_by_elementary_fence_units_actual_tag_register_v.register;;
Register_v.delete  Measure_by_elementary_fence_units_actual_tag_register_v.register;;
Register_v.delete  Measure_canonical_by_elementary_fence_units_canonical_tag_register_v.register;;
Register_v.delete  Nwchem_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Nwchem_symbol_by_sole_index_register_v.register;;
Register_v.delete  Nwchem_tag_all_list_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Nwchem_tag_all_list_by_nwchem_context_databox_tag_register_v.register;;
Register_v.delete  Nwchem_tag_tree_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;
Register_v.delete  Trace_what_by_module_name_register_v.register;;

(* Tracing *)
(*
Trace_what_by_module_name_register_v.store "Elementary_tag_all_list_by_database_name_n_databox_name_provider_v" "cpu any";;
Trace_what_by_module_name_register_v.store "Measure_canonical_by_elementary_fence_units_canonical_tag_provider_v" "cpu any";;
Trace_what_by_module_name_register_v.store "Elementary_symbol_by_sole_index_provider_v" "cpu any";;
Trace_what_by_module_name_register_v.store "Db1figure_symbol_by_sole_index_register_filler_v" "cpu any";;

Trace_what_by_module_name_register_v.store "any" "cpu any";;
*)

(* toplevel 
   #use "Measure_canonical_by_elementary_fence_units_canonical_tag_provider_u_point_a.ml";;

*)

let nam_dba = "db1figure";;
let nam_dbo = "point_a";;
let nam_mod = "Measure_canonical_by_elementary_fence_units_canonical_tag_provider_v";;

Parameters_general_register_v.store nam_mod "database-name" nam_dba;;
Parameters_general_register_v.store nam_mod "databox-name" nam_dbo;;

let tag_ele_l = Elementary_tag_all_list_by_database_name_n_databox_name_provider_v.provide (nam_dba, nam_dbo);;

let sof_ect = "A";;

let pre_tag_rho_sof sof (s, i) = (Elementary_symbol_v.string_off s = sof) && (Elementary_symbol_v.is_elementary_border_coordinate_heterogeneous_spherical_rho_constructor s);;
let tag_ele_rho = List_v.only_element_of_predicate_off_list (pre_tag_rho_sof sof_ect) tag_ele_l;;

test_number 1 (
(tag_ele_rho : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_border_symbol
    (Elementary_border_symbol_t.Elementary_border_coordinate_symbol
      (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_heterogeneous_symbol
        (Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_symbol
          (Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_rho_symbol
            (Elementary_border_coordinate_heterogeneous_spherical_rho_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_rho_constructor
              "A"))))),
   [1; 1; 1; 1; 7])
);;

Format.fprintf Format.std_formatter "%s" (Elementary_symbol_by_sole_index_register_v.dump ());;

let soi_ele_rho = Tag_v.sole_index_off_tag tag_ele_rho;;
let soi_ele_eua = Sole_index_v.make 1 soi_ele_rho;;
let sym_ele_eua = Elementary_symbol_by_sole_index_provider_v.provide soi_ele_eua;; 
let sym_eua = Elementary_symbol_v.elementary_fence_units_actual_symbol_off_elementary_symbol sym_ele_eua;;
let sym_euc = Elementary_fence_units_canonical_conversion_v.elementary_fence_units_canonical_symbol_of_elementary_fence_units_actual_symbol_of_calculation_name sym_eua "classical" ;;

(* Argument tag_euc *)

let tag_euc = Tag_v.make sym_euc soi_ele_eua;;

test_number 2 (
( tag_euc :
  Elementary_fence_units_canonical_symbol_t.elementary_fence_units_canonical_symbol
  Tag_t.tag ) =
  (Elementary_fence_units_canonical_symbol_t.Elementary_fence_units_canonical_classical_symbol
    Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_length_angstrom,
   [1; 1; 1; 1; 1; 7])
);;

open Measure_canonical_by_elementary_fence_units_canonical_tag_provider_v;;

let (sym_euc, soi_euc) = tag_euc;;

let sym_eua =  
    Elementary_fence_units_canonical_conversion_v.elementary_fence_units_actual_symbol_of_elementary_fence_units_canonical_symbol 
      sym_euc;;

let tag_eua = Tag_v.make sym_eua soi_euc;;

test_number 3 (
( tag_eua :
  Elementary_fence_units_actual_symbol_t.elementary_fence_units_actual_symbol
  Tag_t.tag ) =
 (Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
    Elementary_fence_units_actual_length_symbol_t.Angstrom,
   [1; 1; 1; 1; 1; 7])
);;
  
let nam_cal = Calculation_name_by_elementary_fence_units_canonical_symbol_provider_v.provide sym_euc;; 

test_number 4 (
(nam_cal : string ) = 
"classical"
);;

let mea_can_euc = Measure_canonical_by_calculation_name_n_elementary_fence_units_actual_tag_provider_v.provide (nam_cal, tag_eua);;

test_number 5 (
(mea_can_euc :
  (float,
   Elementary_fence_units_canonical_symbol_t.elementary_fence_units_canonical_symbol)
   Doublet_t.doublet ) =
(1.88972612456506206,
 Elementary_fence_units_canonical_symbol_t.Elementary_fence_units_canonical_classical_symbol
   Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_length_angstrom)
);;

test_number 6 (
mea_can_euc = provide tag_euc
);;

