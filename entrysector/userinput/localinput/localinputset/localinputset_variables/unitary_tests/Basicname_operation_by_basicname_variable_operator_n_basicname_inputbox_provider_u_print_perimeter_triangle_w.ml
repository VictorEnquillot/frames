open Make_test_v;;

testing "Basicname_operation_by_basicname_variable_operator_n_basicname_inputbox_provider_v
        Basicname_operation_by_basicname_variable_operator_n_basicname_inputbox_provider_u_print_perimeter_triangle_w.ml";;

(* Deleting Registers *)

(* Tracing *)

(* define Con_tw *)
(*        context *)
(*          databox "triangle_w" *)
(*          database "db1points" *)
(*          domain "figure" *)
(*          sector "internal" *)
(*          end -- context *)
(*        end -- define *)

(* define Ope_per *)
(*        operator  *)
(*          type [ "operator" "set" "body" "creation" "tomeasure" "constructor"] *)
(*          operation "perimeter" *)
(*          ondomain "figure"   *)
(*          end -- operator *)
(*        end -- define *)

(* define Tri_w *)
(*        external  *)
(*        type [ "figure" "set" "body" "triangle" "scalene" "acute" "constructor"] *)
(*          external_name "W" *)
(*          external_context Con_tw *)
(*          end -- external *)
(*        end -- define *)

(* define Per_w *)
(*        target  *)
(*        type [ "property" "operand" "body" "target" "measured" "constructor" ] *)
(*          target_operator Ope_per *)
(*          target_operand Tri_w *)
(*          end -- target *)
(*        end -- define *)

(* define Uni_len *)
(*        external  *)
(*          type [ "units" "length" "bohr" ] *)
(*          end -- external *)
(*        end -- define *)

(* print Per_w *)
(*       units [ Uni_len ] *)
(*       end -- print *)

(* stop *)

(* toplevel 
   #use "Basicname_operation_by_basicname_variable_operator_n_basicname_inputbox_provider_u_print_perimeter_triangle_w.ml";;

*)

open Basicname_operation_by_basicname_variable_operator_n_basicname_inputbox_provider_v;;

let nam_ibo = "Print_perimeter_triangle_w";;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;

let nam_var_ope = "Ope_per";;
let bna_var_ope = Basicname_v.basicname_variable_operator_of_string nam_var_ope;;

Check_is_basicname_variable_operator_by_basicname_variable_operator_n_basicname_inputbox_provider_v.provide (bna_var_ope, bna_ibo);;
  
Check_is_basicname_inputbox_by_basicname_provider_v.provide bna_ibo;;

let bna_var = Basicname_v.basicname_variable_of_basicname_variable_operator bna_var_ope;;

test_number 1 (
(bna_var : Basicname_t.basicname ) = 
Basicname_t.Variable "Ope_per"
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
                 "Ope_per")))))),
    [2; 46; 1; 21; 1]);
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
         (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_command_symbol
           (Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_define_symbol
             (Localinput_set_fence_keyword_command_define_symbol_t.Localinput_set_fence_keyword_command_define_constructor
               "Ope_per"))))),
    [1; 2; 46; 1; 21; 1]);
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_body_symbol
       (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
         (Localinput_set_body_block_symbol_t.Localinput_set_body_block_define_symbol
           (Localinput_set_body_block_define_symbol_t.Localinput_set_body_block_define_constructor
             "Ope_per")))),
    [2; 2; 46; 1; 21; 1])]
);;

  let tag_loi_dbo = 
    try 
      Tree_v.only_node_of_node_predicate_off_tree
      (fun (s, i) -> 
        Localinput_symbol_v.is_localinput_set_fence_cell_operation_symbol_off_localinput_symbol s)
      tag_loi_lcd_st 
    with Failure "Not_found:Tree_v.only_node_of_predicate_off_tree" ->
      Error_messages_v.print_syntax_error __LOC__ "build"
	(Format.sprintf "keyword \"operation\" exists in databox file %s.loc" (Basicname_v.string_off bna_ibo))
	"it is missing in operator definition block"
	"Add line : operation <operation_name>"
;;

test_number 3 (
( tag_loi_dbo : Localinput_symbol_t.localinput_symbol Tag_t.tag ) =
  (Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
        (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_operation_symbol
          (Localinput_set_fence_cell_operation_symbol_t.Localinput_set_fence_cell_operation_constructor
            "perimeter")))),
   [2; 2; 2; 2; 2; 46; 1; 21; 1])
);;

let sof_loi_dbo = Localinput_tag_v.string_off tag_loi_dbo;;

let bna_opt =  Basicname_v.basicname_operation_of_string sof_loi_dbo;;

test_number 4 (
(bna_opt : Basicname_t.basicname ) = 
Basicname_t.Operation "perimeter"
);;

test_number 5 (
bna_opt = provide (bna_var_ope, bna_ibo)
);;
