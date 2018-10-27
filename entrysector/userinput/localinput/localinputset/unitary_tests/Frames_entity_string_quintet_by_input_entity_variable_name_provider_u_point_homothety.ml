open Make_test_v;;

testing "Frames_entity_string_quintet_by_input_entity_variable_name_provider_v with
    Frames_entity_string_quintet_by_input_entity_variable_name_provider_u_point_homothety.ml";;


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
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Frames_entity_string_quintet_by_input_entity_variable_name_provider_u_point_homothety.ml";; 

*)

(* Input File *)

let dir_inp ="/keep/sources/ocaml_top/setup/frames/inputset/files/";;
let nof_inp = dir_inp ^ "Point_homothety.inp";;
Parameters_general_register_v.store "input-file" nof_inp;;

let fin_inp = Filename_p.filename nof_inp;;

let nam_iev_l = Input_entity_as_local_variable_free_defined_tag_list_by_input_filename_provider_v.provide fin_inp;;

test_number 1 (
 nam_iev_l
(* : Input_entity_symbol_t.input_entity_symbol Tag_t.tag list *)
=
  [(Input_entity_symbol_t.Input_entity_local_symbol
     (Input_entity_local_symbol_t.Input_entity_local_variable_symbol
       (Input_entity_local_variable_symbol_t.Input_entity_local_variable_free
         "P_bc_b_tag")),
    [1; 1; 1]);
   (Input_entity_symbol_t.Input_entity_local_symbol
     (Input_entity_local_symbol_t.Input_entity_local_variable_symbol
       (Input_entity_local_variable_symbol_t.Input_entity_local_variable_free
         "P_t_a_tag")),
    [1; 2; 1]);
   (Input_entity_symbol_t.Input_entity_local_symbol
     (Input_entity_local_symbol_t.Input_entity_local_variable_symbol
       (Input_entity_local_variable_symbol_t.Input_entity_local_variable_free
         "H_b_2")),
    [1; 3; 1]);
   (Input_entity_symbol_t.Input_entity_local_symbol
     (Input_entity_local_symbol_t.Input_entity_local_variable_symbol
       (Input_entity_local_variable_symbol_t.Input_entity_local_variable_free
         "P_h_val")),
    [1; 4; 1])]
);;

let nam_iev = "P_bc_b_tag";;
let ent_fra_q = Frames_entity_string_quintet_by_input_entity_variable_name_provider_v.provide nam_iev;;

test_number 2 (
 ent_fra_q 
(* : string Quatuor_t.quatuor *)
  =
("BC_B", "figure_point_constructor", "tag", "db1", "figure")
);;

let cat_n_dom = Frames_entity_category_n_domain_by_input_entity_variable_name_provider_v.provide nam_iev;;

test_number 3 (
cat_n_dom
(* : string Duo_t.duo *)
= 
("tag", "figure")
);;
