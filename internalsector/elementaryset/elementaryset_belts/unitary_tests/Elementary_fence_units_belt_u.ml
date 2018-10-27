open Make_test_v;;

testing "Elementary_fence_units_belt_v with
   Elementary_fence_units_belt_u.ml";;

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

(* toplevel 
   #use "Elementary_fence_units_belt_u.ml";;

*)

(* Database *)

let tag_ecr = Elementary_context_database_tag_by_database_name_provider_v.provide "db1";;

test_number 1 (
(tag_ecr : Elementary_context_database_symbol_t.elementary_context_database_symbol Tag_t.tag ) =
  (Elementary_context_database_symbol_t.Elementary_context_database "db1", [1; 4])
);;

let tag_ele_t = Elementary_tag_tree_by_elementary_context_database_tag_provider_v.provide tag_ecr;;
let tag_ele_l = Elementary_tag_all_list_by_elementary_context_database_tag_provider_v.provide tag_ecr;;

let tag_ele_ule_l = List.filter (fun (s, i) -> Elementary_symbol_v.is_elementary_fence_units_actual_length_symbol_off_elementary_symbol s) tag_ele_l;;

(* First Elementary_fence_units_actual_length Tag *)

let tag_ele_ule = List.nth tag_ele_ule_l 0;;

test_number 2 (
(tag_ele_ule : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_closure_symbol
    (Elementary_closure_symbol_t.Elementary_fence_units_actual_symbol
      (Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
        Elementary_fence_units_actual_length_symbol_t.Angstrom)),
   [1; 1; 1; 1; 4])
);;

let tag_eul = Tag_v.map_entity Elementary_symbol_v.elementary_fence_units_actual_length_symbol_off_elementary_symbol tag_ele_ule;;

test_number 3 (
(tag_eul : Elementary_fence_units_actual_length_symbol_t.elementary_fence_units_actual_length_symbol Tag_t.tag ) =
  (Elementary_fence_units_actual_length_symbol_t.Angstrom, [1; 1; 1; 1; 4])
);;

let tag_ele_ule_st = Tree_v.subtree_of_node_predicate_off_tree (fun (s, i) -> Elementary_symbol_v.is_elementary_fence_units_actual_length_symbol_off_elementary_symbol s) tag_ele_t;;

test_number 4 (
(tag_ele_ule_st : Elementary_symbol_t.elementary_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Leaf
   (Elementary_symbol_t.Elementary_closure_symbol
     (Elementary_closure_symbol_t.Elementary_fence_units_actual_symbol
       (Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
         Elementary_fence_units_actual_length_symbol_t.Angstrom)),
    [1; 1; 1; 1; 4])
);;

let tag_eun = Tag_v.map_entity Elementary_symbol_v.elementary_fence_units_actual_symbol_off_elementary_symbol tag_ele_ule;;

test_number 5 (
(tag_eun : Elementary_fence_units_actual_symbol_t.elementary_fence_units_actual_symbol Tag_t.tag ) =
  (Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
    Elementary_fence_units_actual_length_symbol_t.Angstrom,
   [1; 1; 1; 1; 4])
);;

open Elementary_fence_units_belt_v;;

let env_eun = build tag_eun;;

test_number 6 (
(env_eun : Measure_t.measure list Uno_t.uno ) =
  [(1.,
    Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Angstrom)]
);;

let ent_eun = envelope_as_tuple tag_eun;;

test_number 7 (
(ent_eun : Measure_t.measure list Uno_t.uno Tuple_t.tuple )=
  Tuple_t.Uno
   [(1.,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Angstrom)]
);;

let cun_eun = closure_units tag_eun;;

test_number 8 (
(cun_eun : Measure_t.measure list ) =
  [(1.,
    Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Angstrom)]
);;

let cun_eun_t = closure_units_as_tuple tag_eun;;

test_number 9 (
( cun_eun_t : Measure_t.measure list Uno_t.uno Tuple_t.tuple ) =
  Tuple_t.Uno
   [(1.,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Angstrom)]
);;

let cun_eun_tl = closure_units_as_tuple_list tag_eun;;

test_number 10 (
(cun_eun_tl : Measure_t.measure Tuple_t.tuple list ) =
  [Tuple_t.Uno
    (1.,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Angstrom)]
);;

let clo_eun = closure tag_eun;;

test_number 11 (
( clo_eun : Closure_t.closure ) =
  Closure_t.Closure_units
   [(1.,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Angstrom)]
);;

let mca = measure_canonical_of_elementary_fence_units_actual_tag tag_eun;;

test_number 12 (
( mca :
  (float, Elementary_fence_units_actual_symbol_t.elementary_fence_units_actual_symbol)
  Doublet_t.doublet ) =
  (1e-10,
   Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
    Elementary_fence_units_actual_length_symbol_t.Meter)
);;

let mca_l = measure_canonical_list_of_elementary_fence_units_actual_tag tag_eun;;

test_number 13 (
( mca_l :
  (float, Elementary_fence_units_actual_symbol_t.elementary_fence_units_actual_symbol)
  Doublet_t.doublet list ) =
  [(1e-10,
    Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Meter)]
);;

test_number 14 (
clo_eun = closure_off_elementary_fence_units_belt env_eun
);;

test_number 15 (
 mca = measure_canonical_off_elementary_fence_units_belt env_eun
);;

test_number 16 (
 mca_l = measure_canonical_list_off_elementary_fence_units_belt env_eun
);;
