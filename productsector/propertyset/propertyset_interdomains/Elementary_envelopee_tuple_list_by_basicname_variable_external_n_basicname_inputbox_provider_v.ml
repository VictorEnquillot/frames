(** {3 Elementary_envelopee_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_v} *)

(** {6 Documenting_for_envelope} *)

let documentation () = 
  [
   "Current : VPRO:Elementary_envelopee_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_v";
   "Needs : DPRO:Parameter_tag_by_basicname_variable_external_n_basicname_inputbox_provider_v";
   "Needs : DPRO:Skeleton_tag_by_basicname_variable_external_n_basicname_inputbox_provider_v";
   "Needs : DPRO:Coordinate_tag_by_basicname_variable_external_n_basicname_inputbox_provider_v";
   "Needs : DPRO:Figure_tag_by_basicname_variable_external_n_basicname_inputbox_provider_v";
   "Needed-by : Property_target_body_created_envelope_v";
   "What-is-it : IPRO:Elementary_envelopee_t.elementary_envelopee Tuple_t.tuple list for an External Variable";
   "Author : François Colonna 11 janvier 2017 at 18:00:50+01:00";
   "Author : François Colonna 17 avril 2017 at 13:00:01+02:00";
   "Author : François Colonna 17 avril 2017 at 15:46:59+02:00 no domain in argument";
   "Author : François Colonna 09 juin 2017 at 11:14:54+02:00 Figure reset as Skeleton";
   "Remark : the kind of Tuple is defined at the Coordinate/Parameter level";
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
      let env_par = Parameter_envelope_v.envelope_of_tag tag_par in
      let eee_ele_l = 
	List.map Elementary_envelopee_v.elementary_envelopee_of_parameter_envelopee 
	  env_par 
      in

      Tuple_list_v.tuple_list_of_list eee_ele_l
	
  | "skeleton" ->
      
      let tag_ske = 
	Skeleton_tag_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
	  (bna_var_ext, bna_ibo)
      in
      let env_ske = Skeleton_envelope_v.envelope_of_tag tag_ske in

      let eee_ele_l = List.map 
	  Elementary_envelopee_v.elementary_envelopee_of_parameter_envelopee 
	  env_ske 
      in
      let eee_ele_dl = Duo_list_v.duo_list_of_list eee_ele_l in
      List.map Tuple_v.tuple_of_duo eee_ele_dl (* (Exponent, Coefficient) *)

  | "coordinate" ->
      
      let tag_coo = 
	Coordinate_tag_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
	  (bna_var_ext, bna_ibo)
	in
      let env_coo = Coordinate_envelope_v.envelope_of_tag tag_coo in
      let eee_ele_l = List.map Elementary_envelopee_v.elementary_envelopee_of_coordinate_envelopee env_coo in
      Tuple_list_v.tuple_list_of_list eee_ele_l	

  | "figure" ->
      
      let tag_fig = 
	Figure_tag_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
	    (bna_var_ext, bna_ibo)
      in

      let env_fig = Figure_envelope_v.envelope_of_tag tag_fig in
      let eee_ele_l = List.map Elementary_envelopee_v.elementary_envelopee_of_coordinate_envelopee env_fig in

      Tuple_list_v.tuple_list_of_list eee_ele_l
	
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
