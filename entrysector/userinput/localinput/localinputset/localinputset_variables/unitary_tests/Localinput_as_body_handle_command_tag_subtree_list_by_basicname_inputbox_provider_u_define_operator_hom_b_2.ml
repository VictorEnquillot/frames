open Make_test_v;;

testing "Localinput_as_body_handle_command_tag_subtree_list_by_basicname_inputbox_provider_v with
    Localinput_as_body_handle_command_tag_subtree_list_by_basicname_inputbox_provider_u_define_operator_hom_b_2.ml";;

(* Deleting Registers *)











(* Tracing *)


(* toplevel 
   #use "Localinput_as_body_handle_command_tag_subtree_list_by_basicname_inputbox_provider_u_define_operator_hom_b_2.ml";; 

*)

(* Input File *)

let bna_ibo = Basicname_v.basicname_inputbox_of_string "Define_operator_hom_b_2";;
let nam_ibo = Localinputbox_name_by_localinput_nameoffile_provider_v.provide nam_ibo;;

open Localinput_as_body_handle_command_tag_subtree_list_by_basicname_inputbox_provider_v;;

let tag_loi_t = Localinput_tag_tree_by_basicname_inputbox_provider_v.provide nam_ibo;;
let tag_loi_l = Localinput_tag_all_list_by_basicname_inputbox_provider_v.provide nam_ibo;;

let tag_loi_com_stl = provide nam_ibo;;

let cou = List.length tag_loi_com_stl;;

test_number 1 (
(cou : int ) = 
1
);;

(* define Hom_b_2 *)
(*        operator  *)
(*          type [ "operator" "transformation" "homothety" ] *)
(* 	    cofactor  *)
(*            cofactor_entity Cen_b  *)
(*            cofactor_basic 2.0  *)
(* 	      end -- cofactor *)
(*          end -- operator *)
(*        end -- define *)

test_number 2 (
(tag_loi_com_stl : Localinput_symbol_t.localinput_symbol Tag_t.tag Tree_t.tree list ) =
[Tree_t.Inner
   ((Localinput_symbol_t.Localinput_body_symbol
       (Localinput_body_symbol_t.Localinput_body_handle_command_symbol
          Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_define),
     [1; 13; 11]),
    [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_fence_symbol
          (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
             (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_operator_symbol
		(Localinput_fence_variable_name_operator_symbol_t.Localinput_fence_variable_name_operator_constructor
		   "Hom_b_2"))),
	[1; 1; 13; 11]);
     
     Tree_t.Inner
       ((Localinput_symbol_t.Localinput_body_symbol
           (Localinput_body_symbol_t.Localinput_body_box_symbol
              Localinput_body_box_symbol_t.Localinput_body_box_type),
         [2; 1; 13; 11]),
	[Tree_t.Leaf
           (Localinput_symbol_t.Localinput_fence_symbol
              (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
		 Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_type),
            [1; 2; 1; 13; 11]);
	 Tree_t.Leaf
           (Localinput_symbol_t.Localinput_fence_symbol
              (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
		 (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
		    (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
                       "operator"))),
            [2; 2; 1; 13; 11]);
	 Tree_t.Leaf
           (Localinput_symbol_t.Localinput_fence_symbol
              (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
		 (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
		    (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
                       "transformation"))),
            [3; 2; 1; 13; 11]);
	 Tree_t.Leaf
           (Localinput_symbol_t.Localinput_fence_symbol
              (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
		 (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
		    (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
                       "homothety"))),
            [4; 2; 1; 13; 11])]);

     Tree_t.Inner
       ((Localinput_symbol_t.Localinput_body_symbol
           (Localinput_body_symbol_t.Localinput_body_expression_symbol
              Localinput_body_expression_symbol_t.Localinput_body_expression_cofactor),
         [3; 1; 13; 11]),
	[Tree_t.Leaf
           (Localinput_symbol_t.Localinput_fence_symbol
              (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
		 (Localinput_fence_cell_symbol_t.Localinput_fence_cell_cofactor_entity_symbol
		    (Localinput_fence_cell_cofactor_entity_symbol_t.Localinput_fence_cell_cofactor_entity_constructor
                       "Cen_b"))),
            [1; 3; 1; 13; 11]);
	 Tree_t.Leaf
           (Localinput_symbol_t.Localinput_fence_symbol
              (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
		 (Localinput_fence_cell_symbol_t.Localinput_fence_cell_cofactor_basic_symbol
		    (Localinput_fence_cell_cofactor_basic_symbol_t.Localinput_fence_cell_cofactor_basic_constructor
                       "2.0"))),
            [2; 3; 1; 13; 11]);
	 Tree_t.Leaf
           (Localinput_symbol_t.Localinput_fence_symbol
              (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
		 Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_end),
            [3; 3; 1; 13; 11])]);
     Tree_t.Leaf
       (Localinput_symbol_t.Localinput_fence_symbol
          (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
             Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_end),
	[4; 1; 13; 11]);
     Tree_t.Leaf
       (Localinput_symbol_t.Localinput_fence_symbol
          (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
             Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_end),
       [5; 1; 13; 11])])]
);;

