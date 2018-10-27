(** {3 Units_tuple_by_nwchemdata_set_body_node_aoset_numericalvalues_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BDB1:Units_tuple_by_nwchemdata_set_body_node_aoset_numericalvalues_tag_provider_v";
   "Needs : BCOO:Db1pointsdata_son_tag_list_by_db1pointsdata_father_tag_provider_v";
   "Improve : Choose tuple or list";
   "Author : François Colonna 28 décembre 2016 at 19:00:23+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_nan =
  let uni_can = Units_v.canonical_quantum_length_bohr in

  Tuple_v.tuple_of_duo (Duo_v.make uni_can uni_can)
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;
