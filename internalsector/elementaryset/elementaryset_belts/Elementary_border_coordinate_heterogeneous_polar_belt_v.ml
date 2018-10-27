(** {3 Elementary_border_coordinate_heterogeneous_polar_belt_v} *)

(** {6 Documenting_for_belt} *)

let documentation () = 
[
 "Current : VELE:Elementary_border_coordinate_heterogeneous_polar_belt_v";
 "Needs: ";
 "Needed-by: ";
 "What-is-it : a one element list of Belte i.e. (Elementary_border_tag, Readee)";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Coercing Up Sibling Tag} *)

let elementary_border_coordinate_heterogeneous_polar_tag_of_elementary_border_coordinate_heterogeneous_polar_rho_tag tag_ecr =
  let (sym_ecr, soi_ecr) = tag_ecr in
  Tag_v.make  
    (Elementary_border_coordinate_heterogeneous_polar_symbol_t.Elementary_border_coordinate_heterogeneous_polar_rho_symbol sym_ecr)
    soi_ecr
;;

let elementary_border_coordinate_heterogeneous_polar_tag_of_elementary_border_coordinate_heterogeneous_polar_theta_tag tag_ehp =
  let (sym_ehp, soi_ehp) = tag_ehp in
  Tag_v.make  
    (Elementary_border_coordinate_heterogeneous_polar_symbol_t.Elementary_border_coordinate_heterogeneous_polar_theta_symbol sym_ehp)
    soi_ehp
;;

(** {6 Coercing Down Sibling Tag} *)

let elementary_border_coordinate_heterogeneous_polar_rho_tag_off_elementary_border_coordinate_heterogeneous_polar_tag tag_ehp =
  let (sym_ehp, soi_ehp) = tag_ehp in
  match sym_ehp with 
  | Elementary_border_coordinate_heterogeneous_polar_symbol_t.Elementary_border_coordinate_heterogeneous_polar_rho_symbol sym_ecr ->
      Tag_v.make sym_ecr soi_ehp

  | _ -> failwith 
      "Not_a_elementary_border_coordinate_heterogeneous_polar_rho_tag:Elementary_border_coordinate_heterogeneous_polar_belt_v.elementary_border_coordinate_heterogeneous_polar_rho_tag_off_elementary_border_coordinate_heterogeneous_polar_tag"
;;

let elementary_border_coordinate_heterogeneous_polar_theta_tag_off_elementary_border_coordinate_heterogeneous_polar_tag tag_ehp =
  let (sym_ehp, soi_ehp) = tag_ehp in
  match sym_ehp with 
  | Elementary_border_coordinate_heterogeneous_polar_symbol_t.Elementary_border_coordinate_heterogeneous_polar_theta_symbol sym_ect ->
      Tag_v.make sym_ect soi_ehp

  | _ -> failwith 
      "Not_a_elementary_border_coordinate_heterogeneous_polar_theta_tag:Elementary_border_coordinate_heterogeneous_polar_belt_v.elementary_border_coordinate_heterogeneous_polar_theta_tag_off_elementary_border_coordinate_heterogeneous_polar_tag"
;;

(** {6 Border as list of itself} *)

let coerce_up_tag tag_ehp =
  Tag_v.map_entity 
    Elementary_border_symbol_v.elementary_border_symbol_of_elementary_border_coordinate_heterogeneous_polar_symbol 
    tag_ehp
;;

let border_of_tag tag_ehp =
  [coerce_up_tag tag_ehp]
;;

(** {6 Belt of Tag} *)

let belt_of_tag tag_ehp =
  let (sym_ehp, soi_ehp) = tag_ehp in
  match sym_ehp with 
  | Elementary_border_coordinate_heterogeneous_polar_symbol_t.Elementary_border_coordinate_heterogeneous_polar_rho_symbol sym_ecr ->
      let tag_ecr = Tag_v.make sym_ecr soi_ehp in
      Elementary_border_coordinate_heterogeneous_polar_belt_t.Elementary_border_coordinate_heterogeneous_polar_rho_belt
      (Elementary_border_coordinate_heterogeneous_polar_rho_belt_v.belt_of_tag tag_ecr)

  | Elementary_border_coordinate_heterogeneous_polar_symbol_t.Elementary_border_coordinate_heterogeneous_polar_theta_symbol sym_ehp ->
      let tag_ect = Tag_v.make sym_ehp soi_ehp in
      Elementary_border_coordinate_heterogeneous_polar_belt_t.Elementary_border_coordinate_heterogeneous_polar_theta_belt
      (Elementary_border_coordinate_heterogeneous_polar_theta_belt_v.belt_of_tag tag_ect)
