(** {3 Figure_as_context_tag_quatuor_by_basicname_databox_n_basicname_database_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BFIG:Figure_as_context_tag_quatuor_by_basicname_databox_n_basicname_database_provider_v";
   "Needs : BFIG:Figure_as_context_sector_tag_by_unit_provider_v";
   "Needs : BFIG:Figure_as_context_domain_tag_by_unit_provider_v";
   "Needs : BFIG:Figure_as_context_database_tag_by_basicname_database_provider_v";
   "Needs : BFIG:Figure_as_context_databox_tag_by_basicname_databox_n_basicname_database_provider_v";
   "Needs : BFIG:Check_consistency_by_figure_basicname_quatuor_provider_v";
   "What-is-it : the Figure Context Quadruplet from Figure_context_databox_tag. Coerced Up";
   "Abbreviation : fba = figure_context_database";
   "Abbreviation : fbo = figure_context_databox";
   "Abbreviation : fcd = figure_context_domain";
   "Abbreviation : fcs = figure_context_sector";
   "Author : François Colonna 12 octobre 2016 at 09:39:01+02:00";
 ]
;;

(*  Context Wye-Tree        *)

(*  Ncstor Tag        fcs   *)
(*      |                   *)
(*  Domain Tag        fcd   *)
(*      |                   *)
(*  Database Tag      dba   *)
(*      |                  *)
(*  Databox Tag       dbo   *)

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (bna_dbo, bna_dba) =
  let nam_fun = "build" in
  Management_v.debug_what_string "(bna_dbo, bna_dba)" nam_mod nam_fun (Duo_v.name Basicname_v.name (bna_dbo, bna_dba));
  
  Check_is_databox_name_by_name_provider_v.provide (Basicname_v.string_off bna_dbo);
  Check_is_database_name_by_name_provider_v.provide (Basicname_v.string_off bna_dba);
  
  let tag_fig_fcs = Figure_as_context_sector_tag_by_unit_provider_v.provide () in
  let tag_fig_fcd = Figure_as_context_domain_tag_by_unit_provider_v.provide () in

  let tag_fig_fba = 
    Figure_as_context_database_tag_by_basicname_database_provider_v.provide 
      bna_dba  
  in

  let tag_fig_fbo = 
    Figure_as_context_databox_tag_by_basicname_databox_n_basicname_database_provider_v.provide 
      (bna_dbo, bna_dba)
  in
  
  let tag_fig_qua = Quatuor_v.make tag_fig_fbo tag_fig_fba tag_fig_fcd tag_fig_fcs in

  let nam_qua = Quatuor_v.map
      Figure_tag_v.string_off
      tag_fig_qua
  in
  let bna_qua = Basicname_quatuor_by_context_name_quatuor_provider_v.provide nam_qua in
  Check_consistency_by_basicname_quatuor_provider_v.provide bna_qua;

  tag_fig_qua
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
(* done with do_provider_without_register.sh Figure_as_context_tag_quatuor_by_basicname_databox_n_basicname_database_provider_v.ml force on mercredi 12 octobre 2016, 16:11:19 (UTC+0200) *)
