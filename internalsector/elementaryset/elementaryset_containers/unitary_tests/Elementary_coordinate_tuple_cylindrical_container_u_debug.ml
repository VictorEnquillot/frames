open Make_test_v;;

testing "Elementary_coordinate_tuple_cylindrical_formula_v with
   Elementary_coordinate_tuple_cylindrical_container_u_debug.ml";;

(* Deleting Registers *)

Register_v.delete  Context_fullnameoffile_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_name_by_context_nameoffile_register_v.register;;
Register_v.delete  Db1figure_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Db1figure_symbol_by_sole_index_register_v.register;;
Register_v.delete  Db1figure_tag_all_list_by_db1figure_context_databox_tag_register_v.register;;
Register_v.delete  Debug_by_module_name_register_v.register;;
Register_v.delete  Elementary_border_by_elementary_tag_register_v.register;;
Register_v.delete  Elementary_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Elementary_fence_by_elementary_tag_register_v.register;;
Register_v.delete  Elementary_symbol_by_sole_index_register_v.register;;
Register_v.delete  Elementary_tag_all_list_by_elementary_context_databox_figuredata_tag_register_v.register;;
Register_v.delete  Elementary_tag_all_list_by_elementary_context_databox_skeletondata_tag_register_v.register;;
Register_v.delete  Elementary_tag_all_list_by_elementary_context_databox_tag_register_v.register;;
Register_v.delete  Elementary_tag_tree_by_elementary_tag_register_v.register;;
Register_v.delete  Nwchem_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Nwchem_lexer_symbol_reverse_list_by_database_fullnameoffile_register_v.register;;
Register_v.delete  Nwchem_symbol_by_sole_index_register_v.register;;
Register_v.delete  Nwchem_tag_all_list_by_nwchem_context_databox_tag_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;
Register_v.delete  Son_elementary_tag_list_by_father_elementary_tag_register_v.register;;








(* Tracing *)

Parameters_general_register_v.store_force "trace-build" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-retrieve" "false";;
Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;

(* toplevel 
   #use "Elementary_coordinate_tuple_cylindrical_container_u_debug.ml";;

*)

(* Createdby *)

let tag_ecr = Elementary_createdby_tag_by_database_name_provider_v.provide "db1";;

test_number 1 (
(tag_ecr : Elementary_createdby_symbol_t.elementary_createdby_symbol Tag_t.tag ) =
  (Elementary_createdby_symbol_t.Elementary_database "db1", [1; 4])
);;

(* Elementary_coordinate_cylindrical Tag : Cylindrical_rho *)

let tag_ele_t = Elementary_tag_tree_by_elementary_createdby_tag_provider_v.provide tag_ecr;;
let tag_ele_l = Elementary_tag_all_list_by_elementary_createdby_tag_provider_v.provide tag_ecr;;

open Elementary_coordinate_tuple_cylindrical_container_v;;

(* BC_B Tuple *)

let sof_ele_ctc = "BC_B";;
let tag_ele_ctc = List.find (fun (s, i) -> Elementary_symbol_v.string_off s = sof_ele_ctc) tag_ele_l;;

test_number 2 (
(tag_ele_ctc : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_coordinate_tuple_symbol
      (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_heterogeneous_symbol
        (Elementary_coordinate_tuple_heterogeneous_symbol_t.Elementary_coordinate_tuple_cylindrical_symbol
          (Elementary_coordinate_tuple_cylindrical_symbol_t.Elementary_coordinate_tuple_cylindrical_constructor
            "BC_B")))),
   [10; 1; 4])
);;

let tag_etc = Tag_v.map_entity Elementary_symbol_v.elementary_coordinate_tuple_cylindrical_symbol_off_elementary_symbol tag_ele_ctc;;

test_number 3 (
( tag_etc :
  Elementary_coordinate_tuple_cylindrical_symbol_t.elementary_coordinate_tuple_cylindrical_symbol
  Tag_t.tag ) =
  (Elementary_coordinate_tuple_cylindrical_symbol_t.Elementary_coordinate_tuple_cylindrical_constructor
    "BC_B",
   [10; 1; 4])
);;

let con_etc = Elementary_coordinate_tuple_cylindrical_container_v.container_of_tag tag_etc;;

test_number 4 (
( con_etc :
  Elementary_coordinate_cylindrical_symbol_t.elementary_coordinate_cylindrical_symbol
  Tag_t.tag Trio_t.trio ) =
  ((Elementary_coordinate_cylindrical_symbol_t.Cylindrical_rho
     "cylindrical_rho",
    [1; 10; 1; 4]),
   (Elementary_coordinate_cylindrical_symbol_t.Cylindrical_phi
     "cylindrical_phi",
    [2; 10; 1; 4]),
   (Elementary_coordinate_cylindrical_symbol_t.Cylindrical_zed
     "cylindrical_zed",
    [3; 10; 1; 4]))
);;

let fen_l = fence_list tag_etc;;

test_number 5 (
(fen_l :
  Elementary_coordinate_cylindrical_symbol_t.elementary_coordinate_cylindrical_symbol
  Tag_t.tag list ) =
  [(Elementary_coordinate_cylindrical_symbol_t.Cylindrical_rho
     "cylindrical_rho",
    [1; 10; 1; 4]);
   (Elementary_coordinate_cylindrical_symbol_t.Cylindrical_phi
     "cylindrical_phi",
    [2; 10; 1; 4]);
   (Elementary_coordinate_cylindrical_symbol_t.Cylindrical_zed
     "cylindrical_zed",
    [3; 10; 1; 4])]
);;

let fen_t = fence_tuple tag_etc;;

test_number 6 (
(fen_t :
  Elementary_coordinate_cylindrical_symbol_t.elementary_coordinate_cylindrical_symbol
  Tag_t.tag Tuple_t.tuple ) =
  Tuple_t.Trio
   ((Elementary_coordinate_cylindrical_symbol_t.Cylindrical_rho
      "cylindrical_rho",
     [1; 10; 1; 4]),
    (Elementary_coordinate_cylindrical_symbol_t.Cylindrical_phi
      "cylindrical_phi",
     [2; 10; 1; 4]),
    (Elementary_coordinate_cylindrical_symbol_t.Cylindrical_zed
      "cylindrical_zed",
     [3; 10; 1; 4]))
);;
