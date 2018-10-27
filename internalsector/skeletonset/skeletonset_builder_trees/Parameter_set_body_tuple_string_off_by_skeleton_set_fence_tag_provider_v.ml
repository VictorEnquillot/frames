(** {3 Parameter_set_body_tuple_string_off_by_skeleton_set_fence_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPAR:Parameter_set_body_tuple_string_off_by_skeleton_set_fence_tag_provider_v";
   "Register : BPAR:Parameter_set_body_tuple_string_off_by_skeleton_set_fence_tag_register_v";
   "Needs : BPAR:Parameter_context_databox_tag_by_any_sole_index_provider_v";
   "Needs : BPAR:Parameter_tag_all_list_by_basicname_database_n_databox_name_provider_v";
   "Needs : BPAR:Parameter_set_body_tuple_string_off_by_skeleton_set_fence_tag_provider_v";
   "Definition : a Bridge expresses any Fence entity Tag of an Upper_domain U as a L_tag of a Lower_domain L. It is Up_Coerced";

   "Abbreviation : _dcv = Nwchemdata_set_body_cluster_vertex_constructor";
   "Abbreviation : _drv = Nwchemdata_set_body_record_vertex_constructor";
   "Author : François Colonna 12 avril 2017 at 11:02:31+02:00";
 ]
;;

(*  Skeleton_Bridge_Scheme                                                         *)
(*  Skeleton_set_fence_centered_aopef  ...  Skeleton_set_fence_centered_aopef  ... *)
(*              "he p 2 1"             ...              "he p . ."                 *)
(*  ----------------|---------------------------------------|--------------------- *)
(*                  v                                       v                      *)
(*  Parameter_set_body_tuple_aopef     ...  Parameter_set_body_tuple_aopef         *)
(*              "he p 2 1"             ...              "he p . ."                 *) 

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Build) *)

let build tag_ssf =
  let soi_ssf = Tag_v.sole_index_off_tag tag_ssf in
  let tag_sbo = 
    Skeleton_context_databox_tag_by_any_sole_index_provider_v.provide
      soi_ssf
  in
  
  let (bna_dbo, bna_dba) =
    Basicname_databox_n_basicname_database_by_skeleton_context_databox_tag_provider_v.provide 
      tag_sbo 
  in

  let tag_par_l = 
    Parameter_tag_all_list_by_basicname_databox_n_basicname_database_provider_v.provide
      (bna_dbo, bna_dba)
  in
  
  let pre_tag_pbt_sof sof (s, i) = 
    (Parameter_symbol_v.is_parameter_set_body_tuple_symbol_off_parameter_symbol s)
	  && 
    (Parameter_symbol_v.string_off s = sof)
  in

  let sof_ssf = Skeleton_set_fence_tag_v.string_off tag_ssf in
  let tag_par_pbt = 
    try List_v.only_element_of_predicate_off_list 
	(pre_tag_pbt_sof sof_ssf) 
	tag_par_l 
    with Failure "No_element:List_v.only_element_of_predicate_off_list" ->
      Error_messages_v.print_fatal_error nam_mod "build"
	(Format.sprintf "At least one element of list exist with string_off %s" sof_ssf)
	(Format.sprintf "String_off List is :@.  %s" 
	   (List_v.name_in_column 
	      (fun t -> (Parameter_tag_v.name t) ^ " \"" ^ (Parameter_tag_v.string_off t) ^ "\"") tag_par_l)
	)
	"Check"
	
  in
  Parameter_tag_v.string_off tag_par_pbt 
;;

(** {6 Storing} *)

let store tag_ssf result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Parameter_set_body_tuple_string_off_by_skeleton_set_fence_tag_register_v.store nam_mod tag_ssf result;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store tag_ssf =
  let result = build tag_ssf in
  store tag_ssf result;
  result
;;

(** {6 Retrieving} *)

let retrieve tag_ssf =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Parameter_set_body_tuple_string_off_by_skeleton_set_fence_tag_register_v.retrieve nam_mod tag_ssf in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_ssf =
  if Parameter_set_body_tuple_string_off_by_skeleton_set_fence_tag_register_v.is_stored tag_ssf
  then retrieve tag_ssf
  else build_n_store tag_ssf
;;

(** {6 Providing} *)

let provide tag_ssf =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace tag_ssf in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

