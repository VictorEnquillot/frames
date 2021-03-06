(** {3 Basicname_databox_by_db1pointsdata_context_databox_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BNWC:Basicname_databox_by_db1pointsdata_context_databox_tag_provider_v";
   "Needed-by :"; 
   "What-is-it : Basicname_databox for Db1pointsdata_context_databox_tag";
   "Author : François Colonna 09 avril 2017 at 12:45:26+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build tag_nbo =
  let nam_dbo = Db1pointsdata_context_databox_tag_v.string_off tag_nbo in
  Basicname_v.basicname_databox_of_string nam_dbo
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
(* done with do_provider_without_register.sh Basicname_databox_by_db1pointsdata_context_databox_tag_provider_v.ml  on dimanche 2 avril 2017, 13:31:42 (UTC+0200) *)
