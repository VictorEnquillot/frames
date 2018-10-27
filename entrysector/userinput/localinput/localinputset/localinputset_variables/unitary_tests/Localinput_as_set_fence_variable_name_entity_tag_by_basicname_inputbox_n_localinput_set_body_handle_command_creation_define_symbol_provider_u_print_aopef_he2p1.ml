open Make_test_v;;

testing "Localinput_as_set_fence_variable_name_entity_tag_by_basicname_inputbox_n_localinput_set_body_handle_command_creation_define_symbol_provider_v with
        Localinput_as_set_fence_variable_name_entity_tag_by_basicname_inputbox_n_localinput_set_body_handle_command_creation_define_symbol_provider_u_print_aopef_he2p1.ml";;

(* Deleting Registers *)

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

(* Tracing *)

(* toplevel 
   #use "Localinput_as_set_fence_variable_name_entity_tag_by_basicname_inputbox_n_localinput_set_body_handle_command_creation_define_symbol_provider_u_print_aopef_he2p1.ml";; 
 
*)

open Localinput_as_set_fence_variable_name_entity_tag_by_basicname_inputbox_n_localinput_set_body_handle_command_creation_define_symbol_provider_v;;

let nam_ibo = "Print_length_segment_bc";;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;

let sym_lcd_l = Localinput_set_body_handle_command_creation_define_tag_list_by_basicname_inputbox_provider_v.provide bna_ibo;;

test_number 1 (
(sym_lcd_l :
  Localinput_set_body_handle_command_creation_define_symbol_t.localinput_set_body_handle_command_creation_define_symbol
  Tag_t.tag list ) =
  [(Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
     "Con_bc",
    [1; 42; 1; 22; 1]);
   (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
     "Ope_len",
    [2; 42; 1; 22; 1]);
   (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
     "Seg_bc",
    [3; 42; 1; 22; 1]);
   (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
     "Len_bc",
    [4; 42; 1; 22; 1]);
   (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
     "Uni_len",
    [5; 42; 1; 22; 1])]
);;

(* Argument Len_bc *)

let nam_var = "Len_bc";;

let sym_lcd = 
  Localinput_set_body_handle_command_creation_define_symbol_v.localinput_set_body_handle_command_creation_define_constructor 
    nam_var 
;;

test_number 2 (
( sym_lcd :
  Localinput_set_body_handle_command_creation_define_symbol_t.localinput_set_body_handle_command_creation_define_symbol ) =
  Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
   "Len_bc"
);;

let sof_lcd = Localinput_set_body_handle_command_creation_define_symbol_v.string_off sym_lcd;;

test_number 3 (
( sof_lcd : string ) = 
"Len_bc"
);;

let bna_var = Basicname_v.basicname_variable_of_string sof_lcd;;

test_number 4 (
(bna_var : Basicname_t.basicname ) = 
Basicname_t.Variable "Len_bc"
);;
 
let tag_loi_lcd_st = 
    Localinput_as_set_body_handle_command_creation_define_tag_subtree_by_basicname_variable_n_basicname_inputbox_provider_v.provide 
      (bna_var, bna_ibo);;

let tag_loi_lne = Tree_v.only_node_of_node_predicate_off_tree 
  (fun (s, i) -> 
    (Localinput_symbol_v.localinput_set_fence_variable_name_entity_target_constructor sof_lcd = s)
  ||
    (Localinput_symbol_v.localinput_set_fence_variable_name_entity_external_constructor sof_lcd = s)
)	
  tag_loi_lcd_st;;

test_number 5 (
(tag_loi_lne : Localinput_symbol_t.localinput_symbol Tag_t.tag ) =
  (Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
        (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_entity_symbol
          (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_target_symbol
            (Localinput_set_fence_variable_name_entity_target_symbol_t.Localinput_set_fence_variable_name_entity_target_constructor
              "Len_bc"))))),
   [1; 2; 4; 42; 1; 22; 1])
);;

test_number 6 (
tag_loi_lne = provide (bna_ibo, sym_lcd)
);;

(* Argument Seg_bc *)

let nam_var = "Seg_bc";;

let sym_lcd = 
  Localinput_set_body_handle_command_creation_define_symbol_v.localinput_set_body_handle_command_creation_define_constructor 
    nam_var 
;;

test_number 7 (
( sym_lcd :
  Localinput_set_body_handle_command_creation_define_symbol_t.localinput_set_body_handle_command_creation_define_symbol ) =
  Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
   "Seg_bc"
);;

let tag_loi_lne = provide (bna_ibo, sym_lcd);;

test_number 8 (
(tag_loi_lne : Localinput_symbol_t.localinput_symbol Tag_t.tag ) =
  (Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
        (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_entity_symbol
          (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol
            (Localinput_set_fence_variable_name_entity_external_symbol_t.Localinput_set_fence_variable_name_entity_external_constructor
              "Seg_bc"))))),
   [1; 2; 3; 42; 1; 22; 1])
);;

(* Argument Uni_len *)

let nam_var = "Uni_len";;

let sym_lcd = 
  Localinput_set_body_handle_command_creation_define_symbol_v.localinput_set_body_handle_command_creation_define_constructor 
    nam_var 
;;

test_number 9 (
( sym_lcd :
  Localinput_set_body_handle_command_creation_define_symbol_t.localinput_set_body_handle_command_creation_define_symbol ) =
  Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
   "Uni_len"
);;

let tag_loi_lne = provide (bna_ibo, sym_lcd);;

test_number 10 (
(tag_loi_lne : Localinput_symbol_t.localinput_symbol Tag_t.tag ) =
  (Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
        (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_entity_symbol
          (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol
            (Localinput_set_fence_variable_name_entity_external_symbol_t.Localinput_set_fence_variable_name_entity_external_constructor
              "Uni_len"))))),
   [1; 2; 5; 42; 1; 22; 1])
);;

(* Argument Con_bc *)

let nam_var = "Con_bc";;

let sym_lcd = 
  Localinput_set_body_handle_command_creation_define_symbol_v.localinput_set_body_handle_command_creation_define_constructor 
    nam_var 
;;

let sof_lcd = Localinput_set_body_handle_command_creation_define_symbol_v.string_off sym_lcd;;

test_number 11 (
( sof_lcd : string ) = 
"Con_bc"
);;

let bna_var = Basicname_v.basicname_variable_of_string sof_lcd;;

test_number 12 (
(bna_var : Basicname_t.basicname ) = 
Basicname_t.Variable "Con_bc"
);;
 
let tag_loi_lcd_st = 
    Localinput_as_set_body_handle_command_creation_define_tag_subtree_by_basicname_variable_n_basicname_inputbox_provider_v.provide 
      (bna_var, bna_ibo);;

test_number 13 (
( sym_lcd :
  Localinput_set_body_handle_command_creation_define_symbol_t.localinput_set_body_handle_command_creation_define_symbol ) =
  Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
   "Con_bc"
);;

test_raises_some_exc provide (bna_ibo, sym_lcd);;
