open Make_test_v;;

testing "Localinput_as_set_fence_variable_name_entity_tag_by_basicname_inputbox_n_localinput_set_body_handle_command_creation_define_symbol_provider_v with
        Localinput_as_set_fence_variable_name_entity_tag_by_basicname_inputbox_n_localinput_set_body_handle_command_creation_define_symbol_provider_u_print_triangle_w.ml";;

(* define Con_db1  *)
(*        context *)
(* 	 database "db1" *)
(*          domain "figure" *)
(* 	 end -- context *)
(*        end -- define *)

(* define Len *)
(*        operator  *)
(*          type [ "operator" "set" "body" "creation" "tomeasure" "constructor"] *)
(* 	 operation "length" *)
(* 	 ondomain "figure"   *)
(*          end -- operator *)
(*        end -- define *)

(* define Seg_bc *)
(*        external  *)
(*          type [ "figure" "set" "body" "segment" "constructor" ] *)
(*          external_name "BC" *)
(*          external_context Con_db1 *)
(*          end -- external *)
(*        end -- define *)

(* define Len_bc *)
(*        target  *)
(*          type [ "property" "operand" "target" "measured" "constructor" ] *)
(* 	 target_operator Len *)
(*          target_operand Seg_bc *)
(* 	 end -- target *)
(*        end -- define *)

(* define Uni_len *)
(*        external  *)
(*          type [ "units" "length" "bohr" ] *)
(*          external_context Con_nwc *)
(*          end -- external *)
(*        end -- define *)

(* print Len_bc *)
(*       units [ Uni_len ] *)
(*       end -- print *)

(* stop *)


(* Deleting Registers *)


(* Tracing *)

(* toplevel 
   #use "Localinput_as_set_fence_variable_name_entity_tag_by_basicname_inputbox_n_localinput_set_body_handle_command_creation_define_symbol_provider_u_print_triangle_w.ml";; 
         
*)

open Localinput_as_set_fence_variable_name_entity_tag_by_basicname_inputbox_n_localinput_set_body_handle_command_creation_define_symbol_provider_v;;

let bna_ibo = Basicname_v.basicname_inputbox_of_string "Print_length_segment_bc";;

let sym_lcd_l = Localinput_set_body_handle_command_creation_define_tag_list_by_basicname_inputbox_provider_v.provide nam_ibo;;

test_number 1 (
( sym_lcd_l :
  Localinput_set_body_handle_command_creation_define_symbol_t.localinput_set_body_handle_command_creation_define_symbol
  Tag_t.tag list ) =
  [(Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
     "Con_db1",
    [1; 42; 1; 22; 1]);
   (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
     "Len",
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

let sof_lcd = "Len_bc";;
let tag_lcd = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> Localinput_set_body_handle_command_creation_define_symbol_v.string_off s = sof_lcd) 
    sym_lcd_l;;
let sym_lcd = Tag_v.entity_off_tag tag_lcd;;

test_number 2 (
( sym_lcd :
  Localinput_set_body_handle_command_creation_define_symbol_t.localinput_set_body_handle_command_creation_define_symbol ) =
Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
  "Len_bc"
);;

let tag_loi_lcd_st = 
  Localinput_as_set_body_handle_command_creation_define_tag_subtree_by_basicname_inputbox_n_localinput_set_fence_variable_name_string_off_provider_v.provide 
    (nam_ibo, sof_lcd);;


let tag_loi_lne = Tree_v.only_node_of_node_predicate_off_tree 
    (fun (s, i) -> 
      (Localinput_symbol_v.localinput_set_fence_variable_name_entity_target_constructor sof_lcd = s)
    ||
      (Localinput_symbol_v.localinput_set_fence_variable_name_entity_external_constructor sof_lcd = s)
)	
    tag_loi_lcd_st;;


test_number 3 (
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

test_number 4 (
tag_loi_lne = provide (nam_ibo, sym_lcd)
);;


