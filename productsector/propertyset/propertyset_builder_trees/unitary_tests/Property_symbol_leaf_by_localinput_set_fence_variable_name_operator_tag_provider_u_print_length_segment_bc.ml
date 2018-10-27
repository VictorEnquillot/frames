open Make_test_v;;

testing "Property_symbol_leaf_by_localinput_set_fence_variable_name_operator_tag_provider_v with
        Property_symbol_leaf_by_localinput_set_fence_variable_name_operator_tag_provider_u_print_length_segment_bc.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Property_symbol_leaf_by_localinput_set_fence_variable_name_operator_tag_provider_u_print_length_segment_bc.ml";; 

*)

open Property_symbol_leaf_by_localinput_set_fence_variable_name_operator_tag_provider_v;; 

let nam_ibo = "Print_length_segment_bc";;

let tag_loi_l = Localinput_tag_all_list_by_basicname_inputbox_provider_v.provide nam_ibo;;

let tag_loi_lno = List_v.only_element_of_predicate_off_list
    (fun (s, i) -> Localinput_symbol_v.is_localinput_set_fence_variable_name_operator_constructor s)
    tag_loi_l
;;

test_number 1 (
( tag_loi_lno : Localinput_symbol_t.localinput_symbol Tag_t.tag ) =
  (Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
        (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_operator_symbol
          (Localinput_set_fence_variable_name_operator_symbol_t.Localinput_set_fence_variable_name_operator_constructor
            "Len")))),
   [1; 2; 2; 42; 1; 22; 1])
);;

(* Argument *)

let tag_lno = Localinput_set_fence_variable_name_operator_tag_v.localinput_set_fence_variable_name_operator_tag_off_localinput_tag tag_loi_lno;;

test_number 2 (
( tag_lno :
  Localinput_set_fence_variable_name_operator_symbol_t.localinput_set_fence_variable_name_operator_symbol
    Tag_t.tag ) =
(Localinput_set_fence_variable_name_operator_symbol_t.Localinput_set_fence_variable_name_operator_constructor
   "Len",
 [1; 2; 2; 42; 1; 22; 1])
);;

(* Prerequisites *)

let soi_lno = Tag_v.sole_index_off_tag tag_lno;;

test_number 3 (
(soi_lno : Sole_index_t.sole_index ) = 
[1; 2; 2; 42; 1; 22; 1]
);;

let nam_ibo =
    Localinput_any_category_by_sole_index_extractor_v.localinput_context_inputbox_string_off_off_sole_index
      soi_lno;;

test_number 4 (
(nam_ibo : string ) = 
"Print_length_segment_bc"
);;

let tag_loi_lcd_stl = 
    Localinput_as_set_body_handle_command_creation_define_tag_subtree_list_by_basicname_inputbox_provider_v.provide
      nam_ibo;;

let tag_loi_roo_l = List.map Tree_v.root_off_tree tag_loi_lcd_stl;;

test_number 5 (
( tag_loi_roo_l : Localinput_symbol_t.localinput_symbol Tag_t.tag list ) =
  [(Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_body_symbol
       (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
         (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol
           (Localinput_set_body_handle_command_symbol_t.Localinput_set_body_handle_command_creation_symbol
             (Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_define_symbol
               (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
                 "Con_db1")))))),
    [1; 42; 1; 22; 1]);
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_body_symbol
       (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
         (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol
           (Localinput_set_body_handle_command_symbol_t.Localinput_set_body_handle_command_creation_symbol
             (Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_define_symbol
               (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
                 "Len")))))),
    [2; 42; 1; 22; 1]);
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_body_symbol
       (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
         (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol
           (Localinput_set_body_handle_command_symbol_t.Localinput_set_body_handle_command_creation_symbol
             (Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_define_symbol
               (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
                 "Seg_bc")))))),
    [3; 42; 1; 22; 1]);
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_body_symbol
       (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
         (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol
           (Localinput_set_body_handle_command_symbol_t.Localinput_set_body_handle_command_creation_symbol
             (Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_define_symbol
               (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
                 "Len_bc")))))),
    [4; 42; 1; 22; 1]);
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_body_symbol
       (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
         (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol
           (Localinput_set_body_handle_command_symbol_t.Localinput_set_body_handle_command_creation_symbol
             (Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_define_symbol
               (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
                 "Uni_len")))))),
    [5; 42; 1; 22; 1])]
);;

let sof_ope = Localinput_set_fence_variable_name_operator_tag_v.string_off tag_lno;;

test_number 6 (
(sof_ope : string ) = "Len"
);;

