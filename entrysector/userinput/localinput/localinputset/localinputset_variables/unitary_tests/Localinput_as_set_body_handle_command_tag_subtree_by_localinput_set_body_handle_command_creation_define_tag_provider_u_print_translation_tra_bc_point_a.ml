open Make_test_v;;

testing "Localinput_as_set_body_handle_command_tag_subtree_by_localinput_set_body_handle_command_creation_define_tag_provider_v with
        Localinput_as_set_body_handle_command_tag_subtree_by_localinput_set_body_handle_command_creation_define_tag_provider_u_print_translation_tra_bc_point_a.ml";;

(* Deleting Registers *)

(* Tracing *)
(* define Con_bc *)
(*        context *)
(*          databox "segment_BC" *)
(*          database "db1points" *)
(*          domain "figure" *)
(*          sector "internal" *)
(*          end -- context *)
(*        end -- define *)

(* define Con_pa *)
(*        context *)
(*          databox "Point_a" *)
(*          database "db1points" *)
(*          domain "figure" *)
(*          sector "internal" *)
(*          end -- context *)
(*        end -- define *)

(* define Seg_bc *)
(*        external  *)
(*          type [ "figure" "set" "body" "segment" "constructor" ] *)
(*          external_name "BC" *)
(*          external_context Con_bc *)
(*          end -- external *)
(*        end -- define *)

(* define Tra_bc *)
(*        operator  *)
(*          type [ "operator" "set" "body" "creation" "transformation" "constructor" ] *)
(*          operation "translation" *)
(*          ondomain "figure"   *)
(*          cofactor  *)
(*            cofactor_entity Seg_bc *)
(*            end -- cofactor	 *)
(*          end -- operator *)
(*        end -- define *)

(* define Poi_a         *)
(*        external  *)
(*          type [ "figure" "set" "fence" "point" "constructor" ] *)
(*          external_name "T_A" *)
(*          external_context Con_pa *)
(*          end -- external *)
(*        end -- define *)

(* define Poi_t *)
(*        target  *)
(*          type [ "property" "operand" "target" "created" "constructor" ] *)
(*          target_operator Tra_bc *)
(*          target_operand Poi_a *)
(*          end -- target *)
(*        end -- define *)

(* define Uni_len *)
(*        external  *)
(*          type [ "units" "length" "bohr" ] *)
(*          end -- external *)
(*        end -- define *)

(* print Poi_t *)
(*       units [ Uni_len ] *)
(*       end -- print *)

(* stop *)

(* grep -B2 type $LOIF/Print_translation_tra_bc_point_a.loc *)
(* define Seg_bc *)
(*        external  *)
(*          type [ "figure" "set" "body" "segment" "constructor" ] *)
(* -- *)
(* define Tra_bc *)
(*        operator  *)
(*          type [ "operator" "set" "body" "creation" "transformation" "constructor" ] *)
(* -- *)
(* define Poi_a         *)
(*        external  *)
(*          type [ "figure" "set" "fence" "point" "constructor" ] *)
(* -- *)
(* define Poi_t *)
(*        target  *)
(*          type [ "property" "operand" "target" "created" "constructor" ] *)
(* -- *)
(* define Uni_len *)
(*        external  *)
(*          type [ "units" "length" "bohr" ] *)

(* toplevel 
   #use "Localinput_as_set_body_handle_command_tag_subtree_by_localinput_set_body_handle_command_creation_define_tag_provider_u_print_translation_tra_bc_point_a.ml";; 

*)

open Localinput_as_set_body_handle_command_tag_subtree_by_localinput_set_body_handle_command_creation_define_tag_provider_v;;

let nam_var = "Tra_bc";;
let bna_var_ext = Basicname_v.basicname_variable_external_of_string nam_var;;

let nam_ibo = "Print_translation_tra_bc_point_a";;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;

let tag_loi_l = Localinput_tag_all_list_by_basicname_inputbox_provider_v.provide bna_ibo;;

let tag_loi_lbt_l = List.filter
    (fun (s, i) -> Localinput_symbol_v.is_localinput_set_body_box_type_constructor s)
    tag_loi_l
;;

(* grep -B2 type $LOIF/Print_translation_tra_bc_point_a.loc *)
(* define Seg_bc *)
(*        external  *)
(*          type [ "figure" "set" "body" "segment" "constructor" ] *)
(* -- *)
(* define Tra_bc *)
(*        operator  *)
(*          type [ "operator" "set" "body" "creation" "transformation" "constructor" ] *)
(* -- *)
(* define Poi_a         *)
(*        external  *)
(*          type [ "figure" "set" "fence" "point" "constructor" ] *)
(* -- *)
(* define Poi_t *)
(*        target  *)
(*          type [ "property" "operand" "target" "created" "constructor" ] *)
(* -- *)
(* define Uni_len *)
(*        external  *)
(*          type [ "units" "length" "bohr" ] *)

let cou_loi_lbt = List.length tag_loi_lbt_l;;

test_number 1 (
(cou_loi_lbt : int ) = 
5
);;

(* Argument tag_lcd "Tra_bc" *)

let sof = nam_var;;
let tag_loi_lcd = List_v.only_element_of_predicate_off_list
    (fun (s, i) -> Localinput_symbol_v.localinput_set_body_handle_command_creation_define_constructor sof = s)
    tag_loi_l
;;

test_number 1 (
(tag_loi_lcd : Localinput_symbol_t.localinput_symbol Tag_t.tag ) =
  (Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_body_symbol
      (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
        (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol
          (Localinput_set_body_handle_command_symbol_t.Localinput_set_body_handle_command_creation_symbol
            (Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_define_symbol
              (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
                "Tra_bc")))))),
   [4; 54; 1; 22; 1])
);;

