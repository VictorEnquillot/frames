open Make_test_v;;

testing "Property_symbol_leaf_by_localinput_set_fence_variable_name_operator_tag_provider_v with
        Property_symbol_leaf_by_localinput_set_fence_variable_name_operator_tag_provider_u_print_translation_tra_bc_point_a.ml";;

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

(* toplevel 
   #use "Property_symbol_leaf_by_localinput_set_fence_variable_name_operator_tag_provider_u_print_translation_tra_bc_point_a.ml";; 

*)

open Property_symbol_leaf_by_localinput_set_fence_variable_name_operator_tag_provider_v;; 

let nam_ibo = "Print_translation_tra_bc_point_a";;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;

let tag_loi_l = Localinput_tag_all_list_by_basicname_inputbox_provider_v.provide bna_ibo;;

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
            "Tra_bc")))),
   [1; 2; 4; 54; 1; 22; 1])
);;

(* Argument tag_lno "Tra_bc"*)

let tag_lno = Localinput_set_fence_variable_name_operator_tag_v.localinput_set_fence_variable_name_operator_tag_off_localinput_tag tag_loi_lno;;

test_number 2 (
( tag_lno :
  Localinput_set_fence_variable_name_operator_symbol_t.localinput_set_fence_variable_name_operator_symbol
    Tag_t.tag ) =
(Localinput_set_fence_variable_name_operator_symbol_t.Localinput_set_fence_variable_name_operator_constructor
   "Tra_bc",
 [1; 2; 4; 54; 1; 22; 1])
);;

(* Prerequisites *)

let soi_lno = Tag_v.sole_index_off_tag tag_lno;;

test_number 3 (
(soi_lno : Sole_index_t.sole_index ) = 
[1; 2; 4; 54; 1; 22; 1]
);;

let nam_ibo =
    Localinput_any_category_by_sole_index_extractor_v.localinput_context_inputbox_string_off_off_sole_index
      soi_lno;;

test_number 4 (
(nam_ibo : string ) = 
"Print_translation_tra_bc_point_a"
);;

let tag_loi_lcd_stl = 
    Localinput_as_set_body_handle_command_creation_define_tag_subtree_list_by_basicname_inputbox_provider_v.provide
      bna_ibo;;

let cou_lcd = List.length tag_loi_lcd_stl;;

test_number 5 (
(cou_lcd : int ) = 
7
);;

let tag_loi_roo_l = List.map Tree_v.root_off_tree tag_loi_lcd_stl;;

test_number 6 (
( tag_loi_roo_l : Localinput_symbol_t.localinput_symbol Tag_t.tag list ) =
  [(Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_body_symbol
       (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
         (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol
           (Localinput_set_body_handle_command_symbol_t.Localinput_set_body_handle_command_creation_symbol
             (Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_define_symbol
               (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
                 "Con_bc")))))),
    [1; 54; 1; 22; 1]);
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_body_symbol
       (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
         (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol
           (Localinput_set_body_handle_command_symbol_t.Localinput_set_body_handle_command_creation_symbol
             (Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_define_symbol
               (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
                 "Con_pa")))))),
    [2; 54; 1; 22; 1]);
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_body_symbol
       (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
         (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol
           (Localinput_set_body_handle_command_symbol_t.Localinput_set_body_handle_command_creation_symbol
             (Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_define_symbol
               (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
                 "Seg_bc")))))),
    [3; 54; 1; 22; 1]);
   (Localinput_symbol_t.Localinput_set_symbol
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
       (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
         (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol
           (Localinput_set_body_handle_command_symbol_t.Localinput_set_body_handle_command_creation_symbol
             (Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_define_symbol
               (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
                 "Poi_a")))))),
    [5; 54; 1; 22; 1]);
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_body_symbol
       (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
         (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol
           (Localinput_set_body_handle_command_symbol_t.Localinput_set_body_handle_command_creation_symbol
             (Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_define_symbol
               (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
                 "Poi_t")))))),
    [6; 54; 1; 22; 1]);
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_body_symbol
       (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
         (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol
           (Localinput_set_body_handle_command_symbol_t.Localinput_set_body_handle_command_creation_symbol
             (Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_define_symbol
               (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
                 "Uni_len")))))),
    [7; 54; 1; 22; 1])]
);;

let sof_ope = Localinput_set_fence_variable_name_operator_tag_v.string_off tag_lno;;

test_number 7 (
(sof_ope : string ) = "Tra_bc"
);;

let tag_lcd_l = Localinput_set_body_handle_command_creation_define_tag_list_by_basicname_inputbox_provider_v.provide bna_ibo;;

