(** {3 Elementary_fence_units_actual_belt_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VELE:Elementary_fence_units_actual_belt_v";
   "Needs : VELE:Elementary_fence_units_actual_action_belt_v";
   "Needs : VELE:Elementary_fence_units_actual_angle_belt_v";
   "Needs : VELE:Elementary_fence_units_actual_charge_belt_v";
   "Needs : VELE:Elementary_fence_units_actual_energy_belt_v";
   "Needs : VELE:Elementary_fence_units_actual_length_belt_v";
   "Needs : VELE:Elementary_fence_units_actual_mass_belt_v";
   "Needs : VELE:Elementary_fence_units_actual_temperature_belt_v";
   "Needs : VELE:Elementary_fence_units_actual_time_belt_v";
   "Needs : VELE:Elementary_fence_units_actual_none_belt_v";
   "Needs : DELE:Elementary_fence_by_elementary_tag_provider_v";
   "Needed-by :";
   "What-is-it : Up_coercion of Belt type as Symbol type up_coercion";
 ]
;;

(** {6 Naming} *)

let name = function
  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_action_belt bel_faa ->
      (Elementary_fence_units_actual_action_belt_v.name bel_faa)
	
  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_angle_belt bel_faa ->
      (Elementary_fence_units_actual_angle_belt_v.name bel_faa)

  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_charge_belt bel_fac ->
      (Elementary_fence_units_actual_charge_belt_v.name bel_fac)
	
  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_energy_belt bel_fae ->
      (Elementary_fence_units_actual_energy_belt_v.name bel_fae)

  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_length_belt bel_fal ->
      (Elementary_fence_units_actual_length_belt_v.name bel_fal)
	
  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_mass_belt bel_fam ->
      (Elementary_fence_units_actual_mass_belt_v.name bel_fam)

  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_temperature_belt bel_fat ->
      (Elementary_fence_units_actual_temperature_belt_v.name bel_fat)
	
  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_time_belt bel_fat ->
      (Elementary_fence_units_actual_time_belt_v.name bel_fat)

  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_none_belt bel_fan ->
      (Elementary_fence_units_actual_none_belt_v.name bel_fan)
;;

let string_off = function
  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_action_belt bel_faa ->
      (Elementary_fence_units_actual_action_belt_v.string_off bel_faa)
	
  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_angle_belt bel_faa ->
      (Elementary_fence_units_actual_angle_belt_v.string_off bel_faa)

  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_charge_belt bel_fac ->
      (Elementary_fence_units_actual_charge_belt_v.string_off bel_fac)
	
  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_energy_belt bel_fae ->
      (Elementary_fence_units_actual_energy_belt_v.string_off bel_fae)

  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_length_belt bel_fal ->
      (Elementary_fence_units_actual_length_belt_v.string_off bel_fal)
	
  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_mass_belt bel_fam ->
      (Elementary_fence_units_actual_mass_belt_v.string_off bel_fam)

  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_temperature_belt bel_fat ->
      (Elementary_fence_units_actual_temperature_belt_v.string_off bel_fat)
	
  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_time_belt bel_fat ->
      (Elementary_fence_units_actual_time_belt_v.string_off bel_fat)
	
  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_none_belt bel_fan ->
      (Elementary_fence_units_actual_none_belt_v.string_off bel_fan)
;;

let longname = function
  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_action_belt bel_faa ->
      (Elementary_fence_units_actual_action_belt_v.longname bel_faa)
	
  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_angle_belt bel_faa ->
      (Elementary_fence_units_actual_angle_belt_v.longname bel_faa)

  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_charge_belt bel_fac ->
      (Elementary_fence_units_actual_charge_belt_v.longname bel_fac)
	
  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_energy_belt bel_fae ->
      (Elementary_fence_units_actual_energy_belt_v.longname bel_fae)

  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_length_belt bel_fal ->
      (Elementary_fence_units_actual_length_belt_v.longname bel_fal)
	
  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_mass_belt bel_fam ->
      (Elementary_fence_units_actual_mass_belt_v.longname bel_fam)

  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_temperature_belt bel_fat ->
      (Elementary_fence_units_actual_temperature_belt_v.longname bel_fat)
	
  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_time_belt bel_fat ->
      (Elementary_fence_units_actual_time_belt_v.longname bel_fat)
	
  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_none_belt bel_fan ->
      (Elementary_fence_units_actual_none_belt_v.longname bel_fan)
;;

let fullname = function
  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_action_belt bel_faa ->
      (Elementary_fence_units_actual_action_belt_v.fullname bel_faa)
	
  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_angle_belt bel_faa ->
      (Elementary_fence_units_actual_angle_belt_v.fullname bel_faa)

  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_charge_belt bel_fac ->
      (Elementary_fence_units_actual_charge_belt_v.fullname bel_fac)
	
  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_energy_belt bel_fae ->
      (Elementary_fence_units_actual_energy_belt_v.fullname bel_fae)

  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_length_belt bel_fal ->
      (Elementary_fence_units_actual_length_belt_v.fullname bel_fal)
	
  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_mass_belt bel_fam ->
      (Elementary_fence_units_actual_mass_belt_v.fullname bel_fam)

  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_temperature_belt bel_fat ->
      (Elementary_fence_units_actual_temperature_belt_v.fullname bel_fat)
	
  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_time_belt bel_fat ->
      (Elementary_fence_units_actual_time_belt_v.fullname bel_fat)
	
  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_none_belt bel_fan ->
      (Elementary_fence_units_actual_none_belt_v.fullname bel_fan)
;;

(** {6 Coercing up} *)

let elementary_fence_units_actual_belt_of_elementary_fence_units_actual_action_belt bel_faa =
  Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_action_belt bel_faa 
;;

let elementary_fence_units_actual_belt_of_elementary_fence_units_actual_angle_belt bel_faa =
  Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_angle_belt bel_faa 
;;

let elementary_fence_units_actual_belt_of_elementary_fence_units_actual_charge_belt bel_fac =
  Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_charge_belt bel_fac 
;;

let elementary_fence_units_actual_belt_of_elementary_fence_units_actual_energy_belt bel_fae =
  Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_energy_belt bel_fae 
;;

let elementary_fence_units_actual_belt_of_elementary_fence_units_actual_length_belt bel_fal =
  Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_length_belt bel_fal 
;;

let elementary_fence_units_actual_belt_of_elementary_fence_units_actual_mass_belt bel_fam =
  Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_mass_belt bel_fam 
;;

let elementary_fence_units_actual_belt_of_elementary_fence_units_actual_temperature_belt bel_fat =
  Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_temperature_belt bel_fat 
;;

let elementary_fence_units_actual_belt_of_elementary_fence_units_actual_time_belt bel_fat =
  Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_time_belt bel_fat 
;;

let elementary_fence_units_actual_belt_of_elementary_fence_units_actual_none_belt bel_fan =
  Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_none_belt bel_fan 
;;

(** {6 Coercing down} *)

let elementary_fence_units_actual_action_belt_off_elementary_fence_units_actual_belt = function
  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_action_belt bel_faa -> bel_faa
  | _ -> failwith "Not_a_elementary_fence_units_actual_action:Elementary_fence_units_actual_belt.elementary_fence_units_actual_action_belt_off_elementary_fence_units_actual_belt"
;;

let elementary_fence_units_actual_angle_belt_off_elementary_fence_units_actual_belt = function
  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_angle_belt bel_faa -> bel_faa
  | _ -> failwith "Not_a_elementary_fence_units_actual_angle:Elementary_fence_units_actual_belt.elementary_fence_units_actual_angle_belt_off_elementary_fence_units_actual_belt"
;;

let elementary_fence_units_actual_charge_belt_off_elementary_fence_units_actual_belt = function
  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_charge_belt bel_fac -> bel_fac
  | _ -> failwith "Not_a_elementary_fence_units_actual_charge:Elementary_fence_units_actual_belt.elementary_fence_units_actual_charge_belt_off_elementary_fence_units_actual_belt"
;;

let elementary_fence_units_actual_energy_belt_off_elementary_fence_units_actual_belt = function
  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_energy_belt bel_fae -> bel_fae
  | _ -> failwith "Not_a_elementary_fence_units_actual_energy:Elementary_fence_units_actual_belt.elementary_fence_units_actual_energy_belt_off_elementary_fence_units_actual_belt"
;;

let elementary_fence_units_actual_length_belt_off_elementary_fence_units_actual_belt = function
  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_length_belt bel_fal -> bel_fal
  | _ -> failwith "Not_a_elementary_fence_units_actual_length:Elementary_fence_units_actual_belt.elementary_fence_units_actual_length_belt_off_elementary_fence_units_actual_belt"
;;

let elementary_fence_units_actual_mass_belt_off_elementary_fence_units_actual_belt = function
  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_mass_belt bel_fam -> bel_fam
  | _ -> failwith "Not_a_elementary_fence_units_actual_mass:Elementary_fence_units_actual_belt.elementary_fence_units_actual_mass_belt_off_elementary_fence_units_actual_belt"
;;

let elementary_fence_units_actual_temperature_belt_off_elementary_fence_units_actual_belt = function
  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_temperature_belt bel_fat -> bel_fat
  | _ -> failwith "Not_a_elementary_fence_units_actual_temperature:Elementary_fence_units_actual_belt.elementary_fence_units_actual_temperature_belt_off_elementary_fence_units_actual_belt"
;;

let elementary_fence_units_actual_time_belt_off_elementary_fence_units_actual_belt = function
  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_time_belt bel_fat -> bel_fat
  | _ -> failwith "Not_a_elementary_fence_units_actual_time:Elementary_fence_units_actual_belt.elementary_fence_units_actual_time_belt_off_elementary_fence_units_actual_belt"
;;

let elementary_fence_units_actual_none_belt_off_elementary_fence_units_actual_belt = function
  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_none_belt bel_fan -> bel_fan
  | _ -> failwith "Not_a_elementary_fence_units_actual_none:Elementary_fence_units_actual_belt.elementary_fence_units_actual_none_belt_off_elementary_fence_units_actual_belt"
;;

(** {6 Belt} *)

let belt_of_tag tag_eua =
  let soi_eua = Tag_v.sole_index_off_tag tag_eua in
  let sym_eua = Tag_v.entity_off_tag tag_eua in
  match sym_eua with
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_action_symbol sym_faa ->
      let tag_faa = Tag_v.make sym_faa soi_eua in
      Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_action_belt
	(Elementary_fence_units_actual_action_belt_v.belt_of_tag tag_faa)

  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_angle_symbol sym_faa ->
      let tag_faa = Tag_v.make sym_faa soi_eua in
      Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_angle_belt
	(Elementary_fence_units_actual_angle_belt_v.belt_of_tag tag_faa)

  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_charge_symbol sym_fac ->
      let tag_fac = Tag_v.make sym_fac soi_eua in
      Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_charge_belt
	(Elementary_fence_units_actual_charge_belt_v.belt_of_tag tag_fac)

  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_energy_symbol sym_fae ->
      let tag_fae = Tag_v.make sym_fae soi_eua in
      Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_energy_belt
	(Elementary_fence_units_actual_energy_belt_v.belt_of_tag tag_fae)

  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol sym_fal ->
      let tag_fal = Tag_v.make sym_fal soi_eua in
      Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_length_belt
	(Elementary_fence_units_actual_length_belt_v.belt_of_tag tag_fal)

  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_mass_symbol sym_fam ->
      let tag_fam = Tag_v.make sym_fam soi_eua in
      Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_mass_belt
	(Elementary_fence_units_actual_mass_belt_v.belt_of_tag tag_fam)

  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_temperature_symbol sym_fat ->
      let tag_fat = Tag_v.make sym_fat soi_eua in
      Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_temperature_belt
	(Elementary_fence_units_actual_temperature_belt_v.belt_of_tag tag_fat)

  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_time_symbol sym_fat ->
      let tag_fat = Tag_v.make sym_fat soi_eua in
      Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_time_belt
	(Elementary_fence_units_actual_time_belt_v.belt_of_tag tag_fat)

  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_none_symbol sym_fan ->
      let tag_fan = Tag_v.make sym_fan soi_eua in
      Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_none_belt
	(Elementary_fence_units_actual_none_belt_v.belt_of_tag tag_fan)
;;

(** {6 Measure_actual off Belt} *)

let measure_actual_off_belt = function
  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_action_belt bel_faa ->
      (Elementary_fence_units_actual_action_belt_v.measure_actual_off_belt bel_faa)
	
  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_angle_belt bel_faa ->
      (Elementary_fence_units_actual_angle_belt_v.measure_actual_off_belt bel_faa)

  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_charge_belt bel_fac ->
      (Elementary_fence_units_actual_charge_belt_v.measure_actual_off_belt bel_fac)
	
  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_energy_belt bel_fae ->
      (Elementary_fence_units_actual_energy_belt_v.measure_actual_off_belt bel_fae)

  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_length_belt bel_fal ->
      (Elementary_fence_units_actual_length_belt_v.measure_actual_off_belt bel_fal)
	
  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_mass_belt bel_fam ->
      (Elementary_fence_units_actual_mass_belt_v.measure_actual_off_belt bel_fam)

  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_temperature_belt bel_fat ->
      (Elementary_fence_units_actual_temperature_belt_v.measure_actual_off_belt bel_fat)
	
  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_time_belt bel_fat ->
      (Elementary_fence_units_actual_time_belt_v.measure_actual_off_belt bel_fat)
	
  | Elementary_fence_units_actual_belt_t.Elementary_fence_units_actual_none_belt bel_fan ->
      (Elementary_fence_units_actual_none_belt_v.measure_actual_off_belt bel_fan)
;;

(** {6 Measure_actual List off Belt} *)

let measure_actual_list_off_belt bel_eua =
  let mea_act = measure_actual_off_belt bel_eua in
  [mea_act]
;;

(** {6 Measure off Belt} *)

let measure_off_belt bel_eua =
  let mea_act = measure_actual_off_belt bel_eua in
  Measure_v.measure_of_measure_actual mea_act
;;

(** {6 Measure_canonical off Belt} *)

let measure_canonical_off_belt_of_calculation_name bel_eua nam_cal =
  let mea_act = measure_actual_off_belt bel_eua in
  Measure_canonical_v.measure_canonical_of_measure_actual_of_calculation_name mea_act nam_cal
;;

(** {6 Measure_canonical List off Belt} *)

let measure_canonical_list_off_belt_of_calculation_name bel_eua nam_cal =
  let can_mea = measure_canonical_off_belt_of_calculation_name bel_eua nam_cal in
  [can_mea]
;;

(** {6 Readee off Belt} *)

let readee_off_belt bel_eua =
  let mea_act = measure_actual_off_belt bel_eua in
  Readee_v.readee_of_measure_actual mea_act
;;

(** {6 Readee of Tag} *)

let readee_of_tag tag_eua =
  let bel_eua = belt_of_tag tag_eua in
  readee_off_belt bel_eua 
;;

(** {6 Closure} *)

let closure_of_tag tag_eua =
  let rea = readee_of_tag tag_eua in
  [rea]
;;

let closure_off_belt bel_eua =
  let rea = readee_off_belt bel_eua in
  [rea]
;;


(* generated by ./do_belt_as_fence_units_actual_trunc_9sibling_v.sh elementary_fence_units_actual eua action faa angle faa charge fac energy fae length fal mass fam temperature fat time fat none fan *)
(* using ./template_belt_as_fence_units_actual_trunc_9sibling_v.ml *)
(* Done on mardi 24 mai 2016, 16:43:07 (UTC+0200) *)

