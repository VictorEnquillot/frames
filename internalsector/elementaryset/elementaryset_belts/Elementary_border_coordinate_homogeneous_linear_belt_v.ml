(** {3 Elementary_border_coordinate_homogeneous_linear_belt_v} *)

(** {6 Documenting_for_belt} *)

let documentation () = 
[
 "Current : VELE:Elementary_border_coordinate_homogeneous_linear_belt_v";
 "Needs: ";
 "Needed-by: ";
 "What-is-it : a one element list of Belte i.e. (Elementary_border_tag, Readee)";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Coercing Up Sibling Tag} *)

let elementary_border_coordinate_homogeneous_linear_tag_of_elementary_border_coordinate_homogeneous_linear_x_tag tag_ =
  let (sym_, soi_) = tag_ in
  Tag_v.make  
    (Elementary_border_coordinate_homogeneous_linear_symbol_t.Elementary_border_coordinate_homogeneous_linear_x_symbol sym_)
    soi_
;;

(** {6 Coercing Down Sibling Tag} *)

let elementary_border_coordinate_homogeneous_linear_x_tag_off_elementary_border_coordinate_homogeneous_linear_tag tag_ehl =
  let (sym_ehl, soi_ehl) = tag_ehl in
  match sym_ehl with 
  | Elementary_border_coordinate_homogeneous_linear_symbol_t.Elementary_border_coordinate_homogeneous_linear_x_symbol sym_ ->
      Tag_v.make sym_ soi_ehl
;;

(** {6 Border as list of itself} *)

let coerce_up_tag tag_ehl =
  Tag_v.map_entity 
    Elementary_border_symbol_v.elementary_border_symbol_of_elementary_border_coordinate_homogeneous_linear_symbol 
    tag_ehl
;;

let border_of_tag tag_ehl =
  [coerce_up_tag tag_ehl]
;;

(** {6 Belt of Tag} *)

let belt_of_tag tag_ehl =
  let (sym_ehl, soi_ehl) = tag_ehl in
  match sym_ehl with 
  | Elementary_border_coordinate_homogeneous_linear_symbol_t.Elementary_border_coordinate_homogeneous_linear_x_symbol sym_ ->
      let tag_ = Tag_v.make sym_ soi_ehl in
      Elementary_border_coordinate_homogeneous_linear_belt_t.Elementary_border_coordinate_homogeneous_linear_x_belt
      (Elementary_border_coordinate_homogeneous_linear_x_belt_v.belt_of_tag tag_)
;;

(** {6 Measure_actual of Tag} *)

let measure_actual_length_of_tag tag_ehl =
  let (sym_ehl, soi_ehl) = tag_ehl in
  match sym_ehl with 
  | Elementary_border_coordinate_homogeneous_linear_symbol_t.Elementary_border_coordinate_homogeneous_linear_x_symbol sym_ ->
      let tag_ = Tag_v.make sym_ soi_ehl in
      Elementary_border_coordinate_homogeneous_linear_x_belt_v.measure_actual_length_of_tag tag_
;;

let measure_actual_of_tag tag_ehl =
  let mle = measure_actual_length_of_tag tag_ehl in
  Measure_actual_length_v.measure_actual_of_measure_actual_length mle
;;

let measure_actual_list_of_tag tag_ehl =
  let mea = measure_actual_of_tag tag_ehl in
  [mea]
;;

let measure_canonical_of_tag_of_calculation_name tag_ehl =
  let mea = measure_actual_of_tag tag_ehl in
  Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea
;;

let measure_canonical_list_of_tag tag_ehl =
  let can_mea = measure_canonical_of_tag_of_calculation_name tag_ehl in
  [can_mea]
;;

let measure_canonical_of_tag_of_calculation_name tag_ehl =
  let mea = measure_actual_of_tag tag_ehl in
  Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea
;;

(** {6 Measure_actual off Belt by Coercion} *)

let measure_actual_length_off_belt = function
  | Elementary_border_coordinate_homogeneous_linear_belt_t.Elementary_border_coordinate_homogeneous_linear_x_belt bel_ ->
      Elementary_border_coordinate_homogeneous_linear_x_belt_v.measure_actual_length_off_belt bel_
;;

