open Make_test_v;;

testing "Property_entity_string_trio_by_input_entity_variable_name_provider_v with
    Property_entity_string_trio_by_input_entity_variable_name_provider_u_point_homothety.ml";;

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
   #use "Property_entity_string_trio_by_input_entity_variable_name_provider_u_point_homothety.ml";; 

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

open Property_entity_string_trio_by_input_entity_variable_name_provider_v;;

let nam_iev = "H_b_2";;
 
let sym_ien_pro_t = 
    input_entity_property_entity_subtree_of_input_entity_variable_name 
      nam_iev ;;

test_number 2 (
sym_ien_pro_t 
(* : Input_entity_symbol_t.input_entity_symbol Tree_t.tree *)
  =
  Tree_t.Inner
   (Input_entity_symbol_t.Input_entity_property_symbol
     Input_entity_property_symbol_t.Input_entity_property_entity,
   [Tree_t.Leaf
     (Input_entity_symbol_t.Input_entity_property_symbol
       (Input_entity_property_symbol_t.Input_entity_property_what
         "property_figure_homothety_constructor"));
    Tree_t.Inner
     (Input_entity_symbol_t.Input_entity_property_symbol
       Input_entity_property_symbol_t.Input_entity_property_center,
     [Tree_t.Leaf
       (Input_entity_symbol_t.Input_entity_local_symbol
         (Input_entity_local_symbol_t.Input_entity_local_variable_symbol
           (Input_entity_local_variable_symbol_t.Input_entity_local_variable_free
             "P_bc_b_tag")))]);
    Tree_t.Inner
     (Input_entity_symbol_t.Input_entity_property_symbol
       Input_entity_property_symbol_t.Input_entity_property_scale_factor,
     [Tree_t.Leaf
       (Input_entity_symbol_t.Input_entity_local_symbol
         (Input_entity_local_symbol_t.Input_entity_local_constant_symbol
           (Input_entity_local_constant_symbol_t.Input_entity_local_constant_float
             " 2.0")))]);
    Tree_t.Leaf
     (Input_entity_symbol_t.Input_entity_local_symbol
       (Input_entity_local_symbol_t.Input_entity_local_keyword_symbol
         Input_entity_local_keyword_symbol_t.Input_end))])
);;

(* ---------- Main Test ------------ *)
let wha_ent_pro = string_of_leaf_predicate_off_tree 
      Input_entity_symbol_v.is_input_entity_property_what
      sym_ien_pro_t;;

test_number 3 (
 wha_ent_pro (* : string *) = "property_figure_homothety_constructor"
);;

let sym_ien_pro = Tree_v.node_find_of_node_predicate_off_tree Input_entity_symbol_v.is_input_entity_property_center sym_ien_pro_t;;

let nam_iev_cen = Input_entity_variable_name_by_input_entity_as_property_subentity_symbol_predicate_n_as_variable_name_provider_v.provide (Input_entity_symbol_v.is_input_entity_property_center, nam_iev);;

let sfa_ent_pro = 
    Input_entity_constant_float_by_input_entity_as_property_subentity_symbol_predicate_n_as_variable_name_provider_v.provide 
      (Input_entity_symbol_v.is_input_entity_property_scale_factor, nam_iev);;

let ent_pro_t = Property_entity_string_trio_by_input_entity_variable_name_provider_v.provide nam_iev;;

test_number 4 (
 ent_pro_t
(* : string Trio_t.trio *)
  = 
("property_figure_homothety_constructor", "P_bc_b_tag", " 2.0")
);;

