open Make_test_v;;

testing "Figure_fence_container_v with
    Figure_fence_container_u_point_homothety_n_translation.ml";;

(* Deleting Registers *)
Register_v.delete  Box_name_n_base_name_by_sole_index_register_v.register;;
Register_v.delete  Context_name_by_context_nameofdirectory_register_v.register;;
Register_v.delete  Context_name_by_context_nameoffile_register_v.register;;
Register_v.delete  Databasefiles_nameofdirectory_by_database_fullnameofdirectory_register_v.register;;
Register_v.delete  Databasefiles_nameofdirectory_by_database_nameofdirectory_register_v.register;;
Register_v.delete  Database_fullnameofdirectory_list_by_domaindata_fullnameofdirectory_register_v.register;;
Register_v.delete  Database_nameofdirectory_list_by_domaindata_fullnameofdirectory_register_v.register;;
Register_v.delete  Database_nameofdirectory_list_by_domaindata_nameofdirectory_register_v.register;;
Register_v.delete  Database_ordinal_by_database_name_register_v.register;;
Register_v.delete  Databox_name_list_by_unit_register_v.register;;
Register_v.delete  Databox_name_n_database_name_by_figure_context_databox_tag_register_v.register;;
Register_v.delete  Databox_nameoffile_list_by_databasefiles_fullnameofdirectory_register_v.register;;
Register_v.delete  Databox_nameoffile_list_by_databasefiles_nameofdirectory_register_v.register;;
Register_v.delete  Databox_ordinal_by_databox_name_register_v.register;;
Register_v.delete  Db1pointsdata_symbol_subtree_by_databox_name_register_v.register;;
Register_v.delete  Domaindata_fullnameofdirectory_list_by_externalsector_fullnameofdirectory_register_v.register;;
Register_v.delete  Domaindata_nameofdirectory_list_by_externalsector_fullnameofdirectory_register_v.register;;
Register_v.delete  Domaindata_nameofdirectory_list_in_externalsector_by_unit_register_v.register;;
Register_v.delete  Domaininput_nameofdirectory_list_in_entrysector_by_unit_register_v.register;;
Register_v.delete  Domain_name_list_by_unit_register_v.register;;
Register_v.delete  Domain_ordinal_by_domain_name_register_v.register;;
Register_v.delete  Domainset_nameofdirectory_list_by_unit_register_v.register;;
Register_v.delete  Domainset_nameofdirectory_list_in_internalsector_by_unit_register_v.register;;
Register_v.delete  Domainset_nameofdirectory_list_in_productsector_by_unit_register_v.register;;
Register_v.delete  Figure_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Figure_fence_by_figure_tag_register_v.register;;
Register_v.delete  Figure_son_tag_list_by_figure_father_tag_register_v.register;;
Register_v.delete  Figure_symbol_by_sole_index_register_v.register;;
Register_v.delete  Figure_tag_all_list_by_databox_name_n_database_name_register_v.register;;
Register_v.delete  Figure_tag_subtree_by_figure_tag_register_v.register;;
Register_v.delete  Figure_tag_tree_by_databox_name_n_database_name_register_v.register;;
Register_v.delete  Figure_tag_tree_by_figure_context_databox_tag_register_v.register;;
Register_v.delete  Inputbase_nameofdirectory_list_by_domaininput_fullnameofdirectory_register_v.register;;
Register_v.delete  Inputbase_nameofdirectory_list_by_domaininput_nameofdirectory_register_v.register;;
Register_v.delete  Inputbox_nameoffile_list_by_inputbasefiles_fullnameofdirectory_register_v.register;;
Register_v.delete  Nameofdirectory_list_by_fullnameofdirectory_register_v.register;;
Register_v.delete  Nameoffile_list_by_fullnameofdirectory_register_v.register;;
Register_v.delete  Sector_name_list_by_unit_register_v.register;;
Register_v.delete  Sector_nameofdirectory_list_by_unit_register_v.register;;
Register_v.delete  Sector_ordinal_by_sector_name_register_v.register;;
Register_v.delete  Trace_what_by_module_name_register_v.register;;
ocamlc -warn-error A -annot -g -I /home/colonna/sources/ocaml_top/setup/frames/generalsector/basics -I /home/colonna/sources/ocaml_top/setup/frames/generalsector/datastructures -I /home/colonna/sources/ocaml_top/setup/frames/generalsector/files -I /home/colonna/sources/ocaml_top/setup/frames/internalsector/commonset -I /home/colonna/sources/ocaml_top/setup/frames/internalsector/contextset -I /home/colonna/sources/ocaml_top/setup/frames/internalsector/elementaryset/elementaryset_symbols -I /home/colonna/sources/ocaml_top/setup/frames/internalsector/elementaryset/elementaryset_tags -I /home/colonna/sources/ocaml_top/setup/frames/internalsector/elementaryset/elementaryset_builder_trees -I /home/colonna/sources/ocaml_top/setup/frames/internalsector/figureset/figureset_symbols -I /home/colonna/sources/ocaml_top/setup/frames/internalsector/figureset/figureset_tags -I /home/colonna/sources/ocaml_top/setup/frames/internalsector/figureset/figureset_builder_trees -I /home/colonna/sources/ocaml_top/setup/frames/internalsector/figureset/figureset_formulas -c /home/colonna/sources/ocaml_top/setup/frames/internalsector/contextset/Context_name_by_context_nameofdirectory_register_v.ml



