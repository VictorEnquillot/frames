(** {3 Parameter_as_context_tag_quatuor_by_basicname_databox_n_basicname_database_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPAR:Parameter_as_context_tag_quatuor_by_basicname_databox_n_basicname_database_provider_v";
   "Needs : BPAR:Parameter_as_context_sector_tag_by_unit_provider_v";
   "Needs : BPAR:Parameter_as_context_domain_tag_by_unit_provider_v";
   "Needs : BPAR:Parameter_as_context_database_tag_by_basicname_database_provider_v";
   "Needs : BPAR:Parameter_as_context_databox_tag_by_basicname_databox_n_basicname_database_provider_v";
   "Needs : BPAR:Check_consistency_by_basicname_quatuor_provider_v";
   "What-is-it : the Nwchem Context Quadruplet from Parameter_context_databox_tag. Coerced Up";
   "Abbreviation : ecs = parameter_context_sector";
   "Abbreviation : eba = parameter_context_database";
   "Abbreviation : ebo = parameter_context_databox";
   "Abbreviation : ecd = parameter_context_domain";
   "Improve : Check_consistency to be done";
   "Author : François Colonna 28 septembre 2016 at 09:11:51+02:00";
 ]
;;

(*  Context Wye-Tree        *)

(*  Ncstor Tag        ecs   *)
(*      |                   *)
(*  Domain Tag        ecd   *)
(*      |                   *)
(*  Database Tag      eba   *)
(*      |                   *)
(*  Databox Tag       ebo   *)

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (bna_dbo, bna_dba) =
  let tag_par_pcs = Parameter_as_context_sector_tag_by_unit_provider_v.provide () in
  let tag_par_pcd = Parameter_as_context_domain_tag_by_unit_provider_v.provide () in
  let tag_par_pba = 
    Parameter_as_context_database_tag_by_basicname_database_provider_v.provide 
      bna_dba  
  in
  let tag_par_pbo = 
    Parameter_as_context_databox_tag_by_basicname_databox_n_basicname_database_provider_v.provide 
      (bna_dbo, bna_dba)
  in
  
  let tag_par_qua = Quatuor_v.make tag_par_pbo tag_par_pba tag_par_pcd tag_par_pcs in

  let nam_qua = Quatuor_v.map
      Parameter_tag_v.string_off
      tag_par_qua
  in
  let bna_qua = Basicname_quatuor_by_context_name_quatuor_provider_v.provide nam_qua in
  Check_consistency_by_basicname_quatuor_provider_v.provide bna_qua;

  tag_par_qua
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
(* done with do_provider_without_register.sh Parameter_as_context_tag_quatuor_by_basicname_databox_n_basicname_database_provider_v.ml force on lundi 10 octobre 2016, 09:13:00 (UTC+0200) *)
