(** {3 Make_argument_by_localinput_set_body_box_type_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VARLOI:Make_argument_by_localinput_set_body_box_type_tag_provider_v";
   "Needs : VARLOI:Localinput_set_body_box_type_string_list_by_localinput_set_body_box_type_tag_provider_v";
   "Needed-by :"; 
   "What-is-it : the string argument (provided by box_type) for the make function for any entity";
   "How-is-it-done : by concatenating all string_off defined in Box_type subtree";
   "Example : type [ \"property\" \"target\" \"explicit\" \"created\" \"constructor\" ]";
   "Example : gives \"property_target_explicit_created_constructor\"";
   "Improve : use Symbol tree";
 ]
;;
 
let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_lbt =
  let str_l =
    Localinput_set_body_box_type_string_list_by_localinput_set_body_box_type_tag_provider_v.provide
    tag_lbt
  in
  List_v.name_underscored_off_string_list str_l
;; 

let build_n_store tag_lbt =
  build tag_lbt 
;;

(** {6 Providing} *)

let provide_without_trace tag_lbt =
  build_n_store tag_lbt
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;
