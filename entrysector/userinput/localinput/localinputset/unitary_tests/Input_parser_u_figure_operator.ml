open Make_test_v;;

testing "Input_parser_v with
    Input_parser_u_figure_operator.ml";;

(* toplevel 
   #use "Input_parser_u_figure_operator.ml";; 

*)


(* Preparing Common_symbol_by_sole_index_register_v *)

Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;
 let nam_dom = "figure";;
let tag_dom = Domain_tag_v.make_of_domain_name_of_sole_index_up nam_dom [];;

test_number 1 (
tag_dom
(* Domain_tag_t.domain_tag *)
= 
(Domain_symbol_t.Figure, [3])
);;

let nof_inp = "/keep/sources/ocaml_top/setup/frames/figureset/functional_tests/figure_operator.inp";;
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
  [(("domain", "figure", "target_list"),
    "triangle_equilateral_homothety triangle_equilateral_translation");
   (("domain", "figure", "domain_name"), "figure")]
);;

let dol_tar = Doublet_list_v.filter_if_left (fun tri -> Triplet_v.left_off_triplet tri = "target") str_tri_n_str_dol;;

test_number 4 (
dol_tar
(*: ((string, string, string) Triplet_t.triplet, string)
  Doublet_list_t.doublet_list *)
=
  [(("target", "triangle_equilateral_translation", "target_property"),
    "translation_t_bc");
   (("target", "triangle_equilateral_translation", "target_title"),
    "triangle equilateral translation");
   (("target", "triangle_equilateral_translation", "target_name"),
    "triangle_equilateral_translation");
   (("target", "triangle_equilateral_translation", "domain_name"), "figure");
   (("target", "triangle_equilateral_homothety", "target_property"),
    "homothety_t_a_2");
   (("target", "triangle_equilateral_homothety", "target_title"),
    "triangle equilateral homothety");
   (("target", "triangle_equilateral_homothety", "target_name"),
    "triangle_equilateral_homothety");
   (("target", "triangle_equilateral_homothety", "domain_name"), "figure")]
);;

let dol_pro = Doublet_list_v.filter_if_left (fun tri -> Triplet_v.left_off_triplet tri = "property") str_tri_n_str_dol;;

test_number 5 (
dol_pro
(*: ((string, string, string) Triplet_t.triplet, string)
  Doublet_list_t.doublet_list *)
=
  [(("property", "translation_t_bc", "property_what"), "translation_bc");
   (("property", "translation_t_bc", "property_file"),
    "triangle_equilateral_translation.out");
   (("property", "translation_t_bc", "property_model_input"),
    "triangle_equilateral_t");
   (("property", "translation_t_bc", "property_entity_output"), "Tbc");
   (("property", "translation_t_bc", "property_units_list"), "meter");
   (("property", "translation_t_bc", "property_title"),
    "a translation of Segment BC applied to T");
   (("property", "translation_t_bc", "property_name"), "translation_t_bc");
   (("property", "homothety_t_a_2", "property_model_input"),
    "triangle_equilateral_t");
   (("property", "homothety_t_a_2", "property_entity_output"), "Th");
   (("property", "homothety_t_a_2", "property_what"), "homothety_a_2");
   (("property", "homothety_t_a_2", "property_file"),
    "triangle_equilateral_homothety.out");
   (("property", "homothety_t_a_2", "property_units_list"), "meter radian");
   (("property", "homothety_t_a_2", "property_title"),
    "an homothety of Center A and scale_factor 2. applied to T");
   (("property", "homothety_t_a_2", "property_name"), "homothety_t_a_2");
   (("property", "translation_t_bc", "property_nature"), "operator");
   (("property", "homothety_t_a_2", "property_nature"), "operator");
   (("property", "translation_t_bc", "property_kind"), "translation");
   (("property", "homothety_t_a_2", "property_kind"), "homothety")]
);;

let dol_hom = Doublet_list_v.filter_if_left (fun tri -> Triplet_v.left_off_triplet tri = "homothety") str_tri_n_str_dol;;

test_number 6 (
dol_hom
(*: ((string, string, string) Triplet_t.triplet, string)
  Doublet_list_t.doublet_list *)
=
 [(("homothety", "homothety_a_2", "homothety_ratio"), "2.");
   (("homothety", "homothety_a_2", "homothety_center"), "center_a");
   (("homothety", "homothety_a_2", "homothety_name"), "homothety_a_2")]
);;

let dol_tra = Doublet_list_v.filter_if_left (fun tri -> Triplet_v.left_off_triplet tri = "translation") str_tri_n_str_dol;;

test_number 7 (
dol_tra
(*: ((string, string, string) Triplet_t.triplet, string)
  Doublet_list_t.doublet_list *)
=  
[(("translation", "translation_bc", "translation_segment"), "segment_bc");
 (("translation", "translation_bc", "translation_name"), "translation_bc")]
);;

let dol_mod = Doublet_list_v.filter_if_left (fun tri -> Triplet_v.left_off_triplet tri = "model") str_tri_n_str_dol;;

test_number 8 (
dol_mod
(*: ((string, string, string) Triplet_t.triplet, string)
  Doublet_list_t.doublet_list *)
=
  [(("model", "segment_bc", "coordinate_what"), "cartesian");
   (("model", "segment_bc", "coordinate_units_list"), "meter");
   (("model", "segment_bc", "entity_name"), "bc");
   (("model", "segment_bc", "entity_what"), "segment");
   (("model", "segment_bc", "database_name"), "db1");
   (("model", "segment_bc", "model_title"), "a segment for a translation");
   (("model", "segment_bc", "model_name"), "segment_bc");
   (("model", "center_a", "coordinate_what"), "cartesian");
   (("model", "center_a", "coordinate_units_list"), "meter");
   (("model", "center_a", "entity_name"), "a");
   (("model", "center_a", "entity_what"), "point");
   (("model", "center_a", "database_name"), "db1");
   (("model", "center_a", "model_title"), "a point for an homothety");
   (("model", "center_a", "model_name"), "center_a");
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
  [(("property", "translation_t_bc", "property_nature"), "operator");
   (("property", "homothety_t_a_2", "property_nature"), "operator")]
);;

let dol_pro = Doublet_list_v.filter_if_left (fun tri -> Triplet_v.right_off_triplet tri = "property_kind") str_tri_n_str_dol;;

test_number 10 (
dol_pro 
(* : ((string, string, string) Triplet_t.triplet, string)
   Doublet_list_t.doublet_list *)
  =
  [(("property", "translation_t_bc", "property_kind"), "translation");
   (("property", "homothety_t_a_2", "property_kind"), "homothety")]
);;

