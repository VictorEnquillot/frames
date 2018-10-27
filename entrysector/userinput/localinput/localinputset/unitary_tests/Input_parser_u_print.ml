open Make_test_v;;

testing "Input_parser_v with
    Input_parser_u_print.ml";;

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

(* toplevel 
   #use "Input_parser_u_print.ml";; 

*)

(* Input File *)

let dir_inp ="/keep/sources/ocaml_top/setup/frames/inputset/files/";;
let nof_inp = dir_inp ^ "Print.inp";;
Parameters_general_register_v.store "input-file" nof_inp;;

let fin_inp = Filename_p.filename nof_inp;;

let tag_ien_t = Input_entity_tag_tree_by_input_filename_provider_v.provide fin_inp;;

test_number 1 (
tag_ien_t
(* : Input_entity_tag_t.input_entity_tag Tree_t.tree *)
=
  Tree_t.Inner
   ((Input_entity_symbol_t.Input_entity_local_symbol
      (Input_entity_local_symbol_t.Input_entity_local_calculation
        "/keep/sources/ocaml_top/setup/frames/inputset/files/Print.inp"),
     [1]),
   [Tree_t.Inner
     ((Input_entity_symbol_t.Input_entity_local_symbol
        (Input_entity_local_symbol_t.Input_entity_local_command_symbol
          Input_entity_local_command_symbol_t.Input_command_print),
       [1; 1]),
     [Tree_t.Leaf
       (Input_entity_symbol_t.Input_entity_local_symbol
         (Input_entity_local_symbol_t.Input_entity_local_variable_symbol
           (Input_entity_local_variable_symbol_t.Input_entity_local_variable_free
             "Vec")),
        [1; 1; 1]);
      Tree_t.Leaf
       (Input_entity_symbol_t.Input_entity_local_symbol
         (Input_entity_local_symbol_t.Input_entity_local_keyword_symbol
           Input_entity_local_keyword_symbol_t.Input_end),
        [2; 1; 1])]);
    Tree_t.Inner
     ((Input_entity_symbol_t.Input_entity_local_symbol
        (Input_entity_local_symbol_t.Input_entity_local_command_symbol
          Input_entity_local_command_symbol_t.Input_command_print),
       [2; 1]),
     [Tree_t.Leaf
       (Input_entity_symbol_t.Input_entity_local_symbol
         (Input_entity_local_symbol_t.Input_entity_local_variable_symbol
           (Input_entity_local_variable_symbol_t.Input_entity_local_variable_free
             "S_t")),
        [1; 2; 1]);
      Tree_t.Inner
       ((Input_entity_symbol_t.Input_entity_local_symbol
          (Input_entity_local_symbol_t.Input_entity_local_keyword_symbol
            Input_entity_local_keyword_symbol_t.Input_units),
         [2; 2; 1]),
       [Tree_t.Leaf
         (Input_entity_symbol_t.Input_entity_local_symbol
           (Input_entity_local_symbol_t.Input_entity_local_units_symbol
             (Input_entity_local_units_symbol_t.Input_units_length "meter")),
          [1; 2; 2; 1]);
        Tree_t.Leaf
         (Input_entity_symbol_t.Input_entity_local_symbol
           (Input_entity_local_symbol_t.Input_entity_local_keyword_symbol
             Input_entity_local_keyword_symbol_t.Input_end),
          [2; 2; 2; 1])]);
      Tree_t.Leaf
       (Input_entity_symbol_t.Input_entity_local_symbol
         (Input_entity_local_symbol_t.Input_entity_local_keyword_symbol
           Input_entity_local_keyword_symbol_t.Input_end),
        [3; 2; 1])]);
    Tree_t.Inner
     ((Input_entity_symbol_t.Input_entity_local_symbol
        (Input_entity_local_symbol_t.Input_entity_local_command_symbol
          Input_entity_local_command_symbol_t.Input_command_print),
       [3; 1]),
     [Tree_t.Leaf
       (Input_entity_symbol_t.Input_entity_local_symbol
         (Input_entity_local_symbol_t.Input_entity_local_variable_symbol
           (Input_entity_local_variable_symbol_t.Input_entity_local_variable_free
             "Phi_a")),
        [1; 3; 1]);
      Tree_t.Inner
       ((Input_entity_symbol_t.Input_entity_local_symbol
          (Input_entity_local_symbol_t.Input_entity_local_keyword_symbol
            Input_entity_local_keyword_symbol_t.Input_units),
         [2; 3; 1]),
       [Tree_t.Leaf
         (Input_entity_symbol_t.Input_entity_local_symbol
           (Input_entity_local_symbol_t.Input_entity_local_variable_symbol
             (Input_entity_local_variable_symbol_t.Input_entity_local_variable_free
               "Umd")),
          [1; 2; 3; 1]);
        Tree_t.Leaf
         (Input_entity_symbol_t.Input_entity_local_symbol
           (Input_entity_local_symbol_t.Input_entity_local_keyword_symbol
             Input_entity_local_keyword_symbol_t.Input_end),
          [2; 2; 3; 1])]);
      Tree_t.Leaf
       (Input_entity_symbol_t.Input_entity_local_symbol
         (Input_entity_local_symbol_t.Input_entity_local_keyword_symbol
           Input_entity_local_keyword_symbol_t.Input_end),
        [3; 3; 1])]);
    Tree_t.Inner
     ((Input_entity_symbol_t.Input_entity_local_symbol
        (Input_entity_local_symbol_t.Input_entity_local_command_symbol
          Input_entity_local_command_symbol_t.Input_command_print),
       [4; 1]),
     [Tree_t.Leaf
       (Input_entity_symbol_t.Input_entity_local_symbol
         (Input_entity_local_symbol_t.Input_entity_local_variable_symbol
           (Input_entity_local_variable_symbol_t.Input_entity_local_variable_free
             "Tr_ha")),
        [1; 4; 1]);
      Tree_t.Leaf
       (Input_entity_symbol_t.Input_entity_local_symbol
         (Input_entity_local_symbol_t.Input_entity_local_keyword_symbol
           Input_entity_local_keyword_symbol_t.Input_end),
        [2; 4; 1])]);
    Tree_t.Inner
     ((Input_entity_symbol_t.Input_entity_local_symbol
        (Input_entity_local_symbol_t.Input_entity_local_command_symbol
          Input_entity_local_command_symbol_t.Input_command_print),
       [5; 1]),
     [Tree_t.Leaf
       (Input_entity_symbol_t.Input_entity_local_symbol
         (Input_entity_local_symbol_t.Input_entity_local_keyword_symbol
           Input_entity_local_keyword_symbol_t.Input_statistics),
        [1; 5; 1]);
      Tree_t.Leaf
       (Input_entity_symbol_t.Input_entity_local_symbol
         (Input_entity_local_symbol_t.Input_entity_local_keyword_symbol
           Input_entity_local_keyword_symbol_t.Input_end),
        [2; 5; 1])]);
    Tree_t.Leaf
     (Input_entity_symbol_t.Input_entity_local_symbol
       (Input_entity_local_symbol_t.Input_entity_local_command_symbol
         Input_entity_local_command_symbol_t.Input_command_stop),
      [6; 1])])
);;

