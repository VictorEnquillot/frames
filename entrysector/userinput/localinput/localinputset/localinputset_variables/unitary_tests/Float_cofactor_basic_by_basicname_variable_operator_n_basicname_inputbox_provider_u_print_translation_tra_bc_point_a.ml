open Make_test_v;;

testing "Float_cofactor_basic_by_basicname_variable_operator_n_basicname_inputbox_provider_v
        Float_cofactor_basic_by_basicname_variable_operator_n_basicname_inputbox_provider_u_print_translation_tra_bc_point_a.ml";;

(* Deleting Registers *)

(* Tracing *)


(* define Hom_b_2 *)
(*        operator  *)
(*          type [ "operator" "set" "body" "creation" "transformation" "constructor" ] *)
(*          operation "translation" *)
(*          ondomain "figure"   *)
(*          cofactor  *)
(*            cofactor_entity Cen_b *)
(*            cofactor_basic  2.0   *)
(*            end -- cofactor	    *)
(*          end -- operator         *)
(*        end -- define             *)

(* toplevel 
   #use "Float_cofactor_basic_by_basicname_variable_operator_n_basicname_inputbox_provider_u_print_translation_tra_bc_point_a.ml";;

*)

open Float_cofactor_basic_by_basicname_variable_operator_n_basicname_inputbox_provider_v;;

let nam_ibo = "Print_translation_tra_bc_point_a";;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;

let nam_var_ope = "Tra_bc";;
let bna_var_ope = Basicname_v.basicname_variable_operator_of_string nam_var_ope;;

Check_is_basicname_variable_operator_by_basicname_variable_operator_n_basicname_inputbox_provider_v.provide (bna_var_ope, bna_ibo);;
  
Check_is_basicname_inputbox_by_basicname_provider_v.provide bna_ibo;;

let bna_var = Basicname_v.basicname_variable_of_basicname_variable_operator bna_var_ope;;

test_number 1 (
(bna_var : Basicname_t.basicname ) = 
Basicname_t.Variable "Tra_bc"
);;

let tag_loi_lcd_st = 
  Localinput_as_set_body_handle_command_creation_define_tag_subtree_by_basicname_variable_n_basicname_inputbox_provider_v.provide
    (bna_var, bna_ibo)
;;

let tag_loi_rts_l = Tree_v.root_topson_node_list_off_tree tag_loi_lcd_st;;

test_number 2 (
(tag_loi_rts_l : Localinput_symbol_t.localinput_symbol Tag_t.tag list ) =
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
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
         (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_command_symbol
           (Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_define_symbol
             (Localinput_set_fence_keyword_command_define_symbol_t.Localinput_set_fence_keyword_command_define_constructor
               "Tra_bc"))))),
    [1; 4; 54; 1; 22; 1]);
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_body_symbol
       (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
         (Localinput_set_body_block_symbol_t.Localinput_set_body_block_define_symbol
           (Localinput_set_body_block_define_symbol_t.Localinput_set_body_block_define_constructor
             "Tra_bc")))),
    [2; 4; 54; 1; 22; 1])]
);;

let tag_loi_lce = Tree_v.only_node_of_node_predicate_off_tree
    (fun (s, i) -> 
      Localinput_symbol_v.is_localinput_set_fence_cell_cofactor_entity_symbol_off_localinput_symbol s)
    tag_loi_lcd_st 
;;

test_number 3 (
( tag_loi_lce : Localinput_symbol_t.localinput_symbol Tag_t.tag ) =
  (Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
        (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_cofactor_entity_symbol
          (Localinput_set_fence_cell_cofactor_entity_symbol_t.Localinput_set_fence_cell_cofactor_entity_constructor
            "Seg_bc")))),
   [1; 2; 4; 2; 2; 2; 4; 54; 1; 22; 1])
);;

let sof_loi_lce = Localinput_tag_v.string_off tag_loi_lce;;

test_number 4 (
(sof_loi_lce : string ) = 
"Seg_bc"
);;

let bna_cof_ent = Basicname_v.basicname_cofactor_entity_of_string sof_loi_lce;;


test_number 5 (
(bna_cof_ent : Basicname_t.basicname ) = 
 Basicname_t.Cofactor_entity "Seg_bc"
);;

test_number 6 (
bna_cof_ent = provide (bna_var_ope, bna_ibo)
);;
