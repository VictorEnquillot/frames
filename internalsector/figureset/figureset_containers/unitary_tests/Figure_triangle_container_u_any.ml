open Make_test_v;;

testing "Figure_triangle_container_v with
   Figure_triangle_container_u_any.ml";;

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
   #use "Figure_triangle_container_u_any.ml";;

*)

let nam_dba = "db1";;
let tag_fig_l = Figure_tag_all_list_by_database_name_provider_v.provide nam_dba;; 

(* Triangle T  *)

let sof_fig = "T";;
let tag_fig = Doublet_list_v.find_if_left (fun s -> Figure_symbol_v.string_off s = sof_fig) tag_fig_l;;

test_number 1 (
tag_fig
(* : Figure_symbol_t.figure_symbol * Sole_index_t.sole_index *)
=
   (
    (Figure_symbol_t.Figure_body_symbol
      (Figure_body_symbol_t.Figure_triangle_symbol
        (Figure_triangle_symbol_t.Figure_triangle_isosceles_symbol
          (Figure_triangle_isosceles_symbol_t.Figure_triangle_isosceles_acute
            "T")))),
   [2; 1; 6])
);;

open  Figure_triangle_container_v;;

let tag_ftr = Figure_triangle_tag_v.figure_triangle_tag_off_figure_tag tag_fig;;

test_number 2 (
(tag_ftr : Figure_triangle_symbol_t.figure_triangle_symbol Tag_t.tag ) =
(Figure_triangle_symbol_t.Figure_triangle_isosceles_symbol
  (Figure_triangle_isosceles_symbol_t.Figure_triangle_isosceles_acute "T"),
 [2; 1; 6])
);;

let con_ftr = container_of_tag tag_ftr;;

test_number 3 (
( con_ftr : Figure_triangle_container_t.figure_triangle_container )=
Figure_triangle_container_t.Figure_triangle_isosceles_container
  ((Figure_fence_point_symbol_t.Figure_fence_point_constructor "T_A", [1; 2; 1; 6]),
   (Figure_fence_point_symbol_t.Figure_fence_point_constructor "T_B", [2; 2; 1; 6]),
   (Figure_fence_point_symbol_t.Figure_fence_point_constructor "T_C", [3; 2; 1; 6]))
);;

let fen_l = fence_list tag_ftr;;

test_number 4 (
(fen_l : Figure_fence_point_symbol_t.figure_fence_point_symbol Tag_t.tag list ) =
  [(Figure_fence_point_symbol_t.Figure_fence_point_constructor "T_A", [1; 2; 1; 6]);
   (Figure_fence_point_symbol_t.Figure_fence_point_constructor "T_B", [2; 2; 1; 6]);
   (Figure_fence_point_symbol_t.Figure_fence_point_constructor "T_C", [3; 2; 1; 6])]
);;

let fen_t = fence_tuple tag_ftr;;

test_number 5 (
(fen_t : Figure_fence_point_symbol_t.figure_fence_point_symbol Tag_t.tag Tuple_t.tuple ) =
  Tuple_t.Trio
   ((Figure_fence_point_symbol_t.Figure_fence_point_constructor "T_A", [1; 2; 1; 6]),
    (Figure_fence_point_symbol_t.Figure_fence_point_constructor "T_B", [2; 2; 1; 6]),
    (Figure_fence_point_symbol_t.Figure_fence_point_constructor "T_C", [3; 2; 1; 6]))
);;

let fen_tl = fence_tuple_list tag_ftr;;

test_number 6 (
(fen_tl :
  Figure_fence_point_symbol_t.figure_fence_point_symbol Tag_t.tag Tuple_t.tuple list ) =
  [Tuple_t.Trio
    ((Figure_fence_point_symbol_t.Figure_fence_point_constructor "T_A", [1; 2; 1; 6]),
     (Figure_fence_point_symbol_t.Figure_fence_point_constructor "T_B", [2; 2; 1; 6]),
     (Figure_fence_point_symbol_t.Figure_fence_point_constructor "T_C", [3; 2; 1; 6]))]
);;

let dfe_l = deepfence_list tag_ftr;;

test_number 7 (
( dfe_l : Elementary_units_symbol_t.elementary_units_symbol Tag_t.tag list ) =
  [(Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer,
    [1; 1; 3; 1; 4]);
   (Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer,
    [1; 2; 3; 1; 4]);
   (Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer,
    [1; 3; 3; 1; 4]);
   (Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer,
    [1; 1; 4; 1; 4]);
   (Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer,
    [1; 2; 4; 1; 4]);
   (Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer,
    [1; 3; 4; 1; 4]);
   (Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer,
    [1; 1; 5; 1; 4]);
   (Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer,
    [1; 2; 5; 1; 4]);
   (Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer,
    [1; 3; 5; 1; 4])]
);;

let dfe_tl = deepfence_tuple_list tag_ftr;;

