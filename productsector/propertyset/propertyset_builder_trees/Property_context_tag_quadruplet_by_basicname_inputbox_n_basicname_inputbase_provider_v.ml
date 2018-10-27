(** {3 Property_context_tag_quadruplet_by_basicname_inputbox_n_basicname_inputbase_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPRO:Property_context_tag_quadruplet_by_basicname_inputbox_n_basicname_inputbase_provider_v";
   "Needs : BPRO:Property_context_sector_tag_by_unit_provider_v";
   "Needs : BPRO:Property_context_domain_tag_by_unit_provider_v";
   "Needs : BPRO:Property_context_inputbase_tag_by_basicname_inputbase_provider_v";
   "Needs : BPRO:Property_context_inputbox_tag_by_basicname_inputbox_n_basicname_inputbase_provider_v";
   "Needs : BPRO:Check_consistency_by_property_basicname_quatuor_provider_v";
   "What-is-it : the Localinput Context Quadruplet from Property_context_inputbox_tag. Coerced Up";
   "Abbreviation : ecs = property_context_sector";
   "Abbreviation : eba = property_context_inputbase";
   "Abbreviation : ebo = property_context_inputbox";
   "Abbreviation : ecd = property_context_domain";
   "Author : François Colonna 10 octobre 2016 at 09:59:21+02:00";
 ]
;;

(*  Context Wye-Tree        *)

(*  Ncstor Tag        ecs   *)
(*      |                   *)
(*  Domain Tag        ecd   *)
(*      |                   *)
(*  Inputbase Tag      eba   *)
(*      |                   *)
(*  Inputbox Tag       ebo   *)

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (bna_ibo, bna_iba) =
  let tag_pcs = Property_context_sector_tag_by_unit_provider_v.provide () in
  let tag_pcd = Property_context_domain_tag_by_unit_provider_v.provide () in
  let tag_iba = 
    Property_context_inputbase_tag_by_basicname_inputbase_provider_v.provide 
      bna_iba  
  in
  let tag_ibo = 
    Property_context_inputbox_tag_by_basicname_inputbox_n_basicname_inputbase_provider_v.provide 
      (bna_ibo, bna_iba)
  in
  
  let tag_qua = Quadruplet_v.make tag_ibo tag_iba tag_pcd tag_pcs in

  let nam_qua = Quadruplet_v.map
      Property_context_inputbox_tag_v.string_off
      Property_context_inputbase_tag_v.string_off
      Property_context_domain_tag_v.string_off
      Property_context_sector_tag_v.string_off
      tag_qua
  in
  let bna_qua = Basicname_quatuor_by_context_name_quatuor_provider_v.provide nam_qua in
  Check_consistency_by_property_basicname_quatuor_provider_v.provide bna_qua;

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
(* done with do_provider_without_register.sh Property_context_tag_quadruplet_by_basicname_inputbox_n_basicname_inputbase_provider_v.ml force on mardi 15 novembre 2016, 16:37:13 (UTC+0100) *)
