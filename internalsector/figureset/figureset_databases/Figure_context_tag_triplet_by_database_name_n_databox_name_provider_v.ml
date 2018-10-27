(** {3 Figure_context_tag_triplet_by_database_name_n_databox_name_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DFIG:Figure_context_tag_triplet_by_database_name_n_databox_name_provider_v";
   "Needs : DFIG:Figure_context_domain_tag_by_unit_provider_v";
   "Needs : DFIG:Figure_context_database_tag_by_database_name_provider_v";
   "Needs : DFIG:Figure_context_databox_tag_by_database_name_n_databox_name_provider_v";
   "What-is-it : the Figure Context Triplet from Figure_context_databox_tag. Coerced Up";
   "Abbreviation : dba = figure_context_database";
   "Abbreviation : dbo = figure_context_databox";
   "Abbreviation : dcd = figure_context_domain";
 ]
;;

(*  Context Wye-Tree        *)

(*  Domain Tag        dcd   *)
(*      |                   *)
(*  Database Tag      fba   *)
(*      |                   *)
(*  Databox Tag       fbo   *)

(** {6 Context Tags} *)

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build (nam_dba, nam_dbo) =

  let tag_fcd = Figure_context_domain_tag_by_unit_provider_v.provide () in
  let tag_fba = Figure_context_database_tag_by_database_name_provider_v.provide nam_dba in
  let tag_fbo = 
    Figure_context_databox_tag_by_database_name_n_databox_name_provider_v.provide 
      (nam_dba, nam_dbo)
  in
  
  Triplet_v.make tag_fcd tag_fba tag_fbo
;;


(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_without_register.sh Figure_context_tag_triplet_by_database_name_n_databox_name_provider_v.ml on jeudi 19 mai 2016, 18:35:57 (UTC+0200) *)
