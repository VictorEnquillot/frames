(** {3 Databox_name_n_database_name_by_sole_index_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Databox_name_n_database_name_by_sole_index_provider_v";
   "Needs : DELE:Elementary_any_category_by_sole_index_extractor_v";
   "Needs : DELE:Databox_name_n_database_name_by_elementary_context_databox_tag_provider_v";
   "Needed-by :";  
   "What-is-it : the couple Databox_name_n_database_name for any Sole_index";
   "Author : François Colonna 25 mai 2016 at 09:35:49+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build soi_ele =
  Databox_name_n_database_name_by_global_sole_index_provider_v.provide soi_ele
;;


(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_without_register.sh Databox_name_n_database_name_by_sole_index_provider_v.ml on mardi 7 juin 2016, 15:04:50 (UTC+0200) *)
