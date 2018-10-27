(** {3 Elementary_context_tag_quadruplet_by_databox_name_n_database_name_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BELE:Elementary_context_tag_quadruplet_by_databox_name_n_database_name_provider_v";
   "Needs : BELE:Elementary_context_sector_tag_by_unit_provider_v";
   "Needs : BELE:Elementary_context_domain_tag_by_unit_provider_v";
   "Needs : BELE:Elementary_context_database_tag_by_database_name_provider_v";
   "Needs : BELE:Elementary_context_databox_tag_by_databox_name_n_database_name_provider_v";
   "Needs : BELE:* Check_consistency_by_elementaryçcontext_name_quatuor_provider_v";
   "What-is-it : the Nwchem Context Quadruplet from Elementary_context_databox_tag. Coerced Up";
   "Abbreviation : ecs = elementary_context_sector";
   "Abbreviation : eba = elementary_context_database";
   "Abbreviation : ebo = elementary_context_databox";
   "Abbreviation : ecd = elementary_context_domain";
   "Author : François Colonna 10 octobre 2016 at 09:59:21+02:00";
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

let build (nam_ebo, nam_eba) =
  let tag_ecs = Elementary_context_sector_tag_by_unit_provider_v.provide () in
  let tag_ecd = Elementary_context_domain_tag_by_unit_provider_v.provide () in
  let tag_eba = 
    Elementary_context_database_tag_by_database_name_provider_v.provide 
      nam_eba  
  in
  let tag_ebo = 
    Elementary_context_databox_tag_by_databox_name_n_database_name_provider_v.provide 
      (nam_ebo, nam_eba)
  in
  
  let tag_qua = Quadruplet_v.make tag_ebo tag_eba tag_ecd tag_ecs in

  let nam_qua = Quadruplet_v.map
      Elementary_context_databox_tag_v.string_off
      Elementary_context_database_tag_v.string_off
      Elementary_context_domain_tag_v.string_off
      Elementary_context_sector_tag_v.string_off
      tag_qua
  in
  Check_consistency_by_elementary_context_name_quatuor_provider_v.provide nam_qua;

  tag_qua
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
(* done with do_provider_without_register.sh Elementary_context_tag_quadruplet_by_databox_name_n_database_name_provider_v.ml force on lundi 10 octobre 2016, 09:13:02 (UTC+0200) *)
