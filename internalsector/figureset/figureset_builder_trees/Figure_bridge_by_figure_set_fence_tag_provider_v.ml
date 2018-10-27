(** {3 Figure_bridge_by_figure_set_fence_tag} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BFIG:Figure_bridge_by_figure_set_fence_tag_provider_v";
   "Register : BFIG:Figure_bridge_by_figure_set_fence_tag_register_v";
   "Needs : BCOO:Coordinate_context_databox_tag_by_any_sole_index_provider_v";
   "Needs : BCOO:Coordinate_tag_all_list_by_basicname_database_n_databox_name_provider_v";
   "Needs : BCOO:Coordinate_set_body_tuple_string_off_by_figure_set_fence_tag_provider_v";
   "Definition : a Bridge expresses any Fence entity Tag of an Upper_domain U as a L_tag of a Lower_domain L. It is Up_Coerced";
   "Author : François Colonna 10 janvier 2017 at 08:50:33+01:00";
 ]
;;

(*  Figure_Db1points_Coordinate_Scheme                                                           *)
(*  Figure_set_fence "A"       -->        Db1pointsdata_set_body_cluster_vertex_constructor "A"  *)
(*                                                            |                                  *)
(*  -------------------------------------------------------------------------------------------  *)
(*                                                            |                                  *)
(*  COO                                                       v                                  *)
(*  Coordinate_set_body_tuple "A_A"  <--  Db1pointsdata_set_body_record_vertex_constructor "A_A" *)

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Bridge : Figure_set_fence_tag sof -> Coordinate_set_body_tuple sof} *)

let build tag_fsf =
  let soi_fsf = Tag_v.sole_index_off_tag tag_fsf in

  let tag_cbo = 
    Coordinate_context_databox_tag_by_any_sole_index_provider_v.provide
      soi_fsf
  in

  let tag_coo_l = 
    Coordinate_tag_all_list_by_coordinate_context_databox_tag_provider_v.provide 
      tag_cbo
  in

  let pre_tag_csf_sof sof (s, i) = 
    (Coordinate_symbol_v.is_coordinate_set_body_tuple_symbol_off_coordinate_symbol s)
      && 
    (Coordinate_symbol_v.string_off s = sof)
  in

  let sof_csf = 
    Coordinate_set_body_tuple_string_off_by_figure_set_fence_tag_provider_v.provide
      tag_fsf
  in

  try List_v.only_element_of_predicate_off_list 
      (pre_tag_csf_sof sof_csf) 
      tag_coo_l
      
  with Failure "No_element:List_v.only_element_of_predicate_off_list" ->
    Error_messages_v.print_fatal_error nam_mod "build"
      (Format.sprintf "At least one element of list exist with string_off %s" sof_csf)
      (Format.sprintf "String_off List is :@.  %s" 
	 (List_v.name_in_column 
	    (fun t -> (Coordinate_tag_v.name t) ^ " \"" ^ (Coordinate_tag_v.string_off t) ^ "\"") tag_coo_l)
      )
      "Check"
;;

(** {6 Storing} *)

let store tag_fsf result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Figure_bridge_by_figure_set_fence_tag_register_v.store nam_mod tag_fsf result;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store tag_fsf =
  let result = build tag_fsf in
  store tag_fsf result;
  result
;;

(** {6 Retrieving} *)

let retrieve tag_fsf =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Figure_bridge_by_figure_set_fence_tag_register_v.retrieve nam_mod tag_fsf in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_fsf =
  if Figure_bridge_by_figure_set_fence_tag_register_v.is_stored tag_fsf
  then retrieve tag_fsf
  else build_n_store tag_fsf
;;

(** {6 Providing} *)

let provide tag_fsf =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace tag_fsf in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