(* Tracing *)


(* toplevel 
   #use "Figure_fence_container_u_point_homothety_n_translation.ml";;

*)

(* Input File *)

let nam_inp = "Point_homothety_n_translation.inp";;
let fno_inp = Input_file_fullnameoffile_by_input_file_nameoffile_provider_v.provide nam_inp;;

let tag_fcr = Figure_createdby_tag_by_input_fullnameoffile_provider_v.provide fno_inp;;

test_number 1 (
(tag_fcr : Figure_createdby_symbol_t.figure_createdby_symbol Tag_t.tag ) =
  (Figure_createdby_symbol_t.Figure_inputfile_symbol
    (Figure_inputfile_symbol_t.Figure_inputfile_constructor
      "/keep/sources/ocaml_top/setup/frames/inputset/files/Point_homothety_n_translation.inp"),
   [28; 6])
);;

let sof_fcr = Figure_createdby_tag_v.string_off tag_fcr;;

test_number 2 (
(sof_fcr : string ) =
  "/keep/sources/ocaml_top/setup/frames/inputset/files/Point_homothety_n_translation.inp"
);;

let nam_ivn_poi = "Poi_a";;

let tag_fig_poi = 
    Figure_tag_in_database_by_external_input_variable_name_provider_v.provide 
      nam_ivn_poi;;

test_number 3 (
( tag_fig_poi : Figure_symbol_t.figure_symbol Tag_t.tag ) =
   (
    (Figure_symbol_t.Figure_fence_symbol
      (Figure_fence_symbol_t.Figure_fence_point_symbol
        (Figure_fence_point_symbol_t.Figure_fence_point_constructor "T_A"))),
   [1; 2; 1; 6])
);;

let tag_ffe = Tag_v.map_entity 
    Figure_symbol_v.figure_fence_symbol_off_figure_symbol 
    tag_fig_poi
;; 

test_number 4 (
(tag_ffe : Figure_fence_symbol_t.figure_fence_symbol Tag_t.tag ) =
  (Figure_fence_symbol_t.Figure_fence_point_symbol
    (Figure_fence_point_symbol_t.Figure_fence_point_constructor "T_A"),
   [1; 2; 1; 6])
);;

open Figure_fence_container_v;;

let tag_bui_l = builder_tag_list tag_ffe;;

test_number 5 (
(tag_bui_l :
  Elementary_coordinate_tuple_symbol_t.elementary_coordinate_tuple_symbol
  Tag_t.tag list ) =
  [(Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_homogeneous_symbol
     (Elementary_coordinate_tuple_homogeneous_symbol_t.Elementary_coordinate_tuple_cartesian_symbol
       (Elementary_coordinate_tuple_cartesian_symbol_t.Elementary_coordinate_tuple_cartesian_constructor
         "T_A")),
    [3; 1; 4])]
);;

