(** {3 Elementary_border_parameter_belt_v} *)

(** {6 Documenting_for_belt} *)

let documentation () = 
[
 "Current : VELE:Elementary_border_parameter_belt_v";
 "Needs: ";
 "Needed-by: ";
 "What-is-it : a one element list of Belte i.e. (Elementary_border_tag, Readee)";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Coercing Up Sibling Tag} *)

let elementary_border_parameter_tag_of_elementary_border_parameter_aopef_tag tag_epa =
  let (sym_epa, soi_epa) = tag_epa in
  Tag_v.make  
    (Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol sym_epa)
    soi_epa
;;

let elementary_border_parameter_tag_of_elementary_border_parameter_ecppef_tag tag_ebp =
  let (sym_ebp, soi_ebp) = tag_ebp in
  Tag_v.make  
    (Elementary_border_parameter_symbol_t.Elementary_border_parameter_ecppef_symbol sym_ebp)
    soi_ebp
;;

(** {6 Coercing Down Sibling Tag} *)

let elementary_border_parameter_aopef_tag_off_elementary_border_parameter_tag tag_ebp =
  let (sym_ebp, soi_ebp) = tag_ebp in
  match sym_ebp with 
  | Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol sym_epa ->
      Tag_v.make sym_epa soi_ebp

  | _ -> failwith 
      "Not_a_elementary_border_parameter_aopef_tag:Elementary_border_parameter_belt_v.elementary_border_parameter_aopef_tag_off_elementary_border_parameter_tag"
;;

let elementary_border_parameter_ecppef_tag_off_elementary_border_parameter_tag tag_ebp =
  let (sym_ebp, soi_ebp) = tag_ebp in
  match sym_ebp with 
  | Elementary_border_parameter_symbol_t.Elementary_border_parameter_ecppef_symbol sym_epe ->
      Tag_v.make sym_epe soi_ebp

  | _ -> failwith 
      "Not_a_elementary_border_parameter_ecppef_tag:Elementary_border_parameter_belt_v.elementary_border_parameter_ecppef_tag_off_elementary_border_parameter_tag"
;;

(** {6 Border as list of itself} *)

let coerce_up_tag tag_ebp =
  Tag_v.map_entity 
    Elementary_border_symbol_v.elementary_border_symbol_of_elementary_border_parameter_symbol 
    tag_ebp
;;

let border_of_tag tag_ebp =
  [coerce_up_tag tag_ebp]
;;

(** {6 Belt of Tag} *)

let belt_of_tag tag_ebp =
  let (sym_ebp, soi_ebp) = tag_ebp in
  match sym_ebp with 
  | Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol sym_epa ->
      let tag_epa = Tag_v.make sym_epa soi_ebp in
      Elementary_border_parameter_belt_t.Elementary_border_parameter_aopef_belt
      (Elementary_border_parameter_aopef_belt_v.belt_of_tag tag_epa)

  | Elementary_border_parameter_symbol_t.Elementary_border_parameter_ecppef_symbol sym_ebp ->
      let tag_epe = Tag_v.make sym_ebp soi_ebp in
      Elementary_border_parameter_belt_t.Elementary_border_parameter_ecppef_belt
      (Elementary_border_parameter_ecppef_belt_v.belt_of_tag tag_epe)
;;

(** {6 Measure_actual of Tag} *)

let measure_actual_length_of_tag tag_ebp =
  let (sym_ebp, soi_ebp) = tag_ebp in
  match sym_ebp with 
  | Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol sym_epa ->
      let tag_epa = Tag_v.make sym_epa soi_ebp in
      Elementary_border_parameter_aopef_belt_v.measure_actual_length_of_tag tag_epa

  | Elementary_border_parameter_symbol_t.Elementary_border_parameter_ecppef_symbol sym_ebp ->
      let tag_epe = Tag_v.make sym_ebp soi_ebp in
      Elementary_border_parameter_ecppef_belt_v.measure_actual_length_of_tag tag_epe
;;

let measure_actual_of_tag tag_ebp =
  let mle = measure_actual_length_of_tag tag_ebp in
  Measure_actual_length_v.measure_actual_of_measure_actual_length mle
;;

let measure_actual_list_of_tag tag_ebp =
  let mea = measure_actual_of_tag tag_ebp in
  [mea]
;;

let measure_canonical_of_tag_of_calculation_name tag_ebp =
  let mea = measure_actual_of_tag tag_ebp in
  Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea
;;

let measure_canonical_list_of_tag tag_ebp =
  let can_mea = measure_canonical_of_tag_of_calculation_name tag_ebp in
  [can_mea]
;;

let measure_canonical_of_tag_of_calculation_name tag_ebp =
  let mea = measure_actual_of_tag tag_ebp in
  Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea
;;

(** {6 Readee of Tag} *)

let readee_of_tag tag_ebp =
  let (sym_ebp, soi_ebp) = tag_ebp in
  match sym_ebp with 
  | Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol sym_epa ->
      let tag_epa = Tag_v.make sym_epa soi_ebp in
      Elementary_border_parameter_aopef_belt_v.readee_of_tag tag_epa

  | Elementary_border_parameter_symbol_t.Elementary_border_parameter_ecppef_symbol sym_epe ->
      let tag_epe = Tag_v.make sym_epe soi_ebp in
      Elementary_border_parameter_ecppef_belt_v.readee_of_tag tag_epe
;;

(** {6 Measure_actual off Belt by Coercion} *)

