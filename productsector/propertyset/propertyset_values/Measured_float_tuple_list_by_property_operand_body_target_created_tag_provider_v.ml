(** {3 Measured_float_tuple_list_by_property_operand_body_target_created_tag_provider_v} *)

(** {6 Documenting_for_value_v} *)

let documentation () = 
  [
   "Current : VPRO:Measured_float_tuple_list_by_property_operand_body_target_created_tag_provider_v";
   "Register : VPRO:Measured_float_tuple_list_by_property_operand_body_target_created_tag_register_v";
   "Needs : OCOO:Coordinate_operation_measured_float_tuple_v";
   "Needs : VARLOI:Cofactor_entity_measured_float_tuple_list_by_property_operator_fence_creation_toentity_tag_provider_v";
   "Needs : VARLOI:Cofactor_basic_float_by_property_operator_fence_creation_toentity_tag_provider_v";
   "Needed-by : ";
   "What-is-it : ";
   "Example : the translated measure of a Point";
   "Example : the homothetical measure of a Point";
   "How-is-it-done : recursively";
   "Improve : need to store intermediate calculations";
   "Author : François Colonna 31 mai 2017 at 09:30:04+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

(*   ptc     *)
(*   / \     *)
(* pct ptc   *)
(*     / \   *)
(*   pct pex *)

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Building} *)
 
let build tag_ptc =  
  let nam_fun = "build" in

  let soi_ptc = Tag_v.sole_index_off_tag tag_ptc in
  let bna_ibo = Basicname_inputbox_by_any_sole_index_provider_v.provide soi_ptc in
  
(* Path from External up to Current *)
  let tag_ptc_l =
    Property_tag_path_from_target_to_target_by_property_operand_body_target_created_tag_provider_v.provide
      tag_ptc
  in

  let rec apply flo_opd_mtl tag_ptc_l =
    match tag_ptc_l with
    | [] -> flo_opd_mtl
    | tag_ptc_cur :: tag_ptc_tl ->
	
	Management_v.debug_what_string " tag_ptc_cur " nam_mod nam_fun (Property_operand_body_target_created_tag_v.fullname tag_ptc_cur);

(* Containee Operator *)
	let tag_pct_ope =
	  Property_operand_body_target_created_container_v.property_operator_fence_creation_toentity_tag_of_tag
	    tag_ptc_cur
	in
	
	let nam_var_ope = Property_operator_fence_creation_toentity_tag_v.string_off tag_pct_ope in
	let bna_var_ope = Basicname_v.basicname_variable_operator_of_string nam_var_ope in

(* Operation *)
	let bna_opt =
	  Basicname_operation_by_basicname_variable_operator_n_basicname_inputbox_provider_v.provide
	    (bna_var_ope, bna_ibo)
	in
	let nam_opt = Basicname_v.string_off bna_opt in
 
	let flo_cof_mt =
	  Cofactor_entity_measured_float_tuple_by_property_operator_fence_creation_toentity_tag_provider_v.provide
	    tag_pct_ope 
	in
	
	Management_v.debug_what_string " operation " nam_mod nam_fun nam_opt;
	Management_v.debug_what_string " flo_cof_mt " nam_mod nam_fun (Measured_float_tuple_v.shortname flo_cof_mt);

	let flo_cur_mtl =
	  match nam_opt with
	  | "translation" ->

	      List.map
		(fun o ->
		Coordinate_operation_measured_float_tuple_v.translation_point_measured_float_tuple_of_operand_measured_float_tuple_of_vector_measured_float_tuple 
		    o 
		    flo_cof_mt
		)
		flo_opd_mtl 
	
	  | "homothety" ->

	      let flo_sca =
		Cofactor_basic_float_by_property_operator_fence_creation_toentity_tag_provider_v.provide
		  tag_pct_ope 
	      in
	      
	      List.map 
		(fun o ->
		  Coordinate_operation_measured_float_tuple_v.homothety_point_measured_float_tuple_of_operand_measured_float_tuple_of_center_measured_float_tuple_of_scale_factor 
		    o 
		    flo_cof_mt
		    flo_sca
		)
		flo_opd_mtl 
		
	  | _ ->
	      Error_messages_v.print_fatal_error __LOC__ nam_fun
		"Operation were a Transformation i.e. one of translation | homothety"
		nam_opt
		"Check"
	in

	apply flo_cur_mtl tag_ptc_tl

  in
  
(* Measured_float_tuple_list for Operand_external *)
  let tag_pfe =
    Property_operand_fence_external_tag_by_property_operand_body_target_created_provider_v.provide 
      tag_ptc 
  in
  
  let flo_opd_ext_mtl =
    Measured_float_tuple_list_by_property_operand_fence_external_tag_provider_v.provide
      tag_pfe
  in
  
  apply flo_opd_ext_mtl tag_ptc_l 
;;

(** {6 Storing} *)

let store tag_lht val_ =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Measured_float_tuple_list_by_property_operand_body_target_created_tag_register_v.store nam_mod
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
  let result = Measured_float_tuple_list_by_property_operand_body_target_created_tag_register_v.retrieve nam_mod tag_lht in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_lht =
  if Measured_float_tuple_list_by_property_operand_body_target_created_tag_register_v.is_stored tag_lht
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
