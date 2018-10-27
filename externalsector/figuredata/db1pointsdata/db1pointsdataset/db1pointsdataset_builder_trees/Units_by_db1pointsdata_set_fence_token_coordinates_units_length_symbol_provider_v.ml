(** {3 Units_by_db1pointsdata_set_fence_token_coordinates_units_length_symbol_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BDB1:Units_list_by_db1pointsdata_set_body_sequence_float_tag_provider_v";
   "Needs : BDB1:";
   "Author : François Colonna 26 décembre 2016 at 16:23:52+01:00";
   "Author : François Colonna 04 juin 2017 at 12:51:29+02:00 nanometer";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";

 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Building} *)

let build sym_dul =
  match sym_dul with 
  | Db1pointsdata_set_fence_token_coordinates_units_length_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_length_angstrom_symbol 
      (Db1pointsdata_set_fence_token_coordinates_units_length_angstrom_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_length_angstrom_constructor sof) ->
	Units_v.units_of_units_actual_length (Units_actual_length_v.make "angstrom" "")

  | Db1pointsdata_set_fence_token_coordinates_units_length_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_length_bohr_symbol 
      (Db1pointsdata_set_fence_token_coordinates_units_length_bohr_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_length_bohr_constructor sof) ->
	Units_v.units_of_units_actual_length (Units_actual_length_v.make "bohr" "")

  | Db1pointsdata_set_fence_token_coordinates_units_length_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_length_meter_symbol 
      (Db1pointsdata_set_fence_token_coordinates_units_length_meter_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_length_meter_constructor sof) ->
	Units_v.units_of_units_actual_length (Units_actual_length_v.make "meter" "")

  | Db1pointsdata_set_fence_token_coordinates_units_length_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_length_nanometer_symbol 
      (Db1pointsdata_set_fence_token_coordinates_units_length_nanometer_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_length_nanometer_constructor sof) ->
	Units_v.units_of_units_actual_length (Units_actual_length_v.make "nanometer" "")
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;
