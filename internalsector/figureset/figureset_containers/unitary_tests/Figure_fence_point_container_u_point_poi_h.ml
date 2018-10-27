open Make_test_v;;

testing "Figure_fence_point_container_v with
    Figure_fence_point_container_u_point_poi_h.ml";;

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
   #use "Figure_fence_point_container_u_point_poi_h.ml";;

*)

(* Input File *)

let nam_inp = "Point_homothety.inp";;
let fno_inp = Input_file_fullnameoffile_by_input_file_nameoffile_provider_v.provide nam_inp;;

let sof_poi = "Poi_h";;

let tag_fcr = Figure_createdby_tag_by_input_fullnameoffile_provider_v.provide fno_inp;;

test_number 1 (
(tag_fcr : Figure_createdby_symbol_t.figure_createdby_symbol Tag_t.tag ) =
  (Figure_createdby_symbol_t.Figure_inputfile_symbol
    (Figure_inputfile_symbol_t.Figure_inputfile_constructor
      "/keep/sources/ocaml_top/setup/frames/inputset/files/Point_homothety.inp"),
   [27; 6])
);;

let sof_fcr = Figure_createdby_tag_v.string_off tag_fcr;;

test_number 2 (
(sof_fcr : string ) =
  "/keep/sources/ocaml_top/setup/frames/inputset/files/Point_homothety.inp"
);;

let tag_fig_inp_l = Figure_tag_all_list_by_figure_createdby_tag_provider_v.provide tag_fcr;;

test_number 3 (
(tag_fig_inp_l : Figure_symbol_t.figure_symbol Tag_t.tag list ) =
  [(Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_domain_symbol
       (Figure_domain_symbol_t.Figure_domain_constructor "figure")),
    [6]);
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_createdby_symbol
       (Figure_createdby_symbol_t.Figure_inputfile_symbol
         (Figure_inputfile_symbol_t.Figure_inputfile_constructor
           "/keep/sources/ocaml_top/setup/frames/inputset/files/Point_homothety.inp"))),
    [27; 6]);
   (
     (Figure_symbol_t.Figure_fence_symbol
       (Figure_fence_symbol_t.Figure_fence_point_symbol
         (Figure_fence_point_symbol_t.Figure_fence_point_constructor "Poi_h"))),
    [1; 27; 6]);
   (
     (Figure_symbol_t.Figure_fence_symbol
       (Figure_fence_symbol_t.Figure_fence_point_symbol
         (Figure_fence_point_symbol_t.Figure_fence_point_constructor "Poi_a"))),
    [1; 1; 27; 6]);
   (
     (Figure_symbol_t.Figure_fence_symbol
       (Figure_fence_symbol_t.Figure_fence_point_symbol
         (Figure_fence_point_symbol_t.Figure_fence_point_constructor "Cen_b"))),
    [2; 27; 6])]
);;

let tag_fig_poi = List_v.only_element_of_predicate_off_list 
      (fun (s, i) -> Figure_symbol_v.string_off s = sof_poi) 
    tag_fig_inp_l
  ;;

open Figure_fence_point_container_v;;

let tag_fpo = Tag_v.map_entity 
    Figure_symbol_v.figure_fence_point_symbol_off_figure_symbol 
    tag_fig_poi
;; 

test_number 4 (
(tag_fpo : Figure_fence_point_symbol_t.figure_fence_point_symbol Tag_t.tag ) =
  (Figure_fence_point_symbol_t.Figure_fence_point_constructor "Poi_h", [1; 27; 6])
);;

let sof_fpo = Figure_fence_point_tag_v.string_off tag_fpo ;;

let soi_fpo = Tag_v.sole_index_off_tag tag_fpo ;;

let sof_fcr = Figure_any_category_by_sole_index_extractor_v.figure_createdby_string_off_off_sole_index soi_fpo;;

test_number 5 (
( sof_fcr : string ) =
  "/keep/sources/ocaml_top/setup/frames/inputset/files/Point_homothety.inp"
);;

(** {6 Retrieving} *)

