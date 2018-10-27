open Make_test_v;;

testing "Figure_triangle formula_v with
   Figure_triangle_formula_u_any.ml";;

(* toplevel 
   #use "Figure_triangle_formula_u_any.ml";; 

 *)
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


let nam_dom = "figure";;
let tag_dom = Domain_tag_v.make_of_domain_name_of_sole_index_up nam_dom [];;
let tag_fdo = Figure_domain_tag_from_domain_tag_translator_v.translate tag_dom;;

test_number 1 (
tag_fdo 
(* : Figure_domain_symbol_t.figure_domain_symbol Tag_t.tag *)
=
  (Figure_domain_symbol_t.Figure_domain_constructor "figure", [3])
);;

let nof_inp = "/keep/sources/ocaml_top/setup/frames/figureset/functional_tests/figure_ratio.inp";;
let nam_fil = Filename_p.filename nof_inp;;

let tag_tar_l = Target_tag_list_by_domain_tag_provider_v.provide tag_dom;;

test_number 2 (
tag_tar_l 
(* : Target_symbol_t.target_symbol Tag_t.tag list *)
=
  Doublet_list_t.doublet_list =
  [(Target_symbol_t.Target_figureset_symbol
     (Target_figureset_symbol_t.Target_figureset_symbol_constructor
       "perimeter_ratio_t_over_u"),
    [1; 3])]
);;

(* 1 Target "figure_triangle_perimeter_ratio" *)

let tag_tar = List.nth tag_tar_l 0;;
let inf_mod_l = Model_information_list_by_target_tag_provider_v.provide tag_tar;;

test_number 3 (
inf_mod_l
(* : Model_information_t.model_information list *)
=
  [Model_information_t.Model_figureset_information
    {Model_figureset_information_t.model_name = "figure_triangle_equilateral";
     Model_figureset_information_t.model_title = "a figure_triangle equilateral";
     Model_figureset_information_t.coordinate_what = "cartesian";
     Model_figureset_information_t.coordinate_units_angle =
      Units_angle_t.Radian;
     Model_figureset_information_t.coordinate_units_length =
      Units_length_t.Meter;
     Model_figureset_information_t.database_name = "db1";
     Model_figureset_information_t.entity_what =
      "figure_triangle_isosceles_equilateral";
     Model_figureset_information_t.entity_name = "T"};
   Model_information_t.Model_figureset_information
    {Model_figureset_information_t.model_name = "figure_triangle_scalene_right";
     Model_figureset_information_t.model_title = "a figure_triangle scalene right";
     Model_figureset_information_t.coordinate_what = "cartesian";
     Model_figureset_information_t.coordinate_units_angle =
      Units_angle_t.Radian;
     Model_figureset_information_t.coordinate_units_length =
      Units_length_t.Meter;
     Model_figureset_information_t.database_name = "db1";
     Model_figureset_information_t.entity_what = "figure_triangle_scalene_right";
     Model_figureset_information_t.entity_name = "u"}]
);;

let tag_mod_l = Model_tag_list_by_target_tag_provider_v.provide tag_tar;;

test_number 4 (
tag_mod_l 
(* : Model_symbol_t.model_symbol Tag_t.tag list *)
=
  [(Model_symbol_t.Model_figureset_symbol
     (Model_figureset_symbol_t.Model_figureset_symbol_constructor
       "figure_triangle_equilateral"),
    [1; 1; 3]);
   (Model_symbol_t.Model_figureset_symbol
     (Model_figureset_symbol_t.Model_figureset_symbol_constructor
       "figure_triangle_scalene_right"),
    [2; 1; 3])]
);;

let dump_common_1 = Common_symbol_by_sole_index_register_v.dump ();;

(* 1 Model_tag "figure_triangle_equilateral" *)

let tag_mod = List.nth tag_mod_l 0;;
let tag_mfi = Tag_v.map_entity Model_symbol_v.model_figureset_symbol_off_model_symbol tag_mod;;