test_number 8 (
(tag_lcd_l :
  Localinput_set_body_handle_command_creation_define_symbol_t.localinput_set_body_handle_command_creation_define_symbol
  Tag_t.tag list ) =
  [(Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
     "Con_bc",
    [1; 54; 1; 22; 1]);
   (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
     "Con_pa",
    [2; 54; 1; 22; 1]);
   (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
     "Seg_bc",
    [3; 54; 1; 22; 1]);
   (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
     "Tra_bc",
    [4; 54; 1; 22; 1]);
   (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
     "Poi_a",
    [5; 54; 1; 22; 1]);
   (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
     "Poi_t",
    [6; 54; 1; 22; 1]);
   (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
     "Uni_len",
    [7; 54; 1; 22; 1])]
);;

let tag_lcd_tra_bc = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> Localinput_set_body_handle_command_creation_define_symbol_v.localinput_set_body_handle_command_creation_define_constructor sof_ope = s)
    tag_lcd_l
;;

test_number 9 (
(tag_lcd_tra_bc :
  Localinput_set_body_handle_command_creation_define_symbol_t.localinput_set_body_handle_command_creation_define_symbol
  Tag_t.tag ) =
  (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
    "Tra_bc",
   [4; 54; 1; 22; 1])
);;

let tag_lhc_st = Localinput_as_set_body_handle_command_tag_subtree_by_localinput_set_body_handle_command_creation_define_tag_provider_v.provide tag_lcd_tra_bc;;

let tag_lhc_inn_l = Tree_v.inner_node_list_off_tree tag_lhc_st;;

test_number 10 (
(tag_lhc_inn_l : Localinput_symbol_t.localinput_symbol Tag_t.tag list ) =
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
       (Localinput_set_body_symbol_t.Localinput_set_body_box_symbol
         (Localinput_set_body_box_symbol_t.Localinput_set_body_box_type_symbol
           (Localinput_set_body_box_type_symbol_t.Localinput_set_body_box_type_constructor
             "Tra_bc")))),
    [1; 2; 2; 2; 4; 54; 1; 22; 1]);
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_body_symbol
       (Localinput_set_body_symbol_t.Localinput_set_body_list_symbol
         (Localinput_set_body_list_symbol_t.Localinput_set_body_list_variable_type_symbol
           (Localinput_set_body_list_variable_type_symbol_t.Localinput_set_body_list_variable_type_constructor
             "Tra_bc")))),
    [2; 1; 2; 2; 2; 4; 54; 1; 22; 1]);
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_body_symbol
       (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
         (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_cofactor_symbol
           (Localinput_set_body_handle_cofactor_symbol_t.Localinput_set_body_handle_cofactor_constructor
             "Tra_bc")))),
    [4; 2; 2; 2; 4; 54; 1; 22; 1]);
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_body_symbol
       (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
         (Localinput_set_body_block_symbol_t.Localinput_set_body_block_cofactor_symbol
           (Localinput_set_body_block_cofactor_symbol_t.Localinput_set_body_block_cofactor_constructor
             "Seg_bc")))),
    [2; 4; 2; 2; 2; 4; 54; 1; 22; 1])]
);;

let tag_lhc_lea_l = Tree_v.leaf_node_list_off_tree tag_lhc_st;;

let tag_loi_lbt_l = List.filter
    (fun (s, i) -> Localinput_symbol_v.is_localinput_set_body_box_type_constructor s)
    tag_loi_l
;;

test_number 11 (
(tag_loi_lbt_l : Localinput_symbol_t.localinput_symbol Tag_t.tag list ) =
 [(Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_body_symbol
       (Localinput_set_body_symbol_t.Localinput_set_body_box_symbol
         (Localinput_set_body_box_symbol_t.Localinput_set_body_box_type_symbol
           (Localinput_set_body_box_type_symbol_t.Localinput_set_body_box_type_constructor
             "Seg_bc")))),
    [1; 2; 2; 2; 3; 54; 1; 22; 1]);
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_body_symbol
       (Localinput_set_body_symbol_t.Localinput_set_body_box_symbol
         (Localinput_set_body_box_symbol_t.Localinput_set_body_box_type_symbol
           (Localinput_set_body_box_type_symbol_t.Localinput_set_body_box_type_constructor
             "Tra_bc")))),
    [1; 2; 2; 2; 4; 54; 1; 22; 1]);
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_body_symbol
       (Localinput_set_body_symbol_t.Localinput_set_body_box_symbol
         (Localinput_set_body_box_symbol_t.Localinput_set_body_box_type_symbol
           (Localinput_set_body_box_type_symbol_t.Localinput_set_body_box_type_constructor
             "Poi_a")))),
    [1; 2; 2; 2; 5; 54; 1; 22; 1]);
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_body_symbol
       (Localinput_set_body_symbol_t.Localinput_set_body_box_symbol
         (Localinput_set_body_box_symbol_t.Localinput_set_body_box_type_symbol
           (Localinput_set_body_box_type_symbol_t.Localinput_set_body_box_type_constructor
             "Poi_t")))),
    [1; 2; 2; 2; 6; 54; 1; 22; 1]);
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_body_symbol
       (Localinput_set_body_symbol_t.Localinput_set_body_box_symbol
         (Localinput_set_body_box_symbol_t.Localinput_set_body_box_type_symbol
           (Localinput_set_body_box_type_symbol_t.Localinput_set_body_box_type_constructor
             "Uni_len")))),
    [1; 2; 2; 2; 7; 54; 1; 22; 1])]
);;

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
test_number 12 (
(cou_loi_lbt : int ) = 
5
);;

