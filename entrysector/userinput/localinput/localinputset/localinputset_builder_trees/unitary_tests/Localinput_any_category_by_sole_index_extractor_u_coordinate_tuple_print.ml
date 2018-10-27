open Make_test_v;;

testing "Localinput_any_category_by_sole_index_extractor_v with
    Localinput_any_category_by_sole_index_extractor_u_coordinate_tuple_print.ml";;

(* Deleting Registers *)

(* Tracing *)

(* Debuging *)

(* toplevel 
   #use "Localinput_any_category_by_sole_index_extractor_u_coordinate_tuple_print.ml";; 

*)

(* Input File *)

let nof_inp = "Print_coordinate_tuple_point_t_a.inp";;
let fno_inp = Localinput_fullnameoffile_by_input_nameoffile_provider_v.provide nof_inp;;


let tag_inp_t = Localinput_tag_tree_by_input_fullnameoffile_provider_v.provide fno_inp;;
let tag_inp_l = Localinput_tag_all_list_by_input_fullnameoffile_provider_v.provide fno_inp;;

let tag_inp_rts_l = Tree_v.root_topson_node_list_off_tree tag_inp_t;;

test_number 1 (
( tag_inp_rts_l : Localinput_symbol_t.input_symbol Tag_t.tag list ) =
  [(Localinput_symbol_t.Localinput_context_symbol
     (Localinput_context_symbol_t.Localinput_context_domain_symbol
       (Localinput_context_domain_symbol_t.Localinput_context_domain_constructor
         "input")),
    [12]);
   (Localinput_symbol_t.Localinput_context_symbol
     (Localinput_context_symbol_t.Localinput_context_file_symbol
       (Localinput_context_file_symbol_t.Localinput_context_file_constructor
         "/home/colonna/sources/ocaml_top/setup/frames/inputset/files/Print_coordinate_tuple_point_t_a.inp")),
    [31; 12])]
);;

let pre_tag_ccd_sof sof (s, i) = (Localinput_symbol_v.input_body_handle_command_creation_define_constructor sof = s);;
let tag_inp_cpr_st = Tree_v.subtree_of_node_predicate_off_tree (pre_tag_ccd_sof "Ctc_a") tag_inp_t;;

test_number 2 (
(tag_inp_cpr_st : Localinput_symbol_t.input_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Localinput_symbol_t.Localinput_body_symbol
      (Localinput_body_symbol_t.Localinput_body_handle_symbol
        (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
          (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
            (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
              (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
                "Ctc_a"))))),
     [2; 31; 12]),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
         (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_command_symbol
           Localinput_fence_keyword_command_symbol_t.Localinput_fence_keyword_command_define)),
      [1; 2; 31; 12]);
    Tree_t.Inner
     ((Localinput_symbol_t.Localinput_body_symbol
        (Localinput_body_symbol_t.Localinput_body_block_symbol
          (Localinput_body_block_symbol_t.Localinput_body_block_define_symbol
            (Localinput_body_block_define_symbol_t.Localinput_body_block_define_constructor
              "Ctc_a"))),
       [2; 2; 31; 12]),
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_fence_symbol
         (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
           (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_entity_symbol
             (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_external_symbol
               (Localinput_fence_variable_name_entity_external_symbol_t.Localinput_fence_variable_name_entity_external_constructor
                 "Ctc_a")))),
        [1; 2; 2; 31; 12]);
      Tree_t.Inner
       ((Localinput_symbol_t.Localinput_body_symbol
          (Localinput_body_symbol_t.Localinput_body_handle_symbol
            (Localinput_body_handle_symbol_t.Localinput_body_handle_variable_kind_symbol
              (Localinput_body_handle_variable_kind_symbol_t.Localinput_body_handle_variable_external_symbol
                (Localinput_body_handle_variable_external_symbol_t.Localinput_body_handle_variable_external_constructor
                  "Ctc_a")))),
         [2; 2; 2; 31; 12]),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_fence_symbol
           (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
             (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_variable_kind_symbol
               Localinput_fence_keyword_variable_kind_symbol_t.Localinput_fence_keyword_variable_kind_external)),
          [1; 2; 2; 2; 31; 12]);
        Tree_t.Inner
         ((Localinput_symbol_t.Localinput_body_symbol
            (Localinput_body_symbol_t.Localinput_body_block_symbol
              (Localinput_body_block_symbol_t.Localinput_body_block_variable_external_symbol
                (Localinput_body_block_variable_external_symbol_t.Localinput_body_block_variable_external_constructor
                  "Ctc_a"))),
           [2; 2; 2; 2; 31; 12]),
         [Tree_t.Inner
           ((Localinput_symbol_t.Localinput_body_symbol
              (Localinput_body_symbol_t.Localinput_body_box_symbol
                (Localinput_body_box_symbol_t.Localinput_body_box_type_symbol
                  (Localinput_body_box_type_symbol_t.Localinput_body_box_type_constructor
                    "Ctc_a"))),
             [1; 2; 2; 2; 2; 31; 12]),
           [Tree_t.Leaf
             (Localinput_symbol_t.Localinput_fence_symbol
               (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
                 (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
                   Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_type)),
              [1; 1; 2; 2; 2; 2; 31; 12]);
            Tree_t.Leaf
             (Localinput_symbol_t.Localinput_fence_symbol
               (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
                 (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
                   (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
                     "elementary"))),
              [2; 1; 2; 2; 2; 2; 31; 12]);
            Tree_t.Leaf
             (Localinput_symbol_t.Localinput_fence_symbol
               (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
                 (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
                   (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
                     "coordinate_tuple"))),
              [3; 1; 2; 2; 2; 2; 31; 12]);
            Tree_t.Leaf
             (Localinput_symbol_t.Localinput_fence_symbol
               (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
                 (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
                   (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
                     "cartesian"))),
              [4; 1; 2; 2; 2; 2; 31; 12]);
            Tree_t.Leaf
             (Localinput_symbol_t.Localinput_fence_symbol
               (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
                 (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
                   (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
                     "constructor"))),
              [5; 1; 2; 2; 2; 2; 31; 12])]);
          Tree_t.Leaf
           (Localinput_symbol_t.Localinput_fence_symbol
             (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
               (Localinput_fence_cell_symbol_t.Localinput_fence_cell_external_name_symbol
                 (Localinput_fence_cell_external_name_symbol_t.Localinput_fence_cell_external_name_constructor
                   "T_A"))),
            [2; 2; 2; 2; 2; 31; 12]);
          Tree_t.Leaf
           (Localinput_symbol_t.Localinput_fence_symbol
             (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
               (Localinput_fence_cell_symbol_t.Localinput_fence_cell_external_context_symbol
                 (Localinput_fence_cell_external_context_symbol_t.Localinput_fence_cell_external_context_constructor
                   "Con_loc"))),
            [3; 2; 2; 2; 2; 31; 12]);
          Tree_t.Leaf
           (Localinput_symbol_t.Localinput_fence_symbol
             (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
               (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
                 Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_end)),
            [4; 2; 2; 2; 2; 31; 12])])]);
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_fence_symbol
         (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
           (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
             Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_end)),
        [3; 2; 2; 31; 12])])])
);;

