(** {3 Basicname_inputbase_by_property_context_inputbox_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPRO:Basicname_inputbase_by_property_context_inputbox_tag_provider_v";
   "Needs : BPRO:Basicname_inputbase_by_ordinal_provider_v";
   "Needed-by :"; 
   "What-is-it : Basicname_inputbase for an Property_context_inputbox Tag";
   "Author : François Colonna 04 avril 2017 at 10:03:41+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build tag_ibo =
  let soi_ibo = Tag_v.sole_index_off_tag tag_ibo in
  let ord_iba = Sole_index_v.father_index_off_sole_index soi_ibo in
  Basicname_inputbase_by_ordinal_provider_v.provide ord_iba
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
(* done with do_provider_without_register.sh Basicname_inputbase_by_property_context_inputbox_tag_provider_v.ml force on mardi 15 novembre 2016, 16:37:09 (UTC+0100) *)
