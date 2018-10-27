(** {3 Property_operand_fence_external_envelope_v} *)

(** {6 Documenting_for_envelope} *)

let documentation () = 
  [
   "Current : EPRO:Property_operand_fence_external_envelope_v";
   "Needs : CONS:Basicname_inputbox_by_any_sole_index_provider_v";
   "Needs : EPRO:Elementary_envelopee_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_v";
   "What-is-it : the Envelope for an External Entity Operand of a Target";
   "Author : François Colonna 17 avril 2017 at 16:25:20+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

let envelope_of_tag tag_pfe =
  
  let sof_pfe = Property_operand_fence_external_tag_v.string_off tag_pfe in 
  let soi_pfe = Tag_v.sole_index_off_tag tag_pfe in
  let bna_var_ext = Basicname_v.basicname_variable_external_of_string sof_pfe in
  let bna_ibo = Basicname_inputbox_by_any_sole_index_provider_v.provide soi_pfe in

  (* let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in *)

  (* let env_pro_pfe =  *)
  Elementary_envelopee_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
      (bna_var_ext, bna_ibo)
  (* in *)

  (* Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun; *)

  (* env_pro_pfe *)
;;
 
let measure_canonical_classical_tuple_duo_of_envelope env_pfe =
  let env_ld = Duo_list_v.list_duo_of_list env_pfe in
  Duo_v.map Tuple_v.tuple_of_list env_ld
;;

let measure_canonical_classical_tuple_trio_of_envelope env_pfe =
  let env_ld = Trio_list_v.list_trio_of_list env_pfe in
  Trio_v.map Tuple_v.tuple_of_list env_ld
;;
