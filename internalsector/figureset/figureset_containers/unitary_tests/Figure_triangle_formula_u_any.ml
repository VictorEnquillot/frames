open Make_test_v;;

testing "Figure_triangle_formula_v with
   Figure_triangle_formula_u_any.ml";;

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
   #use "Figure_triangle_formula_u_any.ml";;

*)

let nam_dba = "db1";;
let tag_fdb = Figure_database_tag_by_database_name_provider_v.provide nam_dba;;

test_number 1 (
tag_fdb
(* : Figure_database_symbol_t.figure_database_symbol Tag_t.tag *)
=
(Figure_database_symbol_t.Figure_database_constructor "db1", [1; 6])
);;

(* Figure_tag_all_list *)

let tag_fig_l = Figure_tag_all_list_by_figure_database_tag_provider_v.provide tag_fdb;; 

(* Triangle T  *)

let tag_fig = Doublet_list_v.find_if_left (fun s -> Figure_symbol_v.string_off s = "T") tag_fig_l;;

test_number 2 (
tag_fig
(* : Figure_symbol_t.figure_symbol * Sole_index_t.sole_index *)
=
  (Figure_symbol_t.Figure_body_symbol
    (Figure_body_symbol_t.Figure_triangle_symbol
      (Figure_triangle_symbol_t.Figure_triangle_isosceles_symbol
        (Figure_triangle_isosceles_symbol_t.Figure_triangle_isosceles_acute
          "T"))),
   [1; 1; 6])
);;

let tag_ftr = Tag_v.map_entity Figure_symbol_v.figure_triangle_symbol_off_figure_symbol tag_fig;;

test_number 3 (
 tag_ftr 
(* : Figure_triangle_symbol_t.figure_triangle_symbol Tag_t.tag *)
  =
 (Figure_triangle_symbol_t.Figure_triangle_isosceles_symbol
    (Figure_triangle_isosceles_symbol_t.Figure_triangle_isosceles_acute "T"),
   [1; 1; 6])
);;

let tag_fti = Tag_v.map_entity Figure_symbol_v.figure_triangle_isosceles_symbol_off_figure_symbol tag_fig;;

let con_fti = Figure_triangle_isosceles_container_v.container_of_tag tag_fti;;

test_number 4 (
con_fti 
(*: Figure_fence_point_symbol_t.figure_fence_point_symbol Tag_t.tag Trio_t.trio *)
=
  ((Figure_fence_point_symbol_t.Figure_fence_point_constructor "T_A", [1; 1; 1; 6]),
   (Figure_fence_point_symbol_t.Figure_fence_point_constructor "T_B", [2; 1; 1; 6]),
   (Figure_fence_point_symbol_t.Figure_fence_point_constructor "T_C", [3; 1; 1; 6]))
);;

let for_ftr = Figure_triangle_formula_v.container_of_tag tag_ftr;;

test_number 5 (
for_ftr
(* : Figure_triangle_formula_t.figure_triangle_formula *)
 =
  Figure_triangle_formula_t.Figure_triangle_isosceles_formula
   (Figure_triangle_isosceles_symbol_t.Figure_triangle_isosceles_acute "T",
    ((Figure_fence_point_symbol_t.Figure_fence_point_constructor "T_A", [1; 1; 1; 6]),
     (Figure_fence_point_symbol_t.Figure_fence_point_constructor "T_B", [2; 1; 1; 6]),
     (Figure_fence_point_symbol_t.Figure_fence_point_constructor "T_C", [3; 1; 1; 6])))
);;

(* Triangle U  *)

let tag_fig = Doublet_list_v.find_if_left (fun s -> Figure_symbol_v.string_off s = "U") tag_fig_l;;

test_number 6 (
tag_fig
(* : Figure_symbol_t.figure_symbol * Sole_index_t.sole_index *)
=
  (Figure_symbol_t.Figure_body_symbol
    (Figure_body_symbol_t.Figure_triangle_symbol
      (Figure_triangle_symbol_t.Figure_triangle_isosceles_symbol
        (Figure_triangle_isosceles_symbol_t.Figure_triangle_isosceles_right
          "U"))),
   [3; 1; 6])
);;

let tag_ftr = Tag_v.map_entity Figure_symbol_v.figure_triangle_symbol_off_figure_symbol tag_fig;;

test_number 7 (
 tag_ftr 
(* : Figure_triangle_symbol_t.figure_triangle_symbol Tag_t.tag *)
  =
 (Figure_triangle_symbol_t.Figure_triangle_isosceles_symbol
    (Figure_triangle_isosceles_symbol_t.Figure_triangle_isosceles_right "U"),
   [3; 1; 6])
);;

let tag_fti = Tag_v.map_entity Figure_symbol_v.figure_triangle_isosceles_symbol_off_figure_symbol tag_fig;;

let con_fti = Figure_triangle_isosceles_container_v.container_of_tag tag_fti;;

test_number 8 (
con_fti 
(*: Figure_fence_point_symbol_t.figure_fence_point_symbol Tag_t.tag Trio_t.trio *)
=
  ((Figure_fence_point_symbol_t.Figure_fence_point_constructor "U_A", [1; 3; 1; 6]),
   (Figure_fence_point_symbol_t.Figure_fence_point_constructor "U_B", [2; 3; 1; 6]),
   (Figure_fence_point_symbol_t.Figure_fence_point_constructor "U_C", [3; 3; 1; 6]))
);;

let for_ftr = Figure_triangle_formula_v.container_of_tag tag_ftr;;

test_number 9 (
for_ftr
(* : Figure_triangle_formula_t.figure_triangle_formula *)
 =
  Figure_triangle_formula_t.Figure_triangle_isosceles_formula
   (Figure_triangle_isosceles_symbol_t.Figure_triangle_isosceles_right "U",
    ((Figure_fence_point_symbol_t.Figure_fence_point_constructor "U_A", [1; 3; 1; 6]),
     (Figure_fence_point_symbol_t.Figure_fence_point_constructor "U_B", [2; 3; 1; 6]),
     (Figure_fence_point_symbol_t.Figure_fence_point_constructor "U_C", [3; 3; 1; 6])))
);;

