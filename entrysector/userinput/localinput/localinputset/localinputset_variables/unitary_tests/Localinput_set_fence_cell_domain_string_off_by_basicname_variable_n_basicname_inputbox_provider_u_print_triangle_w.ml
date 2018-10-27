open Make_test_v;;

testing "Localinput_set_fence_cell_domain_string_off_by_basicname_variable_n_basicname_inputbox_provider_v with
        Localinput_set_fence_cell_domain_string_off_by_basicname_variable_n_basicname_inputbox_provider_u_print_triangle_w.ml";;

(* define Con_bc *)
(*        context *)
(*          databox "segment_BC" *)
(*          database "db1points" *)
(*          domain "figure" *)
(*          sector "internal" *)
(*          end -- context *)
(*        end -- define *)

(* define Ope_len *)
(*        operator  *)
(*          type [ "operator" "set" "body" "creation" "tomeasure" "constructor"] *)
(*          operation "length" *)
(*          ondomain "figure"   *)
(*          end -- operator *)
(*        end -- define *)

(* define Seg_bc *)
(*        external  *)
(*          type [ "figure" "set" "body" "segment" "constructor" ] *)
(*          external_name "BC" *)
(*          external_context Con_bc *)
(*          end -- external *)
(*        end -- define *)

(* define Len_bc *)
(*        target  *)
(*          type [ "property" "operand" "body" "target" "measured" "constructor" ] *)
(*          target_operator Ope_len *)
(*          target_operand Seg_bc *)
(*          end -- target *)
(*        end -- define *)

(* define Uni_len *)
(*        external  *)
(*          type [ "units" "length" "bohr" ] *)
(*          end -- external *)
(*        end -- define *)

(* print Len_bc *)
(*       units [ Uni_len ] *)
(*       end -- print *)

(* stop *)


(* Deleting Registers *)


(* Tracing *)

(* toplevel 
   #use "Localinput_set_fence_cell_domain_string_off_by_basicname_variable_n_basicname_inputbox_provider_u_print_triangle_w.ml";; 

*)

open Localinput_set_fence_cell_domain_string_off_by_basicname_variable_n_basicname_inputbox_provider_v;;

let nam_var = "Seg_bc";;
let bna_var = Basicname_v.basicname_variable_of_string nam_var;;
let nam_ibo = "Print_length_segment_bc";;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;

let tag_lne_l = 
    Localinput_set_fence_variable_name_entity_tag_list_by_basicname_inputbox_provider_v.provide
      bna_ibo;;

test_number 1 (
(tag_lne_l :
  Localinput_set_fence_variable_name_entity_symbol_t.localinput_set_fence_variable_name_entity_symbol
  Tag_t.tag list ) =
  [(Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol
     (Localinput_set_fence_variable_name_entity_external_symbol_t.Localinput_set_fence_variable_name_entity_external_constructor
       "Seg_bc"),
    [1; 2; 3; 42; 1; 22; 1]);
   (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_target_symbol
     (Localinput_set_fence_variable_name_entity_target_symbol_t.Localinput_set_fence_variable_name_entity_target_constructor
       "Len_bc"),
    [1; 2; 4; 42; 1; 22; 1]);
   (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol
     (Localinput_set_fence_variable_name_entity_external_symbol_t.Localinput_set_fence_variable_name_entity_external_constructor
       "Uni_len"),
    [1; 2; 5; 42; 1; 22; 1]);
   (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_target_symbol
     (Localinput_set_fence_variable_name_entity_target_symbol_t.Localinput_set_fence_variable_name_entity_target_constructor
       "Len_bc"),
    [1; 2; 6; 42; 1; 22; 1]);
   (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol
     (Localinput_set_fence_variable_name_entity_external_symbol_t.Localinput_set_fence_variable_name_entity_external_constructor
       "Uni_len"),
    [1; 2; 2; 2; 6; 42; 1; 22; 1])]
);;

let tag_lne = List_v.only_element_of_predicate_off_list 
      (fun (s, i) -> 
	(Localinput_set_fence_variable_name_entity_symbol_v.is_localinput_set_fence_variable_name_entity_external_symbol_off_localinput_set_fence_variable_name_entity_symbol s) )
      
      tag_lne_l;;

