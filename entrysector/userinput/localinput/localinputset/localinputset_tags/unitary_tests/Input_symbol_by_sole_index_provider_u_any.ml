open Make_test_v;;

testing "Input_symbol_by_sole_index_provider_v with
   Input_symbol_by_sole_index_provider_u_any.ml";;

(* toplevel 
   #use "Input_symbol_by_sole_index_provider_u_any.ml";;

*)


Parameters_figureset_general_register_v.store_force "trace-store" "false";;
Parameters_figureset_general_register_v.store_force "trace-translate" "false";;
Parameters_figureset_general_register_v.store_force "trace-provide" "false";;
Parameters_figureset_general_register_v.store_force "trace-extract" "false";;

let nam_dom = "figure";;
let tag_dom = Domain_tag_v.make_of_domain_name_of_sole_index_up nam_dom [];;

test_number 1 (
tag_dom
(* Domain_tag_t.domain_tag *)
= 
(Domain_symbol_t.Figure, [3])
);;

let soi_any = [1; 2; 3];;
let tag_dom = Common_symbol_by_sole_index_extractor_v.domain_tag_off_sole_index soi_any;;

test_number 2 (
tag_dom
(* Domain_tag_t.domain_tag *)
= 
(Domain_symbol_t.Figure, [3])
);;

let nof_inp = "/keep/sources/ocaml_top/setup/frames/figureset/functional_tests/point_coordinates.inp";;
Parameters_figureset_general_register_v.store "input-file" nof_inp;;
let nam_fil = Filename_p.filename nof_inp;;


test_number 3 (
nam_fil
=
Input_filename_by_domain_tag_provider_v.provide tag_dom
);;

let tag_tar_l = Target_tag_list_by_domain_tag_provider_v.provide tag_dom;;

test_number 4 (
 tag_tar_l 
(* : Target_symbol_t.target_label Tag_t.tag list *)
=
  [(Target_symbol_t.Target_figureset_symbol
     (Target_figureset_symbol_t.Target_figureset_symbol_constructor
       "perimeter_ratio_t_over_u"),
    [1; 3]);
   (Target_symbol_t.Target_figureset_symbol
     (Target_figureset_symbol_t.Target_figureset_symbol_constructor
       "triangle_scalene_right_surface"),
    [2; 3]);
   (Target_symbol_t.Target_figureset_symbol
     (Target_figureset_symbol_t.Target_figureset_symbol_constructor
       "triangle_equilateral_perimeter"),
    [3; 3])]
);;

let tag_mod_ll = List.map Model_tag_list_by_target_tag_provider_v.provide tag_tar_l;;
let tag_mod_l = List.flatten tag_mod_ll;;

test_number 5 (
tag_mod_l 
(* : Model_symbol_t.model_label Tag_t.tag list *)
=
  [(Model_symbol_t.Model_figureset_symbol
     (Model_figureset_symbol_t.Model_figureset_symbol_constructor
       "triangle_equilateral"),
    [1; 1; 3]);
   (Model_symbol_t.Model_figureset_symbol
     (Model_figureset_symbol_t.Model_figureset_symbol_constructor
       "triangle_scalene_right"),
    [2; 1; 3]);
   (Model_symbol_t.Model_figureset_symbol
     (Model_figureset_symbol_t.Model_figureset_symbol_constructor
       "triangle_scalene_right"),
    [1; 2; 3]);
   (Model_symbol_t.Model_figureset_symbol
     (Model_figureset_symbol_t.Model_figureset_symbol_constructor
       "triangle_equilateral"),
    [1; 3; 3])]
);;

let inf_mod_l = List.map Model_information_by_model_tag_provider_v.provide tag_mod_l;;

test_number 6 (
inf_mod_l 
(* : Model_information_t.model_information list *)
=
  [Model_information_t.Model_figureset_information
    {Model_figureset_information_t.model_name = "triangle_equilateral";
     Model_figureset_information_t.model_title = "a triangle equilateral";
     Model_figureset_information_t.coordinate_what = "cartesian";
     Model_figureset_information_t.coordinate_units_angle =
      Units_angle_t.Radian;
     Model_figureset_information_t.coordinate_units_length =
      Units_length_t.Meter;
     Model_figureset_information_t.database_name = "db1";
     Model_figureset_information_t.entity_what =
      "triangle_isoceles_equilateral";
     Model_figureset_information_t.entity_name = "T"};
   Model_information_t.Model_figureset_information
    {Model_figureset_information_t.model_name = "triangle_scalene_right";
     Model_figureset_information_t.model_title = "a triangle scalene right";
     Model_figureset_information_t.coordinate_what = "cartesian";
     Model_figureset_information_t.coordinate_units_angle =
      Units_angle_t.Radian;
     Model_figureset_information_t.coordinate_units_length =
      Units_length_t.Meter;
     Model_figureset_information_t.database_name = "db1";
     Model_figureset_information_t.entity_what = "triangle_scalene_right";
     Model_figureset_information_t.entity_name = "u"};
   Model_information_t.Model_figureset_information
    {Model_figureset_information_t.model_name = "triangle_scalene_right";
     Model_figureset_information_t.model_title = "a triangle scalene right";
     Model_figureset_information_t.coordinate_what = "cartesian";
     Model_figureset_information_t.coordinate_units_angle =
      Units_angle_t.Radian;
     Model_figureset_information_t.coordinate_units_length =
      Units_length_t.Meter;
     Model_figureset_information_t.database_name = "db1";
     Model_figureset_information_t.entity_what = "triangle_scalene_right";
     Model_figureset_information_t.entity_name = "u"};
   Model_information_t.Model_figureset_information
    {Model_figureset_information_t.model_name = "triangle_equilateral";
     Model_figureset_information_t.model_title = "a triangle equilateral";
     Model_figureset_information_t.coordinate_what = "cartesian";
     Model_figureset_information_t.coordinate_units_angle =
      Units_angle_t.Radian;
     Model_figureset_information_t.coordinate_units_length =
      Units_length_t.Meter;
     Model_figureset_information_t.database_name = "db1";
     Model_figureset_information_t.entity_what =
      "triangle_isoceles_equilateral";
     Model_figureset_information_t.entity_name = "T"}]
);;

let (sym_tar, soi_tar) = List.nth tag_tar_l 0;;
let tag_dom = Input_symbol_by_sole_index_extractor_v.domain_tag_off_sole_index soi_tar;;

test_number 7 (
 tag_dom 
(* : Domain_symbol_t.domain_symbol Tag_t.tag *)
=
  (Domain_symbol_t.Figure, [3])
);;
