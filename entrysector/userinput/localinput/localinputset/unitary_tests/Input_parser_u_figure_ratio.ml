open Make_test_v;;

testing "Input_parser_v with
    Input_parser_u_figure_ratio.ml";;

(* toplevel 
   #use "Input_parser_u_figure_ratio.ml";; 

*)

(* Deleting Registers *)
Register_v.delete  Common_symbol_by_sole_index_register_v.register;;
Register_v.delete  Debug_by_module_name_register_v.register;;
Register_v.delete  Frames_entity_string_quintet_by_input_entity_variable_name_register_v.register;;
Register_v.delete  Input_entity_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Input_entity_symbol_by_sole_index_register_v.register;;
Register_v.delete  Input_entity_tag_by_input_entity_variable_name_register_v.register;;
Register_v.delete  Input_entity_tag_tree_by_input_entity_tag_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;
Register_v.delete  Property_entity_string_trio_by_input_entity_variable_name_register_v.register;;


(* Tracing *)

Parameters_general_register_v.store_force "trace-extract" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;

(* Preparing Common_symbol_by_sole_index_register_v *)

let nam_dom = "figure";;
let tag_dom = Domain_tag_v.make_of_domain_name_of_sole_index_up nam_dom [];;

test_number 1 (
tag_dom
(* Domain_tag_t.domain_tag *)
= 
(Domain_symbol_t.Figure, [3])
);;

let nof_inp = "/keep/sources/ocaml_top/setup/frames/figureset/functional_tests/figure_ratio.inp";;
Parameters_general_register_v.store "input-file" nof_inp;;
let nam_fil = Filename_p.filename nof_inp;;

test_number 2 (
nam_fil
=
Input_filename_by_domain_tag_provider_v.provide tag_dom
);;

let ich = Scanf.Scanning.from_file nof_inp;;
let str_tri_n_str_dol = Input_parser_v.string_trio_n_string_doublet_list_of_in_channel ich ;;

let dol_dom = Doublet_list_v.filter_if_left (fun tri -> Triplet_v.left_off_triplet tri = "domain") str_tri_n_str_dol;;

test_number 3 (
dol_dom 
(*: ((string, string, string) Triplet_t.triplet, string)
  Doublet_list_t.doublet_list *)
=
 [(("domain", "figure", "target_list"), "perimeter_ratio_t_over_u");
   (("domain", "figure", "domain_name"), "figure")]
);;

let dol_tar = Doublet_list_v.filter_if_left (fun tri -> Triplet_v.left_off_triplet tri = "target") str_tri_n_str_dol;;

test_number 4 (
dol_tar
(*: ((string, string, string) Triplet_t.triplet, string)
  Doublet_list_t.doublet_list *)
=
   [(("target", "perimeter_ratio_t_over_u", "target_property"),
    "perimeter_t_over_u");
   (("target", "perimeter_ratio_t_over_u", "target_title"),
    "triangles equilateral and scalene right surface scale_factor");
   (("target", "perimeter_ratio_t_over_u", "target_name"),
    "perimeter_ratio_t_over_u");
   (("target", "perimeter_ratio_t_over_u", "domain_name"), "figure")]
);;

let dol_pro = Doublet_list_v.filter_if_left (fun tri -> Triplet_v.left_off_triplet tri = "property") str_tri_n_str_dol;;

