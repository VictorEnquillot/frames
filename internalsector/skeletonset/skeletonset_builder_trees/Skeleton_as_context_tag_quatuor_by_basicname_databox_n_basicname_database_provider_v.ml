(** {3 Skeleton_as_context_tag_quatuor_by_basicname_databox_n_basicname_database_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BSKE:Skeleton_as_context_tag_quatuor_by_basicname_databox_n_basicname_database_provider_v";
   "Needs : BSKE:Skeleton_as_context_sector_tag_by_unit_provider_v";
   "Needs : BSKE:Skeleton_as_context_domain_tag_by_unit_provider_v";
   "Needs : BSKE:Skeleton_as_context_database_tag_by_basicname_database_provider_v";
   "Needs : BSKE:Skeleton_as_context_databox_tag_by_basicname_databox_n_basicname_database_provider_v";
   "Needs : BSKE:Check_consistency_by_skeleton_basicname_quatuor_provider_v";
   "What-is-it : the Skeleton Context Quadruplet from Skeleton_context_databox_tag. Coerced Up";
   "Abbreviation : sba = skeleton_context_database";
   "Abbreviation : sbo = skeleton_context_databox";
   "Abbreviation : scd = skeleton_context_domain";
   "Abbreviation : scs = skeleton_context_sector";
   "Author : François Colonna 12 octobre 2016 at 09:39:01+02:00";
 ]
;;

(*  Context Wye-Tree        *)

(*  Ncstor Tag        scs   *)
(*      |                   *)
(*  Domain Tag        scd   *)
(*      |                   *)
(*  Database Tag      sba   *)
(*      |                   *)
(*  Databox Tag       sbo   *)

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (bna_dbo, bna_dba) =
  let tag_ske_scs = Skeleton_as_context_sector_tag_by_unit_provider_v.provide () in
  let tag_ske_scd = Skeleton_as_context_domain_tag_by_unit_provider_v.provide () in
  let tag_ske_sba = 
    Skeleton_as_context_database_tag_by_basicname_database_provider_v.provide 
      bna_dba  
  in
  let tag_ske_sbo = 
    Skeleton_as_context_databox_tag_by_basicname_databox_n_basicname_database_provider_v.provide 
      (bna_dbo, bna_dba)
  in
  
  let tag_ske_qua = Quatuor_v.make tag_ske_sbo tag_ske_sba tag_ske_scd tag_ske_scs in

  let sof_qua = Quatuor_v.map
      Skeleton_tag_v.string_off
      tag_ske_qua
  in
  let bna_qua = Basicname_quatuor_by_context_name_quatuor_provider_v.provide sof_qua in
  Check_consistency_by_basicname_quatuor_provider_v.provide bna_qua;

  tag_ske_qua
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
(* done with do_provider_without_register.sh Skeleton_as_context_tag_quatuor_by_basicname_databox_n_basicname_database_provider_v.ml force on mercredi 12 octobre 2016, 16:11:19 (UTC+0200) *)