test_number 8 (
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
      [1; 3; 3; 1; 4]));
   Tuple_t.Trio
    ((Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer,
      [1; 1; 4; 1; 4]),
     (Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer,
      [1; 2; 4; 1; 4]),
     (Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer,
      [1; 3; 4; 1; 4]));
   Tuple_t.Trio
    ((Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer,
      [1; 1; 5; 1; 4]),
     (Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer,
      [1; 2; 5; 1; 4]),
     (Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer,
      [1; 3; 5; 1; 4]))]
);;

let dfe_tt = deepfence_tuple_tuple tag_ftr;;

test_number 9 (
( dfe_tt :
  Elementary_units_symbol_t.elementary_units_symbol Tag_t.tag Tuple_t.tuple
  Tuple_t.tuple ) =
  Tuple_t.Trio
   (Tuple_t.Trio
     ((Elementary_units_symbol_t.Elementary_units_length_symbol
        Elementary_units_length_symbol_t.Nanometer,
       [1; 1; 3; 1; 4]),
      (Elementary_units_symbol_t.Elementary_units_length_symbol
        Elementary_units_length_symbol_t.Nanometer,
       [1; 2; 3; 1; 4]),
      (Elementary_units_symbol_t.Elementary_units_length_symbol
        Elementary_units_length_symbol_t.Nanometer,
       [1; 3; 3; 1; 4])),
    Tuple_t.Trio
     ((Elementary_units_symbol_t.Elementary_units_length_symbol
        Elementary_units_length_symbol_t.Nanometer,
       [1; 1; 4; 1; 4]),
      (Elementary_units_symbol_t.Elementary_units_length_symbol
        Elementary_units_length_symbol_t.Nanometer,
       [1; 2; 4; 1; 4]),
      (Elementary_units_symbol_t.Elementary_units_length_symbol
        Elementary_units_length_symbol_t.Nanometer,
       [1; 3; 4; 1; 4])),
    Tuple_t.Trio
     ((Elementary_units_symbol_t.Elementary_units_length_symbol
        Elementary_units_length_symbol_t.Nanometer,
       [1; 1; 5; 1; 4]),
      (Elementary_units_symbol_t.Elementary_units_length_symbol
        Elementary_units_length_symbol_t.Nanometer,
       [1; 2; 5; 1; 4]),
      (Elementary_units_symbol_t.Elementary_units_length_symbol
        Elementary_units_length_symbol_t.Nanometer,
       [1; 3; 5; 1; 4])))
);;

(* Triangle U  *)

let tag_fig = Doublet_list_v.find_if_left (fun s -> Figure_symbol_v.string_off s = "U") tag_fig_l;;

test_number 10 (
(tag_fig : Figure_symbol_t.figure_symbol * Sole_index_t.sole_index) =
   (
    (Figure_symbol_t.Figure_body_symbol
      (Figure_body_symbol_t.Figure_triangle_symbol
        (Figure_triangle_symbol_t.Figure_triangle_isosceles_symbol
          (Figure_triangle_isosceles_symbol_t.Figure_triangle_isosceles_right
            "U")))),
   [4; 1; 6])
);;

let tag_ftr = Figure_triangle_tag_v.figure_triangle_tag_off_figure_tag tag_fig;;

test_number 11 (
(tag_ftr : Figure_triangle_symbol_t.figure_triangle_symbol Tag_t.tag ) =
(Figure_triangle_symbol_t.Figure_triangle_isosceles_symbol
  (Figure_triangle_isosceles_symbol_t.Figure_triangle_isosceles_right "U"),
 [4; 1; 6])
);;

let con_ftr = container_of_tag tag_ftr;;

test_number 12 (
( con_ftr : Figure_triangle_container_t.figure_triangle_container )=
Figure_triangle_container_t.Figure_triangle_isosceles_container
  ((Figure_fence_point_symbol_t.Figure_fence_point_constructor "U_A", [1; 4; 1; 6]),
   (Figure_fence_point_symbol_t.Figure_fence_point_constructor "U_B", [2; 4; 1; 6]),
   (Figure_fence_point_symbol_t.Figure_fence_point_constructor "U_C", [3; 4; 1; 6]))
);;

let fen_l = fence_list tag_ftr;;

test_number 13 (
(fen_l : Figure_fence_point_symbol_t.figure_fence_point_symbol Tag_t.tag list ) =
  [(Figure_fence_point_symbol_t.Figure_fence_point_constructor "U_A", [1; 4; 1; 6]);
   (Figure_fence_point_symbol_t.Figure_fence_point_constructor "U_B", [2; 4; 1; 6]);
   (Figure_fence_point_symbol_t.Figure_fence_point_constructor "U_C", [3; 4; 1; 6])]
);;

let fen_t = fence_tuple tag_ftr;;