let tag_bui_t = builder_tag_tuple tag_ffe;;

test_number 6 (
(tag_bui_t :
  Elementary_coordinate_tuple_symbol_t.elementary_coordinate_tuple_symbol
  Tag_t.tag Tuple_t.tuple ) =
  Tuple_t.Uno
   (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_homogeneous_symbol
     (Elementary_coordinate_tuple_homogeneous_symbol_t.Elementary_coordinate_tuple_cartesian_symbol
       (Elementary_coordinate_tuple_cartesian_symbol_t.Elementary_coordinate_tuple_cartesian_constructor
         "T_A")),
    [3; 1; 4])
);;

let con_ffe = container_of_tag tag_ffe;;

test_number 7 (
( con_ffe : Figure_fence_container_t.figure_fence_container ) =
  Figure_fence_container_t.Figure_fence_point_container
   (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_homogeneous_symbol
     (Elementary_coordinate_tuple_homogeneous_symbol_t.Elementary_coordinate_tuple_cartesian_symbol
       (Elementary_coordinate_tuple_cartesian_symbol_t.Elementary_coordinate_tuple_cartesian_constructor
         "T_A")),
    [3; 1; 4])
);;

let fen_l = fence_list tag_ffe;;

test_number 8 (
(fen_l : Figure_fence_point_symbol_t.figure_fence_point_symbol Tag_t.tag list )=
  [(Figure_fence_point_symbol_t.Figure_fence_point_constructor "T_A", [1; 2; 1; 6])]
);;

let fen_t = fence_tuple tag_ffe;;

test_number 9 (
(fen_t : Figure_fence_point_symbol_t.figure_fence_point_symbol Tag_t.tag Tuple_t.tuple ) =
  Tuple_t.Uno
   (Figure_fence_point_symbol_t.Figure_fence_point_constructor "T_A", [1; 2; 1; 6])
);;

let fen_tl = fence_tuple_list tag_ffe;;

test_number 10 (
(fen_tl :
  Figure_fence_point_symbol_t.figure_fence_point_symbol Tag_t.tag Tuple_t.tuple list ) =
  [Tuple_t.Uno
    (Figure_fence_point_symbol_t.Figure_fence_point_constructor "T_A", [1; 2; 1; 6])]
);;

let dfe_l = deepfence_list tag_ffe;;

test_number 11 (
( dfe_l : Elementary_units_symbol_t.elementary_units_symbol Tag_t.tag list ) =
  [(Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer,
    [1; 1; 3; 1; 4]);
   (Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer,
    [1; 2; 3; 1; 4]);
   (Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer,
    [1; 3; 3; 1; 4])]
);;

let dfe_t = deepfence_tuple tag_ffe;;

test_number 12 (
(dfe_t :
  Elementary_units_symbol_t.elementary_units_symbol Tag_t.tag Tuple_t.tuple ) =
  Tuple_t.Trio
   ((Elementary_units_symbol_t.Elementary_units_length_symbol
      Elementary_units_length_symbol_t.Nanometer,
     [1; 1; 3; 1; 4]),
    (Elementary_units_symbol_t.Elementary_units_length_symbol
      Elementary_units_length_symbol_t.Nanometer,
     [1; 2; 3; 1; 4]),
    (Elementary_units_symbol_t.Elementary_units_length_symbol
      Elementary_units_length_symbol_t.Nanometer,
     [1; 3; 3; 1; 4]))
);;

let dfe_tl = deepfence_tuple_list tag_ffe;;

test_number 13 (
(dfe_tl :
  Elementary_units_symbol_t.elementary_units_symbol Tag_t.tag Tuple_t.tuple
  list ) =
  [Tuple_t.Trio
    ((Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer,
      [1; 1; 3; 1; 4]),
     (Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer,
      [1; 2; 3; 1; 4]),
     (Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer,
      [1; 3; 3; 1; 4]))]
);;
