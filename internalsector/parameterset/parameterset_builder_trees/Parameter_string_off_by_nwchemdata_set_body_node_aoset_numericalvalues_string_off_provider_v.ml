(** {3 Parameter_string_off_by_nwchemdata_set_body_node_aoset_numericalvalues_string_off_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPAR:Parameter_string_off_by_nwchemdata_set_body_node_aoset_numericalvalues_string_off_provider_v";
   "Register : BPAR:Parameter_string_off_by_nwchemdata_set_body_node_aoset_numericalvalues_string_off_register_v";
   "Needs : ";
   "Needs : ";
   "Needed-by :"; 
   "What-is-it : the list of Parameter String_off translated from Nwchemdata_set_body_node_aoset_numericalvalues String_ff";
   "How-is-it-done : by extracting each five elements :";
   "How-is-it-done : (nam_center nam_shell shell_ordinal ao_kind ao_ordinal)";
   "How-is-it-done : by skipping ao_kind (gaussian, slater, ...)";
   "How-is-it-done : by transforming shell_ordinal as nwchemdata_shell_ordinal - first_int_ordinal_of_shell_symmetry";
   "Author : François Colonna 30 septembre 2016 at 12:03:39+02:00 Parameter String_off are not original are in lowercase";
  ]
;;

(* Scheme *)
(*    Parameter_set_body_tuple_aopef   Nwchemdata_set_body_node_aoset_numericalvalues  *)
(*           String_off                                   String_off                   *)                       
(*           "ne p 3 1"               <=              "Ne P 5 GAUSSIAN 1"              *)

let nam_mod = Management_v.current_module_name (documentation ());;

let center_name_of_nwchemdata_string_off sof_nwc_anv =
  Scanf.sscanf sof_nwc_anv "%s %s %i %s %i" (fun s t i v j -> s) 
;;

let quadruplet_of_nwchemdata_string_off sof_nwc_anv =
  Scanf.sscanf sof_nwc_anv "%s %s %i %s %i" (fun s t i v j -> (s, t, i, j) )
;;

let quadruplet_of_parameter_string_off sof_par_anv =
  Scanf.sscanf sof_par_anv "%s %s %i %i" (fun s t i j -> (s, t, i, j) )
;;

let new_parameter_string_off_of_previous_nwchemdata_of_previous_parameter_of_current_newchem sof_nwc_pre sof_par_pre sof_nwc_cur =
  let nam_fun = "new_parameter_string_off_of_previous_nwchemdata_of_previous_parameter_of_current_newchem" in

  (*  "He S 1 GAUSSIAN 1"; "He S 1 GAUSSIAN 2"; "He S 2 GAUSSIAN 1" *)
  (*  "He P 3 GAUSSIAN 1"; "He P 3 GAUSSIAN 2"; "He P 4 GAUSSIAN 1" *)
  
  Management_v.debug_what_string "input sof_nwc_pre" nam_mod nam_fun sof_nwc_pre;
  Management_v.debug_what_string "input sof_par_pre" nam_mod nam_fun sof_par_pre;
  Management_v.debug_what_string "input sof_nwc_cur" nam_mod nam_fun sof_nwc_cur;
  
  let (pre_cen, pre_she, pre_ord_nwc, pre_iao) = quadruplet_of_nwchemdata_string_off sof_nwc_pre in
  let (cur_cen, cur_she, cur_ord_nwc, cur_iao) = quadruplet_of_nwchemdata_string_off sof_nwc_cur in
  let (pre_cen, pre_she, pre_ord_par, _)       = quadruplet_of_parameter_string_off sof_par_pre in
  
  Management_v.debug_what_string "pre_she" nam_mod nam_fun pre_she;
  Management_v.debug_what_string "cur_she" nam_mod nam_fun cur_she;
  Management_v.debug_what_string "pre_ord_nwc" nam_mod nam_fun (String_v.string_of_integer pre_ord_nwc);
  Management_v.debug_what_string "cur_ord_nwc" nam_mod nam_fun (String_v.string_of_integer cur_ord_nwc);
  
  let new_ord_par =
    if cur_she = pre_she
    then 
      begin
	if pre_ord_nwc = cur_ord_nwc
	then pre_ord_par
	else pre_ord_par + 1
      end
    else 
      Shell_symmetry_v.first_int_ordinal_of_shell_symmetry_name cur_she
  in

  Management_v.debug_what_string "pre_ord_par" nam_mod nam_fun (String_v.string_of_integer pre_ord_par);
  Management_v.debug_what_string "new_ord_par" nam_mod nam_fun (String_v.string_of_integer new_ord_par);

  let sof_par = Format.sprintf "%s %s %i %i" cur_cen cur_she new_ord_par cur_iao in
  Management_v.debug_what_string "output sof_par" nam_mod nam_fun sof_par;
  sof_par
;;

let parameter_string_off_list_of_nwchemdata_string_off_list sof_nwc_anv_l =

  let rec apply sof_nwc_pre sof_par_pre acc = function
    | [] -> acc
    | sof_nwc_cur :: tl ->
  
	let sof_par = 
	  new_parameter_string_off_of_previous_nwchemdata_of_previous_parameter_of_current_newchem
	    sof_nwc_pre 
	    sof_par_pre 
	    sof_nwc_cur
	in  

	apply sof_nwc_cur sof_par (sof_par::acc) tl  
    in
    
    let sof_par_cas_l = List.rev (apply "X X 0 GAUSSIAN 0" "X X 0 0" [] sof_nwc_anv_l) in
    List.map String.lowercase sof_par_cas_l
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build sof_nwc_anv =
  parameter_string_off_list_of_nwchemdata_string_off_list sof_nwc_anv_l
;;

(** {6 Storing} *)

let store sof_nwc_anv_l result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Parameter_string_off_by_nwchemdata_set_body_node_aoset_numericalvalues_string_off_register_v.store nam_mod sof_nwc_anv_l result;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store sof_nwc_anv_l =
  let result = build sof_nwc_anv_l in
  store sof_nwc_anv_l result;
  result
;;

(** {6 Retrieving} *)

let retrieve sof_nwc_anv_l =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Parameter_string_off_by_nwchemdata_set_body_node_aoset_numericalvalues_string_off_register_v.retrieve nam_mod sof_nwc_anv_l in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace sof_nwc_anv_l =
  if Parameter_string_off_by_nwchemdata_set_body_node_aoset_numericalvalues_string_off_register_v.is_stored sof_nwc_anv_l
  then retrieve sof_nwc_anv_l
  else build_n_store sof_nwc_anv_l
;;

(** {6 Providing} *)

let provide sof_nwc_anv_l =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace sof_nwc_anv_l in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Parameter_string_off_by_nwchemdata_set_body_node_aoset_numericalvalues_string_off_provider_v.ml force on lundi 5 décembre 2016, 19:43:43 (UTC+0100) *)
