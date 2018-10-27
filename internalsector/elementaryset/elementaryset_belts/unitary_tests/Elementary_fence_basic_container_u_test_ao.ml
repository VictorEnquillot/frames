open Make_test_v;;

testing "Elementary_fence_basic_container_v with
    Elementary_fence_basic_container_u_test_ao.ml";;

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

Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Elementary_fence_basic_container_u_test_ao.ml";;

*)

(* Database file *)

let nam_bas = "test_ao";;
let nam_dba = "nwchem";;
Parameters_general_register_v.store "databox-name" nam_bas;;
Parameters_general_register_v.store "database-name" nam_dba;;

(* Debug *)
     
let tag_prt_l = Elementary_tag_all_list_by_parameters_general_provider_v.provide () ;;

let pre_tag_pss_sof sof (s, i) = 
  (Elementary_symbol_v.is_elementary_fence_basic_symbol_off_elementary_symbol s)
    && 
  (Elementary_symbol_v.string_off s = sof)
;;
 
let sof_pas = "test_ao";;
let tag_prt_pas = List_v.only_element_of_predicate_off_list (pre_tag_pss_sof sof_pas) tag_prt_l;;

test_number 1 (
(tag_prt_pas : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_body_centered_symbol
      (Elementary_body_centered_symbol_t.Elementary_fence_basic_symbol
        (Elementary_fence_basic_symbol_t.Elementary_fence_basic_for_any_center_symbol
          (Elementary_fence_basic_for_any_center_symbol_t.Elementary_fence_basic_for_any_center_constructor
            "test_ao")))),
   [1; 6; 5; 19])
);;

(* open Elementary_fence_basic_container_v;; *)
     
(* Argument *)

let tag_pas = Tag_v.map_entity Elementary_symbol_v.elementary_fence_basic_symbol_off_elementary_symbol tag_prt_pas;;

test_number 2 (  
(tag_pas :
  Elementary_fence_basic_symbol_t.elementary_fence_basic_symbol
  Tag_t.tag ) =
  (Elementary_fence_basic_symbol_t.Elementary_fence_basic_for_any_center_symbol
    (Elementary_fence_basic_for_any_center_symbol_t.Elementary_fence_basic_for_any_center_constructor
      "test_ao"),
   [1; 6; 5; 19])
);;

(** {6 Coercing Up Tag} *)

let elementary_tag_of_elementary_fence_basic_tag tag_pas =
  Tag_v.map_entity 
    Elementary_symbol_v.elementary_symbol_of_elementary_fence_basic_symbol 
    tag_pas 
;;

(** {6 Builder Tag Datastructures : Building} *)

let bug_pas = building_of_tag tag_pas;;

test_number 3 (
( bug_pas :
    (Elementary_symbol_t.elementary_symbol, Sole_index_t.sole_index)
    Doublet_list_t.doublet_list ) =
[(Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_body_centered_symbol
       (Elementary_body_centered_symbol_t.Elementary_fence_basic_symbol
          (Elementary_fence_basic_symbol_t.Elementary_fence_basic_for_one_center_symbol
             (Elementary_fence_basic_for_one_center_symbol_t.Elementary_fence_basic_for_one_center_constructor
		"he")))),
  [1; 1; 6; 5; 19])]
);;

test_number 4 (
bug_pas = builder_tag_list tag_pas
);;

let bui_pas_t = builder_tag_tuple tag_pas;;

test_number 5 (
( bui_pas_t :
  (Elementary_symbol_t.elementary_symbol, Sole_index_t.sole_index)
  Doublet_t.doublet Tuple_t.tuple ) =
  Tuple_t.Uno
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_centered_symbol
       (Elementary_body_centered_symbol_t.Elementary_fence_basic_symbol
         (Elementary_fence_basic_symbol_t.Elementary_fence_basic_for_one_center_symbol
           (Elementary_fence_basic_for_one_center_symbol_t.Elementary_fence_basic_for_one_center_constructor
             "he")))),
    [1; 1; 6; 5; 19])
);;

