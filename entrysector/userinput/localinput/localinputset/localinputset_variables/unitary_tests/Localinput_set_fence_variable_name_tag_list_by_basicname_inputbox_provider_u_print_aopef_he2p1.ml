open Make_test_v;;

testing "Localinput_set_fence_variable_name_tag_list_by_basicname_inputbox_provider_u_print_aopef_he2p1.ml_v with
        Localinput_set_fence_variable_name_tag_list_by_basicname_inputbox_provider_u_print_aopef_he2p1.ml";;

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
   #use "Localinput_set_fence_variable_name_tag_list_by_basicname_inputbox_provider_u_print_aopef_he2p1.ml";;

*)

open Localinput_set_fence_variable_name_tag_list_by_basicname_inputbox_provider_v;;

let nam_ibo = "Print_length_segment_bc";;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;

(* Argument bna_ibo *)

let tag_lsf_l = 
  Localinput_set_fence_tag_list_by_basicname_inputbox_provider_v.provide 
    bna_ibo;;

let tag_lsf_sl = List.filter
      (fun (s, i) -> 
	Localinput_set_fence_symbol_v.is_localinput_set_fence_variable_name_symbol_off_localinput_set_fence_symbol s) 
      tag_lsf_l;;

let tag_lvn_l = List.map (* Coerce Down *)
    (Tag_v.map_entity
       Localinput_set_fence_symbol_v.localinput_set_fence_variable_name_symbol_off_localinput_set_fence_symbol)
    tag_lsf_sl;;

test_number 1 (
(tag_lvn_l :
  Localinput_set_fence_variable_name_symbol_t.localinput_set_fence_variable_name_symbol
  Tag_t.tag list ) =
  [(Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_context_symbol
     (Localinput_set_fence_variable_name_context_symbol_t.Localinput_set_fence_variable_name_context_constructor
       "Con_bc"),
    [1; 2; 1; 42; 1; 22; 1]);
   (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_operator_symbol
     (Localinput_set_fence_variable_name_operator_symbol_t.Localinput_set_fence_variable_name_operator_constructor
       "Ope_len"),
    [1; 2; 2; 42; 1; 22; 1]);
   (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_entity_symbol
     (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol
       (Localinput_set_fence_variable_name_entity_external_symbol_t.Localinput_set_fence_variable_name_entity_external_constructor
         "Seg_bc")),
    [1; 2; 3; 42; 1; 22; 1]);
   (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_entity_symbol
     (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_target_symbol
       (Localinput_set_fence_variable_name_entity_target_symbol_t.Localinput_set_fence_variable_name_entity_target_constructor
         "Len_bc")),
    [1; 2; 4; 42; 1; 22; 1]);
   (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_entity_symbol
     (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol
       (Localinput_set_fence_variable_name_entity_external_symbol_t.Localinput_set_fence_variable_name_entity_external_constructor
         "Uni_len")),
    [1; 2; 5; 42; 1; 22; 1]);
   (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_entity_symbol
     (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_target_symbol
       (Localinput_set_fence_variable_name_entity_target_symbol_t.Localinput_set_fence_variable_name_entity_target_constructor
         "Len_bc")),
    [1; 2; 6; 42; 1; 22; 1]);
   (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_entity_symbol
     (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol
       (Localinput_set_fence_variable_name_entity_external_symbol_t.Localinput_set_fence_variable_name_entity_external_constructor
         "Uni_len")),
    [1; 2; 2; 2; 6; 42; 1; 22; 1])]
);;


let tag_let_sl = List.filter
      (fun (s, i) -> 
	Localinput_set_fence_variable_name_symbol_v.is_localinput_set_fence_variable_name_entity_target_constructor s)
      tag_lvn_l;;

test_number 2 (
( tag_let_sl :
  Localinput_set_fence_variable_name_symbol_t.localinput_set_fence_variable_name_symbol
  Tag_t.tag list ) =
  [(Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_entity_symbol
     (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_target_symbol
       (Localinput_set_fence_variable_name_entity_target_symbol_t.Localinput_set_fence_variable_name_entity_target_constructor
         "Len_bc")),
    [1; 2; 4; 42; 1; 22; 1]);
   (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_entity_symbol
     (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_target_symbol
       (Localinput_set_fence_variable_name_entity_target_symbol_t.Localinput_set_fence_variable_name_entity_target_constructor
         "Len_bc")),
    [1; 2; 6; 42; 1; 22; 1])]
);;

let tag_lvn_l = List.map (* Coerce Down *)

test_number 3 (
tag_lvn_l = provide bna_ibo
);;



