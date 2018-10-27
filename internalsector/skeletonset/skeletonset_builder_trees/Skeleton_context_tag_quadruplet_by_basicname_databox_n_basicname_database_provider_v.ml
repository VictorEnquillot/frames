(** {3 Skeleton_context_tag_quadruplet_by_basicname_databox_n_basicname_database_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BSKE:Skeleton_context_tag_quadruplet_by_basicname_databox_n_basicname_database_provider_v";
   "Needs : BSKE:Skeleton_context_sector_tag_by_unit_provider_v";
   "Needs : BSKE:Skeleton_context_domain_tag_by_unit_provider_v";
   "Needs : BSKE:Skeleton_context_database_tag_by_basicname_database_provider_v";
   "Needs : BSKE:Skeleton_context_databox_tag_by_basicname_databox_n_basicname_database_provider_v";
   "Needs : BSKE:Check_consistency_by_skeleton_basicname_quatuor_provider_v";
   "What-is-it : the Nwchem Context Quadruplet from Skeleton_context_databox_tag. Coerced Up";
   "Author : François Colonna 07 avril 2017 at 16:07:39+02:00";
 ]
;;

(*  Context Wye-Tree        *)

(*  Sector Tag        fcs   *)
(*      |                   *)
(*  Domain Tag        fcd   *)
(*      |                   *)
(*  Database Tag      fba   *)
(*      |                   *)
(*  Databox Tag       fbo   *)

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (bna_dbo, bna_dba) =
  let tag_sec = Skeleton_context_sector_tag_by_unit_provider_v.provide () in
  let tag_dom = Skeleton_context_domain_tag_by_unit_provider_v.provide () in

  let tag_fba = 
    Skeleton_context_database_tag_by_basicname_database_provider_v.provide 
      bna_dba  
  in

  let tag_fbo = 
    Skeleton_context_databox_tag_by_basicname_databox_n_basicname_database_provider_v.provide 
      (bna_dbo, bna_dba)
  in
  
  let tag_qua = Quadruplet_v.make tag_fbo tag_fba tag_dom tag_sec in

  let nam_qua = Quadruplet_v.map
      Skeleton_context_databox_tag_v.string_off
      Skeleton_context_database_tag_v.string_off
      Skeleton_context_domain_tag_v.string_off
      Skeleton_context_sector_tag_v.string_off
      tag_qua
  in
  let bna_qua = Basicname_quatuor_by_context_name_quatuor_provider_v.provide nam_qua in
  Check_consistency_by_basicname_quatuor_provider_v.provide bna_qua;

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
(* done with do_provider_without_register.sh Skeleton_context_tag_quadruplet_by_basicname_databox_n_basicname_database_provider_v.ml force on mercredi 12 octobre 2016, 16:11:21 (UTC+0200) *)
