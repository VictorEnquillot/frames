(** {3 Figure_symbol_by_sole_index_register_filler_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : :Figure_symbol_by_sole_index_register_filler_v";
   "Needs : :Figure_tag_all_list_by_database_name_n_databox_name_provider_v";
   "Needed-by : :";
   "What-is-it : the place where the Main Register Figure_symbol_by_sole_index_register_v is filled";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Filling} *)

let fill soi =
  let nam_fun = "fill_main_register" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in

  if (Figure_symbol_by_sole_index_register_v.is_empty ())
  then
    begin
      let (nam_dba, nam_dbo) = 
	Database_name_n_databox_name_by_global_sole_index_provider_v.provide 
	  soi 
      in
      ignore (Figure_tag_all_list_by_database_name_n_databox_name_provider_v.provide (nam_dba, nam_dbo));
    end
  else ();

  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(* done with do_extractor_filling_register.sh on jeudi 9 juin 2016, 11:40:25 (UTC+0200) *)
