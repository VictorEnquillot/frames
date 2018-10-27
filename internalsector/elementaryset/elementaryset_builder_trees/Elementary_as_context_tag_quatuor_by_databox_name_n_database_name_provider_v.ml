(** {3 Elementary_as_context_tag_quatuor_by_databox_name_n_database_name_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BELE:Elementary_as_context_tag_quatuor_by_databox_name_n_database_name_provider_v";
   "Needs : BELE:Elementary_as_context_sector_tag_by_unit_provider_v";
   "Needs : BELE:Elementary_as_context_domain_tag_by_unit_provider_v";
   "Needs : BELE:Elementary_as_context_database_tag_by_database_name_provider_v";
   "Needs : BELE:Elementary_as_context_databox_tag_by_databox_name_n_database_name_provider_v";
   "Needs : BELE:Check_consistency_by_elementary_context_name_quatuor_provider_v";
   "What-is-it : the Nwchem Context Quadruplet from Elementary_context_databox_tag. Coerced Up";
   "Abbreviation : ecs = elementary_context_sector";
   "Abbreviation : eba = elementary_context_database";
   "Abbreviation : ebo = elementary_context_databox";
   "Abbreviation : ecd = elementary_context_domain";
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

let build (nam_ebo, nam_eba) =
  let tag_ele_ecs = Elementary_as_context_sector_tag_by_unit_provider_v.provide () in
  let tag_ele_ecd = Elementary_as_context_domain_tag_by_unit_provider_v.provide () in
  let tag_ele_eba = 
    Elementary_as_context_database_tag_by_database_name_provider_v.provide 
      nam_eba  
  in
  let tag_ele_ebo = 
    Elementary_as_context_databox_tag_by_databox_name_n_database_name_provider_v.provide 
      (nam_ebo, nam_eba)
  in
  
  let tag_ele_qua = Quatuor_v.make tag_ele_ebo tag_ele_eba tag_ele_ecd tag_ele_ecs in

  let nam_qua = Quatuor_v.map
      Elementary_tag_v.string_off
      tag_ele_qua
  in

  Check_consistency_by_elementary_context_name_quatuor_provider_v.provide nam_qua;

  tag_ele_qua
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
(* done with do_provider_without_register.sh Elementary_as_context_tag_quatuor_by_databox_name_n_database_name_provider_v.ml force on lundi 10 octobre 2016, 09:13:00 (UTC+0200) *)
