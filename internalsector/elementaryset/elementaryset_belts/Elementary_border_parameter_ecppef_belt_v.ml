(** {3 Elementary_border_parameter_ecppef_belt_v} *)

(** {6 Documenting_for_belt} *)

let documentation () = 
[
 "Current : VELE:Elementary_border_parameter_ecppef_belt_v";
 "Needs: ";
 "Needed-by: ";
 "What-is-it : a one element list of Belte i.e. (Elementary_border_tag, Readee)";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Coercing Up Sibling Tag} *)

let elementary_border_parameter_ecppef_tag_of_elementary_border_parameter_ecppef_coefficient_tag tag_eec =
  let (sym_eec, soi_eec) = tag_eec in
  Tag_v.make  
    (Elementary_border_parameter_ecppef_symbol_t.Elementary_border_parameter_ecppef_coefficient_symbol sym_eec)
    soi_eec
;;

let elementary_border_parameter_ecppef_tag_of_elementary_border_parameter_ecppef_exponent_tag tag_epe =
  let (sym_epe, soi_epe) = tag_epe in
  Tag_v.make  
    (Elementary_border_parameter_ecppef_symbol_t.Elementary_border_parameter_ecppef_exponent_symbol sym_epe)
    soi_epe
;;

(** {6 Coercing Down Sibling Tag} *)

let elementary_border_parameter_ecppef_coefficient_tag_off_elementary_border_parameter_ecppef_tag tag_epe =
  let (sym_epe, soi_epe) = tag_epe in
  match sym_epe with 
  | Elementary_border_parameter_ecppef_symbol_t.Elementary_border_parameter_ecppef_coefficient_symbol sym_eec ->
      Tag_v.make sym_eec soi_epe

  | _ -> failwith 
      "Not_a_elementary_border_parameter_ecppef_coefficient_tag:Elementary_border_parameter_ecppef_belt_v.elementary_border_parameter_ecppef_coefficient_tag_off_elementary_border_parameter_ecppef_tag"
;;

let elementary_border_parameter_ecppef_exponent_tag_off_elementary_border_parameter_ecppef_tag tag_epe =
  let (sym_epe, soi_epe) = tag_epe in
  match sym_epe with 
  | Elementary_border_parameter_ecppef_symbol_t.Elementary_border_parameter_ecppef_exponent_symbol sym_eee ->
      Tag_v.make sym_eee soi_epe

  | _ -> failwith 
      "Not_a_elementary_border_parameter_ecppef_exponent_tag:Elementary_border_parameter_ecppef_belt_v.elementary_border_parameter_ecppef_exponent_tag_off_elementary_border_parameter_ecppef_tag"
;;

(** {6 Border as list of itself} *)

let coerce_up_tag tag_epe =
  Tag_v.map_entity 
    Elementary_border_symbol_v.elementary_border_symbol_of_elementary_border_parameter_ecppef_symbol 
    tag_epe
;;

let border_of_tag tag_epe =
  [coerce_up_tag tag_epe]
;;

(** {6 Belt of Tag} *)

let belt_of_tag tag_epe =
  let (sym_epe, soi_epe) = tag_epe in
  match sym_epe with 
  | Elementary_border_parameter_ecppef_symbol_t.Elementary_border_parameter_ecppef_coefficient_symbol sym_eec ->
      let tag_eec = Tag_v.make sym_eec soi_epe in
      Elementary_border_parameter_ecppef_belt_t.Elementary_border_parameter_ecppef_coefficient_belt
      (Elementary_border_parameter_ecppef_coefficient_belt_v.belt_of_tag tag_eec)

  | Elementary_border_parameter_ecppef_symbol_t.Elementary_border_parameter_ecppef_exponent_symbol sym_epe ->
      let tag_eee = Tag_v.make sym_epe soi_epe in
      Elementary_border_parameter_ecppef_belt_t.Elementary_border_parameter_ecppef_exponent_belt
      (Elementary_border_parameter_ecppef_exponent_belt_v.belt_of_tag tag_eee)
;;

(** {6 Measure_actual of Tag} *)

