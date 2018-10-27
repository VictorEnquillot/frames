open Make_test_v;;

testing "Basicname_cofactor_entity_by_basicname_variable_operator_n_basicname_inputbox_provider_v
        Basicname_cofactor_entity_by_basicname_variable_operator_n_basicname_inputbox_provider_u_print_translation_tra_bc_point_a.ml";;

(* Deleting Registers *)

(* Tracing *)


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

(* toplevel 
   #use "Basicname_cofactor_entity_by_basicname_variable_operator_n_basicname_inputbox_provider_u_print_translation_tra_bc_point_a.ml";;

*)

open Basicname_cofactor_entity_by_basicname_variable_operator_n_basicname_inputbox_provider_v;;

let nam_ibo = "Print_translation_tra_bc_point_a";;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;

let nam_var_ope = "Ope_len";;
let bna_var_ope = Basicname_v.basicname_variable_operator_of_string nam_var_ope;;

Check_is_basicname_variable_operator_by_basicname_variable_operator_n_basicname_inputbox_provider_v.provide (bna_var_ope, bna_ibo);;
  
Check_is_basicname_inputbox_by_basicname_provider_v.provide bna_ibo;;

let bna_var = Basicname_v.basicname_variable_of_basicname_variable_operator bna_var_ope;;

test_number 1 (
(bna_var : Basicname_t.basicname ) = 
Basicname_t.Variable "Ope_len"
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
                 "Ope_len")))))),
    [2; 42; 1; 22; 1]);
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
         (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_command_symbol
           (Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_define_symbol
             (Localinput_set_fence_keyword_command_define_symbol_t.Localinput_set_fence_keyword_command_define_constructor
               "Ope_len"))))),
    [1; 2; 42; 1; 22; 1]);
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_body_symbol
       (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
         (Localinput_set_body_block_symbol_t.Localinput_set_body_block_define_symbol
           (Localinput_set_body_block_define_symbol_t.Localinput_set_body_block_define_constructor
             "Ope_len")))),
    [2; 2; 42; 1; 22; 1])]
);;

let tag_loi_dbo = Tree_v.only_node_of_node_predicate_off_tree
    (fun (s, i) -> 
      Localinput_symbol_v.is_localinput_set_fence_cell_operation_symbol_off_localinput_symbol s)
    tag_loi_lcd_st 
;;

test_number 3 (
( tag_loi_dbo : Localinput_symbol_t.localinput_symbol Tag_t.tag ) =
(Localinput_symbol_t.Localinput_set_symbol
   (Localinput_set_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
         (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_operation_symbol
            (Localinput_set_fence_cell_operation_symbol_t.Localinput_set_fence_cell_operation_constructor
               "length")))),
 [2; 2; 2; 2; 2; 42; 1; 22; 1])
);;

  let sof_loi_dbo = Localinput_tag_v.string_off tag_loi_dbo;;

let bna_opt =  Basicname_v.basicname_operation_of_string sof_loi_dbo;;

test_number 4 (
(bna_opt : Basicname_t.basicname ) = 
Basicname_t.Operation "length"
);;

test_number 5 (
bna_opt = provide (bna_var_ope, bna_ibo)
);;
