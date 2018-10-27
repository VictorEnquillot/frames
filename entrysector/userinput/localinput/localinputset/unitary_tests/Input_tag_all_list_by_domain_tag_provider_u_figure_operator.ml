open Make_test_v;;

testing "Input_tag_all_list_by_domain_tag_provider_v with
   Input_tag_all_list_by_domain_tag_provider_u_figure_operator.ml";;

(* toplevel 
   #use "Input_tag_all_list_by_domain_tag_provider_u_figure_operator.ml";;

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

Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
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
let nam_fil = Filename_p.filename nof_inp;;
Parameters_general_register_v.store "input-file" nof_inp;;

test_number 2 (
nam_fil
=
Input_filename_by_domain_tag_provider_v.provide tag_dom
);;

  let tag_tar_l = Target_tag_list_by_domain_tag_provider_v.provide tag_dom;;
  let tag_inp_tar_l = List.map 
      (Tag_v.map_entity (* coerce up *)
	 Input_symbol_v.input_symbol_of_target_symbol) 
      tag_tar_l
 ;;
  let tag_mod_l = List.flatten 
      (List.map 
	 Model_tag_list_by_target_tag_provider_v.provide 
	 tag_tar_l)
 ;;
  let tag_inp_mod_l = List.map
      (Tag_v.map_entity (* coerce up *)
	 Input_symbol_v.input_symbol_of_model_symbol)
      tag_mod_l
 ;;

  let tag_inp_l = tag_inp_tar_l @ tag_inp_mod_l;;
  let sym_inp_l = Doublet_list_v.left_list_off_doublet_list tag_inp_l;;

let tag_inp_l = Input_tag_all_list_by_domain_tag_provider_v.provide tag_dom;;

test_number 3 (
tag_inp_l 
(* : Input_symbol_t.input_symbol Tag_t.tag list *)
=
  [(Input_symbol_t.Target_symbol
     (Target_symbol_t.Target_figureset_symbol
       (Target_figureset_symbol_t.Target_figureset_symbol_constructor
         "triangle_equilateral_homothety")),
    [1; 3]);
   (Input_symbol_t.Target_symbol
     (Target_symbol_t.Target_figureset_symbol
       (Target_figureset_symbol_t.Target_figureset_symbol_constructor
         "triangle_equilateral_translation")),
    [2; 3]);
   (Input_symbol_t.Model_symbol
     (Model_symbol_t.Model_figureset_symbol
       (Model_figureset_symbol_t.Model_figureset_symbol_constructor
         "triangle_equilateral_t")),
    [1; 1; 3]);
   (Input_symbol_t.Model_symbol
     (Model_symbol_t.Model_figureset_symbol
       (Model_figureset_symbol_t.Model_figureset_symbol_constructor
         "triangle_equilateral_t")),
    [1; 2; 3])]
);;
