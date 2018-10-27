(** {3 Nwchemdata_as_set_body_node_aoset_numericalvalues_tag_by_parameter_set_body_tuple_aopef_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPAR:Nwchemdata_as_set_body_node_aoset_numericalvalues_tag_by_parameter_set_body_tuple_aopef_tag_provider";
   "Needs : BPAR:Basicname_databox_by_any_sole_index_provider_v";
   "Needs : BPAR:Nwchemdata_as_set_body_node_aoset_numericalvalues_tag_list_by_basicname_databox_provider_v";
   "Author : François Colonna 03 décembre 2016 at 19:33:59+01:00";
   "Improve : use a Register tag_nan = Register (tag_par)";
 ]
;;

(* Parameter_vs_Nwchem_Scheme *)
(*    Parameter_set_body_tuple_aopef   Nwchemdata_set_body_node_aoset_numericalvalues  *)
(*           String_off                                   String_off                   *)                       
(*           "ne p 3 1"               <=              "Ne P 5 GAUSSIAN 1"              *)

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Building} *)

let build tag_pta =
  let soi_pta = Tag_v.sole_index_off_tag tag_pta in
  let bna_dbo = Basicname_databox_by_any_sole_index_provider_v.provide soi_pta in
  
  let sof_nan = 
    Nwchemdata_set_body_node_aoset_numericalvalues_string_off_by_parameter_set_body_tuple_aopef_tag_provider_v.provide
      tag_pta

  in

  let tag_nwc_l =
    Nwchemdata_as_set_body_node_aoset_numericalvalues_tag_list_by_basicname_databox_provider_v.provide
      bna_dbo
  in

  List_v.only_element_of_predicate_off_list
    (fun t -> Nwchemdata_tag_v.string_off t = sof_nan)
    tag_nwc_l
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
