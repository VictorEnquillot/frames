(** {3 Property_as_context_tag_quatuor_by_basicname_inputbox_n_basicname_inputbase_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPRO:Check_consistency_by_property_as_context_tag_quatuor_provider_v";
   "Needs : BPRO:Basicname_quatuor_by_context_name_quatuor_provider_v";
   "Needs : BPRO:Check_consistency_by_property_basicname_quatuor_provider_v";
   "Author : François Colonna 06 avril 2017 at 15:34:55+02:00";
 ]
;;

(*  Ncstor Tag        pcs   *)
(*      |                   *)
(*  Domain Tag        pcd   *)
(*      |                   *)
(*  Inputbase Tag     iba   *)
(*      |                   *)
(*  Inputbox Tag      ibo   *)

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_pro_qua =
  let nam_qua = Quatuor_v.map
      Property_tag_v.string_off
      tag_pro_qua
  in
  let bna_qua = Basicname_quatuor_by_context_name_quatuor_provider_v.provide nam_qua in
  Check_consistency_by_property_basicname_quatuor_provider_v.provide bna_qua;
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
(* done with do_provider_without_register.sh Check_consistency_by_property_as_context_tag_quatuor_provider_v.ml  on jeudi 6 avril 2017, 15:34:08 (UTC+0200) *)
