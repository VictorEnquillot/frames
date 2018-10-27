(** {3 Skeleton_symbol_by_sole_index_register_filler_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BSKE:Skeleton_symbol_by_sole_index_register_filler_v";
   "Needs : BSKE:Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_provider_v";
   "What-is-it : the place where the Main Register Skeleton_symbol_by_sole_index_register_v is filled";
   "Author : François Colonna 06 octobre 2016 at 12:10:14+02:00";
   "Author : François Colonna 11 avril 2017 at 16:39:57+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Filling} *)

let fill soi_any =
  let nam_fun = "fill_main_register" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in

  if (Skeleton_symbol_by_sole_index_register_v.is_empty ())
  then
    begin
      let (bna_box, bna_bas) = 
	Basicname_databox_n_basicname_database_by_any_sole_index_provider_v.provide
	  soi_any 
      in
      ignore (Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_provider_v.provide 
		(bna_box, bna_bas)
	     );
    end
  else ();
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(* using template_internal_extractor_filling_databox_name_n_database_name_register_v.ml *)
(* done with do_extractor_filling_register.sh force on mardi 11 octobre 2016, 15:02:13 (UTC+0200) *)