;;

(** {6 Measure of Tag} *)

let measure_actual_of_tag tag_ehp =
  let (sym_ehp, soi_ehp) = tag_ehp in
  match sym_ehp with 
  | Elementary_border_coordinate_heterogeneous_polar_symbol_t.Elementary_border_coordinate_heterogeneous_polar_rho_symbol sym_ecr ->
      let tag_ecr = Tag_v.make sym_ecr soi_ehp in
      Elementary_border_coordinate_heterogeneous_polar_rho_belt_v.measure_actual_of_tag tag_ecr

  | Elementary_border_coordinate_heterogeneous_polar_symbol_t.Elementary_border_coordinate_heterogeneous_polar_theta_symbol sym_ehp ->
      let tag_ect = Tag_v.make sym_ehp soi_ehp in
      Elementary_border_coordinate_heterogeneous_polar_theta_belt_v.measure_actual_of_tag tag_ect
;;

let measure_actual_list_of_tag tag_ehp =
  let mea = measure_actual_of_tag tag_ehp in
  [mea]
;;

let measure_canonical_of_tag_of_calculation_name tag_ehp =
  let mea = measure_actual_of_tag tag_ehp in
  Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea
;;

let measure_canonical_list_of_tag tag_ehp =
  let can_mea = measure_canonical_of_tag_of_calculation_name tag_ehp in
  [can_mea]
;;

let measure_canonical_of_tag_of_calculation_name tag_ehp =
  let mea = measure_actual_of_tag tag_ehp in
  Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea
;;

(** {6 Measure_actual off Belt by Coercion} *)

let measure_actual_off_belt = function
  | Elementary_border_coordinate_heterogeneous_polar_belt_t.Elementary_border_coordinate_heterogeneous_polar_rho_belt bel_ecr ->
      Elementary_border_coordinate_heterogeneous_polar_rho_belt_v.measure_actual_off_belt bel_ecr

  | Elementary_border_coordinate_heterogeneous_polar_belt_t.Elementary_border_coordinate_heterogeneous_polar_theta_belt bel_ect ->
      Elementary_border_coordinate_heterogeneous_polar_theta_belt_v.measure_actual_off_belt bel_ect
;;

let measure_actual_list_off_belt bel_ehp =
  let mea = measure_actual_off_belt bel_ehp in
  [mea]
;;

let measure_canonical_off_belt_of_calculation_name bel_ehp =
  let mea = measure_actual_off_belt bel_ehp in
  Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea
;;

let measure_canonical_list_off_belt_of_calculation_name bel_ehp =
  let can_mea = measure_canonical_off_belt_of_calculation_name bel_ehp in
  [can_mea]
;;

(** {6 Readee of Tag} *)

let readee_of_tag tag_ehp =
  let (sym_ehp, soi_ehp) = tag_ehp in
  match sym_ehp with 
  | Elementary_border_coordinate_heterogeneous_polar_symbol_t.Elementary_border_coordinate_heterogeneous_polar_rho_symbol sym_ecr ->
      let tag_ecr = Tag_v.make sym_ecr soi_ehp in
      Elementary_border_coordinate_heterogeneous_polar_rho_belt_v.readee_of_tag tag_ecr

  | Elementary_border_coordinate_heterogeneous_polar_symbol_t.Elementary_border_coordinate_heterogeneous_polar_theta_symbol sym_ect ->
      let tag_ect = Tag_v.make sym_ect soi_ehp in
      Elementary_border_coordinate_heterogeneous_polar_theta_belt_v.readee_of_tag tag_ect
;;

(** {6 Readee off Belt} *)

let readee_off_belt bel_ehp =
  let mea = measure_actual_off_belt bel_ehp in
  Readee_v.readee_of_measure_actual mea
;;

(** {6 Closure : list of Readee} *)

let closure_of_tag tag_ehp =
  let rea = readee_of_tag tag_ehp in
  [rea]
;;

let closure_off_belt = function
  | Elementary_border_coordinate_heterogeneous_polar_belt_t.Elementary_border_coordinate_heterogeneous_polar_rho_belt bel_ecr ->
      Elementary_border_coordinate_heterogeneous_polar_rho_belt_v.closure_off_belt bel_ecr

  | Elementary_border_coordinate_heterogeneous_polar_belt_t.Elementary_border_coordinate_heterogeneous_polar_theta_belt bel_ect ->
      Elementary_border_coordinate_heterogeneous_polar_theta_belt_v.closure_off_belt bel_ect
