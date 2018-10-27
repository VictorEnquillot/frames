open Make_test_v;;

testing "Make_argument_by_localinput_set_body_list_variable_type_tag_provider_v
        Make_argument_by_localinput_set_body_list_variable_type_tag_provider_u_print_length_segment_bc_seg_bc.ml";;

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

(* toplevel 
   #use "Make_argument_by_localinput_set_body_list_variable_type_tag_provider_u_print_length_segment_bc_seg_bc.ml";;

*)

open Make_argument_by_localinput_set_body_list_variable_type_tag_provider_v;;

let bna_ibo = Basicname_v.basicname_inputbox_of_string "Print_length_segment_bc";;
let sof_ope = "Seg_bc";;
  
let tag_loi_l = Localinput_tag_all_list_by_basicname_inputbox_provider_v.provide nam_ibo;;

let pre_tag_loi_sof_lvt sof (s, i) = 
(Localinput_symbol_v.is_localinput_set_body_list_variable_type_constructor s)
&&
  (Localinput_symbol_v.string_off s = sof)
;;

let tag_loi_lvt = List_v.only_element_of_predicate_off_list (pre_tag_loi_sof_lvt sof_ope) tag_loi_l;;

test_number 1 (
( tag_loi_lvt : Localinput_symbol_t.localinput_symbol Tag_t.tag ) =
 (Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_body_symbol
      (Localinput_set_body_symbol_t.Localinput_set_body_list_symbol
        (Localinput_set_body_list_symbol_t.Localinput_set_body_list_variable_type_symbol
          (Localinput_set_body_list_variable_type_symbol_t.Localinput_set_body_list_variable_type_constructor
            "Seg_bc")))),
   [2; 1; 2; 2; 2; 3; 42; 1; 22; 1])
);;

(* Argument *)

let tag_lvt = (* Coerce Down *)
    Localinput_set_body_list_variable_type_tag_v.localinput_set_body_list_variable_type_tag_off_localinput_tag
      tag_loi_lvt;;

test_number 2 (
( tag_lvt :
  Localinput_set_body_list_variable_type_symbol_t.localinput_set_body_list_variable_type_symbol
  Tag_t.tag ) =
  (Localinput_set_body_list_variable_type_symbol_t.Localinput_set_body_list_variable_type_constructor
    "Seg_bc",
   [2; 1; 2; 2; 2; 3; 42; 1; 22; 1])
);;

let str_l =
    Localinput_variable_type_string_list_by_localinput_set_body_list_variable_type_tag_provider_v.provide
    tag_lvt;;

test_number 3 (
(str_l : string list) =
["figure"; "set"; "body"; "segment"; "constructor"]
);;

let str_arg = List_v.name_underscored_off_string_list str_l;;

test_number 4 (
(str_arg : string ) = 
"figure_set_body_segment_constructor"
);;

test_number 5 (
str_arg = provide tag_lvt
);;
