(** {3 Basicname_inputbox_n_basicname_inputbase_by_localinput_set_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BLOI:Basicname_inputbox_n_basicname_inputbase_by_localinput_set_tag_provider_v";
   "Needs : CONS:Basicname_databox_n_basicname_database_by_any_sole_index_provider_v";
   "Needed-by :"; 
   "What-is-it : the couple Basicname_inputbox_n_basicname_inputbase for Localinput_set_tag";
   "Author : François Colonna 10 avril 2017 at 12:02:57+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build tag_lse =
  let soi_lse = Tag_v.sole_index_off_tag tag_lse in
  Basicname_databox_n_basicname_database_by_any_sole_index_provider_v.provide soi_lse
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
(* done with do_provider_without_register.sh Basicname_inputbox_n_basicname_inputbase_by_localinput_set_tag_provider_v.ml force on mardi 28 mars 2017, 11:57:07 (UTC+0200) *)
