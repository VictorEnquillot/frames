(** {3 Elementary_border_parameter_aopef_belt_v} *)

(** {6 Documenting_for_belt} *)

let documentation () = 
[
 "Current : VELE:Elementary_border_parameter_aopef_belt_v";
 "Needs: ";
 "Needed-by: ";
 "What-is-it : a one element list of Belte i.e. (Elementary_border_tag, Readee)";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Coercing Up Sibling Tag} *)

let elementary_border_parameter_aopef_tag_of_elementary_border_parameter_aopef_coefficient_tag tag_eac =
  let (sym_eac, soi_eac) = tag_eac in
  Tag_v.make  
    (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_coefficient_symbol sym_eac)
    soi_eac
;;

let elementary_border_parameter_aopef_tag_of_elementary_border_parameter_aopef_exponent_tag tag_epa =
  let (sym_epa, soi_epa) = tag_epa in
  Tag_v.make  
    (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_exponent_symbol sym_epa)
    soi_epa
;;

(** {6 Coercing Down Sibling Tag} *)

let elementary_border_parameter_aopef_coefficient_tag_off_elementary_border_parameter_aopef_tag tag_epa =
  let (sym_epa, soi_epa) = tag_epa in
  match sym_epa with 
  | Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_coefficient_symbol sym_eac ->
      Tag_v.make sym_eac soi_epa

  | _ -> failwith 
      "Not_a_elementary_border_parameter_aopef_coefficient_tag:Elementary_border_parameter_aopef_belt_v.elementary_border_parameter_aopef_coefficient_tag_off_elementary_border_parameter_aopef_tag"
;;

let elementary_border_parameter_aopef_exponent_tag_off_elementary_border_parameter_aopef_tag tag_epa =
  let (sym_epa, soi_epa) = tag_epa in
  match sym_epa with 
  | Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_exponent_symbol sym_eae ->
      Tag_v.make sym_eae soi_epa

  | _ -> failwith 
      "Not_a_elementary_border_parameter_aopef_exponent_tag:Elementary_border_parameter_aopef_belt_v.elementary_border_parameter_aopef_exponent_tag_off_elementary_border_parameter_aopef_tag"
;;

(** {6 Border as list of itself} *)

let coerce_up_tag tag_epa =
  Tag_v.map_entity 
    Elementary_border_symbol_v.elementary_border_symbol_of_elementary_border_parameter_aopef_symbol 
    tag_epa
;;

let border_of_tag tag_epa =
  [coerce_up_tag tag_epa]
;;

(** {6 Belt of Tag} *)

let belt_of_tag tag_epa =
  let (sym_epa, soi_epa) = tag_epa in
  match sym_epa with 
  | Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_coefficient_symbol sym_eac ->
      let tag_eac = Tag_v.make sym_eac soi_epa in
      Elementary_border_parameter_aopef_belt_t.Elementary_border_parameter_aopef_coefficient_belt
      (Elementary_border_parameter_aopef_coefficient_belt_v.belt_of_tag tag_eac)

  | Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_exponent_symbol sym_epa ->
      let tag_eae = Tag_v.make sym_epa soi_epa in
      Elementary_border_parameter_aopef_belt_t.Elementary_border_parameter_aopef_exponent_belt
      (Elementary_border_parameter_aopef_exponent_belt_v.belt_of_tag tag_eae)
;;

(** {6 Measure_actual of Tag} *)

let measure_actual_length_of_tag tag_epa =
  let (sym_epa, soi_epa) = tag_epa in
  match sym_epa with 
  | Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_coefficient_symbol sym_eac ->
      let tag_eac = Tag_v.make sym_eac soi_epa in
      Elementary_border_parameter_aopef_coefficient_belt_v.measure_actual_length_of_tag tag_eac

  | Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_exponent_symbol sym_epa ->
      let tag_eae = Tag_v.make sym_epa soi_epa in
      Elementary_border_parameter_aopef_exponent_belt_v.measure_actual_length_of_tag tag_eae
;;

let measure_actual_of_tag tag_epa =
  let mle = measure_actual_length_of_tag tag_epa in
  Measure_actual_length_v.measure_actual_of_measure_actual_length mle
;;

let measure_actual_list_of_tag tag_epa =
  let mea = measure_actual_of_tag tag_epa in
  [mea]
;;

let measure_canonical_of_tag_of_calculation_name tag_epa =
  let mea = measure_actual_of_tag tag_epa in
  Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea
;;

let measure_canonical_list_of_tag tag_epa =
  let can_mea = measure_canonical_of_tag_of_calculation_name tag_epa in
  [can_mea]
;;

let measure_canonical_of_tag_of_calculation_name tag_epa =
  let mea = measure_actual_of_tag tag_epa in
  Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea
;;

(** {6 Readee of Tag} *)

let readee_of_tag tag_epa =
  let (sym_epa, soi_epa) = tag_epa in
  match sym_epa with 
  | Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_coefficient_symbol sym_eac ->
      let tag_eac = Tag_v.make sym_eac soi_epa in
      Elementary_border_parameter_aopef_coefficient_belt_v.readee_of_tag tag_eac

  | Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_exponent_symbol sym_eae ->
      let tag_eae = Tag_v.make sym_eae soi_epa in
      Elementary_border_parameter_aopef_exponent_belt_v.readee_of_tag tag_eae
;;

(** {6 Measure_actual off Belt by Coercion} *)

let measure_actual_length_off_belt = function
  | Elementary_border_parameter_aopef_belt_t.Elementary_border_parameter_aopef_coefficient_belt bel_eac ->
      Elementary_border_parameter_aopef_coefficient_belt_v.measure_actual_length_off_belt bel_eac

  | Elementary_border_parameter_aopef_belt_t.Elementary_border_parameter_aopef_exponent_belt bel_eae ->
      Elementary_border_parameter_aopef_exponent_belt_v.measure_actual_length_off_belt bel_eae
