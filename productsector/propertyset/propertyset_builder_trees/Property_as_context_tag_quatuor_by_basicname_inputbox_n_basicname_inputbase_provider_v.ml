(** {3 Property_as_context_tag_quatuor_by_basicname_inputbox_n_basicname_inputbase_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPRO:Property_as_context_tag_quatuor_by_basicname_inputbox_n_basicname_inputbase_provider_v";
   "Needs : BPRO:Property_as_context_sector_tag_by_unit_provider_v";
   "Needs : BPRO:Property_as_context_domain_tag_by_unit_provider_v";
   "Needs : BPRO:Property_as_context_inputbase_tag_by_basicname_inputbase_provider_v";
   "Needs : BPRO:Property_as_context_inputbox_tag_by_basicname_inputbox_n_basicname_inputbase_provider_v";
   "Needs : BPRO:Check_consistency_by_property_basicname_quatuor_provider_v";
   "What-is-it : the Property Context Quadruplet from Property_context_inputbox_tag. Coerced Up";
   "Author : François Colonna 06 avril 2017 at 15:36:08+02:00";
 ]
;;

(*  Context Wye-Tree        *)

(*  Ncstor Tag        pcs   *)
(*      |                   *)
(*  Domain Tag        pcd   *)
(*      |                   *)
(*  Inputbase Tag     iba   *)
(*      |                   *)
(*  Inputbox Tag      ibo   *)

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (bna_ibo, bna_iba) =
  let tag_pro_pcs = Property_as_context_sector_tag_by_unit_provider_v.provide () in
  let tag_pro_pcd = Property_as_context_domain_tag_by_unit_provider_v.provide () in
  let tag_pro_iba = 
    Property_as_context_inputbase_tag_by_basicname_inputbase_provider_v.provide 
      bna_iba  
  in
  let tag_pro_ibo = 
    Property_as_context_inputbox_tag_by_basicname_inputbox_n_basicname_inputbase_provider_v.provide 
      (bna_ibo, bna_iba)
  in
  
  let tag_pro_qua = Quatuor_v.make tag_pro_ibo tag_pro_iba tag_pro_pcd tag_pro_pcs in
  Check_consistency_by_property_as_context_tag_quatuor_provider_v.provide tag_pro_qua;
  tag_pro_qua
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
(* done with do_provider_without_register.sh Property_as_context_tag_quatuor_by_basicname_inputbox_n_basicname_inputbase_provider_v.ml force on mardi 15 novembre 2016, 16:37:10 (UTC+0100) *)
