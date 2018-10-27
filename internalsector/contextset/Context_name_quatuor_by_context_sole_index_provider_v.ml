(** {3 Context_name_quatuor_by_context_sole_index_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Context_name_quatuor_by_context_sole_index_provider_v";
   "Needs : CONS:Context_name_quatuor_by_context_ordinal_quatuor_provider_v";
   "Needed-by :"; 
   "What-is-it : it provides a Context_name from its sole_index";
   "Author : François Colonna 22 septembre 2016 at 12:18:58+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build soi_con =
  if (List.length soi_con <> 4) 
  then
    Error_messages_v.print_fatal_error __LOC__ "build"
      "Sole_index length were = 4"
      (Format.sprintf "Sole index is : %s" (Sole_index_v.name soi_con))
      "Check"
  else
    begin
      let ord_qua = Quatuor_v.quatuor_of_list soi_con in
      Context_name_quatuor_by_context_ordinal_quatuor_provider_v.provide ord_qua
    end
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
(* done with do_provider_without_register.sh Context_name_quatuor_by_context_sole_index_provider_v.ml force on samedi 8 octobre 2016, 18:52:46 (UTC+0200) *)
