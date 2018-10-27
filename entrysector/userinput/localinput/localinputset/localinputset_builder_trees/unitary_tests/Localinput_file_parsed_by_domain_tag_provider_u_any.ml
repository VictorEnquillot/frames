open Make_test_v;;

testing "Localinput_file_parsed_by_domain_tag_provider_v with
    Localinput_file_parsed_by_domain_tag_provider_u_any.ml";;

(* toplevel 
   #use "Localinput_file_parsed_by_domain_tag_provider_u_any.ml";; 

*)


let nam_dom = "user";;
let tag_dom = Domain_tag_v.make_of_domain_name_of_sole_index_up nam_dom [];;

test_number 1 (
tag_dom
(* : Domain_symbol_t.domain_symbol Tag_t.tag *)
  =
(Domain_symbol_t.Figure, [3])
);;

let nam_fil = Filename_p.filename "/keep/sources/ocaml_top/setup/frames/figureset/functional_tests/figure_measure.inp";;

test_number 2 (
nam_fil
=
Localinput_fullnameoffile_by_domain_tag_provider_v.provide tag_dom
);;

let par_inp = Localinput_file_parsed_by_domain_tag_provider_v.provide tag_dom;;

test_number 3 (
par_inp
(* (string * (string * string) list) list *)
  =
  [("domain user",
    [("target_list",
      "triangle_equilateral_perimeter  triangle_scalene_right_surface perimeter_ratio_t_over_u");
     ("domain_name", "user")]);
   ("target perimeter_ratio_t_over_u",
    [("model_list", "triangle_equilateral triangle_scalene_right");
     ("property_name", "perimeter_ratio_t_over_u");
     ("property_units", "meter");
     ("property_file", "perimeter_ratio_t_over_u.out");
     ("target_title",
      "triangles equilateral and scalene right surface scale_factor");
     ("target_name", "perimeter_ratio_t_over_u")]);
   ("target triangle_scalene_right_surface",
    [("model_list", "triangle_scalene_right");
     ("property_name", "triangle_surface"); ("property_units", "meter");
     ("property_file", "surface_triangle_scalene_right_surface.out");
     ("target_title", "triangle scalene right surface");
     ("target_name", "triangle_scalene_right_surface")]);
   ("target triangle_equilateral_perimeter",
    [("model_list", "triangle_equilateral"); ("property_units", "meter");
     ("property_name", "triangle_perimeter");
     ("property_file", "triangle_equilateral_perimeter.out");
     ("target_title", "triangle equilateral perimeter");
     ("target_name", "triangle_equilateral_perimeter");
     ("domain_name", "user")]);
   ("model triangle_scalene_right",
    [("coordinate_units", "meter"); ("coordinate_what", "cartesian");
     ("entity_name", "u"); ("entity_what", "triangle_scalene_right");
     ("database_name", "db1"); ("model_title", "a triangle scalene right");
     ("model_name", "triangle_scalene_right")]);
   ("model triangle_equilateral",
    [("coordinate_units", "meter"); ("coordinate_what", "cartesian");
     ("entity_name", "T"); ("entity_what", "triangle_isoceles_equilateral");
     ("database_name", "db1"); ("model_title", "a triangle equilateral");
     ("model_name", "triangle_equilateral")])]
);;
