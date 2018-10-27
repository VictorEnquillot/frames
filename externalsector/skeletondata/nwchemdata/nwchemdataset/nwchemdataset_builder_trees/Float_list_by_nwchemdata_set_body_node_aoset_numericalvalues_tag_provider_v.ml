(** {3 Float_list_by_nwchemdata_set_body_node_aoset_numericalvalues_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BNWC:Float_list_by_nwchemdata_set_body_node_aoset_numericalvalues_tag_provider_v";
   "Needs : BNWC:Db1pointsdata_son_tag_list_by_db1pointsdata_father_tag_provider_v";
   "Improve : Choose tuple or list";
   "Author : François Colonna 28 décembre 2016 at 18:59:34+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_nan =
  let tag_nwc_nan = 
    Nwchemdata_set_body_node_aoset_numericalvalues_tag_v.nwchemdata_tag_of_nwchemdata_set_body_node_aoset_numericalvalues_tag
      tag_nan
  in
  
  let tag_nwc_nff_l = 
    Nwchemdata_son_tag_list_by_nwchemdata_father_tag_provider_v.provide 
      tag_nwc_nan 
  in
  
  let str_flo_l = List.map Nwchemdata_tag_v.string_off tag_nwc_nff_l in
  List.map String_v.float_of_string str_flo_l
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;
