(** {3 Cofactor_basic_float_by_property_operator_fence_creation_toentity_tag_provider_v} *)

(** {6 Documenting_for_value_v} *)

let documentation () = 
  [
   "Current : VPRO:Cofactor_basic_float_by_property_operator_fence_creation_toentity_provider_v";
   "Needs : OCOO:Coordinate_operation_measured_float_tuple_v";
   "Needed-by : ";
   "What-is-it : the float value for the cofactor_basic of an Operator";
   "Author : François Colonna 31 mai 2017 at 08:51:24+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Building} *)
 
let build tag_pct =  
  (* let nam_fun = "build" in *)
  
  let soi_pct = Tag_v.sole_index_off_tag tag_pct in
  let bna_ibo = Basicname_inputbox_by_any_sole_index_provider_v.provide soi_pct in
  
  let nam_var_ope = Property_operator_fence_creation_toentity_tag_v.string_off tag_pct in
  let bna_var_ope = Basicname_v.basicname_variable_operator_of_string nam_var_ope in
  
  Float_cofactor_basic_by_basicname_variable_operator_n_basicname_inputbox_provider_v.provide
    (bna_var_ope, bna_ibo)
;;
  
(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;
