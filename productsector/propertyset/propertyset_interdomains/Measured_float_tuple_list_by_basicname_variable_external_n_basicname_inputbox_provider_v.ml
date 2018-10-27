(** {3 Measured_float_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_v} *)

(** {6 Documenting_for_envelope} *)

let documentation () = 
  [
   "Current : IPRO:Measured_float_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_v";
   "Needs : IPRO:Elementary_envelopee_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_v";
   "Needed-by : ";
   "What-is-it : IPRO:Measure Tuple list for an External Variable";
   "How-is-it-done : by extraction from Envelope this ensure correctness of values";
   "Author : François Colonna 10 mai 2017 at 10:30:47+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build (bna_var_ext, bna_ibo) =

  let bna_dom =
    Basicname_domain_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
      (bna_var_ext, bna_ibo) 
  in
  let nam_dom = Basicname_v.string_off bna_dom in

  match nam_dom with
  | "parameter" ->
      
      let tag_par = 
	Parameter_tag_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
	  (bna_var_ext, bna_ibo)
      in
      let flo_mt = Measured_float_tuple_by_parameter_tag_provider_v.provide tag_par in
      [flo_mt]
	
  | "skeleton" ->
      
      let tag_ske = 
	Skeleton_tag_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
	  (bna_var_ext, bna_ibo)
      in
      Skeleton_envelope_v.measured_float_tuple_list_of_tag tag_ske
	
  | "coordinate" ->
      
      let tag_coo = 
	Coordinate_tag_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
	  (bna_var_ext, bna_ibo)
      in
      let flo_mt = Measured_float_tuple_by_coordinate_tag_provider_v.provide tag_coo in
      [flo_mt]
	
  | "figure" ->
      
      let tag_fig = 
	Figure_tag_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
	  (bna_var_ext, bna_ibo)
      in
      Figure_envelope_v.measured_float_tuple_list_of_tag tag_fig

  | _ -> 
      Error_messages_v.print_fatal_error __LOC__ "build"
	"Domain name were coordinate | figure | parameter | skeleton"
	nam_dom
	"Check"
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
(* done with do_provider_without_register.sh Elementary_envelopee_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_v.ml  on mercredi 11 janvier 2017, 18:20:09 (UTC+0100) *)
