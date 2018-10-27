(** {3 Measure_list_by_nwchemdata_set_body_node_aoset_numericalvalues_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BDB1:Measure_list_by_nwchemdata_set_body_node_aoset_numericalvalues_tag_provider_v";
   "Needs : BCOO:Db1pointsdata_son_tag_list_by_db1pointsdata_father_tag_provider_v";
   "Improve : Choose tuple or list";
   "Author : François Colonna 26 décembre 2016 at 20:08:52+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_nan =
  let flo_l =
    Float_list_by_nwchemdata_set_body_node_aoset_numericalvalues_tag_provider_v.provide
      tag_nan 
  in

  let uni_t = 
    Units_tuple_by_nwchemdata_set_body_node_aoset_numericalvalues_tag_provider_v.provide 
      tag_nan 
  in

  let uni_l = Tuple_v.list_of_tuple uni_t in
  
  List.map2 Measure_v.make flo_l uni_l
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;