test_number 5 (
dol_pro
(*: ((string, string, string) Triplet_t.triplet, string)
  Doublet_list_t.doublet_list *)
=
  [(("property", "perimeter_t_over_u", "property_file"),
    "triangle_perimeter_ratio.out");
   (("property", "perimeter_t_over_u", "property_input_list"),
    "perimeter_t perimeter_u");
   (("property", "perimeter_t_over_u", "property_what"),
    "property_figureset_ratio");
   (("property", "perimeter_t_over_u", "property_name"),
    "perimeter_t_over_u");
   (("property", "perimeter_u", "property_file"),
    "triangle_scalene_right_perimeter.out");
   (("property", "perimeter_u", "property_what"), "perimeter");
   (("property", "perimeter_u", "property_model_input"),
    "triangle_scalene_right_u");
   (("property", "perimeter_u", "property_units_list"), "meter");
   (("property", "perimeter_u", "property_name"), "perimeter_u");
   (("property", "perimeter_t", "property_file"),
    "triangle_equilateral_perimeter.out");
   (("property", "perimeter_t", "property_what"), "perimeter");
   (("property", "perimeter_t", "property_model_input"),
    "triangle_equilateral_t");
   (("property", "perimeter_t", "property_units_list"), "meter");
   (("property", "perimeter_t", "property_name"), "perimeter_t");
   (("property", "perimeter_t_over_u", "property_nature"),
    "property_figureset_ratio");
   (("property", "perimeter_u", "property_nature"), "measure");
   (("property", "perimeter_t", "property_nature"), "measure");
   (("property", "perimeter_t_over_u", "property_kind"),
    "property_figureset_ratio");
   (("property", "perimeter_u", "property_kind"), "perimeter");
   (("property", "perimeter_t", "property_kind"), "perimeter")]
);;

let dol_hom = Doublet_list_v.filter_if_left (fun tri -> Triplet_v.left_off_triplet tri = "homothety") str_tri_n_str_dol;;

test_number 6 (
dol_hom
(*: ((string, string, string) Triplet_t.triplet, string)
  Doublet_list_t.doublet_list *)
=
 []
);;

let dol_tra = Doublet_list_v.filter_if_left (fun tri -> Triplet_v.left_off_triplet tri = "translation") str_tri_n_str_dol;;

test_number 7 (
dol_tra
(*: ((string, string, string) Triplet_t.triplet, string)
  Doublet_list_t.doublet_list *)
=  
[]
);;

let dol_mod = Doublet_list_v.filter_if_left (fun tri -> Triplet_v.left_off_triplet tri = "model") str_tri_n_str_dol;;

test_number 8 (
dol_mod
(*: ((string, string, string) Triplet_t.triplet, string)
  Doublet_list_t.doublet_list *)
=
  [(("model", "triangle_scalene_right_u", "coordinate_what"), "cartesian");
   (("model", "triangle_scalene_right_u", "coordinate_units_list"), "meter");
   (("model", "triangle_scalene_right_u", "entity_name"), "u");
   (("model", "triangle_scalene_right_u", "entity_what"),
    "triangle_scalene_right");
   (("model", "triangle_scalene_right_u", "database_name"), "db1");
   (("model", "triangle_scalene_right_u", "model_title"),
    "a triangle scalene right");
   (("model", "triangle_scalene_right_u", "model_name"),
    "triangle_scalene_right_u");
   (("model", "triangle_equilateral_t", "coordinate_what"), "cartesian");
   (("model", "triangle_equilateral_t", "coordinate_units_list"), "meter");
   (("model", "triangle_equilateral_t", "entity_name"), "T");
   (("model", "triangle_equilateral_t", "entity_what"),
    "triangle_isosceles_equilateral");
   (("model", "triangle_equilateral_t", "database_name"), "db1");
   (("model", "triangle_equilateral_t", "model_title"),
    "a triangle equilateral");
   (("model", "triangle_equilateral_t", "model_name"),
    "triangle_equilateral_t")]
);;

let dol_pro = Doublet_list_v.filter_if_left (fun tri -> Triplet_v.right_off_triplet tri = "property_nature") str_tri_n_str_dol;;

test_number 9 (
dol_pro 
(* : ((string, string, string) Triplet_t.triplet, string)
   Doublet_list_t.doublet_list *)
  =
[(("property", "perimeter_t_over_u", "property_nature"), "property_figureset_ratio");
 (("property", "perimeter_u", "property_nature"), "measure");
 (("property", "perimeter_t", "property_nature"), "measure")]
);;

let dol_pro = Doublet_list_v.filter_if_left (fun tri -> Triplet_v.right_off_triplet tri = "property_kind") str_tri_n_str_dol;;

test_number 10 (
dol_pro 
(* : ((string, string, string) Triplet_t.triplet, string)
   Doublet_list_t.doublet_list *)
  =
 [(("property", "perimeter_t_over_u", "property_kind"), "property_figureset_ratio");
   (("property", "perimeter_u", "property_kind"), "perimeter");
   (("property", "perimeter_t", "property_kind"), "perimeter")]
);;
