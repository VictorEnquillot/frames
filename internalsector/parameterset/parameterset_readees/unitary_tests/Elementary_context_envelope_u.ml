open Make_test_v;;

testing "Elementary_context_envelope_v with
   Elementary_context_envelope_u.ml";;

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
Parameters_general_register_v.store_force "trace-extract" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-retrieve" "false";;
Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-trace" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;

(* toplevel 
   #use "Elementary_context_envelope_u.ml";;

*)

(* Database *)

let tag_edo = Elementary_context_domain_tag_by_unit_provider_v.provide ();;

let tag_ecr = Elementary_context_database_tag_by_database_name_provider_v.provide "db1";;

test_number 1 (
(tag_edo : Elementary_context_domain_symbol_t.elementary_context_domain_symbol Tag_t.tag ) =
(Elementary_context_domain_symbol_t.Elementary_context_domain_constructor "elementary", [4])
);;

test_number 2 (
(tag_ecr : Elementary_context_database_symbol_t.elementary_context_database_symbol Tag_t.tag ) =
  (Elementary_context_database_symbol_t.Elementary_context_database "db1", [1; 4])
);;

(* To fill register : Improve *)
let tag_ele_t = Elementary_tag_tree_by_elementary_context_database_tag_provider_v.provide tag_ecr;;

let tag_ele_dom =  Elementary_context_domain_tag_v.elementary_tag_of_elementary_context_domain_tag tag_edo;;

test_number 3 (
(tag_ele_dom : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_context_domain_symbol
      (Elementary_context_domain_symbol_t.Elementary_context_domain_constructor "elementary")),
   [4])
);;

let tag_ele_cre = Elementary_context_database_tag_v.elementary_tag_of_elementary_context_database_tag tag_ecr;;

test_number 4 (
(tag_ele_cre : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_context_database_symbol
      (Elementary_context_database_symbol_t.Elementary_context_database "db1")),
   [1; 4])
);;

let tag_ele_con = Tree_v.root_off_tree tag_ele_t ;; 

test_number 5 (
(tag_ele_con : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_context_domain_symbol
      (Elementary_context_domain_symbol_t.Elementary_context_domain_constructor "elementary")),
   [4])
);;

let tag_eco = Elementary_context_tag_v.elementary_context_tag_off_elementary_tag tag_ele_con;;

test_number 6 (
( tag_eco : Elementary_context_symbol_t.elementary_context_symbol Tag_t.tag ) =
  (Elementary_context_symbol_t.Elementary_context_domain_symbol
    (Elementary_context_domain_symbol_t.Elementary_context_domain_constructor "elementary"),
   [4])
);;

let env_edo = Elementary_context_domain_envelope_v.build tag_edo;;
let env_edo_sl = List.map (List_v.sublist_of_int_of_length_of_list 0 2) env_edo;;

test_number 7 ( 
( env_edo_sl : Measure_t.measure list list ) =
  [[(1.,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Angstrom);
    (0.,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_angle_symbol
      Elementary_fence_units_angle_symbol_t.Degree)]]
);;

let env_ecr = Elementary_context_database_envelope_v.build tag_ecr;;
let env_ecr_sl = List_v.sublist_of_int_of_length_of_list 0 2 (List.map (List_v.sublist_of_int_of_length_of_list 0 2) env_ecr);;

test_number 8 ( 
( env_ecr_sl : Measure_t.measure list list ) =
  [[(1.,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Angstrom);
    (0.,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_angle_symbol
      Elementary_fence_units_angle_symbol_t.Degree)];
   [(0.,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Angstrom);
    (1.,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Angstrom)]]
);;

open Elementary_context_envelope_v;;  

let env_eco = build tag_eco;;
let env_edo = elementary_context_domain_envelope_off_elementary_context_envelope env_eco;; 
let env_edo_sl = List_v.sublist_of_int_of_length_of_list 0 2 (List.map (List_v.sublist_of_int_of_length_of_list 0 2) env_edo);;