let measure_actual_length_of_tag tag_epe =
  let (sym_epe, soi_epe) = tag_epe in
  match sym_epe with 
  | Elementary_border_parameter_ecppef_symbol_t.Elementary_border_parameter_ecppef_coefficient_symbol sym_eec ->
      let tag_eec = Tag_v.make sym_eec soi_epe in
      Elementary_border_parameter_ecppef_coefficient_belt_v.measure_actual_length_of_tag tag_eec

  | Elementary_border_parameter_ecppef_symbol_t.Elementary_border_parameter_ecppef_exponent_symbol sym_epe ->
      let tag_eee = Tag_v.make sym_epe soi_epe in
      Elementary_border_parameter_ecppef_exponent_belt_v.measure_actual_length_of_tag tag_eee
;;

let measure_actual_of_tag tag_epe =
  let mle = measure_actual_length_of_tag tag_epe in
  Measure_actual_length_v.measure_actual_of_measure_actual_length mle
;;

let measure_actual_list_of_tag tag_epe =
  let mea = measure_actual_of_tag tag_epe in
  [mea]
;;

let measure_canonical_of_tag_of_calculation_name tag_epe =
  let mea = measure_actual_of_tag tag_epe in
  Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea
;;

let measure_canonical_list_of_tag tag_epe =
  let can_mea = measure_canonical_of_tag_of_calculation_name tag_epe in
  [can_mea]
;;

let measure_canonical_of_tag_of_calculation_name tag_epe =
  let mea = measure_actual_of_tag tag_epe in
  Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea
;;

(** {6 Readee of Tag} *)

let readee_of_tag tag_epe =
  let (sym_epe, soi_epe) = tag_epe in
  match sym_epe with 
  | Elementary_border_parameter_ecppef_symbol_t.Elementary_border_parameter_ecppef_coefficient_symbol sym_eec ->
      let tag_eec = Tag_v.make sym_eec soi_epe in
      Elementary_border_parameter_ecppef_coefficient_belt_v.readee_of_tag tag_eec

  | Elementary_border_parameter_ecppef_symbol_t.Elementary_border_parameter_ecppef_exponent_symbol sym_eee ->
      let tag_eee = Tag_v.make sym_eee soi_epe in
      Elementary_border_parameter_ecppef_exponent_belt_v.readee_of_tag tag_eee
;;

(** {6 Measure_actual off Belt by Coercion} *)

let measure_actual_length_off_belt = function
  | Elementary_border_parameter_ecppef_belt_t.Elementary_border_parameter_ecppef_coefficient_belt bel_eec ->
      Elementary_border_parameter_ecppef_coefficient_belt_v.measure_actual_length_off_belt bel_eec

  | Elementary_border_parameter_ecppef_belt_t.Elementary_border_parameter_ecppef_exponent_belt bel_eee ->
      Elementary_border_parameter_ecppef_exponent_belt_v.measure_actual_length_off_belt bel_eee
;;

let measure_actual_off_belt bel_epe =
  let mle = measure_actual_length_off_belt bel_epe in
  Measure_actual_length_v.measure_actual_of_measure_actual_length mle
;;

let measure_actual_list_off_belt bel_epe =
  let mea = measure_actual_off_belt bel_epe in
  [mea]
;;

let measure_canonical_off_belt_of_calculation_name bel_epe =
  let mea = measure_actual_off_belt bel_epe in
  Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea
;;

let measure_canonical_list_off_belt_of_calculation_name bel_epe =
  let can_mea = measure_canonical_off_belt_of_calculation_name bel_epe in
  [can_mea]
;;

(** {6 Readee off Belt by Coercion} *)

let readee_off_belt = function
  | Elementary_border_parameter_ecppef_belt_t.Elementary_border_parameter_ecppef_coefficient_belt bel_eec ->
      Elementary_border_parameter_ecppef_coefficient_belt_v.readee_off_belt bel_eec

  | Elementary_border_parameter_ecppef_belt_t.Elementary_border_parameter_ecppef_exponent_belt bel_eee ->
      Elementary_border_parameter_ecppef_exponent_belt_v.readee_off_belt bel_eee
;;

(** {6 Closure : list of Readee} *)

let closure_of_tag tag_epe =
  let rea = readee_of_tag tag_epe in
  [rea]
;;

