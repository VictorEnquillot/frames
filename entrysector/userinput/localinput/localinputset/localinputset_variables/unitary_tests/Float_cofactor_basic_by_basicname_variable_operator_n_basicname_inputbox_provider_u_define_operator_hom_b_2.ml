open Make_test_v;;

testing "Float_cofactor_basic_by_basicname_variable_operator_n_basicname_inputbox_provider_v
        Float_cofactor_basic_by_basicname_variable_operator_n_basicname_inputbox_provider_u_define_operator_hom_b_2.ml";;

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
   #use "Float_cofactor_basic_by_basicname_variable_operator_n_basicname_inputbox_provider_u_define_operator_hom_b_2.ml";;

*)

open Float_cofactor_basic_by_basicname_variable_operator_n_basicname_inputbox_provider_v;;

let nam_ibo = "Define_operator_hom_b_2";;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;

let nam_var_ope = "Hom_b_2";;
let bna_var_ope = Basicname_v.basicname_variable_operator_of_string nam_var_ope;;

Check_is_basicname_variable_operator_by_basicname_variable_operator_n_basicname_inputbox_provider_v.provide (bna_var_ope, bna_ibo);;
  
Check_is_basicname_inputbox_by_basicname_provider_v.provide bna_ibo;;

let bna_var = Basicname_v.basicname_variable_of_basicname_variable_operator bna_var_ope;;

test_number 1 (
(bna_var : Basicname_t.basicname ) = 
Basicname_t.Variable "Hom_b_2"
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
                 "Hom_b_2")))))),
    [1; 12; 1; 22; 1]);
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
         (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_command_symbol
           (Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_define_symbol
             (Localinput_set_fence_keyword_command_define_symbol_t.Localinput_set_fence_keyword_command_define_constructor
               "Hom_b_2"))))),
    [1; 1; 12; 1; 22; 1]);
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_body_symbol
       (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
         (Localinput_set_body_block_symbol_t.Localinput_set_body_block_define_symbol
           (Localinput_set_body_block_define_symbol_t.Localinput_set_body_block_define_constructor
             "Hom_b_2")))),
    [2; 1; 12; 1; 22; 1])]
);;

let tag_loi_lcb = Tree_v.only_node_of_node_predicate_off_tree
    (fun (s, i) -> 
      Localinput_symbol_v.is_localinput_set_fence_cell_cofactor_basic_symbol_off_localinput_symbol s)
    tag_loi_lcd_st 
;;

test_number 3 (
( tag_loi_lcb : Localinput_symbol_t.localinput_symbol Tag_t.tag ) =
  (Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
        (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_cofactor_basic_symbol
          (Localinput_set_fence_cell_cofactor_basic_symbol_t.Localinput_set_fence_cell_cofactor_basic_constructor
            "2.0")))),
   [2; 2; 4; 2; 2; 2; 1; 12; 1; 22; 1])
);;

let sof_loi_lcb = Localinput_tag_v.string_off tag_loi_lcb;;

test_number 4 (
(sof_loi_lcb : string ) = 
"2.0"
);;

let flo_cof_bas = String_v.float_of_string sof_loi_lcb;;

test_number 5 (
(flo_cof_bas : float ) =
2.
);;

test_number 6 (
flo_cof_bas = provide (bna_var_ope, bna_ibo)
);;