(* 1 Figure_tag "figure_triangle_equilateral" *)

let tag_fig = Figure_tag_from_model_figureset_tag_translator_v.translate tag_mfi;;

test_number 5 (
tag_fig 
(* : Figure_symbol_t.figure_symbol * int list *)
=
  (Figure_symbol_t.Figure_triangle_symbol
    (Figure_triangle_symbol_t.Figure_triangle_isosceles_symbol
      (Figure_triangle_isosceles_symbol_t.Figure_triangle_isosceles_equilateral "T")),
   [1; 1; 3])
);;

let tag_tri = Tag_v.map_entity Figure_symbol_v.figure_triangle_symbol_off_figure_symbol tag_fig;;

test_number 6 (
tag_tri 
(* : Figure_triangle_symbol_t.figure_triangle_symbol Tag_t.tag *)
=
  (Figure_triangle_symbol_t.Figure_triangle_isosceles_symbol
    (Figure_triangle_isosceles_symbol_t.Figure_triangle_isosceles_equilateral "T"),
   [1; 1; 3])
);;

let tag_tis = Tag_v.map_entity Figure_triangle_symbol_v.figure_triangle_isosceles_symbol_off_figure_triangle_symbol tag_tri;;

let tag_coo_l = Figure_triangle_isosceles_formula_v.coordinate_tag_list_off_figure_triangle_isosceles_tag tag_tis;;
let tag_poi_l = Figure_triangle_formula_v.figure_fence_point_tag_list_off_figure_triangle_tag tag_tri;;

test_number 7 (
tag_poi_l
(* : Figure_fence_point_tag_t.figure_fence_point_tag list *)
=
  [(Figure_fence_point_symbol_t.Figure_fence_point_constructor "A", [1; 1; 1; 3]);
   (Figure_fence_point_symbol_t.Figure_fence_point_constructor "B", [2; 1; 1; 3]);
   (Figure_fence_point_symbol_t.Figure_fence_point_constructor "C", [3; 1; 1; 3])]
);;

let tag_coo_l = Figure_triangle_formula_v.coordinate_tag_list_off_figure_triangle_tag tag_tri;;

test_number 8 (
 tag_coo_l
(* : Coordinate_tag_t.coordinate_tag list *)
=
  [(Coordinate_symbol_t.Coordinate_cartesian_symbol
     Coordinate_cartesian_symbol_t.X,
    [1; 1; 1; 1; 3]);
   (Coordinate_symbol_t.Coordinate_cartesian_symbol
     Coordinate_cartesian_symbol_t.Y,
    [2; 1; 1; 1; 3]);
   (Coordinate_symbol_t.Coordinate_cartesian_symbol
     Coordinate_cartesian_symbol_t.Z,
    [3; 1; 1; 1; 3]);
   (Coordinate_symbol_t.Coordinate_cartesian_symbol
     Coordinate_cartesian_symbol_t.X,
    [1; 2; 1; 1; 3]);
   (Coordinate_symbol_t.Coordinate_cartesian_symbol
     Coordinate_cartesian_symbol_t.Y,
    [2; 2; 1; 1; 3]);
   (Coordinate_symbol_t.Coordinate_cartesian_symbol
     Coordinate_cartesian_symbol_t.Z,
    [3; 2; 1; 1; 3]);
   (Coordinate_symbol_t.Coordinate_cartesian_symbol
     Coordinate_cartesian_symbol_t.X,
    [1; 3; 1; 1; 3]);
   (Coordinate_symbol_t.Coordinate_cartesian_symbol
     Coordinate_cartesian_symbol_t.Y,
    [2; 3; 1; 1; 3]);
   (Coordinate_symbol_t.Coordinate_cartesian_symbol
     Coordinate_cartesian_symbol_t.Z,
    [3; 3; 1; 1; 3])]
);;
