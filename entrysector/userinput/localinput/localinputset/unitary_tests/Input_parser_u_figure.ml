open Make_test_v;;

testing "Input_parser_v with
    Input_parser_u_figure.ml";;

(* toplevel 
   #use "Input_parser_u_figure.ml";; 

*)

let nof_inp = "/keep/sources/ocaml_top/setup/frames/figureset/functional_tests/figure_measure.inp";;
let nam_fil = Filename_p.filename nof_inp;; 

test_number 1 (
nam_fil 
(* : Filename_p.filename *) 
  =
Filename_p.filename nof_inp
);;

let ich = Scanf.Scanning.from_file nof_inp;;
let str_tri_n_str_dol = Input_parser_v.string_trio_n_string_doublet_list_of_in_channel ich ;;

test_number 2 (
str_tri_n_str_dol
(* : (string * (string * string) list) list *)
=
   [(("domain", "figure", "target_list"),
    "triangle_equilateral_perimeter  triangle_scalene_right_surface perimeter_ratio_t_over_u");
   (("domain", "figure", "domain_name"), "figure");
   (("target", "perimeter_ratio_t_over_u", "model_list"),
    "triangle_equilateral triangle_scalene_right");
   (("target", "perimeter_ratio_t_over_u", "property_name"),
    "perimeter_ratio_t_over_u");
   (("target", "perimeter_ratio_t_over_u", "property_units"), "meter");
   (("target", "perimeter_ratio_t_over_u", "property_file"),
    "perimeter_ratio_t_over_u.out");
   (("target", "perimeter_ratio_t_over_u", "target_title"),
    "triangles equilateral and scalene right surface scale_factor");
   (("target", "perimeter_ratio_t_over_u", "target_name"),
    "perimeter_ratio_t_over_u");
   (("target", "triangle_scalene_right_surface", "model_list"),
    "triangle_scalene_right");
   (("target", "triangle_scalene_right_surface", "property_name"),
    "triangle_surface");
   (("target", "triangle_scalene_right_surface", "property_units"), "meter");
   (("target", "triangle_scalene_right_surface", "property_file"),
    "surface_triangle_scalene_right_surface.out");
   (("target", "triangle_scalene_right_surface", "target_title"),
    "triangle scalene right surface");
   (("target", "triangle_scalene_right_surface", "target_name"),
    "triangle_scalene_right_surface");
   (("target", "triangle_equilateral_perimeter", "model_list"),
    "triangle_equilateral");
   (("target", "triangle_equilateral_perimeter", "property_units"), "meter");
   (("target", "triangle_equilateral_perimeter", "property_name"),
    "triangle_perimeter");
   (("target", "triangle_equilateral_perimeter", "property_file"),
    "triangle_equilateral_perimeter.out");
   (("target", "triangle_equilateral_perimeter", "target_title"),
    "triangle equilateral perimeter");
   (("target", "triangle_equilateral_perimeter", "target_name"),
    "triangle_equilateral_perimeter");
   (("target", "triangle_equilateral_perimeter", "domain_name"), "figure");
   (("model", "triangle_scalene_right", "coordinate_what"), "cartesian");
   (("model", "triangle_scalene_right", "coordinate_units_length"), "meter");
   (("model", "triangle_scalene_right", "coordinate_units_angle"), "radian");
   (("model", "triangle_scalene_right", "entity_name"), "u");
   (("model", "triangle_scalene_right", "entity_what"),
    "triangle_scalene_right");
   (("model", "triangle_scalene_right", "database_name"), "db1");
   (("model", "triangle_scalene_right", "model_title"),
    "a triangle scalene right");
   (("model", "triangle_scalene_right", "model_name"),
    "triangle_scalene_right");
   (("model", "triangle_equilateral", "coordinate_what"), "cartesian");
   (("model", "triangle_equilateral", "coordinate_units_length"), "meter");
   (("model", "triangle_equilateral", "coordinate_units_angle"), "radian");
   (("model", "triangle_equilateral", "entity_name"), "T");
   (("model", "triangle_equilateral", "entity_what"),
    "triangle_isoceles_equilateral");
   (("model", "triangle_equilateral", "database_name"), "db1");
   (("model", "triangle_equilateral", "model_title"),
    "a triangle equilateral");
   (("model", "triangle_equilateral", "model_name"), "triangle_equilateral")]
);;