let fen_pas_l = fence_as_list tag_pas;;

test_number 6 (
(fen_pas_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
  [(Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_fence_centered_symbol
       (Elementary_fence_centered_symbol_t.Elementary_fence_centered_aopef_symbol
         (Elementary_fence_centered_aopef_symbol_t.Elementary_fence_centered_aopef_constructor
           "he s 1 1"))),
    [1; 1; 1; 1; 1; 6; 5; 19]);
   (Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_fence_centered_symbol
       (Elementary_fence_centered_symbol_t.Elementary_fence_centered_aopef_symbol
         (Elementary_fence_centered_aopef_symbol_t.Elementary_fence_centered_aopef_constructor
           "he s 1 2"))),
    [2; 1; 1; 1; 1; 6; 5; 19]);
   (Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_fence_centered_symbol
       (Elementary_fence_centered_symbol_t.Elementary_fence_centered_aopef_symbol
         (Elementary_fence_centered_aopef_symbol_t.Elementary_fence_centered_aopef_constructor
           "he s 2 1"))),
    [1; 2; 1; 1; 1; 6; 5; 19]);
   (Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_fence_centered_symbol
       (Elementary_fence_centered_symbol_t.Elementary_fence_centered_aopef_symbol
         (Elementary_fence_centered_aopef_symbol_t.Elementary_fence_centered_aopef_constructor
           "he p 2 1"))),
    [1; 1; 2; 1; 1; 6; 5; 19]);
   (Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_fence_centered_symbol
       (Elementary_fence_centered_symbol_t.Elementary_fence_centered_aopef_symbol
         (Elementary_fence_centered_aopef_symbol_t.Elementary_fence_centered_aopef_constructor
           "he p 2 2"))),
    [2; 1; 2; 1; 1; 6; 5; 19]);
   (Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_fence_centered_symbol
       (Elementary_fence_centered_symbol_t.Elementary_fence_centered_aopef_symbol
         (Elementary_fence_centered_aopef_symbol_t.Elementary_fence_centered_aopef_constructor
           "he p 3 1"))),
    [1; 2; 2; 1; 1; 6; 5; 19])]
);;

let fen_pas_t = fence_as_tuple tag_pas;;

test_number 7 (
(fen_pas_t : Elementary_symbol_t.elementary_symbol Tag_t.tag list Tuple_t.tuple ) =
Tuple_t.Uno
   [(Elementary_symbol_t.Elementary_fence_symbol
      (Elementary_fence_symbol_t.Elementary_fence_centered_symbol
        (Elementary_fence_centered_symbol_t.Elementary_fence_centered_aopef_symbol
          (Elementary_fence_centered_aopef_symbol_t.Elementary_fence_centered_aopef_constructor
            "he s 1 1"))),
     [1; 1; 1; 1; 1; 6; 5; 19]);
    (Elementary_symbol_t.Elementary_fence_symbol
      (Elementary_fence_symbol_t.Elementary_fence_centered_symbol
        (Elementary_fence_centered_symbol_t.Elementary_fence_centered_aopef_symbol
          (Elementary_fence_centered_aopef_symbol_t.Elementary_fence_centered_aopef_constructor
            "he s 1 2"))),
     [2; 1; 1; 1; 1; 6; 5; 19]);
    (Elementary_symbol_t.Elementary_fence_symbol
      (Elementary_fence_symbol_t.Elementary_fence_centered_symbol
        (Elementary_fence_centered_symbol_t.Elementary_fence_centered_aopef_symbol
          (Elementary_fence_centered_aopef_symbol_t.Elementary_fence_centered_aopef_constructor
            "he s 2 1"))),
     [1; 2; 1; 1; 1; 6; 5; 19]);
    (Elementary_symbol_t.Elementary_fence_symbol
      (Elementary_fence_symbol_t.Elementary_fence_centered_symbol
        (Elementary_fence_centered_symbol_t.Elementary_fence_centered_aopef_symbol
          (Elementary_fence_centered_aopef_symbol_t.Elementary_fence_centered_aopef_constructor
            "he p 2 1"))),
     [1; 1; 2; 1; 1; 6; 5; 19]);
    (Elementary_symbol_t.Elementary_fence_symbol
      (Elementary_fence_symbol_t.Elementary_fence_centered_symbol
        (Elementary_fence_centered_symbol_t.Elementary_fence_centered_aopef_symbol
          (Elementary_fence_centered_aopef_symbol_t.Elementary_fence_centered_aopef_constructor
            "he p 2 2"))),
     [2; 1; 2; 1; 1; 6; 5; 19]);
    (Elementary_symbol_t.Elementary_fence_symbol
      (Elementary_fence_symbol_t.Elementary_fence_centered_symbol
        (Elementary_fence_centered_symbol_t.Elementary_fence_centered_aopef_symbol
          (Elementary_fence_centered_aopef_symbol_t.Elementary_fence_centered_aopef_constructor
            "he p 3 1"))),
     [1; 2; 2; 1; 1; 6; 5; 19])]
);;

