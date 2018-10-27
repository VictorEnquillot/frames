(** {3 Measure_list_by_coordinate_set_body_tuple_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : RCOO:Measure_list_by_coordinate_set_body_tuple_tag_provider_v";
   "Needs : BCOO:Database_name_by_any_sole_index_provider_v";
   "Needs : RCOO:Measure_list_from_db1points_by_coordinate_set_body_tuple_tag_provider_v";
   "Needed-by : RCOO:Coordinate_set_fence_coefficient_envelope_v";
   "What-is-it : the Measure list dispatching according to Database for an Aopef tuple (exponent, coefficient) as list";
   "Author : François Colonna 06 décembre 2016 at 09:12:53+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_cbt =
  let soi_cbt = Tag_v.sole_index_off_tag tag_cbt in
  let nam_dba = Database_name_by_any_sole_index_provider_v.provide soi_cbt in

  match nam_dba with 
  | "db1points" ->
      let tag_dsf =
 	Db1pointsdata_set_body_sequence_float_tag_by_coordinate_set_body_tuple_tag_provider_v.provide
	  tag_cbt 
      in
	
      Measure_list_by_db1pointsdata_set_body_sequence_float_tag_provider_v.provide tag_dsf

  | _ ->
      Error_messages_v.print_fatal_error __LOC__ "build"
        (Format.sprintf "Access to Database >%s< were implemented" nam_dba)
        "It is NOT. Implemented Databases implemented are : db1points"
        "Please report or implement code" 
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
(* done with do_provider_without_register.sh Measure_list_by_coordinate_set_body_tuple_tag_provider_v.ml force on mardi 6 décembre 2016, 09:18:33 (UTC+0100) *)