let tag_ect_l = Elementary_coordinate_tuple_tag_list_by_figure_fence_point_tag_provider_v.provide tag_fpo;;
  
let tag_bui_l = builder_tag_list tag_fpo;;

let con_poi = container_of_tag tag_fpo;;

test_number 6 (
(con_poi :
  Elementary_coordinate_tuple_symbol_t.elementary_coordinate_tuple_symbol
  Tag_t.tag Uno_t.uno ) =
  Uno_t.Uno
   (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_homogeneous_symbol
     (Elementary_coordinate_tuple_homogeneous_symbol_t.Elementary_coordinate_tuple_cartesian_symbol
       (Elementary_coordinate_tuple_cartesian_symbol_t.Elementary_coordinate_tuple_cartesian_constructor
         "Poi_h")),
    [1; 1; 4])
);;

let tag_eun_l =
    Figure_fence_point_container_v.elementary_units_tag_list_off_figure_fence_point_tag
      tag_fpo;;

test_number 7 (
(tag_eun_l :
  Elementary_units_symbol_t.elementary_units_symbol Tag_t.tag list ) =
  [(Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer,
    [1; 1; 1; 1; 4]);
   (Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer,
    [1; 2; 1; 1; 4]);
   (Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer,
    [1; 3; 1; 1; 4])]
);;

(*
let tag_ecr = Elementary_createdby_tag_by_input_fullnameoffile_provider_v.provide fno_inp;;
 
test_number 8 (
(tag_ecr :
  Elementary_createdby_symbol_t.elementary_createdby_symbol Tag_t.tag ) =
  (Elementary_createdby_symbol_t.Elementary_input_file
    "/keep/sources/ocaml_top/setup/frames/inputset/files/Point_homothety.inp",
   [27; 4])
);;
  
  let tag_ele_l = 
    Elementary_tag_all_list_by_elementary_createdby_tag_provider_v.provide
      tag_ecr 
  ;;

test_number 9 (
(tag_ele_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
[(Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_domain_symbol
       (Elementary_domain_symbol_t.Elementary_domain_constructor "elementary")),
  [4]);
   (Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_createdby_symbol
       (Elementary_createdby_symbol_t.Elementary_input_file
         "/keep/sources/ocaml_top/setup/frames/inputset/files/Point_homothety.inp")),
    [27; 4]);
   (Elementary_symbol_t.Elementary_closure_symbol
     (Elementary_closure_symbol_t.Elementary_units_symbol
       (Elementary_units_symbol_t.Elementary_units_length_symbol
         Elementary_units_length_symbol_t.Meter)),
    [1; 27; 4]);
   (Elementary_symbol_t.Elementary_closure_symbol
     (Elementary_closure_symbol_t.Elementary_units_symbol
       (Elementary_units_symbol_t.Elementary_units_angle_symbol
         Elementary_units_angle_symbol_t.Radian)),
    [2; 27; 4])]
);;

  let tag_ele_ctu = List_v.only_element_of_predicate_off_list 
      (fun (s, i) -> Elementary_symbol_v.string_off s = sof_fpo) 
      tag_ele_l
  ;;
  let tag_ctu = Tag_v.map_entity 
      Elementary_symbol_v.elementary_coordinate_tuple_symbol_off_elementary_symbol 
      tag_ele_ctu 
  ;; 


test_number 10 (
(tag_ctu :
  Elementary_coordinate_tuple_symbol_t.elementary_coordinate_tuple_symbol
  Tag_t.tag ) =
  (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_homogeneous_symbol
    (Elementary_coordinate_tuple_homogeneous_symbol_t.Elementary_coordinate_tuple_cartesian_symbol
      (Elementary_coordinate_tuple_cartesian_symbol_t.Elementary_coordinate_tuple_cartesian_constructor
        "Poi_h")),
   [1; 1; 4])
);;

let val_poi = Figure_fence_point_container_v.evaluate tag_fpo;;

test_number 11 (
( val_poi :
  (float, Elementary_units_symbol_t.elementary_units_symbol)
  Doublet_t.doublet list ) =
  [(0.1,
    Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer);
   (0.2,
    Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer);
   (-0.2,
    Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer)]
);;
*)