let closure_off_belt = function
  | Elementary_border_parameter_ecppef_belt_t.Elementary_border_parameter_ecppef_coefficient_belt bel_eec ->
      Elementary_border_parameter_ecppef_coefficient_belt_v.closure_off_belt bel_eec

  | Elementary_border_parameter_ecppef_belt_t.Elementary_border_parameter_ecppef_exponent_belt bel_eee ->
      Elementary_border_parameter_ecppef_exponent_belt_v.closure_off_belt bel_eee
;;

(** {6 Float} *)

let float_of_tag tag_epe  =
  let mea = measure_actual_of_tag tag_epe in
  Measure_actual_v.float_off_measure_actual mea 
;;

(** {6 Units} *)

let elementary_fence_units_actual_tag_of_tag tag_epe =
  let mea = measure_actual_of_tag tag_epe in
  Measure_actual_v.elementary_fence_units_actual_symbol_off_measure_actual mea
;;

(** {6 Belt of Sibling} *)

let elementary_border_parameter_ecppef_coefficient_belt_off_elementary_border_parameter_ecppef_belt bel_epe =
  let tag_epe = Doublet_v.left_off_doublet bel_epe in
  let (sym_epe, soi_epe) = tag_epe in

  match sym_epe with 
  | Elementary_border_parameter_ecppef_symbol_t.Elementary_border_parameter_ecppef_coefficient_symbol sym_eec ->
      let tag_eec = Tag_v.make sym_eec soi_epe in
      Elementary_border_parameter_ecppef_coefficient_belt_v.belt_of_tag tag_eec

  | _ -> failwith 
      "Not_a_elementary_border_parameter_ecppef_coefficient_tag:Elementary_border_parameter_ecppef_belt_v.elementary_border_parameter_ecppef_coefficient_belt_off_elementary_border_parameter_ecppef_belt"
;;

let elementary_border_parameter_ecppef_exponent_belt_off_elementary_border_parameter_ecppef_belt bel_epe =
  let tag_epe = Doublet_v.left_off_doublet bel_epe in
  let (sym_epe, soi_epe) = tag_epe in

  match sym_epe with 
  | Elementary_border_parameter_ecppef_symbol_t.Elementary_border_parameter_ecppef_exponent_symbol sym_epe ->
      let tag_eee = Tag_v.make sym_epe soi_epe in
      Elementary_border_parameter_ecppef_exponent_belt_v.belt_of_tag tag_eee

  | _ -> failwith 
      "Not_a_elementary_border_parameter_ecppef_exponent_tag:Elementary_border_parameter_ecppef_belt_v.elementary_border_parameter_ecppef_exponent_belt_off_elementary_border_parameter_ecppef_belt"
;;

(** {6 Text} *)

let text_of_tag tag_epe =
  let (sym_epe, soi_epe) = tag_epe in
  match sym_epe with 
  | Elementary_border_parameter_ecppef_symbol_t.Elementary_border_parameter_ecppef_coefficient_symbol sym_eec ->
      let tag_eec = Tag_v.make sym_eec soi_epe in
      Elementary_border_parameter_ecppef_coefficient_belt_v.text_of_tag tag_eec

  | Elementary_border_parameter_ecppef_symbol_t.Elementary_border_parameter_ecppef_exponent_symbol sym_eee ->
      let tag_eee = Tag_v.make sym_eee soi_epe in
      Elementary_border_parameter_ecppef_exponent_belt_v.text_of_tag tag_eee
;;

(** {6 Naming_for_belt} *)

let name = function
  | Elementary_border_parameter_ecppef_belt_t.Elementary_border_parameter_ecppef_coefficient_belt bel_eec ->
      Elementary_border_parameter_ecppef_coefficient_belt_v.name bel_eec

  | Elementary_border_parameter_ecppef_belt_t.Elementary_border_parameter_ecppef_exponent_belt bel_eee ->
      Elementary_border_parameter_ecppef_exponent_belt_v.name bel_eee
;;

let longname bel_epe =
  Format.sprintf "Elementary_border_parameter_ecppef_t.%s" (String.capitalize (name bel_epe))
;;


(* generated by ./do_belt_as_doublet_border_trunc_2sibling_1units_2beltee_v.sh elementary_border_parameter_ecppef epe coefficient eec exponent eee elementary_fence_units_actual efa length fal mle *)
(* using ./template_belt_as_doublet_border_trunc_2sibling_1units_2beltee_v.ml *)
(* Done on mardi 24 mai 2016, 16:43:11 (UTC+0200) *)

