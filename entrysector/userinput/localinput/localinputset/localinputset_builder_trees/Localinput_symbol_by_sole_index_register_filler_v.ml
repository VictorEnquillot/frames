(** {3 Localinput_symbol_by_sole_index_register_filler_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BLOI:Localinput_symbol_by_sole_index_register_filler_v";
   "Needs : BLOI:Localinput_tag_all_list_by_basicname_inputbox_provider_v";
   "Needed-by : BLOI:";
   "What-is-it : the place where the Main Register Localinput_symbol_by_sole_index_register_v is filled";
   "Remark : for external_sector only";
   "Author : François Colonna 04 avril 2017 at 11:34:29+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Filling} *)

let fill soi_any =
  let nam_fun = "fill_main_register" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in

  if (Localinput_symbol_by_sole_index_register_v.is_empty ())
  then
    begin
      let bna_ibo = 
	Localinput_basicname_inputbox_by_any_sole_index_provider_v.provide 
	  soi_any
      in
      ignore (Localinput_tag_all_list_by_basicname_inputbox_provider_v.provide bna_ibo);
    end
  else ();

  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(* using template_entry_extractor_filling_inputbox_name_n_basicname_inputbase_register_v.ml *)
(* done with do_extractor_filling_register.sh force on lundi 31 octobre 2016, 14:54:11 (UTC+0100) *)