let tag_loi_lcd_stl = 
  Localinput_as_set_body_handle_command_creation_define_tag_subtree_list_by_basicname_inputbox_provider_v.provide
    bna_ibo
;;

let tag_loi_lcd_st = List_v.only_element_of_predicate_off_list 
      (fun t -> 
	(Localinput_tag_v.string_off (Tree_v.root_off_tree t) = nam_var ) 
     )
      tag_loi_lcd_stl;;

let tag_loi_inn_l = Tree_v.inner_node_list_off_tree tag_loi_lcd_st;; 

test_number 2 (
(tag_loi_inn_l : Localinput_symbol_t.localinput_symbol Tag_t.tag list ) =
  [(Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_body_symbol
       (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
         (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol
           (Localinput_set_body_handle_command_symbol_t.Localinput_set_body_handle_command_creation_symbol
             (Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_define_symbol
               (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
                 "Tra_bc")))))),
    [4; 54; 1; 22; 1]);
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_body_symbol
       (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
         (Localinput_set_body_block_symbol_t.Localinput_set_body_block_define_symbol
           (Localinput_set_body_block_define_symbol_t.Localinput_set_body_block_define_constructor
             "Tra_bc")))),
    [2; 4; 54; 1; 22; 1]);
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_body_symbol
       (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
         (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_variable_kind_symbol
           (Localinput_set_body_handle_variable_kind_symbol_t.Localinput_set_body_handle_variable_operator_symbol
             (Localinput_set_body_handle_variable_operator_symbol_t.Localinput_set_body_handle_variable_operator_constructor
               "Tra_bc"))))),
    [2; 2; 4; 54; 1; 22; 1]);
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_body_symbol
       (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
         (Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_external_symbol
           (Localinput_set_body_block_variable_external_symbol_t.Localinput_set_body_block_variable_external_constructor
             "Tra_bc")))),
    [2; 2; 2; 4; 54; 1; 22; 1]);
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_body_symbol
       (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
         (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_cofactor_symbol
           (Localinput_set_body_handle_cofactor_symbol_t.Localinput_set_body_handle_cofactor_constructor
             "Tra_bc")))),
    [1; 2; 2; 2; 4; 54; 1; 22; 1]);
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_body_symbol
       (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
         (Localinput_set_body_block_symbol_t.Localinput_set_body_block_cofactor_symbol
           (Localinput_set_body_block_cofactor_symbol_t.Localinput_set_body_block_cofactor_constructor
             "Seg_bc")))),
    [2; 1; 2; 2; 2; 4; 54; 1; 22; 1])]
);;

let tag_loi_lea_l = Tree_v.leaf_node_list_off_tree tag_loi_lcd_st;; 

test_number 3 (
(tag_loi_lea_l : Localinput_symbol_t.localinput_symbol Tag_t.tag list ) =
  [(Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
         (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_command_symbol
           (Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_define_symbol
             (Localinput_set_fence_keyword_command_define_symbol_t.Localinput_set_fence_keyword_command_define_constructor
               "Tra_bc"))))),
    [1; 4; 54; 1; 22; 1]);
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
         (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_operator_symbol
           (Localinput_set_fence_variable_name_operator_symbol_t.Localinput_set_fence_variable_name_operator_constructor
             "Tra_bc")))),
    [1; 2; 4; 54; 1; 22; 1]);
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_kind_symbol
         (Localinput_set_fence_variable_kind_symbol_t.Localinput_set_fence_variable_kind_operator_symbol
           (Localinput_set_fence_variable_kind_operator_symbol_t.Localinput_set_fence_variable_kind_operator_constructor
             "Tra_bc")))),
    [1; 2; 2; 4; 54; 1; 22; 1]);
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
         (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
           (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_cofactor_symbol
             (Localinput_set_fence_keyword_word_cofactor_symbol_t.Localinput_set_fence_keyword_word_cofactor_constructor
               "Tra_bc"))))),
    [1; 1; 2; 2; 2; 4; 54; 1; 22; 1]);
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
         (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_cofactor_entity_symbol
           (Localinput_set_fence_cell_cofactor_entity_symbol_t.Localinput_set_fence_cell_cofactor_entity_constructor
             "Seg_bc")))),
    [1; 2; 1; 2; 2; 2; 4; 54; 1; 22; 1]);
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
         (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
           (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_end_symbol
             (Localinput_set_fence_keyword_word_end_symbol_t.Localinput_set_fence_keyword_word_end_constructor
               "cofactor"))))),
    [2; 2; 1; 2; 2; 2; 4; 54; 1; 22; 1]);
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
         (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
           (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_end_symbol
             (Localinput_set_fence_keyword_word_end_symbol_t.Localinput_set_fence_keyword_word_end_constructor
               "operator"))))),
    [2; 2; 2; 2; 4; 54; 1; 22; 1]);
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
         (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
           (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_end_symbol
             (Localinput_set_fence_keyword_word_end_symbol_t.Localinput_set_fence_keyword_word_end_constructor
               "define"))))),
    [3; 2; 4; 54; 1; 22; 1])]
);;

let tag_lcd = Tag_v.map_entity Localinput_symbol_v.localinput_set_body_handle_command_creation_define_symbol_off_localinput_symbol tag_loi_lcd;;

test_number 4 (
(tag_lcd :
  Localinput_set_body_handle_command_creation_define_symbol_t.localinput_set_body_handle_command_creation_define_symbol
  Tag_t.tag ) =
  (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
    "Tra_bc",
   [4; 54; 1; 22; 1])
);;

test_number 5 (
tag_loi_lcd_st = provide tag_lcd  
);;


let tag_loi_lbt_l = List.filter
    (fun (s, i) -> Localinput_symbol_v.is_localinput_set_body_box_type_constructor s)
    tag_loi_l
;;
