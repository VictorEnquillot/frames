(** {3 Measured_float_tuple_list_by_property_operand_fence_external_tag_provider_v} *)

(** {6 Documenting_for_value_v} *)

let documentation () = 
  [
   "Current : VPRO:Measured_float_tuple_list_by_property_operand_fence_external_tag_provider_v";
   "Register : VPRO:Measured_float_tuple_list_by_property_operand_fence_external_tag_register_v";
   "Needs : IPRO:Measured_float_tuple_list_by_basicname_variable_external_n_basicname_inputbox_providerv";
   "Needed-by : ";
   "What-is-it : the Measured_float_tuple_list as value of any Property_operand_fence_external";
   "How-is-it-done : ";
   "Author : François Colonna 26 mai 2017 at 10:20:40+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Building} *)
 
let build tag_pfe =  

  let soi_pfe = Tag_v.sole_index_off_tag tag_pfe in
  let bna_ibo = Basicname_inputbox_by_any_sole_index_provider_v.provide soi_pfe in

  let tag_pro = 
    Property_operand_fence_external_tag_v.property_tag_of_property_operand_fence_external_tag
      tag_pfe 
  in
  let bna = Basicname_by_property_tag_provider_v.provide tag_pro in
  let bna_var_ext = Basicname_v.basicname_variable_external_off_basicname bna in
	
  Measured_float_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
    (bna_var_ext, bna_ibo)
;;

(** {6 Storing} *)

let store tag_lht val_ =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Measured_float_tuple_list_by_property_operand_fence_external_tag_register_v.store nam_mod
 tag_lht val_;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store tag_lht =
  let val_ = build tag_lht in
  store tag_lht val_;
  val_
;;

(** {6 Retrieving} *)

let retrieve tag_lht =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Measured_float_tuple_list_by_property_operand_fence_external_tag_register_v.retrieve nam_mod tag_lht in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_lht =
  if Measured_float_tuple_list_by_property_operand_fence_external_tag_register_v.is_stored tag_lht
  then retrieve tag_lht
  else build_n_store tag_lht
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;
