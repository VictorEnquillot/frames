(** {3 Units_by_db1pointsdata_set_fence_token_coordinates_units_angle_symbol_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BDB1:Units_list_by_db1pointsdata_set_body_sequence_float_tag_provider_v";
   "Needs : BDB1:";
   "Author : François Colonna 26 décembre 2016 at 16:23:52+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Building} *)

let build sym_dua =
  match sym_dua with 
  | Db1pointsdata_set_fence_token_coordinates_units_angle_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_angle_degree_symbol 
      (Db1pointsdata_set_fence_token_coordinates_units_angle_degree_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_angle_degree_constructor sof) ->
	Units_v.units_of_units_actual_angle (Units_actual_angle_v.make "degree" "")

  | Db1pointsdata_set_fence_token_coordinates_units_angle_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_angle_radian_symbol 
      (Db1pointsdata_set_fence_token_coordinates_units_angle_radian_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_angle_radian_constructor sof) ->
	Units_v.units_of_units_actual_angle (Units_actual_angle_v.make "radian" "")
	  
  | Db1pointsdata_set_fence_token_coordinates_units_angle_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_angle_noangle_symbol 
      (Db1pointsdata_set_fence_token_coordinates_units_angle_noangle_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_angle_noangle_constructor sof) ->
	Units_v.units_of_units_actual_angle (Units_actual_angle_v.make "noangle" "")
;;	  

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;
