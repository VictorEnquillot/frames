open Make_test_v;;

testing "Property_context_name_quatuor_by_basicname_inputbox_n_basicname_inputbase_provider_v with
    Property_context_name_quatuor_by_basicname_inputbox_n_basicname_inputbase_provider_u_any.ml";;

(* Deleting Registers *)


(* Tracing *)

(* toplevel 
   #use "Property_context_name_quatuor_by_basicname_inputbox_n_basicname_inputbase_provider_u_any.ml";; 

*)

open Property_context_name_quatuor_by_basicname_inputbox_n_basicname_inputbase_provider_v;;

let nam_ibo = "Print_homothety_point_a";;
let nam_iba = "local";;

let nam_pcs = Property_context_sector_name_by_unit_provider_v.provide ();;
  
let nam_pcd = Property_context_domain_name_by_unit_provider_v.provide ();;
  
let nam_qua = Quatuor_v.make nam_ibo nam_iba nam_pcd nam_pcs;;

test_number 1 (
(nam_qua : String.t Quatuor_t.quatuor ) =
  ("Print_homothety_point_a", "local", "property", "product")
);;

test_number 2 (
() = Check_consistency_by_property_context_name_quatuor_provider_v.provide nam_qua
);;

test_number 3 (
nam_qua = provide (nam_ibo, nam_iba)
);;
