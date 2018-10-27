open Make_test_v;;

testing "Elementary_coordinate_cartesian_formula_v with
   Elementary_coordinate_cartesian_container_u_debug.ml";;

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
   #use "Elementary_coordinate_cartesian_container_u_debug.ml";;

*)

let nam_dba = "db1_figure";;
let nam_dfi = "triangle_isoright.db1";;
Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "databox-name" nam_dfi;;

open Elementary_coordinate_cartesian_container_v;;

let tag_ele_t = Elementary_tag_tree_by_parameters_general_provider_v.provide ();;

let tag_ele_l = Elementary_tag_all_list_by_parameters_general_provider_v.provide ();;

let tag_edo = Elementary_domain_tag_by_unit_provider_v.provide ();;

test_number 1 (
(tag_edo : Elementary_domain_symbol_t.elementary_domain_symbol Tag_t.tag ) =
  (Elementary_domain_symbol_t.Elementary_domain_constructor "elementary",
   [6])
);;

let tag_ele_dba = Elementary_as_database_tag_by_database_name_provider_v.provide nam_dba;;

test_number 2 (
(tag_ele_dba : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
 (Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_database_symbol
      (Elementary_database_symbol_t.Elementary_database_constructor "nwchem")),
   [5; 6])
);;

(* Domain *)

let tag_ele_fat = List.find 
    (fun t -> Elementary_symbol_v.is_elementary_domain_symbol_off_elementary_symbol 
	(Tag_v.entity_off_tag t) ) 
    tag_ele_l;;

test_number 3 (
(tag_ele_fat : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_domain_symbol
      (Elementary_domain_symbol_t.Elementary_domain_constructor "elementary")),
   [6])
);;

let tag_ele_ccx_l = List.filter (fun (s, i) -> Elementary_symbol_v.is_cartesian_x s) tag_ele_l;;

(* First X *)

let tag_ele_x = List.nth tag_ele_ccx_l 0;;
(*
test_number 4 (
( tag_ele_x : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_coordinate_symbol
      (Elementary_coordinate_symbol_t.Elementary_coordinate_homogeneous_symbol
        (Elementary_coordinate_homogeneous_symbol_t.Elementary_coordinate_cartesian_symbol
          (Elementary_coordinate_cartesian_symbol_t.Cartesian_x "cartesian_x")))),
   [1; 1; 1; 4])
);;

let tag_ecc = Tag_v.map_entity Elementary_symbol_v.elementary_coordinate_cartesian_symbol_off_elementary_symbol tag_ele_x;;

test_number 5 (
( tag_ecc : Elementary_coordinate_cartesian_symbol_t.elementary_coordinate_cartesian_symbol
  Tag_t.tag ) =
  (Elementary_coordinate_cartesian_symbol_t.Cartesian_x "cartesian_x",
   [1; 1; 1; 4])
);;

open Elementary_coordinate_cartesian_container_v;;

let con_ecc = container_of_tag tag_ecc;;
 
test_number 6 (
(con_ecc :
  Elementary_units_symbol_t.elementary_units_symbol Tag_t.tag
  Uno_t.uno ) =
  
   (Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer,
    [1; 1; 1; 1; 4])
);;

let tag_bui_l = builder_tag_list tag_ecc;;

test_number 7 (
( tag_bui_l :
  Elementary_units_symbol_t.elementary_units_symbol Tag_t.tag list ) =
  [(Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer,
    [1; 1; 1; 1; 4])]
);;

let tag_bui_t = builder_tag_tuple tag_ecc;;

test_number 8 (
( tag_bui_t :
    Elementary_units_symbol_t.elementary_units_symbol Tag_t.tag Tuple_t.tuple ) =
Tuple_t.Uno
  (
     (Elementary_units_symbol_t.Elementary_units_length_symbol
	Elementary_units_length_symbol_t.Nanometer,
      [1; 1; 1; 1; 4]))
);;

let fen_l = fence_list tag_ecc;;

test_number 9 (
(fen_l :
  Elementary_coordinate_symbol_t.elementary_coordinate_symbol Tag_t.tag list ) =
  [(Elementary_coordinate_symbol_t.Elementary_coordinate_homogeneous_symbol
     (Elementary_coordinate_homogeneous_symbol_t.Elementary_coordinate_cartesian_symbol
       (Elementary_coordinate_cartesian_symbol_t.Cartesian_x "cartesian_x")),
    [1; 1; 1; 4])]
);;

let fen_t = fence_tuple tag_ecc;;

test_number 10 (
(fen_t :
  Elementary_coordinate_symbol_t.elementary_coordinate_symbol Tag_t.tag
  Tuple_t.tuple ) =
  Tuple_t.Uno
   (
     (Elementary_coordinate_symbol_t.Elementary_coordinate_homogeneous_symbol
       (Elementary_coordinate_homogeneous_symbol_t.Elementary_coordinate_cartesian_symbol
         (Elementary_coordinate_cartesian_symbol_t.Cartesian_x "cartesian_x")),
      [1; 1; 1; 4]))
);;

let dfe_l = deepfence_list tag_ecc;;

test_number 11 (
(dfe_l : Elementary_units_symbol_t.elementary_units_symbol Tag_t.tag list ) =
  [(Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer,
    [1; 1; 1; 1; 4])]
);;

let dfe_t = deepfence_tuple tag_ecc;;

test_number 12 (
(dfe_t :
  Elementary_units_symbol_t.elementary_units_symbol Tag_t.tag Tuple_t.tuple ) =
  Tuple_t.Uno
   (
     (Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer,
      [1; 1; 1; 1; 4]))
);;

*)
