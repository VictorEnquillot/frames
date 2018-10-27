open Make_test_v;;

testing "Skeleton_symbol_by_basicname_variable_external_n_basicname_inputbox_provider_v with
       Skeleton_symbol_by_basicname_variable_external_n_basicname_inputbox_provider_u_print_cc_pvtz_aopef_hep21.ml";;

(* Deleting Registers *)


(* Tracing *)

(* define Con_ao  *)
(*        context *)
(*          domain "skeleton" *)
(* 	 database "nwchem" *)
(* 	 databox "cc_pvtz" *)
(* 	 end -- context *)
(*        end -- define *)

(* define Aopef_hep21	 *)
(*        external  *)
(*          type [ "skeleton" "set" "fence" "centered" "aopef" "constructor" ] *)
(*          external_name "he p 2 1" *)
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

(* print Aopef_hep21  *)
(*       units [ Uni_len Uni_ang ] *)
(*       end -- print *)

(* stop *)

(* toplevel 
   #use "Skeleton_symbol_by_basicname_variable_external_n_basicname_inputbox_provider_u_print_cc_pvtz_aopef_hep21.ml";; 

*)

open Skeleton_symbol_by_basicname_variable_external_n_basicname_inputbox_provider_v;; 

let nam_ibo = "Print_aopef_hep21";;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;

test_number 1 (
(bna_ibo : Basicname_t.basicname ) =
  Basicname_t.Inputbox "Print_aopef_hep21"
);;

let nam_var_ext = "Aopef_hep21";;
let bna_var_ext = Basicname_v.basicname_variable_external_of_string nam_var_ext;;

test_number 2 (
(bna_var_ext : Basicname_t.basicname ) =
  Basicname_t.Variable_external "Aopef_hep21"
);;

(* Argument (bna_var_ext, bna_ibo) *)

let bna_var = Basicname_v.basicname_variable_of_basicname_variable_external bna_var_ext ;;

let str_arg = 
  Make_argument_by_basicname_variable_n_basicname_inputbox_provider_v.provide
    (bna_var, bna_ibo)
;;

test_number 3 (
(str_arg : string ) = 
"skeleton_set_fence_centered_aopef_constructor"
);;

let bna_ext_nam = 
    Basicname_external_name_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
      (bna_var_ext, bna_ibo);;

test_number 4 (
(bna_ext_nam : Basicname_t.basicname ) =
  Basicname_t.External_name "he p 2 1"
);;

let sof_ske = Basicname_v.string_off bna_ext_nam;;

let sym_ske = Skeleton_symbol_v.make str_arg sof_ske;;

test_number 5 (
(sym_ske : Skeleton_symbol_t.skeleton_symbol ) =
  Skeleton_symbol_t.Skeleton_set_symbol
   (Skeleton_set_symbol_t.Skeleton_set_fence_symbol
     (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
       (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
         (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
           "he p 2 1"))))
);;

test_number 6 (
sym_ske = provide (bna_var_ext, bna_ibo)
);;
