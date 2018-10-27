(** {3 Elementary_as_context_databox_tag_by_elementary_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Elementary_as_context_databox_tag_by_elementary_tag_provider_v";
   "Needs : DELE:Elementary_context_databox_tag_by_elementary_tag_provider_v";
   "Needed-by :"; 
   "What-is-it : the Elementary context_databox_tag from any Son in B-Tree";
   "Author : François Colonna 10 mai 2016 at 10:57:18+02:00";
  ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_ele =
  let tag_ebo = 
    Elementary_context_databox_tag_by_elementary_tag_provider_v.provide 
      tag_ele
  in
  Elementary_context_databox_tag_v.elementary_tag_of_elementary_context_databox_tag tag_ebo
;;


(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_without_register.sh Elementary_as_context_databox_tag_by_elementary_tag_provider_v.ml on mercredi 25 mai 2016, 10:04:03 (UTC+0200) *)