let sof = "Con_hom";;

let pre_tre_sof sof t = Localinput_tag_v.string_off (Tree_v.root_off_tree t)  = sof;; 
let tag_loi_lhc_Con_hom = List_v.only_element_of_predicate_off_list 
    (pre_tre_sof sof)
    tag_loi_lhc_stl;;

test_number 2 (
(tag_loi_lhc_Con_hom :
  Localinput_symbol_t.localinput_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Localinput_symbol_t.Localinput_body_symbol
      (Localinput_body_symbol_t.Localinput_body_handle_symbol
        (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
          (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
            (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
              (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
                "Con_hom"))))),
     [2; 38; 1; 21; 1]),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
         (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_command_symbol
           (Localinput_fence_keyword_command_symbol_t.Localinput_fence_keyword_command_define_symbol
             (Localinput_fence_keyword_command_define_symbol_t.Localinput_fence_keyword_command_define_constructor
               "Con_hom")))),
      [1; 2; 38; 1; 21; 1]);
    Tree_t.Inner
     ((Localinput_symbol_t.Localinput_body_symbol
        (Localinput_body_symbol_t.Localinput_body_block_symbol
          (Localinput_body_block_symbol_t.Localinput_body_block_define_symbol
            (Localinput_body_block_define_symbol_t.Localinput_body_block_define_constructor
              "Con_hom"))),
       [2; 2; 38; 1; 21; 1]),
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_fence_symbol
         (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
           (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_context_symbol
             (Localinput_fence_variable_name_context_symbol_t.Localinput_fence_variable_name_context_constructor
               "Con_hom"))),
        [1; 2; 2; 38; 1; 21; 1]);
      Tree_t.Inner
       ((Localinput_symbol_t.Localinput_body_symbol
          (Localinput_body_symbol_t.Localinput_body_handle_symbol
            (Localinput_body_handle_symbol_t.Localinput_body_handle_variable_kind_symbol
              (Localinput_body_handle_variable_kind_symbol_t.Localinput_body_handle_variable_context_symbol
                (Localinput_body_handle_variable_context_symbol_t.Localinput_body_handle_variable_context_constructor
                  "Con_hom")))),
         [2; 2; 2; 38; 1; 21; 1]),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_fence_symbol
           (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
             (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_variable_kind_symbol
               (Localinput_fence_keyword_variable_kind_symbol_t.Localinput_fence_keyword_variable_kind_context_symbol
                 (Localinput_fence_keyword_variable_kind_context_symbol_t.Localinput_fence_keyword_variable_kind_context_constructor
                   "Con_hom")))),
          [1; 2; 2; 2; 38; 1; 21; 1]);
        Tree_t.Inner
         ((Localinput_symbol_t.Localinput_body_symbol
            (Localinput_body_symbol_t.Localinput_body_block_symbol
              (Localinput_body_block_symbol_t.Localinput_body_block_variable_context_symbol
                (Localinput_body_block_variable_context_symbol_t.Localinput_body_block_variable_context_constructor
                  "Con_hom"))),
           [2; 2; 2; 2; 38; 1; 21; 1]),
         [Tree_t.Leaf
           (Localinput_symbol_t.Localinput_fence_symbol
             (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
               (Localinput_fence_cell_symbol_t.Localinput_fence_cell_createdby_symbol
                 (Localinput_fence_cell_createdby_symbol_t.Localinput_fence_cell_createdby_constructor
                   "Hom_b_2"))),
            [1; 2; 2; 2; 2; 38; 1; 21; 1]);
          Tree_t.Leaf
           (Localinput_symbol_t.Localinput_fence_symbol
             (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
               (Localinput_fence_cell_symbol_t.Localinput_fence_cell_domain_symbol
                 (Localinput_fence_cell_domain_symbol_t.Localinput_fence_cell_domain_constructor
                   "figure"))),
            [2; 2; 2; 2; 2; 38; 1; 21; 1]);
          Tree_t.Leaf
           (Localinput_symbol_t.Localinput_fence_symbol
             (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
               (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
                 (Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_end_symbol
                   (Localinput_fence_keyword_word_end_symbol_t.Localinput_fence_keyword_word_end_constructor
                     "context")))),
            [3; 2; 2; 2; 2; 38; 1; 21; 1])])]);
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_fence_symbol
         (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
           (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
             (Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_end_symbol
               (Localinput_fence_keyword_word_end_symbol_t.Localinput_fence_keyword_word_end_constructor
                 "define")))),
        [3; 2; 2; 38; 1; 21; 1])])])
);;

