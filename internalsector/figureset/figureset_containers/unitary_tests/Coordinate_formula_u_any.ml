open Make_test_v;;

testing "Coordinate formula_v with
   coordinate_formula_u_any.ml";;

(* toplevel 
   #use "Coordinate_formula_u_any.ml";; 

 *)


let nam_dom = "figure";;
let tag_dom = Domain_tag_v.make_of_domain_name_of_sole_index_up nam_dom [];;

test_number 1 (
tag_dom 
(* : Domain_symbol_t.domain_symbol Tag_t.tag *)
  =
  (Domain_symbol_t.Figure, [3])
);;

let nam_fil = Filename_p.filename "/keep/sources/ocaml_top/setup/frames/figureset/functional_tests/figure.inp";;

let tag_tar_l = Target_tag_list_by_domain_tag_provider_v.provide tag_dom;;

(* 1 Target "triangle_perimeter_ratio" *)

let tag_tar = List.nth tag_tar_l 0;;

test_number 2 (
tag_tar 
(* :
  (Target_symbol_t.target_symbol, Sole_index_t.sole_index) Doublet_t.doublet *)
  =
(Target_symbol_t.Target_figureset_symbol
   (Target_figureset_symbol_t.Target_figureset_symbol_constructor
      "triangle_perimeter_ratio"),
 [1; 3])
);;

let inf_mod_l = Model_information_list_by_target_tag_provider_v.provide tag_tar;;
let tag_mod_l = Model_tag_list_by_target_tag_provider_v.provide tag_tar;;

(* 1 Model_tag "triangle_equilateral" *)

let tag_mod = List.nth tag_mod_l 0;;

test_number 3 (
 tag_mod 
(* : (Model_symbol_t.model_symbol, Sole_index_t.sole_index) Doublet_t.doublet *)
=
  (Model_symbol_t.Model_figureset_symbol
     (Model_figureset_symbol_t.Model_figureset_symbol_constructor
	"triangle_equilateral"),
   [1; 1; 3])
);;

let tag_mfi = Tag_v.map_entity Model_symbol_v.model_figureset_symbol_off_model_symbol tag_mod;;

test_number 4 (
tag_mfi 
(* : Model_figureset_symbol_t.model_figureset_symbol Tag_t.tag *)
  =
(Model_figureset_symbol_t.Model_figureset_symbol_constructor
   "triangle_equilateral",
 [1; 1; 3])
);;

(* 1 Figure_tag "triangle_equilateral" *)

let tag_fig = Figure_tag_from_model_figureset_tag_translator_v.translate tag_mfi;;

test_number 5 (
tag_fig 
(* : Figure_symbol_t.figure_symbol * int list *)
=
  (Figure_symbol_t.Triangle_symbol
    (Triangle_symbol_t.Triangle_isosceles_symbol
      (Triangle_isosceles_symbol_t.Triangle_isosceles_equilateral "T")),
   [1; 1; 3])
);;

let tag_tri = Tag_v.map_entity Figure_symbol_v.triangle_symbol_off_figure_symbol tag_fig;;

test_number 6 (
tag_tri 
(* : Triangle_symbol_t.triangle_symbol Tag_t.tag *)
=
  (Triangle_symbol_t.Triangle_isosceles_symbol
    (Triangle_isosceles_symbol_t.Triangle_isosceles_equilateral "T"),
   [1; 1; 3])
);;

let tag_poi_l = Point_tag_list_by_triangle_tag_provider_v.provide tag_tri;;

test_number 7 (
tag_poi_l
=
  [(Point_symbol_t.Point_constructor "A", [1; 1; 1; 3]);
   (Point_symbol_t.Point_constructor "B", [2; 1; 1; 3]);
   (Point_symbol_t.Point_constructor "C", [3; 1; 1; 3])]
);;

(* 2 Point B *)

let nam_poi = "point_constructor";;
let sto_poi = "B";;
let sym_poi = Point_symbol_v.make nam_poi sto_poi;;
blet tag_poi = Doublet_list_v.find_if_left (fun s -> s = sym_poi) tag_poi_l;;

test_number 8 (
tag_poi 
(* : Point_symbol_t.point_symbol Tag_t.tag *)
=
  (Point_symbol_t.Point_constructor "B", [2; 1; 1; 3])
);;

let tag_coo_l = Point_formula_v.coordinate_tag_list_off_point_tag tag_poi;;