let pre_tag_bod (s, i) = Localinput_symbol_v.is_localinput_body_symbol_off_localinput_symbol s;;
let pre_tag_bty (s, i) = Localinput_symbol_v.is_localinput_body_box_type s;;
let pre_tag_com (s, i) = Localinput_symbol_v.is_localinput_body_handle_command_symbol_off_localinput_symbol s;;
let pre_tag_def (s, i) = Localinput_symbol_v.is_localinput_body_handle_command_creation_define_constructor s;;
let pre_tag_eco (s, i) = Localinput_symbol_v.is_localinput_body_handle_cofactor s;;
let pre_tag_kty (s, i) = Localinput_symbol_v.is_localinput_fence_keyword_type s;;
let pre_tag_ope (s, i) = Localinput_symbol_v.is_localinput_fence_cell_target_operator_constructor s;;
let pre_tag_pri (s, i) = Localinput_symbol_v.is_localinput_body_handle_command_unit_print_constructor s;;
let pre_tag_vna (s, i) = Localinput_symbol_v.is_localinput_fence_variable_name_symbol_off_localinput_symbol s;;
let pre_tag_com_vna (s, i) = pre_tag_com (s, i) || pre_tag_vna (s, i);;
let pre_tag_sof sof (s, i) = (pre_tag_vna (s, i)) && (Localinput_symbol_v.string_off s = sof);;

let tag_pre_tre t = Tree_v.has_two_nodes_of_node_predicate_of_node_predicate_off_tree pre_tag_kty pre_tag_bty t;;

let tag_loi_bod_l = List.filter pre_tag_bod tag_loi_l;;

test_number 3 (
(tag_loi_bod_l : Localinput_symbol_t.localinput_symbol Tag_t.tag list ) =
  [(Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_command_symbol
       Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_define),
    [1; 13; 11]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_box_symbol
       Localinput_body_box_symbol_t.Localinput_body_box_type),
    [2; 1; 13; 11]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_expression_symbol
       Localinput_body_expression_symbol_t.Localinput_body_expression_cofactor),
    [3; 1; 13; 11])]
);;

let tag_loi_bty_st = Tree_v.subtree_find_of_node_predicate_off_tree pre_tag_bty tag_loi_t;;

test_number 4 (
( tag_loi_bty_st : Localinput_symbol_t.localinput_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Localinput_symbol_t.Localinput_body_symbol
      (Localinput_body_symbol_t.Localinput_body_box_symbol
        Localinput_body_box_symbol_t.Localinput_body_box_type),
     [2; 1; 13; 11]),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
         Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_type),
      [1; 2; 1; 13; 11]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
         (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
           (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
             "operator"))),
      [2; 2; 1; 13; 11]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
         (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
           (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
             "transformation"))),
      [3; 2; 1; 13; 11]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
         (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
           (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
             "homothety"))),
      [4; 2; 1; 13; 11])])
);;


let tag_loi_eco_st = Tree_v.subtree_find_of_node_predicate_off_tree pre_tag_eco tag_loi_t;;

test_number 5 (
( tag_loi_eco_st : Localinput_symbol_t.localinput_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Localinput_symbol_t.Localinput_body_symbol
      (Localinput_body_symbol_t.Localinput_body_expression_symbol
        Localinput_body_expression_symbol_t.Localinput_body_expression_cofactor),
     [3; 1; 13; 11]),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
         (Localinput_fence_cell_symbol_t.Localinput_fence_cell_cofactor_entity_symbol
           (Localinput_fence_cell_cofactor_entity_symbol_t.Localinput_fence_cell_cofactor_entity_constructor
             "Cen_b"))),
      [1; 3; 1; 13; 11]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
         (Localinput_fence_cell_symbol_t.Localinput_fence_cell_cofactor_basic_symbol
           (Localinput_fence_cell_cofactor_basic_symbol_t.Localinput_fence_cell_cofactor_basic_constructor
             "2.0"))),
      [2; 3; 1; 13; 11]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
         Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_end),
      [3; 3; 1; 13; 11])])
);;
