(** {3 Parameter_basicname_databox_by_any_sole_index_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPAR:Parameter_basicname_databox_by_any_sole_index_provider_v";
   "Needs : BPAR:Parameter_context_databox_sole_index_by_any_sole_index_provider_v";
   "Needs : CONS:Basicname_databox_by_ordinal_provider_v";
   "What-is-it : the Databox_name obtained by any sole_index of length greater than 3";
   "How-is-it-done : by getting the 4th element of any sole_index";
   "Remark : ";
   "Author : François Colonna 15 novembre 2016 at 15:55:38+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build soi_any =
  let soi_dbo = 
    Parameter_context_databox_sole_index_by_any_sole_index_provider_v.provide
      soi_any 
  in
  let ord_dbo = List.hd soi_dbo in
  Basicname_databox_by_ordinal_provider_v.provide ord_dbo
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
(* done with do_provider_without_register.sh Parameter_basicname_databox_by_any_sole_index_provider_v.ml force on mardi 15 novembre 2016, 16:37:12 (UTC+0100) *)
