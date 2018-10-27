
open Make_test_v;;

testing "Property_symbol_subtree_by_basicname_inputbox_n_basicname_inputbase_provider_v with
        Property_symbol_subtree_by_basicname_inputbox_n_basicname_inputbase_provider_u_define_operator_tra_bc.ml";;

(* Deleting Registers *)

(* Tracing *)

(* define Tra_bc *)
(*        operator  *)
(*          type [ "operator" "set" "body" "creation" "transformation" "constructor" ] *)
(*          operation "translation" *)
(*          ondomain "figure"   *)
(* 	    cofactor  *)
(* 	     cofactor_entity Seg_bc *)
(* 	     end -- cofactor	 *)
(*          end -- operator *)
(*        end -- define *)

(* stop *)

(* toplevel 
   #use "Property_symbol_subtree_by_basicname_inputbox_n_basicname_inputbase_provider_u_define_operator_tra_bc.ml";; 

*)

open Property_symbol_subtree_by_basicname_inputbox_n_basicname_inputbase_provider_v;;

let nam_var_ope = "Tra_bc";;
let nam_ibo = "Define_operator_tra_bc";;
let nam_iba = "local";;

(* Arguments *)

let bna_var_ope = Basicname_v.basicname_variable_operator_of_string nam_var_ope;;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;
let bna_iba = Basicname_v.basicname_inputbase_of_string nam_iba;;

let tag_loi_lno = Localinput_set_fence_variable_name_operator_tag_by_basicname_variable_operator_n_basicname_inputbox_provider_v.provide (bna_var_ope, bna_ibo);;

test_number 1 (
(tag_loi_lno :
  Localinput_set_fence_variable_name_operator_symbol_t.localinput_set_fence_variable_name_operator_symbol
  Tag_t.tag ) =
  (Localinput_set_fence_variable_name_operator_symbol_t.Localinput_set_fence_variable_name_operator_constructor
    "Tra_bc",
   [1; 2; 1; 15; 1; 22; 1])
);;

test_number 2 (
sym_pro_st = provide (bna_ibo, bna_iba)
);;