test_number 14 (
(fen_t : Figure_fence_point_symbol_t.figure_fence_point_symbol Tag_t.tag Tuple_t.tuple ) =
  Tuple_t.Trio
   ((Figure_fence_point_symbol_t.Figure_fence_point_constructor "U_A", [1; 4; 1; 6]),
    (Figure_fence_point_symbol_t.Figure_fence_point_constructor "U_B", [2; 4; 1; 6]),
    (Figure_fence_point_symbol_t.Figure_fence_point_constructor "U_C", [3; 4; 1; 6]))
);;

let fen_tl = fence_tuple_list tag_ftr;;

test_number 15 (
(fen_tl :
  Figure_fence_point_symbol_t.figure_fence_point_symbol Tag_t.tag Tuple_t.tuple list ) =
  [Tuple_t.Trio
    ((Figure_fence_point_symbol_t.Figure_fence_point_constructor "U_A", [1; 4; 1; 6]),
     (Figure_fence_point_symbol_t.Figure_fence_point_constructor "U_B", [2; 4; 1; 6]),
     (Figure_fence_point_symbol_t.Figure_fence_point_constructor "U_C", [3; 4; 1; 6]))]
);;

let dfe_l = deepfence_list tag_ftr;;

test_number 16 (
( dfe_l : Elementary_units_symbol_t.elementary_units_symbol Tag_t.tag list ) =
  [(Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Angstrom,
    [1; 1; 9; 1; 4]);
   (Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Angstrom,
    [1; 2; 9; 1; 4]);
   (Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Angstrom,
    [1; 3; 9; 1; 4]);
   (Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Angstrom,
    [1; 1; 10; 1; 4]);
   (Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Angstrom,
    [1; 2; 10; 1; 4]);
   (Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Angstrom,
    [1; 3; 10; 1; 4]);
   (Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Angstrom,
    [1; 1; 11; 1; 4]);
   (Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Angstrom,
    [1; 2; 11; 1; 4]);
   (Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Angstrom,
    [1; 3; 11; 1; 4])]
);;

let dfe_tl = deepfence_tuple_list tag_ftr;;

test_number 17 (
(dfe_tl :
  Elementary_units_symbol_t.elementary_units_symbol Tag_t.tag Tuple_t.tuple
  list ) =
  [Tuple_t.Trio
    ((Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Angstrom,
      [1; 1; 9; 1; 4]),
     (Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Angstrom,
      [1; 2; 9; 1; 4]),
     (Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Angstrom,
      [1; 3; 9; 1; 4]));
   Tuple_t.Trio
    ((Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Angstrom,
      [1; 1; 10; 1; 4]),
     (Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Angstrom,
      [1; 2; 10; 1; 4]),
     (Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Angstrom,
      [1; 3; 10; 1; 4]));
   Tuple_t.Trio
    ((Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Angstrom,
      [1; 1; 11; 1; 4]),
     (Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Angstrom,
      [1; 2; 11; 1; 4]),
     (Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Angstrom,
      [1; 3; 11; 1; 4]))]
);;

let dfe_tt = deepfence_tuple_tuple tag_ftr;;

test_number 18 (
( dfe_tt :
  Elementary_units_symbol_t.elementary_units_symbol Tag_t.tag Tuple_t.tuple
  Tuple_t.tuple ) =
  Tuple_t.Trio
   (Tuple_t.Trio
     ((Elementary_units_symbol_t.Elementary_units_length_symbol
        Elementary_units_length_symbol_t.Angstrom,
       [1; 1; 9; 1; 4]),
      (Elementary_units_symbol_t.Elementary_units_length_symbol
        Elementary_units_length_symbol_t.Angstrom,
       [1; 2; 9; 1; 4]),
      (Elementary_units_symbol_t.Elementary_units_length_symbol
        Elementary_units_length_symbol_t.Angstrom,
       [1; 3; 9; 1; 4])),
    Tuple_t.Trio
     ((Elementary_units_symbol_t.Elementary_units_length_symbol
        Elementary_units_length_symbol_t.Angstrom,
       [1; 1; 10; 1; 4]),
      (Elementary_units_symbol_t.Elementary_units_length_symbol
        Elementary_units_length_symbol_t.Angstrom,
       [1; 2; 10; 1; 4]),
      (Elementary_units_symbol_t.Elementary_units_length_symbol
        Elementary_units_length_symbol_t.Angstrom,
       [1; 3; 10; 1; 4])),
    Tuple_t.Trio
     ((Elementary_units_symbol_t.Elementary_units_length_symbol
        Elementary_units_length_symbol_t.Angstrom,
       [1; 1; 11; 1; 4]),
      (Elementary_units_symbol_t.Elementary_units_length_symbol
        Elementary_units_length_symbol_t.Angstrom,
       [1; 2; 11; 1; 4]),
      (Elementary_units_symbol_t.Elementary_units_length_symbol
        Elementary_units_length_symbol_t.Angstrom,
       [1; 3; 11; 1; 4])))
);;
