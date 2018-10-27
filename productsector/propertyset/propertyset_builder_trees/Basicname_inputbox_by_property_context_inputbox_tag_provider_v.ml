(** {3 Basicname_inputbox_by_property_context_inputbox_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPRO:Basicname_inputbox_by_property_context_inputbox_tag_provider_v";
   "Needs : BPRO:Inputbox_name_by_ordinal_provider_v";
   "Needed-by :"; 
   "What-is-it : Basicname_inputbox for an Property_context_inputbox Tag";
   "Author : François Colonna 29 mai 2017 at 08:30:01+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build tag_ibo =
  let sof_ibo = Property_context_inputbox_tag_v.string_off tag_ibo in
  Basicname_v.basicname_inputbox_of_string sof_ibo
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
(* done with do_provider_without_register.sh Basicname_inputbox_by_property_context_inputbox_tag_provider_v.ml force on mardi 15 novembre 2016, 16:37:09 (UTC+0100) *)
