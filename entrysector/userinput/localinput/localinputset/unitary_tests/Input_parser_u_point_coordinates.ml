open Make_test_v;;

testing "Input_parser_v with
    Input_parser_u_point_coordinates.ml";;

(* toplevel 
   #use "Input_parser_u_point_coordinates.ml";; 

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

let nof_inp = "/keep/sources/ocaml_top/setup/frames/figureset/functional_tests/point_coordinates.inp";;
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
 [(("domain", "figure", "target_list"), "center_a_coordinates");
   (("domain", "figure", "domain_name"), "figure")]
);;

let dol_tar = Doublet_list_v.filter_if_left (fun tri -> Triplet_v.left_off_triplet tri = "target") str_tri_n_str_dol;;

test_number 4 (
dol_tar
(*: ((string, string, string) Triplet_t.triplet, string)
  Doublet_list_t.doublet_list *)
=
  [(("target", "center_a_coordinates", "target_property"), "coordinates_a");
   (("target", "center_a_coordinates", "target_title"),
    "Coordinates for Center A");
   (("target", "center_a_coordinates", "target_name"),
    "center_a_coordinates");
   (("target", "center_a_coordinates", "domain_name"), "figure")]
);;

let dol_pro = Doublet_list_v.filter_if_left (fun tri -> Triplet_v.left_off_triplet tri = "property") str_tri_n_str_dol;;

test_number 5 (
dol_pro
(*: ((string, string, string) Triplet_t.triplet, string)
  Doublet_list_t.doublet_list *)
=
  [(("property", "coordinates_a", "property_model_input"), "center_a");
   (("property", "coordinates_a", "property_what"), "coordinates_a_2");
   (("property", "coordinates_a", "property_file"),
    "center_a_coordinates.out");
   (("property", "coordinates_a", "property_units_list"), "meter radian");
   (("property", "coordinates_a", "property_title"),
    "the coordinates of Center A");
   (("property", "coordinates_a", "property_name"), "coordinates_a");
   (("property", "coordinates_a", "property_nature"), "measure");
   (("property", "coordinates_a", "property_kind"), "coordinates_a_2")]
);;

let dol_coo = Doublet_list_v.filter_if_left (fun tri -> Triplet_v.left_off_triplet tri = "coordinates") str_tri_n_str_dol;;

test_number 6 (
dol_coo
(*: ((string, string, string) Triplet_t.triplet, string)
  Doublet_list_t.doublet_list *)
=
  [(("coordinates", "coordinates_a_2", "coordinates_what"), "spherical");
   (("coordinates", "coordinates_a_2", "coordinates_units_list"),
    "meter degree");
   (("coordinates", "coordinates_a_2", "coordinates_name"),
    "coordinates_a_2")]
);;

let dol_hom = Doublet_list_v.filter_if_left (fun tri -> Triplet_v.left_off_triplet tri = "homothety") str_tri_n_str_dol;;

test_number 7 (
dol_hom
(*: ((string, string, string) Triplet_t.triplet, string)
  Doublet_list_t.doublet_list *)
=
 []
);;

let dol_tra = Doublet_list_v.filter_if_left (fun tri -> Triplet_v.left_off_triplet tri = "translation") str_tri_n_str_dol;;

test_number 8 (
dol_tra
(*: ((string, string, string) Triplet_t.triplet, string)
  Doublet_list_t.doublet_list *)
=  
[]
);;

let dol_mod = Doublet_list_v.filter_if_left (fun tri -> Triplet_v.left_off_triplet tri = "model") str_tri_n_str_dol;;

test_number 9 (
dol_mod
(*: ((string, string, string) Triplet_t.triplet, string)
  Doublet_list_t.doublet_list *)
=
  [(("model", "center_a", "coordinate_what"), "cartesian");
   (("model", "center_a", "coordinate_units_list"), "meter");
   (("model", "center_a", "entity_name"), "a");
   (("model", "center_a", "entity_what"), "point");
   (("model", "center_a", "database_name"), "db1");
   (("model", "center_a", "model_title"), "a point");
   (("model", "center_a", "model_name"), "center_a")]
);;

let dol_pro = Doublet_list_v.filter_if_left (fun tri -> Triplet_v.right_off_triplet tri = "property_nature") str_tri_n_str_dol;;

test_number 10 (
dol_pro 
(* : ((string, string, string) Triplet_t.triplet, string)
   Doublet_list_t.doublet_list *)
  =
  [(("property", "coordinates_a", "property_nature"), "measure")]
);;

let dol_pro = Doublet_list_v.filter_if_left (fun tri -> Triplet_v.right_off_triplet tri = "property_kind") str_tri_n_str_dol;;

test_number 11 (
dol_pro 
(* : ((string, string, string) Triplet_t.triplet, string)
   Doublet_list_t.doublet_list *)
  =
 [(("property", "coordinates_a", "property_kind"), "coordinates_a_2")]
);;

let str_tri = ("model", "center_a", "coordinate_units_list");;
let uni_coo = Parameters_figureset_input_by_string_trio_provider_v.provide str_tri;;

test_number 12 (
uni_coo 
(* : string *)
= 
"meter"
);;

let str_tri = ("coordinates", "coordinates_a_2", "coordinates_units_list");;
let uni_coo = Parameters_figureset_input_by_string_trio_provider_v.provide str_tri;;

test_number 13 (
uni_coo 
(* : string *)
= 
"meter degree"
);;

