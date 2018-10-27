open Make_test_v;;

testing "Localinput_as_body_handle_command_tounit_print_or_write_tag_subtree_list_by_basicname_inputbox_provider_v with
    Localinput_as_body_handle_command_tounit_print_or_write_tag_subtree_list_by_basicname_inputbox_provider_u_print.ml";;

(* Deleting Registers *)










(* Tracing *)


(* toplevel 
   #use "Localinput_as_body_handle_command_tounit_print_or_write_tag_subtree_list_by_basicname_inputbox_provider_u_print.ml";; 

*)

(* Input File *)

let nof_inp = "Print_point_a.inp";;
let fno_inp = Localinput_fullnameoffile_by_input_nameoffile_provider_v.provide nof_inp;;

open Localinput_as_body_handle_command_tounit_print_or_write_tag_subtree_list_by_basicname_inputbox_provider_v;;

let pre_tag_ext_sof sof (s, i) = (Localinput_symbol_v.input_fence_variable_name_entity_external_constructor sof = s);;

let pre_tre_pri = Tree_v.has_node_of_node_predicate_off_tree (pre_tag_ext_sof "Poi_a");;

let tag_inp_stl = provide fno_inp;;

let tag_inp_pri_st = List.find pre_tre_pri tag_inp_stl;;

test_number 1 (
(tag_inp_pri_st : Localinput_symbol_t.input_symbol Tag_t.tag Tree_t.tree) =
Tree_t.Inner
    ((Localinput_symbol_t.Localinput_body_symbol
       (Localinput_body_symbol_t.Localinput_body_handle_symbol
         (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
           Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_tounit_print_constructor)),
      [4; 45; 11]),
    [Tree_t.Leaf
      (Localinput_symbol_t.Localinput_fence_symbol
        (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
          (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_command_symbol
            Localinput_fence_keyword_command_symbol_t.Localinput_fence_keyword_command_print)),
       [1; 4; 45; 11]);
     Tree_t.Inner
      ((Localinput_symbol_t.Localinput_body_symbol
         (Localinput_body_symbol_t.Localinput_body_block_symbol
           Localinput_body_block_symbol_t.Localinput_body_block_print),
        [2; 4; 45; 11]),
      [Tree_t.Leaf
        (Localinput_symbol_t.Localinput_fence_symbol
          (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
            (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_entity_symbol
              (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_external_symbol
                (Localinput_fence_variable_name_entity_external_symbol_t.Localinput_fence_variable_name_entity_external_constructor
                  "Poi_a")))),
         [1; 2; 4; 45; 11]);
       Tree_t.Inner
        ((Localinput_symbol_t.Localinput_body_symbol
           (Localinput_body_symbol_t.Localinput_body_box_symbol
             Localinput_body_box_symbol_t.Localinput_body_box_units),
          [2; 2; 4; 45; 11]),
        [Tree_t.Leaf
          (Localinput_symbol_t.Localinput_fence_symbol
            (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
              (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
                Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_units)),
           [1; 2; 2; 4; 45; 11]);
         Tree_t.Leaf
          (Localinput_symbol_t.Localinput_fence_symbol
            (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
              (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_entity_symbol
                (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_external_symbol
                  (Localinput_fence_variable_name_entity_external_symbol_t.Localinput_fence_variable_name_entity_external_constructor
                    "Uni_len")))),
           [2; 2; 2; 4; 45; 11]);
         Tree_t.Leaf
          (Localinput_symbol_t.Localinput_fence_symbol
            (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
              (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_entity_symbol
                (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_external_symbol
                  (Localinput_fence_variable_name_entity_external_symbol_t.Localinput_fence_variable_name_entity_external_constructor
                    "Uni_ang")))),
           [3; 2; 2; 4; 45; 11])]);
       Tree_t.Leaf
        (Localinput_symbol_t.Localinput_fence_symbol
          (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
            (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
              Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_end)),
         [3; 2; 4; 45; 11])])])
);;

