open Make_test_v;;

testing "Basicname_databox_by_basicname_variable_context_n_basicname_inputbox_provider_v
        Basicname_databox_by_basicname_variable_context_n_basicname_inputbox_provider_u_print_point_a.ml";;

(* Deleting Registers *)

(* Tracing *)

(* define Con_a *)
(*        context *)
(*          databox "Point_a" *)
(*          database "db1points" *)
(*          domain "figure" *)
(*          sector "internal" *)
(*          end -- context *)
(*        end -- define *)

(* toplevel 
   #use "Basicname_databox_by_basicname_variable_context_n_basicname_inputbox_provider_u_print_point_a.ml";;

*)

open Basicname_databox_by_basicname_variable_context_n_basicname_inputbox_provider_v;;

let nam_var_con = "Con_a";;
let bna_var_con = Basicname_v.basicname_variable_context_of_string nam_var_con;;

let nam_ibo = "Print_point_a";;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;; 
  
let bna_var = Basicname_v.basicname_variable_of_basicname_variable_context bna_var_con;;

test_number 1 (
(bna_var : Basicname_t.basicname ) = 
Basicname_t.Variable "Con_a"
);;

let tag_loi_lcd_st = 
  Localinput_as_set_body_handle_command_creation_define_tag_subtree_by_basicname_variable_n_basicname_inputbox_provider_v.provide
    (bna_var, bna_ibo);;

