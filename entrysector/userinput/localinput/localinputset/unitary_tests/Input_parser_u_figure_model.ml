open Make_test_v;;

testing "Input_parser_v with
    Input_parser_u_figure_model.ml";;

(* toplevel 
   #use "Input_parser_u_figure_model.ml";; 

*)


(* Preparing Common_symbol_by_sole_index_register_v *)

let nam_dom = "figure";;
let tag_dom = Domain_tag_v.make_of_domain_name_of_sole_index_up nam_dom [];;

test_number 1 (
tag_dom
(* Domain_tag_t.domain_tag *)
= 
(Domain_symbol_t.Figure, [3])
);;

let nof_inp = "/keep/sources/ocaml_top/setup/frames/figureset/functional_tests/figure_model.inp";;
let nam_fil = Filename_p.filename nof_inp;;

test_number 2 (
nam_fil
=
Input_filename_by_domain_tag_provider_v.provide tag_dom
);;

let ich = Scanf.Scanning.from_file nof_inp;;
let str_tri_n_str_dol = Input_parser_v.string_trio_n_string_doublet_list_of_in_channel ich ;;

test_number 3 (
str_tri_n_str_dol
(* : ((string * string * string) * string) list *)
=
  [(("model", "triangle_scalene_right", "coordinate_what"), "cartesian");
   (("model", "triangle_scalene_right", "coordinate_units_list"), "meter");
   (("model", "triangle_scalene_right", "entity_name"), "u");
   (("model", "triangle_scalene_right", "entity_what"), "triangle_scalene_right");
   (("model", "triangle_scalene_right", "database_name"), "db1");
   (("model", "triangle_scalene_right", "model_title"), "a triangle scalene right");
   (("model", "triangle_scalene_right", "model_name"), "triangle_scalene_right");
   (("model", "triangle_equilateral", "coordinate_what"), "cartesian");
   (("model", "triangle_equilateral", "coordinate_units_list"), "meter");
   (("model", "triangle_equilateral", "entity_name"), "T");
   (("model", "triangle_equilateral", "entity_what"), "triangle_isoceles_equilateral");
   (("model", "triangle_equilateral", "database_name"), "db1");
   (("model", "triangle_equilateral", "model_title"), "a triangle equilateral");
   (("model", "triangle_equilateral", "model_name"), "triangle_equilateral")]
);;
