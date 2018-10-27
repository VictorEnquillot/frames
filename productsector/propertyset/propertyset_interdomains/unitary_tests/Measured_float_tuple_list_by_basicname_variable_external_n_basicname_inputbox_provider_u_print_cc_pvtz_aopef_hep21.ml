open Make_test_v;;

testing "Measured_float_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_v with
        Measured_float_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_u_print_cc_pvtz_aopef_hep21.ml";;

(* Deleting Registers *)

(* Tracing *)
(*
Trace_what_by_module_name_register_v.store "Check_consistency_by_context_name_quatuor_provider_v" "debug";;
Trace_what_by_module_name_register_v.store "Figure_basicname_quatuor_by_basicname_databox_n_basicname_database_provider_v" "debug";;

Trace_what_by_module_name_register_v.store "Figure_as_context_tag_quatuor_by_basicname_databox_n_basicname_database_provider_v" "debug";;

Trace_what_by_module_name_register_v.store "Figure_tag_tree_by_basicname_databox_n_basicname_database_provider_v" "debug";;
*)

(* define Con_ao  *)
(*        context *)
(*          domain "skeleton"  *)
(*          database "nwchem"  *)
(*          databox "cc_pVTZ"  *)
(*          end -- context     *)
(*        end -- define        *)

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
   #use "Measured_float_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_u_print_cc_pvtz_aopef_hep21.ml";;

*)

open Measured_float_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_v;;

let nam_ibo = "Print_cc_pvtz_aopef_hep21";;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;

test_number 1 (
(bna_ibo : Basicname_t.basicname ) =
Basicname_t.Inputbox "Print_cc_pvtz_aopef_hep21"
);;

let nam_var_ext = "Aopef_hep21";;
let bna_var_ext = Basicname_v.basicname_variable_external_of_string nam_var_ext;;

test_number 2 (
(bna_var_ext : Basicname_t.basicname ) =
  Basicname_t.Variable_external "Aopef_hep21"
);;

(* Argument (bna_var_ext, bna_ibo) *)

let bna_dom =
  Basicname_domain_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
    (bna_var_ext, bna_ibo) 
;;
  
let nam_dom = Basicname_v.string_off bna_dom;;

test_number 3 (
(nam_dom : string ) =
"skeleton"
);;

let tag_ske = 
  Skeleton_tag_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
    (bna_var_ext, bna_ibo)
;;

test_number 4 (
(tag_ske : Skeleton_tag_t.skeleton_tag ) =
(Skeleton_symbol_t.Skeleton_set_symbol
   (Skeleton_set_symbol_t.Skeleton_set_fence_symbol
      (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
         (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
            (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
               "he p 2 1")))),
 [1; 1; 2; 2; 1; 16; 5; 19; 5])
);;

let flo_mtl = Skeleton_envelope_v.measured_float_tuple_list_of_tag tag_ske;;

test_number 5 (	
(flo_mtl :
  (float Uno_t.uno Tuple_t.tuple, Units_t.units) Doublet_t.doublet list ) =
  [(Tuple_t.Duo (3.044, 1.),
    Units_t.Units_canonical
     (Units_canonical_t.Units_canonical_quantum
       Units_canonical_quantum_t.Canonical_quantum_length_bohr))]
);;
