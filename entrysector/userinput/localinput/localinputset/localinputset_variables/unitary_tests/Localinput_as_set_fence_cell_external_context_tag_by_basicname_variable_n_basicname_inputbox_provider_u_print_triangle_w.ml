open Make_test_v;;

testing "Localinput_as_set_fence_cell_external_context_tag_by_basicname_variable_n_basicname_inputbox_provider_v with
    Localinput_as_set_fence_cell_external_context_tag_by_basicname_variable_n_basicname_inputbox_provider_u_print_triangle_w.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Localinput_as_set_fence_cell_external_context_tag_by_basicname_variable_n_basicname_inputbox_provider_u_print_triangle_w.ml";; 

*)

(* define Con_bc *)
(*        context *)
(*          databox "segment_BC" *)
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

open Localinput_as_set_fence_cell_external_context_tag_by_basicname_variable_n_basicname_inputbox_provider_v;; 

let bna_ibo = Basicname_v.basicname_inputbox_of_string "Print_length_segment_bc";;
let nam_var = "Seg_bc";;

let tag_loi_lcd_stl = Localinput_as_set_body_handle_command_creation_define_tag_entity_external_subtree_list_by_basicname_inputbox_provider_v.provide nam_ibo;;

let tag_loi_lcd_st = List_v.only_element_of_predicate_off_list 
      (fun t -> 
	(fun (s, i) ->
	  Localinput_symbol_v.localinput_set_body_handle_command_creation_define_constructor nam_var = s)
	  (Tree_v.root_off_tree t)
      )
      tag_loi_lcd_stl;;

let tag_loi_lec = Tree_v.only_node_of_node_predicate_off_tree 
    (fun (s, i) ->
      Localinput_symbol_v.is_localinput_set_fence_cell_external_context_constructor s 
    )
    tag_loi_lcd_st;;

test_number 1 (
(tag_loi_lec : Localinput_symbol_t.localinput_symbol Tag_t.tag )=
(Localinput_symbol_t.Localinput_set_symbol
   (Localinput_set_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
         (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_external_context_symbol
            (Localinput_set_fence_cell_external_context_symbol_t.Localinput_set_fence_cell_external_context_constructor
               "Con_bc")))),
 [3; 2; 2; 2; 3; 42; 1; 22; 1])
);;

let tag_lne = Localinput_set_fence_variable_name_entity_tag_v.localinput_set_fence_variable_name_entity_tag_off_localinput_tag tag_loi_lne;;

test_number 2 (
(tag_lne :
  Localinput_set_fence_variable_name_entity_symbol_t.localinput_set_fence_variable_name_entity_symbol
  Tag_t.tag ) =
  (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_target_symbol
    (Localinput_set_fence_variable_name_entity_target_symbol_t.Localinput_set_fence_variable_name_entity_target_constructor
      "Len_bc"),
   [1; 2; 4; 42; 1; 22; 1])
);;

let tag_cec = 
    Localinput_set_fence_cell_external_context_tag_by_localinput_set_fence_variable_name_entity_tag_provider_v.provide 
      tag_lne;;

let tag_loi_st = Tree_v.subtree_find_of_node_predicate_off_tree 
    (fun (s, i) -> Localinput_symbol_v.localinput_set_body_handle_command_creation_define_constructor nam_var = s)
    tag_loi_t;;


let nam_dbo =
  Localinput_set_fence_cell_databox_string_off_by_basicname_variable_n_basicname_inputbox_provider_v.provide
    (nam_var, nam_ibo);;

test_number 3 (
(nam_dbo : string ) = 
"segment_BC"
);;

let nam_dba =
    Localinput_as_set_fence_cell_external_context_tag_by_basicname_variable_n_basicname_inputbox_provider_v.provide
      (nam_var, nam_ibo);;

test_number 4 (
(nam_dba : string ) = 
"db1"
)
