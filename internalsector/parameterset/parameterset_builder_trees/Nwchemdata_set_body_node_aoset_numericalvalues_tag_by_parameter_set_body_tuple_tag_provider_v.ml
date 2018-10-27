(** {3 Nwchemdata_as_set_body_node_aoset_numericalvalues_tag_by_parameter_set_body_tuple_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPAR:Nwchemdata_as_set_body_node_aoset_numericalvalues_tag_by_parameter_set_body_tuple_tag_provider";
   "Needs : BPAR:Basicname_databox_by_any_sole_index_provider_v";
   "Needs : BPAR:Nwchemdata_as_set_body_node_aoset_numericalvalues_tag_list_by_basicname_databox_provider_v";
   "Author : François Colonna 28 décembre 2016 at 19:35:27+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_pbt =
  let soi_pbt = Tag_v.sole_index_off_tag tag_pbt in
  let sym_pbt = Tag_v.entity_off_tag tag_pbt in

  match sym_pbt with 
  | Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol sym_pta ->
      let tag_pta = Tag_v.make sym_pta soi_pbt in
      Nwchemdata_set_body_node_aoset_numericalvalues_tag_by_parameter_set_body_tuple_aopef_tag_provider_v.provide
	tag_pta
	
  | Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_ecppef_symbol sym_pte ->
      Utilities_v.not_yet_implemented nam_mod "build for Ecppef"
      (* let tag_pte = Tag_v.make sym_pte soi_pbt in *)
      (* Nwchemdata_set_body_node_aoset_numericalvalues_tag_by_parameter_set_body_tuple_ecppef_tag_provider_v.provide *)
      (* 	tag_pte *)
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
(* done with do_provider_without_register.sh Parameter_basicname_sector_by_unit_provider_v.ml force on lundi 10 octobre 2016, 09:13:01 (UTC+0200) *)