let fen_pas_tl = fence_as_tuple_list tag_pas;;

test_number 8 (
(fen_pas_tl :
  Elementary_symbol_t.elementary_symbol Tag_t.tag Tuple_t.tuple list ) =
  [Tuple_t.Trio
    ((Elementary_symbol_t.Elementary_fence_symbol
       (Elementary_fence_symbol_t.Elementary_fence_centered_symbol
         (Elementary_fence_centered_symbol_t.Elementary_fence_centered_aopef_symbol
           (Elementary_fence_centered_aopef_symbol_t.Elementary_fence_centered_aopef_constructor
             "he s 1 1"))),
      [1; 1; 1; 1; 1; 6; 5; 19]),
     (Elementary_symbol_t.Elementary_fence_symbol
       (Elementary_fence_symbol_t.Elementary_fence_centered_symbol
         (Elementary_fence_centered_symbol_t.Elementary_fence_centered_aopef_symbol
           (Elementary_fence_centered_aopef_symbol_t.Elementary_fence_centered_aopef_constructor
             "he s 1 2"))),
      [2; 1; 1; 1; 1; 6; 5; 19]),
     (Elementary_symbol_t.Elementary_fence_symbol
       (Elementary_fence_symbol_t.Elementary_fence_centered_symbol
         (Elementary_fence_centered_symbol_t.Elementary_fence_centered_aopef_symbol
           (Elementary_fence_centered_aopef_symbol_t.Elementary_fence_centered_aopef_constructor
             "he s 2 1"))),
      [1; 2; 1; 1; 1; 6; 5; 19]));
   Tuple_t.Trio
    ((Elementary_symbol_t.Elementary_fence_symbol
       (Elementary_fence_symbol_t.Elementary_fence_centered_symbol
         (Elementary_fence_centered_symbol_t.Elementary_fence_centered_aopef_symbol
           (Elementary_fence_centered_aopef_symbol_t.Elementary_fence_centered_aopef_constructor
             "he p 2 1"))),
      [1; 1; 2; 1; 1; 6; 5; 19]),
     (Elementary_symbol_t.Elementary_fence_symbol
       (Elementary_fence_symbol_t.Elementary_fence_centered_symbol
         (Elementary_fence_centered_symbol_t.Elementary_fence_centered_aopef_symbol
           (Elementary_fence_centered_aopef_symbol_t.Elementary_fence_centered_aopef_constructor
             "he p 2 2"))),
      [2; 1; 2; 1; 1; 6; 5; 19]),
     (Elementary_symbol_t.Elementary_fence_symbol
       (Elementary_fence_symbol_t.Elementary_fence_centered_symbol
         (Elementary_fence_centered_symbol_t.Elementary_fence_centered_aopef_symbol
           (Elementary_fence_centered_aopef_symbol_t.Elementary_fence_centered_aopef_constructor
             "he p 3 1"))),
      [1; 2; 2; 1; 1; 6; 5; 19]))]
);;

