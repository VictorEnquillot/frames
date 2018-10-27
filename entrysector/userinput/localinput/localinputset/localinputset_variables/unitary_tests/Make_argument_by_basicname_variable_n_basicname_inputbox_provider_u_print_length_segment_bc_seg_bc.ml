open Make_test_v;;

testing "Make_argument_by_basicname_variable_n_basicname_inputbox_provider_v
        Make_argument_by_basicname_variable_n_basicname_inputbox_provider_u_print_length_segment_bc_seg_bc.ml";;

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
   #use "Make_argument_by_basicname_variable_n_basicname_inputbox_provider_u_print_length_segment_bc_seg_bc.ml";;

*)

open Make_argument_by_basicname_variable_n_basicname_inputbox_provider_v;;

let nam_var = "Seg_bc";;
let nam_ibo = "Print_length_segment_bc";;
let bna_var = Basicname_v.basicname_variable_of_string nam_var;;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;; 
 
let str_l =
  Localinput_set_body_box_type_string_list_by_basicname_variable_n_basicname_inputbox_provider_v.provide
    (bna_var, bna_ibo);;

test_number 1 (
(str_l : string list) =
["figure"; "set"; "body"; "segment"; "constructor"]
);;

let str_arg = List_v.name_underscored_off_string_list str_l;;

test_number 2 (
(str_arg : string ) = 
"figure_set_body_segment_constructor"
);;

test_number 3 (
str_arg = provide (bna_var, bna_ibo)
);;
