(** {3 Databox_nameoffile_by_basicname_databox_n_basicname_database_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Databox_nameoffile_by_basicname_databox_n_basicname_database_provider_v";
   "Needs : CONS:Databox_nameoffile_by_databox_name_n_database_name_provider_v";
   "Example : \"point_a.db1\" \"cc_pvtz.nwc\" \"cc_pvtz.g9x\"";
   "Author : François Colonna 09 avril 2017 at 12:50:28+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Building} *)

let build (bna_dbo, bna_dba) =
  let nam_dbo = Basicname_v.string_off bna_dbo in
  let nam_dba = Basicname_v.string_off bna_dba in
  Databox_nameoffile_by_databox_name_n_database_name_provider_v.provide (nam_dbo, nam_dba)
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
(* done with do_provider_without_register.sh Databox_nameoffile_by_databox_name_n_database_name_provider_v.ml force on samedi 8 octobre 2016, 18:52:53 (UTC+0200) *)