let tag_loi_lbt = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> Localinput_symbol_v.localinput_set_body_box_type_constructor sof_ope = s)
    tag_loi_l
;;

test_number 13 (
( tag_loi_lbt : Localinput_symbol_t.localinput_symbol Tag_t.tag ) =
  (Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_body_symbol
      (Localinput_set_body_symbol_t.Localinput_set_body_box_symbol
        (Localinput_set_body_box_symbol_t.Localinput_set_body_box_type_symbol
          (Localinput_set_body_box_type_symbol_t.Localinput_set_body_box_type_constructor
            "Tra_bc")))),
   [1; 2; 2; 2; 4; 54; 1; 22; 1])
);;

let tag_loi_lbt_st = Localinput_tag_subtree_by_localinput_tag_provider_v.provide tag_loi_lbt;;

test_number 14 (
( tag_loi_lbt_st :
  Localinput_symbol_t.localinput_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Localinput_symbol_t.Localinput_set_symbol
      (Localinput_set_symbol_t.Localinput_set_body_symbol
        (Localinput_set_body_symbol_t.Localinput_set_body_box_symbol
          (Localinput_set_body_box_symbol_t.Localinput_set_body_box_type_symbol
            (Localinput_set_body_box_type_symbol_t.Localinput_set_body_box_type_constructor
              "Tra_bc")))),
     [1; 2; 2; 2; 4; 54; 1; 22; 1]),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
           (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
             (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_type_symbol
               (Localinput_set_fence_keyword_word_type_symbol_t.Localinput_set_fence_keyword_word_type_constructor
                 "Tra_bc"))))),
      [1; 1; 2; 2; 2; 4; 54; 1; 22; 1]);
    Tree_t.Inner
     ((Localinput_symbol_t.Localinput_set_symbol
        (Localinput_set_symbol_t.Localinput_set_body_symbol
          (Localinput_set_body_symbol_t.Localinput_set_body_list_symbol
            (Localinput_set_body_list_symbol_t.Localinput_set_body_list_variable_type_symbol
              (Localinput_set_body_list_variable_type_symbol_t.Localinput_set_body_list_variable_type_constructor
                "Tra_bc")))),
       [2; 1; 2; 2; 2; 4; 54; 1; 22; 1]),
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
             (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
               (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                 "operator")))),
        [1; 2; 1; 2; 2; 2; 4; 54; 1; 22; 1]);
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
             (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
               (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                 "set")))),
        [2; 2; 1; 2; 2; 2; 4; 54; 1; 22; 1]);
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
             (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
               (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                 "body")))),
        [3; 2; 1; 2; 2; 2; 4; 54; 1; 22; 1]);
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
             (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
               (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                 "creation")))),
        [4; 2; 1; 2; 2; 2; 4; 54; 1; 22; 1]);
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
             (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
               (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                 "transformation")))),
        [5; 2; 1; 2; 2; 2; 4; 54; 1; 22; 1]);
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
             (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
               (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                 "constructor")))),
        [6; 2; 1; 2; 2; 2; 4; 54; 1; 22; 1])])])
);;

let sym_pro_ope = 
    property_as_operator_symbol_of_localinput_as_set_body_box_type_tag_subtree 
      tag_loi_lbt_st;; 

test_number 15 (
(sym_pro_ope : Property_symbol_t.property_symbol ) =
  Property_symbol_t.Property_operator_symbol
   (Property_operator_symbol_t.Property_operator_fence_symbol
     (Property_operator_fence_symbol_t.Property_operator_fence_creation_symbol
       (Property_operator_fence_creation_symbol_t.Property_operator_fence_creation_toentity_symbol
         (Property_operator_fence_creation_toentity_symbol_t.Property_operator_fence_creation_toentity_constructor
           "Tra_bc"))))
);;

let sym_pro_f = Tree_v.make_of_leaf sym_pro_ope;;

test_number 16 (
(sym_pro_f : Property_symbol_t.property_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Property_symbol_t.Property_operator_symbol
     (Property_operator_symbol_t.Property_operator_fence_symbol
       (Property_operator_fence_symbol_t.Property_operator_fence_creation_symbol
         (Property_operator_fence_creation_symbol_t.Property_operator_fence_creation_toentity_symbol
           (Property_operator_fence_creation_toentity_symbol_t.Property_operator_fence_creation_toentity_constructor
             "Tra_bc")))))
);;

test_number 17 (
sym_pro_f = provide tag_lno
);;
