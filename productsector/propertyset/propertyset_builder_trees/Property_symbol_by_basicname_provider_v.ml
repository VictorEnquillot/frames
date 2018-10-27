(** {3 Property_tag_by_basicname_n_basicname_inputbox_n_basicname_inputbase_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPRO:Property_tag_by_basicname_n_basicname_inputbox_n_basicname_inputbase_provider_v";
   "Needed-by :"; 
   "What-is-it : the Property Tag for any Basicname if any";
   "Author : François Colonna 29 mai 2017 at 08:30:01+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build bna =
  let nam_fun = "build" in
  
  let nam = Basicname_v.string_off bna in
  match bna with
  | w when w = Basicname_t.Inputbox nam ->
      Property_symbol_v.property_context_inputbox_constructor nam

  | w when w = Basicname_t.Inputbase nam ->
	Property_symbol_v.property_context_inputbase_constructor nam 

  | w when w = Basicname_t.Variable_external nam ->
      Property_symbol_v.property_operand_fence_external_constructor nam

  | _ ->
      Error_messages_v.print_fatal_error __LOC__ nam_fun
	"Basicname were basicname_inputbox | basicname_inputbase | basicname_variable_external"
	(Format.sprintf "%s" (Basicname_v.fullname bna))
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
(* done with do_provider_without_register.sh Basicname_inputbox_by_property_context_inputbox_tag_provider_v.ml force on mardi 15 novembre 2016, 16:37:09 (UTC+0100) *)
