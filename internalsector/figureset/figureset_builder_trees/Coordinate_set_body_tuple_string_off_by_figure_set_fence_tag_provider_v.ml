(** {3 Coordinate_set_body_tuple_string_off_by_figure_set_fence_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BFIG:Coordinate_set_body_tuple_string_off_by_figure_set_fence_tag_provider_v";
   "Register : BFIG:Coordinate_set_body_tuple_string_off_by_figure_set_fence_tag_register_v";
   "Needs : BCOO:Coordinate_context_databox_tag_by_any_sole_index_provider_v";
   "Needs : BCOO:Coordinate_tag_all_list_by_basicname_database_n_databox_name_provider_v";
   "Needs : BCOO:Coordinate_set_body_tuple_string_off_by_figure_set_fence_tag_provider_v";
   "Definition : a Bridge expresses any Fence entity Tag of an Upper_domain U as a L_tag of a Lower_domain L. It is Up_Coerced";

   "Abbreviation : _dcv = Db1pointsdata_set_body_cluster_vertex_constructor";
   "Abbreviation : _drv = Db1pointsdata_set_body_record_vertex_constructor";
   "Improve : should be subdivided";
   "Improve : by introducing body_poinr and fence_point";
   "Author : François Colonna 11 janvier 2017 at 11:21:54+01:00";
 ]
;;

(*  Figure_Db1points_Coordinate_Scheme                                                           *)
(*  Figure_set_fence "A"       -->        Db1pointsdata_set_body_cluster_vertex_constructor "A"  *)
(*           idx_fsf                                          |                                  *)
(*  ------------|------------------------------------------------------------------------------  *)
(*              v                                             |                                  *)
(*  COO      idx_fsf                                          v                                  *)
(*  Coordinate_set_body_tuple "A_A"  <--  Db1pointsdata_set_body_record_vertex_constructor "A_A" *)

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Build) *)

let build tag_fsf =
  let soi_fsf = Tag_v.sole_index_off_tag tag_fsf in
  let idx_fsf = Sole_index_v.head_index soi_fsf in 

  let tag_dbo = 
    Figure_context_databox_tag_by_any_sole_index_provider_v.provide
      soi_fsf
  in
  
  let nam_fig = Figure_name_by_figure_set_fence_tag_provider_v.provide tag_fsf in

  let (bna_dbo, bna_dba) =
    Basicname_databox_n_basicname_database_by_figure_context_databox_tag_provider_v.provide 
      tag_dbo 
  in
  let nam_dba = Basicname_v.string_off bna_dba in
  match nam_dba with 
  | "db1points" ->
      
      let tag_db1_l = 
	Db1pointsdata_tag_all_list_by_basicname_databox_provider_v.provide 
	  bna_dbo 
      in
      
      let pre_tag_dcv_sof sof (s, i) = 
	(Db1pointsdata_symbol_v.is_db1pointsdata_set_body_cluster_vertex_constructor s)
	  && 
	(Db1pointsdata_symbol_v.string_off s = sof)
      in
      
      let tag_db1_dcv = 
	try List_v.only_element_of_predicate_off_list 
	  (pre_tag_dcv_sof nam_fig) 
	  tag_db1_l 
	with Failure "No_element:List_v.only_element_of_predicate_off_list" ->
	  
	  Error_messages_v.print_fatal_error nam_mod "build"
	    (Format.sprintf "At least one element of list exist with string_off %s" nam_fig)
	    (Format.sprintf "String_off List is :@.  %s" 
	       (List_v.name_in_column 
		  (fun t -> (Db1pointsdata_tag_v.name t) ^ " \"" ^ (Db1pointsdata_tag_v.string_off t) ^ "\"") tag_db1_l)
	    )
	    "Check"

      in
      let soi_db1_dcv = Tag_v.sole_index_off_tag tag_db1_dcv in
      
      let pre_tag_drv_soi soi (s, i) = 
	(Db1pointsdata_symbol_v.is_db1pointsdata_set_body_record_vertex_constructor s)
	  && 
	(i = soi)
      in	  
      let soi_db1_drv = Sole_index_v.make idx_fsf soi_db1_dcv in
      let tag_db1_drv = List_v.only_element_of_predicate_off_list (pre_tag_drv_soi soi_db1_drv) tag_db1_l in
      
      Db1pointsdata_tag_v.string_off tag_db1_drv 
	
  | _ -> 
    Error_messages_v.print_fatal_error nam_mod "build"
	"Database_name were one of \"db1points\""
	nam_dba
	"Check"
;;

(** {6 Storing} *)

let store tag_fsf result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Coordinate_set_body_tuple_string_off_by_figure_set_fence_tag_register_v.store nam_mod tag_fsf result;
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
  let result = Coordinate_set_body_tuple_string_off_by_figure_set_fence_tag_register_v.retrieve nam_mod tag_fsf in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_fsf =
  if Coordinate_set_body_tuple_string_off_by_figure_set_fence_tag_register_v.is_stored tag_fsf
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