let measure_actual_off_belt bel_ehl =
  let mle = measure_actual_length_off_belt bel_ehl in
  Measure_actual_length_v.measure_actual_of_measure_actual_length mle
;;

let measure_actual_list_off_belt bel_ehl =
  let mea = measure_actual_off_belt bel_ehl in
  [mea]
;;

let measure_canonical_off_belt_of_calculation_name bel_ehl =
  let mea = measure_actual_off_belt bel_ehl in
  Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea
;;

let measure_canonical_list_off_belt_of_calculation_name bel_ehl =
  let can_mea = measure_canonical_off_belt_of_calculation_name bel_ehl in
  [can_mea]
;;

(** {6 Readee of Tag} *)

let readee_of_tag tag_ehl =
  let (sym_ehl, soi_ehl) = tag_ehl in
  match sym_ehl with 
  | Elementary_border_coordinate_homogeneous_linear_symbol_t.Elementary_border_coordinate_homogeneous_linear_x_symbol sym_ ->
      let tag_ = Tag_v.make sym_ soi_ehl in
      Elementary_border_coordinate_homogeneous_linear_x_belt_v.readee_of_tag tag_
;;

(** {6 Readee off Belt} *)

let readee_off_belt bel_ehl =
  let mea = measure_actual_off_belt bel_ehl in
  Readee_v.readee_of_measure_actual mea
;;

(** {6 Closure : list of Readee} *)

let closure_of_tag tag_ehl =
  let rea = readee_of_tag tag_ehl in
  [rea]
;;

let closure_off_belt = function
  | Elementary_border_coordinate_homogeneous_linear_belt_t.Elementary_border_coordinate_homogeneous_linear_x_belt bel_ ->
      Elementary_border_coordinate_homogeneous_linear_x_belt_v.closure_off_belt bel_
;;

(** {6 Float} *)

let float_of_tag tag_ehl  =
  let mea = measure_actual_of_tag tag_ehl in
  Measure_actual_v.float_off_measure_actual mea 
;;

(** {6 Units} *)

let elementary_fence_units_actual_tag_of_tag tag_ehl =
  let mea = measure_actual_of_tag tag_ehl in
  Measure_actual_v.elementary_fence_units_actual_symbol_off_measure_actual mea
;;

(** {6 Belt of Sibling} *)

let elementary_border_coordinate_homogeneous_linear_x_belt_off_elementary_border_coordinate_homogeneous_linear_belt bel_ehl =
  let tag_ehl = Doublet_v.left_off_doublet bel_ehl in
  let (sym_ehl, soi_ehl) = tag_ehl in

  match sym_ehl with 
  | Elementary_border_coordinate_homogeneous_linear_symbol_t.Elementary_border_coordinate_homogeneous_linear_x_symbol sym_ ->
      let tag_ = Tag_v.make sym_ soi_ehl in
      Elementary_border_coordinate_homogeneous_linear_x_belt_v.belt_of_tag tag_
;;

(** {6 Text} *)

let text_of_tag tag_ehl =
  let (sym_ehl, soi_ehl) = tag_ehl in
  match sym_ehl with 
  | Elementary_border_coordinate_homogeneous_linear_symbol_t.Elementary_border_coordinate_homogeneous_linear_x_symbol sym_ ->
      let tag_ = Tag_v.make sym_ soi_ehl in
      Elementary_border_coordinate_homogeneous_linear_x_belt_v.text_of_tag tag_
;;

(** {6 Naming_for_belt} *)

let name = function
  | Elementary_border_coordinate_homogeneous_linear_belt_t.Elementary_border_coordinate_homogeneous_linear_x_belt bel_ ->
      Elementary_border_coordinate_homogeneous_linear_x_belt_v.name bel_
;;

let longname bel_ehl =
  Format.sprintf "Elementary_border_coordinate_homogeneous_linear_t.%s" (String.capitalize (name bel_ehl))
;;


(* generated by ./do_belt_as_doublet_border_trunc_1sibling_1units_2beltee_v.sh elementary_border_coordinate_homogeneous_linear ehl x elx elementary_fence_units_actual efa length fal mle *)
(* using ./template_belt_as_doublet_border_trunc_1sibling_1units_2beltee_v.ml *)
(* Done on mardi 24 mai 2016, 16:43:09 (UTC+0200) *)

