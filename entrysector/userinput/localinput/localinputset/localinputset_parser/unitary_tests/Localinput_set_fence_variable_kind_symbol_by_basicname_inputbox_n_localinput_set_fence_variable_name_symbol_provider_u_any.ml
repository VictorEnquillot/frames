open Make_test_v;;

testing "Localinput_set_fence_variable_kind_symbol_by_basicname_variable_n_basicname_inputbox_symbol_provider_v with
    Localinput_set_fence_variable_kind_symbol_by_basicname_variable_n_basicname_inputbox_symbol_provider_u_print_length_segment_bc.ml";;

(* Deleting Registers *)

(* Tracing *)

(* Trace_what_by_module_name_register_v.store "an" "x";; *)

(* toplevel 
   #use "Localinput_set_fence_variable_kind_symbol_by_basicname_variable_n_basicname_inputbox_symbol_provider_u_print_length_segment_bc.ml";; 

*)

open Localinput_set_fence_variable_kind_symbol_by_basicname_variable_n_basicname_inputbox_symbol_provider_v;;

let nam_ibo = "Print_length_segment_bc";;
let nam_var = "Len";;
let sym_fvn = Localinput_set_fence_variable_name_symbol_by_basicname_variable_n_basicname_inputbox_provider_v.provide (nam_ibo, nam_var);;

test_number 1 (
(sym_fvn : Localinput_set_fence_variable_name_symbol_t.localinput_set_fence_variable_name_symbol ) =
Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_entity_symbol
  (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol
     (Localinput_set_fence_variable_name_entity_external_symbol_t.Localinput_set_fence_variable_name_entity_external_constructor
	"Aopef_he2p1"))
);;

let sym_fvk = provide (nam_ibo, sym_fvn);;

test_number 2 (
(sym_fvk : Localinput_set_fence_variable_kind_symbol_t.localinput_set_fence_variable_kind_symbol ) =
  Localinput_set_fence_variable_kind_symbol_t.Localinput_set_fence_variable_kind_entity_symbol
   (Localinput_set_fence_variable_kind_entity_symbol_t.Localinput_set_fence_variable_kind_entity_external_symbol
     (Localinput_set_fence_variable_kind_entity_external_symbol_t.Localinput_set_fence_variable_kind_entity_external_constructor
       "Aopef_he2p1"))
);;
