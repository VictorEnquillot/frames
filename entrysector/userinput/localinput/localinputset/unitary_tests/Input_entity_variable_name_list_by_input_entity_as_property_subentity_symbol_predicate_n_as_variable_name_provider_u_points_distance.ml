open Make_test_v;;

testing "Input_entity_variable_name_list_by_input_entity_as_property_subentity_symbol_predicate_n_as_variable_name_provider_v with
    Input_entity_variable_name_list_by_input_entity_as_property_subentity_symbol_predicate_n_as_variable_name_provider_u_points_distance.ml";;

(* toplevel 
   #use "Input_entity_variable_name_list_by_input_entity_as_property_subentity_symbol_predicate_n_as_variable_name_provider_u_points_distance.ml";; 

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
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* Input File *)

let dir_inp ="/keep/sources/ocaml_top/setup/frames/inputset/files/";;
let nof_inp = dir_inp ^ "Points_distance.inp";;
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
         "P_bc_c_tag")),
    [1; 2; 1]);
   (Input_entity_symbol_t.Input_entity_local_symbol
     (Input_entity_local_symbol_t.Input_entity_local_variable_symbol
       (Input_entity_local_variable_symbol_t.Input_entity_local_variable_free
         "L_bc")),
    [1; 3; 1])]
);;

let nam_iev = "L_bc";;
let tag_ien_pro_st = Input_entity_as_property_entity_tag_subtree_by_input_entity_variable_name_provider_v.provide nam_iev;;

test_number 2 (
tag_ien_pro_st
(* : Input_entity_symbol_t.input_entity_symbol Tree_t.tree list *)
=
 Tree_t.Inner
   ((Input_entity_symbol_t.Input_entity_property_symbol
      Input_entity_property_symbol_t.Input_entity_property_entity,
     [1; 2; 3; 1]),
   [Tree_t.Leaf
     (Input_entity_symbol_t.Input_entity_property_symbol
       (Input_entity_property_symbol_t.Input_entity_property_what "distance"),
      [1; 1; 2; 3; 1]);
    Tree_t.Inner
     ((Input_entity_symbol_t.Input_entity_property_symbol
        Input_entity_property_symbol_t.Input_entity_property_over,
       [2; 1; 2; 3; 1]),
     [Tree_t.Leaf
       (Input_entity_symbol_t.Input_entity_local_symbol
         (Input_entity_local_symbol_t.Input_entity_local_variable_symbol
           (Input_entity_local_variable_symbol_t.Input_entity_local_variable_free
             "P_bc_b_tag")),
        [1; 2; 1; 2; 3; 1]);
      Tree_t.Leaf
       (Input_entity_symbol_t.Input_entity_local_symbol
         (Input_entity_local_symbol_t.Input_entity_local_variable_symbol
           (Input_entity_local_variable_symbol_t.Input_entity_local_variable_free
             "P_bc_c_tag")),
        [2; 2; 1; 2; 3; 1]);
      Tree_t.Leaf
       (Input_entity_symbol_t.Input_entity_local_symbol
         (Input_entity_local_symbol_t.Input_entity_local_keyword_symbol
           Input_entity_local_keyword_symbol_t.Input_end),
        [3; 2; 1; 2; 3; 1])]);
    Tree_t.Leaf
     (Input_entity_symbol_t.Input_entity_local_symbol
       (Input_entity_local_symbol_t.Input_entity_local_keyword_symbol
         Input_entity_local_keyword_symbol_t.Input_end),
      [3; 1; 2; 3; 1])])
);;

open Input_entity_variable_name_list_by_input_entity_as_property_subentity_symbol_predicate_n_as_variable_name_provider_v;;

let sym_sub_pre = Input_entity_symbol_v.is_input_entity_property_over;;
let tag_ien_sub_st =
    input_entity_as_property_subentity_tag_tree_of_subpredicate_input_entity_variable_name
      sym_sub_pre
      nam_iev;;

test_number 3 (
tag_ien_sub_st 
(* : Input_entity_symbol_t.input_entity_symbol Tag_t.tag Tree_t.tree *)
=
  Tree_t.Inner
   ((Input_entity_symbol_t.Input_entity_property_symbol
      Input_entity_property_symbol_t.Input_entity_property_over,
     [2; 1; 2; 3; 1]),
   [Tree_t.Leaf
     (Input_entity_symbol_t.Input_entity_local_symbol
       (Input_entity_local_symbol_t.Input_entity_local_variable_symbol
         (Input_entity_local_variable_symbol_t.Input_entity_local_variable_free
           "P_bc_b_tag")),
      [1; 2; 1; 2; 3; 1]);
    Tree_t.Leaf
     (Input_entity_symbol_t.Input_entity_local_symbol
       (Input_entity_local_symbol_t.Input_entity_local_variable_symbol
         (Input_entity_local_variable_symbol_t.Input_entity_local_variable_free
           "P_bc_c_tag")),
      [2; 2; 1; 2; 3; 1]);
    Tree_t.Leaf
     (Input_entity_symbol_t.Input_entity_local_symbol
       (Input_entity_local_symbol_t.Input_entity_local_keyword_symbol
         Input_entity_local_keyword_symbol_t.Input_end),
      [3; 2; 1; 2; 3; 1])])
);;

let sym_ien_sub_st = Tree_v.map Tag_v.entity_off_tag tag_ien_sub_st;;

let nam_iev_ove_l = string_list_of_topson_leaf_predicate_off_symbol_tree
    Input_entity_symbol_v.is_input_entity_local_variable_free 
    sym_ien_sub_st;;

test_number 4 (
nam_iev_ove_l 
(* : string *)
=
["P_bc_b_tag"; "P_bc_c_tag"]
);;

let nam_iev_ove_l = Input_entity_variable_name_list_by_input_entity_as_property_subentity_symbol_predicate_n_as_variable_name_provider_v.provide (sym_sub_pre, nam_iev);;

test_number 5 (
nam_iev_ove_l
(* : string *)
=
["P_bc_b_tag"; "P_bc_c_tag"]
);;
