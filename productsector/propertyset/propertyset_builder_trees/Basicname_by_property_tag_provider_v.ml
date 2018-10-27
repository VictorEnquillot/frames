(** {3 Basicname_by_property_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPRO:Basicname_by_property_tag_provider_v";
   "Needed-by :"; 
   "What-is-it : the Basicname for any Property_tag";
   "Author : François Colonna 03 avril 2017 at 11:11:30+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build tag_pro =
  let nam_fun = "build" in
  
  let sym_pro = Tag_v.entity_off_tag tag_pro in
  let sof_pro = Property_symbol_v.string_off sym_pro in
  match sym_pro with
  | w when Property_symbol_v.is_property_context_inputbox_constructor w ->
	Basicname_v.basicname_inputbox_of_string sof_pro

  | w when Property_symbol_v.is_property_context_inputbase_constructor w ->
	Basicname_v.basicname_inputbase_of_string sof_pro

  | w when Property_symbol_v.is_property_operand_fence_external_constructor w ->
      Basicname_v.basicname_variable_external_of_string sof_pro
	
  | _ ->
      Error_messages_v.print_fatal_error __LOC__ nam_fun
	"Property_symbol were property_operand_fence_external_constructor |"
	(Format.sprintf "%s" (Property_symbol_v.fullname sym_pro))
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

