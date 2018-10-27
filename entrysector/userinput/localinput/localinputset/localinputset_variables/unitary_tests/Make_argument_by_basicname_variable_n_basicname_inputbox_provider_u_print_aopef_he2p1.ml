open Make_test_v;;

testing "Make_argument_by_basicname_variable_n_basicname_inputbox_provider_v
        Make_argument_by_basicname_variable_n_basicname_inputbox_provider_u_print_aopef_he2p1.ml";;

(* Deleting Registers *)

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
   #use "Make_argument_by_basicname_variable_n_basicname_inputbox_provider_u_print_aopef_he2p1.ml";;

*)

open Make_argument_by_basicname_variable_n_basicname_inputbox_provider_v;;

let nam_ibo = "Print_aopef_he2p1";;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;
let nam_var = "Aopef_he2p1";;
  
let bna_var = Basicname_v.basicname_variable_of_string nam_var;;

  Basicname_v.check_is_basicname_variable_of_basicname bna_var;;
  Basicname_v.check_is_basicname_inputbox_of_basicname bna_ibo;;

let str_l =
    Localinput_set_body_box_type_string_list_by_basicname_variable_n_basicname_inputbox_provider_v.provide
      (bna_var, bna_ibo);;

test_number 1 (
(str_l : string list ) =
  ["skeleton"; "set"; "fence"; "centered"; "aopef"; "constructor"]
);;

let str_arg = List_v.name_underscored_off_string_list str_l;;

test_number 2 (
(str_arg : string ) = 
"skeleton_set_fence_centered_aopef_constructor"
);;

test_number 3 (
str_arg = provide (bna_var, bna_ibo)
);;