let measure_actual_length_off_belt = function
  | Elementary_border_parameter_belt_t.Elementary_border_parameter_aopef_belt bel_epa ->
      Elementary_border_parameter_aopef_belt_v.measure_actual_length_off_belt bel_epa

  | Elementary_border_parameter_belt_t.Elementary_border_parameter_ecppef_belt bel_epe ->
      Elementary_border_parameter_ecppef_belt_v.measure_actual_length_off_belt bel_epe
;;

let measure_actual_off_belt bel_ebp =
  let mle = measure_actual_length_off_belt bel_ebp in
  Measure_actual_length_v.measure_actual_of_measure_actual_length mle
;;

let measure_actual_list_off_belt bel_ebp =
  let mea = measure_actual_off_belt bel_ebp in
  [mea]
;;

let measure_canonical_off_belt_of_calculation_name bel_ebp =
  let mea = measure_actual_off_belt bel_ebp in
  Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea
;;

let measure_canonical_list_off_belt_of_calculation_name bel_ebp =
  let can_mea = measure_canonical_off_belt_of_calculation_name bel_ebp in
  [can_mea]
;;

(** {6 Readee off Belt by Coercion} *)

let readee_off_belt = function
  | Elementary_border_parameter_belt_t.Elementary_border_parameter_aopef_belt bel_epa ->
      Elementary_border_parameter_aopef_belt_v.readee_off_belt bel_epa

  | Elementary_border_parameter_belt_t.Elementary_border_parameter_ecppef_belt bel_epe ->
      Elementary_border_parameter_ecppef_belt_v.readee_off_belt bel_epe
;;

(** {6 Closure : list of Readee} *)

let closure_of_tag tag_ebp =
  let rea = readee_of_tag tag_ebp in
  [rea]
;;

let closure_off_belt = function
  | Elementary_border_parameter_belt_t.Elementary_border_parameter_aopef_belt bel_epa ->
      Elementary_border_parameter_aopef_belt_v.closure_off_belt bel_epa

  | Elementary_border_parameter_belt_t.Elementary_border_parameter_ecppef_belt bel_epe ->
      Elementary_border_parameter_ecppef_belt_v.closure_off_belt bel_epe
;;

(** {6 Float} *)

let float_of_tag tag_ebp  =
  let mea = measure_actual_of_tag tag_ebp in
  Measure_actual_v.float_off_measure_actual mea 
;;

(** {6 Units} *)

let elementary_fence_units_actual_tag_of_tag tag_ebp =
  let mea = measure_actual_of_tag tag_ebp in
  Measure_actual_v.elementary_fence_units_actual_symbol_off_measure_actual mea
;;

(** {6 Belt of Sibling} *)

let elementary_border_parameter_aopef_belt_off_elementary_border_parameter_belt bel_ebp =
  let tag_ebp = Doublet_v.left_off_doublet bel_ebp in
  let (sym_ebp, soi_ebp) = tag_ebp in

  match sym_ebp with 
  | Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol sym_epa ->
      let tag_epa = Tag_v.make sym_epa soi_ebp in
      Elementary_border_parameter_aopef_belt_v.belt_of_tag tag_epa

  | _ -> failwith 
      "Not_a_elementary_border_parameter_aopef_tag:Elementary_border_parameter_belt_v.elementary_border_parameter_aopef_belt_off_elementary_border_parameter_belt"
;;

let elementary_border_parameter_ecppef_belt_off_elementary_border_parameter_belt bel_ebp =
  let tag_ebp = Doublet_v.left_off_doublet bel_ebp in
  let (sym_ebp, soi_ebp) = tag_ebp in

  match sym_ebp with 
  | Elementary_border_parameter_symbol_t.Elementary_border_parameter_ecppef_symbol sym_ebp ->
      let tag_epe = Tag_v.make sym_ebp soi_ebp in
      Elementary_border_parameter_ecppef_belt_v.belt_of_tag tag_epe

  | _ -> failwith 
      "Not_a_elementary_border_parameter_ecppef_tag:Elementary_border_parameter_belt_v.elementary_border_parameter_ecppef_belt_off_elementary_border_parameter_belt"
;;

(** {6 Text} *)

let text_of_tag tag_ebp =
  let (sym_ebp, soi_ebp) = tag_ebp in
  match sym_ebp with 
  | Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol sym_epa ->
      let tag_epa = Tag_v.make sym_epa soi_ebp in
      Elementary_border_parameter_aopef_belt_v.text_of_tag tag_epa

  | Elementary_border_parameter_symbol_t.Elementary_border_parameter_ecppef_symbol sym_epe ->
      let tag_epe = Tag_v.make sym_epe soi_ebp in
      Elementary_border_parameter_ecppef_belt_v.text_of_tag tag_epe
;;

(** {6 Naming_for_belt} *)

let name = function
  | Elementary_border_parameter_belt_t.Elementary_border_parameter_aopef_belt bel_epa ->
      Elementary_border_parameter_aopef_belt_v.name bel_epa

  | Elementary_border_parameter_belt_t.Elementary_border_parameter_ecppef_belt bel_epe ->
      Elementary_border_parameter_ecppef_belt_v.name bel_epe
;;

let longname bel_ebp =
  Format.sprintf "Elementary_border_parameter_t.%s" (String.capitalize (name bel_ebp))
;;


(* generated by ./do_belt_as_doublet_border_trunc_2sibling_1units_2beltee_v.sh elementary_border_parameter ebp aopef epa ecppef epe elementary_fence_units_actual efa length fal mle *)
(* using ./template_belt_as_doublet_border_trunc_2sibling_1units_2beltee_v.ml *)
(* Done on mardi 24 mai 2016, 16:43:11 (UTC+0200) *)