;;

let measure_actual_off_belt bel_epa =
  let mle = measure_actual_length_off_belt bel_epa in
  Measure_actual_length_v.measure_actual_of_measure_actual_length mle
;;

let measure_actual_list_off_belt bel_epa =
  let mea = measure_actual_off_belt bel_epa in
  [mea]
;;

let measure_canonical_off_belt_of_calculation_name bel_epa =
  let mea = measure_actual_off_belt bel_epa in
  Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea
;;

let measure_canonical_list_off_belt_of_calculation_name bel_epa =
  let can_mea = measure_canonical_off_belt_of_calculation_name bel_epa in
  [can_mea]
;;

(** {6 Readee off Belt by Coercion} *)

let readee_off_belt = function
  | Elementary_border_parameter_aopef_belt_t.Elementary_border_parameter_aopef_coefficient_belt bel_eac ->
      Elementary_border_parameter_aopef_coefficient_belt_v.readee_off_belt bel_eac

  | Elementary_border_parameter_aopef_belt_t.Elementary_border_parameter_aopef_exponent_belt bel_eae ->
      Elementary_border_parameter_aopef_exponent_belt_v.readee_off_belt bel_eae
;;

(** {6 Closure : list of Readee} *)

let closure_of_tag tag_epa =
  let rea = readee_of_tag tag_epa in
  [rea]
;;

let closure_off_belt = function
  | Elementary_border_parameter_aopef_belt_t.Elementary_border_parameter_aopef_coefficient_belt bel_eac ->
      Elementary_border_parameter_aopef_coefficient_belt_v.closure_off_belt bel_eac

  | Elementary_border_parameter_aopef_belt_t.Elementary_border_parameter_aopef_exponent_belt bel_eae ->
      Elementary_border_parameter_aopef_exponent_belt_v.closure_off_belt bel_eae
;;

(** {6 Float} *)

let float_of_tag tag_epa  =
  let mea = measure_actual_of_tag tag_epa in
  Measure_actual_v.float_off_measure_actual mea 
;;

(** {6 Units} *)

let elementary_fence_units_actual_tag_of_tag tag_epa =
  let mea = measure_actual_of_tag tag_epa in
  Measure_actual_v.elementary_fence_units_actual_symbol_off_measure_actual mea
;;

(** {6 Belt of Sibling} *)

let elementary_border_parameter_aopef_coefficient_belt_off_elementary_border_parameter_aopef_belt bel_epa =
  let tag_epa = Doublet_v.left_off_doublet bel_epa in
  let (sym_epa, soi_epa) = tag_epa in

  match sym_epa with 
  | Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_coefficient_symbol sym_eac ->
      let tag_eac = Tag_v.make sym_eac soi_epa in
      Elementary_border_parameter_aopef_coefficient_belt_v.belt_of_tag tag_eac

  | _ -> failwith 
      "Not_a_elementary_border_parameter_aopef_coefficient_tag:Elementary_border_parameter_aopef_belt_v.elementary_border_parameter_aopef_coefficient_belt_off_elementary_border_parameter_aopef_belt"
;;

let elementary_border_parameter_aopef_exponent_belt_off_elementary_border_parameter_aopef_belt bel_epa =
  let tag_epa = Doublet_v.left_off_doublet bel_epa in
  let (sym_epa, soi_epa) = tag_epa in

  match sym_epa with 
  | Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_exponent_symbol sym_epa ->
      let tag_eae = Tag_v.make sym_epa soi_epa in
      Elementary_border_parameter_aopef_exponent_belt_v.belt_of_tag tag_eae

  | _ -> failwith 
      "Not_a_elementary_border_parameter_aopef_exponent_tag:Elementary_border_parameter_aopef_belt_v.elementary_border_parameter_aopef_exponent_belt_off_elementary_border_parameter_aopef_belt"
;;

(** {6 Text} *)

let text_of_tag tag_epa =
  let (sym_epa, soi_epa) = tag_epa in
  match sym_epa with 
  | Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_coefficient_symbol sym_eac ->
      let tag_eac = Tag_v.make sym_eac soi_epa in
      Elementary_border_parameter_aopef_coefficient_belt_v.text_of_tag tag_eac

  | Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_exponent_symbol sym_eae ->
      let tag_eae = Tag_v.make sym_eae soi_epa in
      Elementary_border_parameter_aopef_exponent_belt_v.text_of_tag tag_eae
;;

(** {6 Naming_for_belt} *)

let name = function
  | Elementary_border_parameter_aopef_belt_t.Elementary_border_parameter_aopef_coefficient_belt bel_eac ->
      Elementary_border_parameter_aopef_coefficient_belt_v.name bel_eac

  | Elementary_border_parameter_aopef_belt_t.Elementary_border_parameter_aopef_exponent_belt bel_eae ->
      Elementary_border_parameter_aopef_exponent_belt_v.name bel_eae
;;

let longname bel_epa =
  Format.sprintf "Elementary_border_parameter_aopef_t.%s" (String.capitalize (name bel_epa))
;;


(* generated by ./do_belt_as_doublet_border_trunc_2sibling_1units_2beltee_v.sh elementary_border_parameter_aopef epa coefficient eac exponent eae elementary_fence_units_actual efa length fal mle *)
(* using ./template_belt_as_doublet_border_trunc_2sibling_1units_2beltee_v.ml *)
(* Done on mardi 24 mai 2016, 16:43:11 (UTC+0200) *)