test_number 9 ( 
( env_edo_sl : Measure_t.measure list list ) =
  [[(1.,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Angstrom);
    (0.,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_angle_symbol
      Elementary_fence_units_angle_symbol_t.Degree)]]
);;

let dfe_eco = Elementary_context_container_v.deepfence_list tag_eco;;
let dfe_eco_sl = List_v.sublist_of_int_of_length_of_list 0 2 dfe_eco;;

test_number 10 (
(dfe_eco_sl :
  Elementary_fence_units_actual_symbol_t.elementary_fence_units_actual_symbol Tag_t.tag list ) =
  [(Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Angstrom,
    [1; 1; 1; 1; 4]);
   (Elementary_fence_units_actual_symbol_t.Elementary_fence_units_angle_symbol
     Elementary_fence_units_angle_symbol_t.Degree,
    [1; 2; 1; 1; 4])]
);;

let cun_eco = closure_units tag_eco;;
let cun_eco_sl = List_v.sublist_of_int_of_length_of_list 0 2 cun_eco;;

test_number 11 (
(cun_eco_sl : Measure_t.measure list ) =
  [(1.,
    Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Angstrom);
   (0.,
    Elementary_fence_units_actual_symbol_t.Elementary_fence_units_angle_symbol
     Elementary_fence_units_angle_symbol_t.Degree)]
);;

(*
let cun_eco_t = closure_units_as_tuple tag_eco;;
let cun_eco_tsl = List_v.sublist_of_int_of_length_of_list 0 2 cun_eco_tl;;
*)

let cun_eco_tl = closure_units_as_tuple_list tag_eco;;
let cun_eco_tsl = List_v.sublist_of_int_of_length_of_list 0 2 cun_eco_tl;;

test_number 12 (
(cun_eco_tsl : Measure_t.measure Tuple_t.tuple list )=
  [Tuple_t.Trio
    ((1.,
      Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
       Elementary_fence_units_actual_length_symbol_t.Angstrom),
     (0.,
      Elementary_fence_units_actual_symbol_t.Elementary_fence_units_angle_symbol
       Elementary_fence_units_angle_symbol_t.Degree),
     (0.,
      Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
       Elementary_fence_units_actual_length_symbol_t.Angstrom));
   Tuple_t.Trio
    ((1.,
      Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
       Elementary_fence_units_actual_length_symbol_t.Angstrom),
     (90.,
      Elementary_fence_units_actual_symbol_t.Elementary_fence_units_angle_symbol
       Elementary_fence_units_angle_symbol_t.Degree),
     (1.,
      Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
       Elementary_fence_units_actual_length_symbol_t.Angstrom))]
);;

let mea_t = measure_tuple_of_elementary_context_tag tag_eco;;

test_number 13 (
mea_t = cun_eco_t
);;

let mea_tl = measure_tuple_list_of_elementary_context_tag tag_eco;;

test_number 14 (
mea_tl = cun_eco_tl
);;

let mea_l = measure_list_of_elementary_context_tag tag_eco;;

test_number 15 (
mea_l = cun_eco
);;

let nam_env_eco = name env_eco;;

test_number 16 (
(nam_env_eco : string ) =
 "[ [ (1.000000, angstrom) (0.000000, degree) (0.000000, angstrom) (1.000000, angstrom) (90.000000, degree) (1.000000, angstrom) (0.100000, nanometer) (0.200000, nanometer) (-0.200000, nanometer) (0.000000, nanometer) (0.000000, nanometer) (-0.200000, nanometer) (0.200000, nanometer) (0.000000, nanometer) (-0.200000, nanometer) (1.000000, nanometer) (0.500000, nanometer) (-2.000000, nanometer) (0.000000, nanometer) (0.000000, nanometer) (-2.000000, nanometer) (2.000000, nanometer) (0.000000, nanometer) (-2.000000, nanometer) (0.000000, angstrom) (0.000000, angstrom) (-3.000000, angstrom) (0.000000, angstrom) (1.000000, angstrom) (-3.000000, angstrom) (1.000000, angstrom) (0.000000, angstrom) (-3.000000, angstrom) (1.000000, meter) (0.785398, radian) (0.785398, radian) ] ]"
);;
