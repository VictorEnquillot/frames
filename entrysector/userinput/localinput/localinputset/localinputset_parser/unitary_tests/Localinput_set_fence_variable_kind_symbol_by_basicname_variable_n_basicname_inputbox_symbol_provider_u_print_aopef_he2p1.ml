open Make_test_v;;

testing "Localinput_set_fence_variable_kind_symbol_by_basicname_variable_n_basicname_inputbox_symbol_provider_v with
    Localinput_set_fence_variable_kind_symbol_by_basicname_variable_n_basicname_inputbox_symbol_provider_u_print_aopef_he2p1.ml";;

(* Deleting Registers *)
Register_v.delete Localinput_set_fence_variable_kind_symbol_by_basicname_variable_n_basicname_inputbox_register_v.register;;
Register_v.delete Localinput_set_fence_variable_kind_symbol_by_basicname_variable_n_basicname_inputbox_register_v.register;;
Register_v.delete Localinput_set_fence_variable_name_n_kind_symbol_list_by_basicname_inputbox_register_v.register;;
Register_v.delete Localinput_set_fence_variable_name_symbol_by_basicname_variable_n_basicname_inputbox_register_v.register;;

(* Tracing *)

(* define Con_ao  *)
(*        context *)
(*          domain "skeleton" *)
(* 	 database "nwchem" *)
(* 	 databox "cc_pvtz" *)
(* 	 end -- context *)
(*        end -- define *)

(* define Aopef_he2p1	 *)
(*        external  *)
(*          type [ "skeleton" "set" "fence" "centered" "aopef" "constructor" ] *)
(*          external_name "he 2 p 1" *)
(*          external_context Con_ao *)
(*          end -- external *)
(*        end -- define *)

(* define Uni_len  *)
(*        external  *)
(*          type [ "units" "length" "bohr" ] *)
(*          external_context Con_ao *)
(*          end -- external *)
(*        end -- define *)

(* define Uni_ang  *)
(*        external  *)
(*          type [ "units" "angle" "radian" ] *)
(*          external_context Con_ao *)
(*          end -- external *)
(*        end -- define *)

(* print Aopef_he2p1  *)
(*       units [ Uni_len Uni_ang ] *)
(*       end -- print *)

(* stop *)

(* toplevel 
   #use "Localinput_set_fence_variable_kind_symbol_by_basicname_variable_n_basicname_inputbox_symbol_provider_u_print_aopef_he2p1.ml";; 

*)

open Localinput_set_fence_variable_kind_symbol_by_basicname_variable_n_basicname_inputbox_symbol_provider_v;;

let nam_ibo = "Print_aopef_he2p1";;
let wor_cap = "Aopef_he2p1";;
let sym_fvn = Localinput_set_fence_variable_name_symbol_by_basicname_variable_n_basicname_inputbox_provider_v.provide (nam_ibo, wor_cap);;

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
