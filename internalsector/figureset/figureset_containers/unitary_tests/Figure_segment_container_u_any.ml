open Make_test_v;;

testing "Figure_segment_container_v with
   Figure_segment_container_u_any.ml";;

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
   #use "Figure_segment_container_u_any.ml";;

*)

let nam_dba = "db1";;
let tag_fig_l = Figure_tag_all_list_by_database_name_provider_v.provide nam_dba;; 

open Figure_segment_container_v;;

(* Segment BC  *)

let sof_fig = "BC";;
let tag_fig = Doublet_list_v.find_if_left (fun s -> Figure_symbol_v.string_off s = sof_fig) tag_fig_l;;

test_number 1 (
(tag_fig : Figure_symbol_t.figure_symbol * Sole_index_t.sole_index ) =
   (
    (Figure_symbol_t.Figure_body_symbol
      (Figure_body_symbol_t.Figure_segment_symbol
        (Figure_segment_symbol_t.Figure_segment_constructor "BC"))),
   [1; 1; 6])
);;

let tag_fse = Tag_v.map_entity Figure_symbol_v.figure_segment_symbol_off_figure_symbol tag_fig;;

test_number 2 (
(tag_fse : Figure_segment_symbol_t.figure_segment_symbol Tag_t.tag ) =
(Figure_segment_symbol_t.Figure_segment_constructor "BC", [1; 1; 6])
);;

let tag_bui_l = builder_tag_list tag_fse;;

test_number 3 (
(tag_bui_l : Figure_fence_point_symbol_t.figure_fence_point_symbol Tag_t.tag list ) =
  [(Figure_fence_point_symbol_t.Figure_fence_point_constructor "BC_B", [1; 1; 1; 6]);
   (Figure_fence_point_symbol_t.Figure_fence_point_constructor "BC_C", [2; 1; 1; 6])]
);;

let tag_bui_t = builder_tag_tuple tag_fse;;

test_number 4 (
( tag_bui_t :
  Figure_fence_point_symbol_t.figure_fence_point_symbol Tag_t.tag Tuple_t.tuple ) =
  Tuple_t.Duo
   ((Figure_fence_point_symbol_t.Figure_fence_point_constructor "BC_B", [1; 1; 1; 6]),
    (Figure_fence_point_symbol_t.Figure_fence_point_constructor "BC_C", [2; 1; 1; 6]))
);;

let con_fse = container_of_tag tag_fse;;

test_number 5 (
( con_fse : Figure_fence_point_symbol_t.figure_fence_point_symbol Tag_t.tag Duo_t.duo ) =
  ((Figure_fence_point_symbol_t.Figure_fence_point_constructor "BC_B", [1; 1; 1; 6]),
   (Figure_fence_point_symbol_t.Figure_fence_point_constructor "BC_C", [2; 1; 1; 6]))
);;

let fen_l = fence_list tag_fse;;

test_number 6 (
(fen_l : Figure_fence_point_symbol_t.figure_fence_point_symbol Tag_t.tag list )=
  [(Figure_fence_point_symbol_t.Figure_fence_point_constructor "BC_B", [1; 1; 1; 6]);
   (Figure_fence_point_symbol_t.Figure_fence_point_constructor "BC_C", [2; 1; 1; 6])]
);;

let fen_t = fence_tuple tag_fse;;

test_number 7 (
(fen_t : Figure_fence_point_symbol_t.figure_fence_point_symbol Tag_t.tag Tuple_t.tuple ) =
  Tuple_t.Duo
   ((Figure_fence_point_symbol_t.Figure_fence_point_constructor "BC_B", [1; 1; 1; 6]),
    (Figure_fence_point_symbol_t.Figure_fence_point_constructor "BC_C", [2; 1; 1; 6]))
);;

let fen_tl = fence_tuple_list tag_fse;;

test_number 8 (
(fen_tl :
  Figure_fence_point_symbol_t.figure_fence_point_symbol Tag_t.tag Tuple_t.tuple list ) =
  [Tuple_t.Duo
    ((Figure_fence_point_symbol_t.Figure_fence_point_constructor "BC_B", [1; 1; 1; 6]),
     (Figure_fence_point_symbol_t.Figure_fence_point_constructor "BC_C", [2; 1; 1; 6]))]
);;

let dfe_l = deepfence_list tag_fse;;

test_number 9 (
( dfe_l : Elementary_units_symbol_t.elementary_units_symbol Tag_t.tag list ) =
  [(Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Angstrom,
    [1; 1; 1; 1; 4]);
   (Elementary_units_symbol_t.Elementary_units_angle_symbol
     Elementary_units_angle_symbol_t.Degree,
    [1; 2; 1; 1; 4]);
   (Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Angstrom,
    [1; 3; 1; 1; 4]);
   (Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Angstrom,
    [1; 1; 2; 1; 4]);
   (Elementary_units_symbol_t.Elementary_units_angle_symbol
     Elementary_units_angle_symbol_t.Degree,
    [1; 2; 2; 1; 4]);
   (Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Angstrom,
    [1; 3; 2; 1; 4])]
);;

let dfe_tl = deepfence_tuple_list tag_fse;;

test_number 10 (
(dfe_tl :
  Elementary_units_symbol_t.elementary_units_symbol Tag_t.tag Tuple_t.tuple
  list ) =
  [Tuple_t.Trio
    ((Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Angstrom,
      [1; 1; 1; 1; 4]),
     (Elementary_units_symbol_t.Elementary_units_angle_symbol
       Elementary_units_angle_symbol_t.Degree,
      [1; 2; 1; 1; 4]),
     (Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Angstrom,
      [1; 3; 1; 1; 4]));
   Tuple_t.Trio
    ((Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Angstrom,
      [1; 1; 2; 1; 4]),
     (Elementary_units_symbol_t.Elementary_units_angle_symbol
       Elementary_units_angle_symbol_t.Degree,
      [1; 2; 2; 1; 4]),
     (Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Angstrom,
      [1; 3; 2; 1; 4]))]
);;

let dfe_tt = deepfence_tuple_tuple tag_fse;;

test_number 11 (
( dfe_tt :
  Elementary_units_symbol_t.elementary_units_symbol Tag_t.tag Tuple_t.tuple
  Tuple_t.tuple ) =
  Tuple_t.Duo
   (Tuple_t.Trio
     ((Elementary_units_symbol_t.Elementary_units_length_symbol
        Elementary_units_length_symbol_t.Angstrom,
       [1; 1; 1; 1; 4]),
      (Elementary_units_symbol_t.Elementary_units_angle_symbol
        Elementary_units_angle_symbol_t.Degree,
       [1; 2; 1; 1; 4]),
      (Elementary_units_symbol_t.Elementary_units_length_symbol
        Elementary_units_length_symbol_t.Angstrom,
       [1; 3; 1; 1; 4])),
    Tuple_t.Trio
     ((Elementary_units_symbol_t.Elementary_units_length_symbol
        Elementary_units_length_symbol_t.Angstrom,
       [1; 1; 2; 1; 4]),
      (Elementary_units_symbol_t.Elementary_units_angle_symbol
        Elementary_units_angle_symbol_t.Degree,
       [1; 2; 2; 1; 4]),
      (Elementary_units_symbol_t.Elementary_units_length_symbol
        Elementary_units_length_symbol_t.Angstrom,
       [1; 3; 2; 1; 4])))
);;