let tag_loi_lbt = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> Localinput_symbol_v.localinput_set_body_box_type_constructor sof_ope = s)
    tag_loi_l
;;

test_number 7 (
( tag_loi_lbt : Localinput_symbol_t.localinput_symbol Tag_t.tag ) =
  (Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_body_symbol
      (Localinput_set_body_symbol_t.Localinput_set_body_box_symbol
        (Localinput_set_body_box_symbol_t.Localinput_set_body_box_type_symbol
          (Localinput_set_body_box_type_symbol_t.Localinput_set_body_box_type_constructor
            "Len")))),
   [1; 2; 2; 2; 2; 42; 1; 22; 1])
);;

let tag_loi_lbt_st = Localinput_tag_subtree_by_localinput_tag_provider_v.provide tag_loi_lbt;;

test_number 8 (
( tag_loi_lbt_st :
  Localinput_symbol_t.localinput_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Localinput_symbol_t.Localinput_set_symbol
      (Localinput_set_symbol_t.Localinput_set_body_symbol
        (Localinput_set_body_symbol_t.Localinput_set_body_box_symbol
          (Localinput_set_body_box_symbol_t.Localinput_set_body_box_type_symbol
            (Localinput_set_body_box_type_symbol_t.Localinput_set_body_box_type_constructor
              "Len")))),
     [1; 2; 2; 2; 2; 42; 1; 22; 1]),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
           (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
             (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_type_symbol
               (Localinput_set_fence_keyword_word_type_symbol_t.Localinput_set_fence_keyword_word_type_constructor
                 "Len"))))),
      [1; 1; 2; 2; 2; 2; 42; 1; 22; 1]);
    Tree_t.Inner
     ((Localinput_symbol_t.Localinput_set_symbol
        (Localinput_set_symbol_t.Localinput_set_body_symbol
          (Localinput_set_body_symbol_t.Localinput_set_body_list_symbol
            (Localinput_set_body_list_symbol_t.Localinput_set_body_list_variable_type_symbol
              (Localinput_set_body_list_variable_type_symbol_t.Localinput_set_body_list_variable_type_constructor
                "Len")))),
       [2; 1; 2; 2; 2; 2; 42; 1; 22; 1]),
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
             (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
               (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                 "operator")))),
        [1; 2; 1; 2; 2; 2; 2; 42; 1; 22; 1]);
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
             (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
               (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                 "set")))),
        [2; 2; 1; 2; 2; 2; 2; 42; 1; 22; 1]);
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
             (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
               (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                 "body")))),
        [3; 2; 1; 2; 2; 2; 2; 42; 1; 22; 1]);
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
             (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
               (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                 "creation")))),
        [4; 2; 1; 2; 2; 2; 2; 42; 1; 22; 1]);
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
             (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
               (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                 "tomeasure")))),
        [5; 2; 1; 2; 2; 2; 2; 42; 1; 22; 1]);
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
             (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
               (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                 "constructor")))),
        [6; 2; 1; 2; 2; 2; 2; 42; 1; 22; 1])])])
);;

let sym_pro_ope = 
    property_as_operator_symbol_of_localinput_as_set_body_box_type_tag_subtree 
      tag_loi_lbt_st;; 

test_number 9 (
(sym_pro_ope : Property_symbol_t.property_symbol ) =
  Property_symbol_t.Property_set_symbol
   (Property_set_symbol_t.Property_set_fence_symbol
     (Property_set_fence_symbol_t.Operator_fence_symbol
       (Operator_fence_symbol_t.Operator_fence_creation_symbol
         (Operator_fence_creation_symbol_t.Operator_fence_creation_tomeasure_symbol
           (Operator_fence_creation_tomeasure_symbol_t.Operator_fence_creation_tomeasure_constructor
             "Len")))))
);;

let sym_pro_f = Tree_v.make_of_leaf sym_pro_ope;;

test_number 10 (
(sym_pro_f : Property_symbol_t.property_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Property_symbol_t.Property_set_symbol
     (Property_set_symbol_t.Property_set_fence_symbol
       (Property_set_fence_symbol_t.Operator_fence_symbol
         (Operator_fence_symbol_t.Operator_fence_creation_symbol
           (Operator_fence_creation_symbol_t.Operator_fence_creation_tomeasure_symbol
             (Operator_fence_creation_tomeasure_symbol_t.Operator_fence_creation_tomeasure_constructor
               "Len"))))))
);;

test_number 11 (
sym_pro_f = provide tag_lno
);;