test_number 2 (
(tag_loi_lcd_st : Localinput_symbol_t.localinput_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Localinput_symbol_t.Localinput_set_symbol
      (Localinput_set_symbol_t.Localinput_set_body_symbol
        (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
          (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol
            (Localinput_set_body_handle_command_symbol_t.Localinput_set_body_handle_command_creation_symbol
              (Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_define_symbol
                (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
                  "Con_a")))))),
     [1; 46; 1; 22; 1]),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
           (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_command_symbol
             (Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_define_symbol
               (Localinput_set_fence_keyword_command_define_symbol_t.Localinput_set_fence_keyword_command_define_constructor
                 "Con_a"))))),
      [1; 1; 46; 1; 22; 1]);
    Tree_t.Inner
     ((Localinput_symbol_t.Localinput_set_symbol
        (Localinput_set_symbol_t.Localinput_set_body_symbol
          (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
            (Localinput_set_body_block_symbol_t.Localinput_set_body_block_define_symbol
              (Localinput_set_body_block_define_symbol_t.Localinput_set_body_block_define_constructor
                "Con_a")))),
       [2; 1; 46; 1; 22; 1]),
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
             (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_context_symbol
               (Localinput_set_fence_variable_name_context_symbol_t.Localinput_set_fence_variable_name_context_constructor
                 "Con_a")))),
        [1; 2; 1; 46; 1; 22; 1]);
      Tree_t.Inner
       ((Localinput_symbol_t.Localinput_set_symbol
          (Localinput_set_symbol_t.Localinput_set_body_symbol
            (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
              (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_variable_kind_symbol
                (Localinput_set_body_handle_variable_kind_symbol_t.Localinput_set_body_handle_variable_context_symbol
                  (Localinput_set_body_handle_variable_context_symbol_t.Localinput_set_body_handle_variable_context_constructor
                    "Con_a"))))),
         [2; 2; 1; 46; 1; 22; 1]),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_set_symbol
           (Localinput_set_symbol_t.Localinput_set_fence_symbol
             (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_kind_symbol
               (Localinput_set_fence_variable_kind_symbol_t.Localinput_set_fence_variable_kind_context_symbol
                 (Localinput_set_fence_variable_kind_context_symbol_t.Localinput_set_fence_variable_kind_context_constructor
                   "Con_a")))),
          [1; 2; 2; 1; 46; 1; 22; 1]);
        Tree_t.Inner
         ((Localinput_symbol_t.Localinput_set_symbol
            (Localinput_set_symbol_t.Localinput_set_body_symbol
              (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
                (Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_external_symbol
                  (Localinput_set_body_block_variable_external_symbol_t.Localinput_set_body_block_variable_external_constructor
                    "Point_a")))),
           [2; 2; 2; 1; 46; 1; 22; 1]),
         [Tree_t.Leaf
           (Localinput_symbol_t.Localinput_set_symbol
             (Localinput_set_symbol_t.Localinput_set_fence_symbol
               (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
                 (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_database_symbol
                   (Localinput_set_fence_cell_database_symbol_t.Localinput_set_fence_cell_database_constructor
                     "Point_a")))),
            [1; 2; 2; 2; 1; 46; 1; 22; 1]);
          Tree_t.Leaf
           (Localinput_symbol_t.Localinput_set_symbol
             (Localinput_set_symbol_t.Localinput_set_fence_symbol
               (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
                 (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_database_symbol
                   (Localinput_set_fence_cell_database_symbol_t.Localinput_set_fence_cell_database_constructor
                     "db1points")))),
            [2; 2; 2; 2; 1; 46; 1; 22; 1]);
          Tree_t.Leaf
           (Localinput_symbol_t.Localinput_set_symbol
             (Localinput_set_symbol_t.Localinput_set_fence_symbol
               (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
                 (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_domain_symbol
                   (Localinput_set_fence_cell_domain_symbol_t.Localinput_set_fence_cell_domain_constructor
                     "figure")))),
            [3; 2; 2; 2; 1; 46; 1; 22; 1]);
          Tree_t.Leaf
           (Localinput_symbol_t.Localinput_set_symbol
             (Localinput_set_symbol_t.Localinput_set_fence_symbol
               (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
                 (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_sector_symbol
                   (Localinput_set_fence_cell_sector_symbol_t.Localinput_set_fence_cell_sector_constructor
                     "internal")))),
            [4; 2; 2; 2; 1; 46; 1; 22; 1]);
          Tree_t.Leaf
           (Localinput_symbol_t.Localinput_set_symbol
             (Localinput_set_symbol_t.Localinput_set_fence_symbol
               (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
                 (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
                   (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_end_symbol
                     (Localinput_set_fence_keyword_word_end_symbol_t.Localinput_set_fence_keyword_word_end_constructor
                       "context"))))),
            [5; 2; 2; 2; 1; 46; 1; 22; 1])])]);
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
             (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
               (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_end_symbol
                 (Localinput_set_fence_keyword_word_end_symbol_t.Localinput_set_fence_keyword_word_end_constructor
                   "define"))))),
        [3; 2; 1; 46; 1; 22; 1])])])
);;

let tag_loi_dbo = Tree_v.only_node_of_node_predicate_off_tree
    (fun (s, i) -> 
      Localinput_symbol_v.is_localinput_set_fence_cell_databox_symbol_off_localinput_symbol s)
    tag_loi_lcd_st 
;;
 
test_number 2 (
 (tag_loi_dbo : Localinput_symbol_t.localinput_symbol Tag_t.tag ) =
 (Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
          (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_databox_symbol
             (Localinput_set_fence_cell_databox_symbol_t.Localinput_set_fence_cell_databox_constructor
		"segment_BC")))),
  [1; 2; 2; 2; 1; 42; 1; 22; 1])
);;
  
let sof_loi_dbo = Localinput_tag_v.string_off tag_loi_dbo;;

test_number 3 (
(sof_loi_dbo : string) = 
Localinput_tag_v.string_off tag_loi_dbo
);;

let bna_dbo = Basicname_v.basicname_databox_of_string sof_loi_dbo;;

test_number 4 (
(bna_dbo : Basicname_t.basicname ) = 
Basicname_t.Databox "segment_BC"
);;

test_number 5 (
bna_dbo = provide (bna_var_con, bna_ibo)
);;