;;

(** {6 Float} *)

let float_of_tag tag_ehp  =
  let mea = measure_actual_of_tag tag_ehp in
  Measure_actual_v.float_off_measure_actual mea 
;;

(** {6 Units} *)

let elementary_fence_units_actual_tag_of_tag tag_ehp =
  let mea = measure_actual_of_tag tag_ehp in
  Measure_actual_v.elementary_fence_units_actual_symbol_off_measure_actual mea
;;

(** {6 Belt of Sibling} *)

let elementary_border_coordinate_heterogeneous_polar_rho_belt_off_elementary_border_coordinate_heterogeneous_polar_belt bel_ehp =
  let tag_ehp = Doublet_v.left_off_doublet bel_ehp in
  let (sym_ehp, soi_ehp) = tag_ehp in

  match sym_ehp with 
  | Elementary_border_coordinate_heterogeneous_polar_symbol_t.Elementary_border_coordinate_heterogeneous_polar_rho_symbol sym_ecr ->
      let tag_ecr = Tag_v.make sym_ecr soi_ehp in
      Elementary_border_coordinate_heterogeneous_polar_rho_belt_v.belt_of_tag tag_ecr

  | _ -> failwith 
      "Not_a_elementary_border_coordinate_heterogeneous_polar_rho_tag:Elementary_border_coordinate_heterogeneous_polar_belt_v.elementary_border_coordinate_heterogeneous_polar_rho_belt_off_elementary_border_coordinate_heterogeneous_polar_belt"
;;

let elementary_border_coordinate_heterogeneous_polar_theta_belt_off_elementary_border_coordinate_heterogeneous_polar_belt bel_ehp =
  let tag_ehp = Doublet_v.left_off_doublet bel_ehp in
  let (sym_ehp, soi_ehp) = tag_ehp in

  match sym_ehp with 
  | Elementary_border_coordinate_heterogeneous_polar_symbol_t.Elementary_border_coordinate_heterogeneous_polar_theta_symbol sym_ehp ->
      let tag_ect = Tag_v.make sym_ehp soi_ehp in
      Elementary_border_coordinate_heterogeneous_polar_theta_belt_v.belt_of_tag tag_ect

  | _ -> failwith 
      "Not_a_elementary_border_coordinate_heterogeneous_polar_theta_tag:Elementary_border_coordinate_heterogeneous_polar_belt_v.elementary_border_coordinate_heterogeneous_polar_theta_belt_off_elementary_border_coordinate_heterogeneous_polar_belt"
;;

(** {6 Text} *)

let text_of_tag tag_ehp =
  let (sym_ehp, soi_ehp) = tag_ehp in
  match sym_ehp with 
  | Elementary_border_coordinate_heterogeneous_polar_symbol_t.Elementary_border_coordinate_heterogeneous_polar_rho_symbol sym_ecr ->
      let tag_ecr = Tag_v.make sym_ecr soi_ehp in
      Elementary_border_coordinate_heterogeneous_polar_rho_belt_v.text_of_tag tag_ecr

  | Elementary_border_coordinate_heterogeneous_polar_symbol_t.Elementary_border_coordinate_heterogeneous_polar_theta_symbol sym_ect ->
      let tag_ect = Tag_v.make sym_ect soi_ehp in
      Elementary_border_coordinate_heterogeneous_polar_theta_belt_v.text_of_tag tag_ect
;;

(** {6 Naming_for_belt} *)

let name = function
  | Elementary_border_coordinate_heterogeneous_polar_belt_t.Elementary_border_coordinate_heterogeneous_polar_rho_belt bel_ecr ->
      Elementary_border_coordinate_heterogeneous_polar_rho_belt_v.name bel_ecr

  | Elementary_border_coordinate_heterogeneous_polar_belt_t.Elementary_border_coordinate_heterogeneous_polar_theta_belt bel_ect ->
      Elementary_border_coordinate_heterogeneous_polar_theta_belt_v.name bel_ect
;;

let longname bel_ehp =
  Format.sprintf "Elementary_border_coordinate_heterogeneous_polar_t.%s" (String.capitalize (name bel_ehp))
;;


(* generated by ./do_belt_as_doublet_border_trunc_2sibling_2units_2beltee_v.sh elementary_border_coordinate_heterogeneous_polar ehp rho ecr theta ect elementary_fence_units_actual efa angle faa length fal *)
(* using ./template_belt_as_doublet_border_trunc_2sibling_2units_2beltee_v.ml *)
(* Done on mardi 24 mai 2016, 16:43:10 (UTC+0200) *)

