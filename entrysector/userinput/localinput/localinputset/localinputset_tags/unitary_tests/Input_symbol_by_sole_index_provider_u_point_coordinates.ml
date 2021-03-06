open Make_test_v;;

testing "Input_symbol_by_sole_index_provider_v with
   Input_symbol_by_sole_index_provider_u_point_coordinates.ml";;

(* toplevel 
   #use "Input_symbol_by_sole_index_provider_u_point_coordinates.ml";;

*)

(* Deleting Registers *)
Register_v.delete  Common_symbol_by_sole_index_register_v.register;;
Register_v.delete  Debug_by_module_name_register_v.register;;
Register_v.delete  Frames_entity_string_quintet_by_input_entity_variable_name_register_v.register;;
Register_v.delete  Input_entity_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Input_entity_symbol_by_sole_index_register_v.register;;
Register_v.delete  Input_entity_tag_by_input_entity_variable_name_register_v.register;;
Register_v.delete  Input_entity_tag_tree_by_input_entity_tag_register_v.register;;
Register_v.delete  Parameters_figureset_general_register_v.register;;
Register_v.delete  Property_entity_string_trio_by_input_entity_variable_name_register_v.register;;


(* Tracing *)

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
       "center_a_coordinates"),
    [1; 3])]
);;

let tag_mod_ll = List.map Model_tag_list_by_target_tag_provider_v.provide tag_tar_l;;
let tag_mod_l = List.flatten tag_mod_ll;;

test_number 5 (
tag_mod_l 
(* : Model_symbol_t.model_label Tag_t.tag list *)
=
  [(Model_symbol_t.Model_figureset_symbol
     (Model_figureset_symbol_t.Model_figureset_symbol_constructor "center_a"),
    [1; 1; 3])]
);;

let tag_mod = (List.nth tag_mod_l 0);;
let soi_mod = Tag_v.sole_index_off_tag tag_mod;; 

let tag_dom = Common_symbol_by_sole_index_extractor_v.domain_tag_off_sole_index soi_mod;;

test_number 6 (
 tag_dom 
(* : Domain_symbol_t.domain_symbol Tag_t.tag *)
=
  (Domain_symbol_t.Figure, [3])
);;

Input_symbol_by_sole_index_register_v.dump ();;

let tag_tar = Input_symbol_by_sole_index_extractor_v.target_tag_off_sole_index soi_mod;;

test_number 7 (
tag_tar
(* : Target_symbol_t.target_symbol Tag_t.tag *)
 =
(Target_symbol_t.Target_figureset_symbol
  (Target_figureset_symbol_t.Target_figureset_symbol_constructor
    "center_a_coordinates"),
 [1; 3])
);;

test_number 8 (
tag_mod
(* : Target_symbol_t.target_symbol Tag_t.tag *)
 =
Input_symbol_by_sole_index_extractor_v.model_tag_off_sole_index soi_mod
);;

let str = (Parameters_figureset_input_by_string_trio_register_v.dump ());;
Format.fprintf Format.std_formatter "%s@." str;;