open Localinput_any_category_by_sole_index_extractor_v;;

let tag_inp_cpr = List_v.only_element_of_predicate_off_list (pre_tag_ccd_sof "Ctc_a") tag_inp_l;;

test_number 3 (
(tag_inp_cpr : Localinput_symbol_t.input_symbol Tag_t.tag ) =
  (Localinput_symbol_t.Localinput_body_symbol
    (Localinput_body_symbol_t.Localinput_body_handle_symbol
      (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
        (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
          (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
            (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
              "Ctc_a"))))),
   [2; 31; 12])
);;

let soi_any = Tag_v.sole_index_off_tag tag_inp_cpr;;

test_number 4 (
(soi_any : Sole_index_t.sole_index ) = 
[2; 31; 12]
);;

let sym_ico = Localinput_any_category_by_sole_index_extractor_v.input_body_handle_command_symbol_off_sole_index soi_any;;

test_number 5 (
(sym_ico : Localinput_body_handle_command_symbol_t.input_body_handle_command_symbol ) =
  Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
   (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
     (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
       "Ctc_a"))
);;

let soi_fat = soi_any;;
let str_pre = "is_input_fence_keyword_word_units" ;;

let soi_n_des_dol = 
    sole_index_n_input_symbol_list_of_string_predicate 
      str_pre;;

test_number 6 (
( soi_n_des_dol : (Sole_index_t.sole_index * Localinput_symbol_t.input_symbol) list ) =
  [([1; 2; 2; 4; 31; 12],
    Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
       (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
         Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_units)))]
);;

let inc_dol =
	Doublet_list_v.filter_if_left       
	    (fun s -> List_v.are_tail_coinciding_of_list_of_list s soi_any) 
	    soi_n_des_dol;;

test_number 7 (
( inc_dol :
  (Sole_index_t.sole_index, Localinput_symbol_t.input_symbol)
  Doublet_list_t.doublet_list ) = 
[]
);;

let soi_n_fss_dol = 
  sole_index_n_input_symbol_list_of_string_predicate 
    str_pre ;;

test_number 8 (
(soi_n_fss_dol : (Sole_index_t.sole_index * Localinput_symbol_t.input_symbol) list ) =
  [([1; 2; 2; 4; 31; 12],
    Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
       (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
         Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_units)))]
);;

let soi_fat = [2; 4; 31; 12] ;;
let str_pre = "is_input_fence_variable_name_entity_implicit_constructor";;

let tag_son_l = son_input_tag_list_of_string_predicate_of_father_sole_index str_pre soi_fat;;

test_number 9 (
(tag_son_l :
  (Localinput_symbol_t.input_symbol, Sole_index_t.sole_index)
  Doublet_list_t.doublet_list ) =
  [(Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
       (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_entity_symbol
         (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_implicit_symbol
           (Localinput_fence_variable_name_entity_implicit_symbol_t.Localinput_fence_variable_name_entity_implicit_constructor
             "Ctc_a")))),
    [1; 2; 4; 31; 12])]
);;

let sym_inp = Localinput_symbol_by_sole_index_provider_v.provide soi_any;;

test_number 10 (
(sym_inp : Localinput_symbol_t.input_symbol ) =
  Localinput_symbol_t.Localinput_body_symbol
   (Localinput_body_symbol_t.Localinput_body_handle_symbol
     (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
       (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
         (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
           (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
             "Ctc_a")))))
);;

let sof_icf = input_context_file_string_off_off_sole_index soi_any;;

test_number 11 (
(sof_icf : string ) =
  "/home/colonna/sources/ocaml_top/setup/frames/inputset/files/Print_coordinate_tuple_point_t_a.inp"
);;

