(** {3 Basicname_database_by_skeleton_context_databox_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BSKE:Basicname_database_by_skeleton_context_databox_tag_provider_v";
   "Needs : BSKE:Basicname_database_by_ordinal_provider_v";
   "Needed-by :"; 
   "What-is-it : Database_name for an Skeleton_context_databox Tag";
   "Author : François Colonna 05 octobre 2016 at 13:54:07+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build tag_sbo =
  let soi_dbo = Tag_v.sole_index_off_tag tag_sbo in
  let ord_sba = Sole_index_v.father_index_off_sole_index soi_dbo in
  Basicname_database_by_ordinal_provider_v.provide ord_sba
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
(* done with do_provider_without_register.sh Basicname_database_by_skeleton_context_databox_tag_provider_v.ml force on mardi 11 octobre 2016, 15:02:09 (UTC+0200) *)
