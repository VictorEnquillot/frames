(** {3 Measure_list_by_parameter_set_body_tuple_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VPAR:Measure_list_by_parameter_set_body_tuple_tag_provider_v";
   "Needs : BPAR:Database_name_by_any_sole_index_provider_v";
   "Needs : BPAR:Nwchemdata_set_body_node_aoset_numericalvalues_tag_by_parameter_set_body_tuple_aopef_tag_provider_v";
   "Needs : VPAR:Measure_list_from_nwchem_by_parameter_set_body_tuple_tag_provider_v";
   "Needed-by : VPAR:Parameter_set_fence_coefficient_envelope_v";
   "What-is-it : the Measure list dispatching according to Database for an Aopef tuple (exponent, coefficient) as list";
   "Author : François Colonna 29 décembre 2016 at 18:50:12+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_pbt =
  let soi_pbt = Tag_v.sole_index_off_tag tag_pbt in
  let sym_pbt = Tag_v.entity_off_tag tag_pbt in 
  let nam_dba = Database_name_by_any_sole_index_provider_v.provide soi_pbt in

  match nam_dba with 
  | "nwchem" ->
      begin
	match sym_pbt with
	| Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol sym_pta ->
	    
	    let tag_nan =
 	      Nwchemdata_set_body_node_aoset_numericalvalues_tag_by_parameter_set_body_tuple_tag_provider_v.provide
		tag_pbt 
	    in
	
	    Measure_list_by_nwchemdata_set_body_node_aoset_numericalvalues_tag_provider_v.provide tag_nan
	      
	| Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_ecppef_symbol sym_pte ->
	    
	    Utilities_v.not_yet_implemented nam_mod "build Ecp"
      end
  | _ ->
      Error_messages_v.print_fatal_error __LOC__ "build"
        (Format.sprintf "Access to Database >%s< were implemented" nam_dba)
        "It is NOT. Implemented Databases implemented are : nwchem"
        "Please report or implement code" 
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_without_register_v.ml *)
(* done with do_provider_without_register.sh Measure_list_by_parameter_set_body_tuple_tag_provider_v.ml force on mardi 6 décembre 2016, 09:18:33 (UTC+0100) *)
