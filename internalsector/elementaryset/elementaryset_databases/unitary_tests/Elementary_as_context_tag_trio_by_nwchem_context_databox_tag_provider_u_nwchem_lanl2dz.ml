open Make_test_v;;

testing "Elementary_as_context_tag_trio_by_nwchem_context_databox_tag_provider_v with
   Elementary_as_context_tag_trio_by_nwchem_context_databox_tag_provider_u_nwchem_lanl2dz.ml";;

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

Parameters_general_register_v.store_force "trace-build" "false";;
Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Elementary_as_context_tag_trio_by_nwchem_context_databox_tag_provider_u_nwchem_lanl2dz.ml";;

*)

let nam_dna = "lanl2dz";;
let nam_dba = "nwchem";;
Parameters_general_register_v.store "databox-name" nam_dbo;;
Parameters_general_register_v.store "database-name" nam_dba;;

open Elementary_as_context_tag_trio_by_nwchem_context_databox_tag_provider_v;;

(* Argument Nwchem_context_databox_tag tag_ndb *)

let tag_ndf = Nwchem_context_databox_tag_by_databox_name_provider_v.provide nam_dbo;;

test_number 1 (
( tag_ndf :
  Nwchem_context_databox_symbol_t.nwchem_context_databox_symbol Tag_t.tag ) =
  (Nwchem_context_databox_symbol_t.Nwchem_context_databox_constructor
    "lanl2dz",
   [5; 5; 19; 5])
);;

let nam_ndf = Nwchem_context_databox_tag_v.string_off tag_ndf;;

test_number 2 (
nam_ndf = nam_dna
);;

let tag_ecd = Elementary_context_domain_tag_by_unit_provider_v.provide ();;

test_number 3 (
(tag_ecd :
  Elementary_context_domain_symbol_t.elementary_context_domain_symbol
  Tag_t.tag ) =
  (Elementary_context_domain_symbol_t.Elementary_context_domain_constructor
    "elementary",
   [7])
);;

let tag_ele_ecd = Tag_v.map_entity 
      Elementary_symbol_v.elementary_symbol_of_elementary_context_domain_symbol
      tag_ecd
;;

test_number 4 (
( tag_ele_ecd : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_context_domain_symbol
      (Elementary_context_domain_symbol_t.Elementary_context_domain_constructor
        "elementary")),
   [7])
);;

let tag_edb = Elementary_context_database_tag_by_database_name_provider_v.provide nam_dba;;

test_number 5 (
(tag_edb :
  Elementary_context_database_symbol_t.elementary_context_database_symbol
  Tag_t.tag ) =
  (Elementary_context_database_symbol_t.Elementary_context_database_constructor
    "nwchem",
   [5; 7])
);;

let tag_ele_edb = Tag_v.map_entity (* Coerce Up *)
      Elementary_symbol_v.elementary_symbol_of_elementary_context_database_symbol
      tag_edb;;

test_number 6 (
( tag_ele_edb : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
(Elementary_symbol_t.Elementary_context_symbol
   (Elementary_context_symbol_t.Elementary_context_database_symbol
      (Elementary_context_database_symbol_t.Elementary_context_database_constructor
         "nwchem")),
 [5; 7])
);;

test_number 7 (
nam_dna = Nwchem_context_databox_tag_v.string_off tag_ndf
);;

let tag_eba = 
  Elementary_context_databox_skeletondata_tag_by_database_name_n_databox_name_provider_v.provide 
    (nam_dba, nam_dbo)
;;

test_number 8 (
(tag_eba :
  Elementary_context_databox_skeletondata_symbol_t.elementary_context_databox_skeletondata_symbol
  Tag_t.tag ) =
  (Elementary_context_databox_skeletondata_symbol_t.Elementary_context_databox_skeletondata_constructor
    "lanl2dz",
   [5; 5; 7])
);;

let tag_ele_edf = Tag_v.map_entity 
    Elementary_symbol_v.elementary_symbol_of_elementary_context_databox_skeletondata_symbol
    tag_eba
;;

test_number 9 (
(tag_ele_edf : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_context_databox_symbol
      (Elementary_context_databox_symbol_t.Elementary_context_databox_skeletondata_symbol
        (Elementary_context_databox_skeletondata_symbol_t.Elementary_context_databox_skeletondata_constructor
          "lanl2dz"))),
   [5; 5; 7])
);;


let tag_ele_t = provide tag_ndf;;

test_number 10 (
( tag_ele_t :  Elementary_symbol_t.elementary_symbol Tag_t.tag Trio_t.trio ) =
((Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_context_domain_symbol
       (Elementary_context_domain_symbol_t.Elementary_context_domain_constructor
          "elementary")),
  [7]),
 (Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_context_database_symbol
       (Elementary_context_database_symbol_t.Elementary_context_database_constructor
          "nwchem")),
  [5; 7]),
 (Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_context_databox_symbol
       (Elementary_context_databox_symbol_t.Elementary_context_databox_skeletondata_symbol
          (Elementary_context_databox_skeletondata_symbol_t.Elementary_context_databox_skeletondata_constructor
             "lanl2dz"))),
  [5; 5; 7]))
);;
