(** {3 Property_symbol_by_sole_index_register_filler_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPRO:Property_symbol_by_sole_index_register_filler_v";
   "Needs : BPRO:Basicname_inputbox_n_basicname_inputbase_by_any_sole_index_provider_v";
   "Needs : BPRO:Property_tag_all_list_by_basicname_inputbox_n_basicname_inputbase_provider_v";
   "Needed-by : BPRO:";
   "What-is-it : the place where the Main Register Property_symbol_by_sole_index_register_v is filled";
   "Remark : for external_sector only";
   "Author : François Colonna 15 novembre 2016 at 16:34:47+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Filling} *)

let fill soi_any =
  let nam_fun = "fill" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in

  if (Property_symbol_by_sole_index_register_v.is_empty ())
  then
    begin
      let (bna_dbo, bna_dba) = 
	Basicname_inputbox_n_basicname_inputbase_by_any_sole_index_provider_v.provide
	  soi_any 
      in
      ignore (Property_tag_all_list_by_basicname_inputbox_n_basicname_inputbase_provider_v.provide 
		(bna_dbo, bna_dba)
	     );
    end
  else ();
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(* using template_product_extractor_filling_basicname_inputbox_n_basicname_inputbase_register_v.ml *)
(* done with do_extractor_filling_register.sh force on mardi 15 novembre 2016, 16:37:17 (UTC+0100) *)
