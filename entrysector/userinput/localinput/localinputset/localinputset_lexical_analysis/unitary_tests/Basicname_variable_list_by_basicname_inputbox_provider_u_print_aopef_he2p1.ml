open Make_test_v;;

testing "Basicname_variable_list_by_basicname_inputbox_provider_v with
    Basicname_variable_list_by_basicname_inputbox_provider_u_print_aopef_he2p1.ml";;

(* Deleting Registers *)

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

(* Tracing *)

(* toplevel 
   #use "Basicname_variable_list_by_basicname_inputbox_provider_u_print_aopef_he2p1.ml";; 

*)

open Basicname_variable_list_by_basicname_inputbox_provider_v;;

let nam_mod = "Basicname_variable_list_by_basicname_inputbox_provider_v";;
let nam_ibo = "Print_aopef_he2p1";;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;; 

let nam_var_l = 
    Variable_name_list_by_basicname_inputbox_provider_v.provide 
      bna_ibo;;

test_number 1 (
(nam_var_l : string list ) = 
["Con_ao"; "Aopef_he2p1"; "Uni_len"; "Uni_ang"]
);;

let bna_var_l = List.map Basicname_v.basicname_variable_of_string nam_var_l ;;

test_number 2 (
(bna_var_l : Basicname_t.basicname list ) =
[Basicname_t.Variable "Con_ao"; Basicname_t.Variable "Aopef_he2p1";
 Basicname_t.Variable "Uni_len"; Basicname_t.Variable "Uni_ang"]
);;

test_number 3 (
bna_var_l = provide bna_ibo
);;