let sof = "Poi_h";;
let ind = 9;;

let pre_tre_sof sof t = Localinput_tag_v.string_off (Tree_v.root_off_tree t)  = sof;; 
let pre_tre_ind ind t = List.hd (Tag_v.sole_index_off_tag (Tree_v.root_off_tree t)) = ind;; 
let tag_loi_lhc_Poi_h = List_v.only_element_of_predicate_off_list 
    (fun t -> (pre_tre_sof sof t) && (pre_tre_ind ind t))
    tag_loi_lhc_stl;;

test_number 3 (
(tag_loi_lhc_Poi_h :
  Localinput_symbol_t.localinput_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Localinput_symbol_t.Localinput_body_symbol
      (Localinput_body_symbol_t.Localinput_body_handle_symbol
        (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
          (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_unit_symbol
            (Localinput_body_handle_command_unit_symbol_t.Localinput_body_handle_command_unit_print_symbol
              (Localinput_body_handle_command_unit_print_symbol_t.Localinput_body_handle_command_unit_print_constructor
                "Poi_h"))))),
     [9; 38; 1; 21; 1]),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
         (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_command_symbol
           (Localinput_fence_keyword_command_symbol_t.Localinput_fence_keyword_command_print_symbol
             (Localinput_fence_keyword_command_print_symbol_t.Localinput_fence_keyword_command_print_constructor
               "Poi_h")))),
      [1; 9; 38; 1; 21; 1]);
    Tree_t.Inner
     ((Localinput_symbol_t.Localinput_body_symbol
        (Localinput_body_symbol_t.Localinput_body_block_symbol
          (Localinput_body_block_symbol_t.Localinput_body_block_print_symbol
            (Localinput_body_block_print_symbol_t.Localinput_body_block_print_constructor
              "Poi_h"))),
       [2; 9; 38; 1; 21; 1]),
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_fence_symbol
         (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
           (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_entity_symbol
             (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_implicit_symbol
               (Localinput_fence_variable_name_entity_implicit_symbol_t.Localinput_fence_variable_name_entity_implicit_constructor
                 "Poi_h")))),
        [1; 2; 9; 38; 1; 21; 1]);
      Tree_t.Inner
       ((Localinput_symbol_t.Localinput_body_symbol
          (Localinput_body_symbol_t.Localinput_body_box_symbol
            (Localinput_body_box_symbol_t.Localinput_body_box_units_symbol
              (Localinput_body_box_units_symbol_t.Localinput_body_box_units_constructor
                "Poi_h"))),
         [2; 2; 9; 38; 1; 21; 1]),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_fence_symbol
           (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
             (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
               (Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_units_symbol
                 (Localinput_fence_keyword_word_units_symbol_t.Localinput_fence_keyword_word_units_constructor
                   "Poi_h")))),
          [1; 2; 2; 9; 38; 1; 21; 1]);
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_fence_symbol
           (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
             (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_entity_symbol
               (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_external_symbol
                 (Localinput_fence_variable_name_entity_external_symbol_t.Localinput_fence_variable_name_entity_external_constructor
                   "Uni_len")))),
          [2; 2; 2; 9; 38; 1; 21; 1]);
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_fence_symbol
           (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
             (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_entity_symbol
               (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_external_symbol
                 (Localinput_fence_variable_name_entity_external_symbol_t.Localinput_fence_variable_name_entity_external_constructor
                   "Uni_ang")))),
          [3; 2; 2; 9; 38; 1; 21; 1])]);
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_fence_symbol
         (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
           (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
             (Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_end_symbol
               (Localinput_fence_keyword_word_end_symbol_t.Localinput_fence_keyword_word_end_constructor
                 "print")))),
        [3; 2; 9; 38; 1; 21; 1])])])
);;

test_number 4 (
tag_loi_lhc_stl = provide nam_ibo
);;


