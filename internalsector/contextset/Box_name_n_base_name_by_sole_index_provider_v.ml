(** {3 Box_name_n_base_name_by_sole_index_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Box_name_n_base_name_by_sole_index_provider_v";
   "Needs : CONS:Context_name_quatuor_by_context_ordinal_quatuor_provider_v";
   "Register : CONS:Box_name_n_base_name_by_sole_index_register_v";
   "Needed-by :"; 
   "What-is-it : the Global index for a Context_domain. Starts at 1";
   "Example : 8 for elementary";
  ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build soi =
  let nam_fun = "build" in
  let soi_con = try List_v.last_elements_of_int_of_list 4 soi 
  with Failure _ ->
    Error_messages_v.print_fatal_error __LOC__ nam_fun
      "Sole_index length were >= 4"
      (Format.sprintf "Sole index is : %s" (Sole_index_v.name soi))
      "Check"
  in
  let ord_qua = Quatuor_v.quatuor_of_list soi_con in
  let (nam_box, nam_bas, nam_dom, nam_sec) = 
    Context_name_quatuor_by_context_ordinal_quatuor_provider_v.provide 
      ord_qua
  in
  (nam_box, nam_bas) 
;;

(** {6 Storing} *)

let store soi result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Box_name_n_base_name_by_sole_index_register_v.store nam_mod soi result;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store soi =
  let result = build soi in
  store soi result;
  result
;;

(** {6 Retrieving} *)

let retrieve soi =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Box_name_n_base_name_by_sole_index_register_v.retrieve nam_mod soi in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace soi =
  if Box_name_n_base_name_by_sole_index_register_v.is_stored soi
  then retrieve soi
  else build_n_store soi
;;

(** {6 Providing} *)

let provide soi =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace soi in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Box_name_n_base_name_by_sole_index_provider_v.ml force on samedi 8 octobre 2016, 18:52:13 (UTC+0200) *)
