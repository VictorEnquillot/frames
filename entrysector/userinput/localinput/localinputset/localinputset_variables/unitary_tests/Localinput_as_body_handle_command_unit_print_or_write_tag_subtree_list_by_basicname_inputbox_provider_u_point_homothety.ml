open Make_test_v;;

testing "Localinput_as_body_handle_command_unit_print_or_write_tag_subtree_list_by_basicname_inputbox_provider_v with
    Localinput_as_body_handle_command_unit_print_or_write_tag_subtree_list_by_basicname_inputbox_provider_u_point_homothety.ml";;

(* Deleting Registers *)










(* Tracing *)


(* toplevel 
   #use "Localinput_as_body_handle_command_unit_print_or_write_tag_subtree_list_by_basicname_inputbox_provider_u_point_homothety.ml";; 

*)

(* Input File *)

let bna_ibo = Basicname_v.basicname_inputbox_of_string "Print_homothety_point_a";;
let nam_ibo = Localinputbox_name_by_localinput_nameoffile_provider_v.provide nam_ibo;;

open Localinput_as_body_handle_command_unit_print_or_write_tag_subtree_list_by_basicname_inputbox_provider_v;;

let pre_tag_bod (s, i) = Localinput_symbol_v.is_localinput_body_symbol_off_localinput_symbol s;;
let pre_tag_bty (s, i) = Localinput_symbol_v.is_localinput_body_box_type s;;
let pre_tag_com (s, i) = Localinput_symbol_v.is_localinput_body_handle_command_symbol_off_localinput_symbol s;;
let pre_tag_def (s, i) = Localinput_symbol_v.is_localinput_body_handle_command_creation_define_constructor s;;
let pre_tag_hco (s, i) = Localinput_symbol_v.is_localinput_body_handle_cofactor s;;
let pre_tag_ope (s, i) = Localinput_symbol_v.is_localinput_fence_cell_target_operator_constructor s;;
let pre_tag_tar (s, i) = Localinput_symbol_v.is_localinput_fence_variable_name_entity_target_constructor s;;
let pre_tag_tar_sof sof (s, i) = (Localinput_symbol_v.localinput_fence_variable_name_entity_target_constructor sof = s);;

let pre_tag_pri (s, i) = Localinput_symbol_v.is_localinput_body_handle_command_unit_print_constructor s;;
let pre_tag_vna (s, i) = Localinput_symbol_v.is_localinput_fence_variable_name_symbol_off_localinput_symbol s;;

let pre_tag_com_vna (s, i) = pre_tag_com (s, i) || pre_tag_vna (s, i);;
let pre_tag_sof sof (s, i) = (pre_tag_vna (s, i)) && (Localinput_symbol_v.string_off s = sof);;


let pre_tre_pri = Tree_v.has_node_of_node_predicate_off_tree Localinput_symbol_v.is_localinput_body_handle_command_unit_print_constructor;;

let pre_tre_pri = Tree_v.has_node_of_node_predicate_off_tree (pre_tag_tar_sof "Poi_h");;

let tag_loi_stl = provide nam_ibo;;

let tag_loi_pri_st = List.find pre_tre_pri tag_loi_stl;;

test_number 1 (
(tag_loi_pri_st : Localinput_symbol_t.localinput_symbol Tag_t.tag Tree_t.tree) =
  Tree_t.Inner
    ((Localinput_symbol_t.Localinput_body_symbol
       (Localinput_body_symbol_t.Localinput_body_handle_symbol
         (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
           Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_unit_print_constructor)),
      [9; 38; 11]),
    [Tree_t.Leaf
      (Localinput_symbol_t.Localinput_fence_symbol
        (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
          (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_command_symbol
            Localinput_fence_keyword_command_symbol_t.Localinput_fence_keyword_command_print)),
       [1; 9; 38; 11]);
     Tree_t.Inner
      ((Localinput_symbol_t.Localinput_body_symbol
         (Localinput_body_symbol_t.Localinput_body_block_symbol
           Localinput_body_block_symbol_t.Localinput_body_block_print),
        [2; 9; 38; 11]),
      [Tree_t.Leaf
        (Localinput_symbol_t.Localinput_fence_symbol
          (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
            (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_entity_symbol
              (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_target_symbol
                (Localinput_fence_variable_name_entity_target_symbol_t.Localinput_fence_variable_name_entity_target_constructor
                  "Poi_h")))),
         [1; 2; 9; 38; 11]);
       Tree_t.Inner
        ((Localinput_symbol_t.Localinput_body_symbol
           (Localinput_body_symbol_t.Localinput_body_box_symbol
             Localinput_body_box_symbol_t.Localinput_body_box_units),
          [2; 2; 9; 38; 11]),
        [Tree_t.Leaf
          (Localinput_symbol_t.Localinput_fence_symbol
            (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
              (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
                Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_units)),
           [1; 2; 2; 9; 38; 11]);
         Tree_t.Leaf
          (Localinput_symbol_t.Localinput_fence_symbol
            (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
              (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_entity_symbol
                (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_external_symbol
                  (Localinput_fence_variable_name_entity_external_symbol_t.Localinput_fence_variable_name_entity_external_constructor
                    "Uni_len")))),
           [2; 2; 2; 9; 38; 11]);
         Tree_t.Leaf
          (Localinput_symbol_t.Localinput_fence_symbol
            (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
              (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_entity_symbol
                (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_external_symbol
                  (Localinput_fence_variable_name_entity_external_symbol_t.Localinput_fence_variable_name_entity_external_constructor
                    "Uni_ang")))),
           [3; 2; 2; 9; 38; 11])]);
       Tree_t.Leaf
        (Localinput_symbol_t.Localinput_fence_symbol
          (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
            (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
              Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_end)),
         [3; 2; 9; 38; 11])])])
);;

