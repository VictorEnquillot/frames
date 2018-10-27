(** {3 Db1pointsdata_symbol_by_sole_index_register_filler_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : :Db1pointsdata_symbol_by_sole_index_register_filler_v";
   "Needs : :Db1pointsdata_tag_all_list_by_basicname_databox_provider_v";
   "Needed-by : :";
   "What-is-it : the place where the Main Register Db1pointsdata_symbol_by_sole_index_register_v is filled";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Filling} *)

let fill soi_any =
  let nam_fun = "fill_main_register" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in

  if (Db1pointsdata_symbol_by_sole_index_register_v.is_empty ())
  then
    begin
      let bna_dbo = 
	Basicname_databox_by_any_sole_index_provider_v.provide 
	  soi_any
      in
      ignore (Db1pointsdata_tag_all_list_by_basicname_databox_provider_v.provide bna_dbo);
    end
  else ();

  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(* using template_extractor_filling_databox_name_register_v.ml *)
(* done with do_extractor_filling_register.sh force on lundi 26 septembre 2016, 07:27:07 (UTC+0200) *)
