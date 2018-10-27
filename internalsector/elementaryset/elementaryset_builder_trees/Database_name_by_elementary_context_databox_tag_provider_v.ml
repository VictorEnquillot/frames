(** {3 Database_name_by_elementary_context_databox_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BELE:Database_name_by_elementary_context_databox_tag_provider_v";
   "Needs : BELE:Database_name_by_ordinal_provider_v";
   "Needed-by :"; 
   "What-is-it : Database_name for an Elementary_context_databox Tag";
   "Author : François Colonna 05 octobre 2016 at 13:54:07+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build tag_ebo =
  let soi_ebo = Tag_v.sole_index_off_tag tag_ebo in
  let ord_eba = Sole_index_v.father_index_off_sole_index soi_ebo in
  Database_name_by_ordinal_provider_v.provide ord_eba
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
(* done with do_provider_without_register.sh Database_name_by_elementary_context_databox_tag_provider_v.ml force on lundi 10 octobre 2016, 09:12:59 (UTC+0200) *)
