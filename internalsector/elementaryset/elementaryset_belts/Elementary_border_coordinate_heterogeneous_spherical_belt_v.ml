(** {3 Elementary_border_coordinate_heterogeneous_spherical_belt_v} *)

(** {6 Documenting_for_belt} *)

let documentation () = 
[
 "Current : VELE:Elementary_border_coordinate_heterogeneous_spherical_belt_v";
 "Needs: ";
 "Needed-by: ";
 "What-is-it : a one element list of Belte i.e. (Elementary_border_tag, Readee)";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Coercing Up Sibling Tag} *)

let elementary_border_coordinate_heterogeneous_spherical_tag_of_elementary_border_coordinate_heterogeneous_spherical_rho_tag tag_ecr =
  let (sym_ecr, soi_ecr) = tag_ecr in
  Tag_v.make  
    (Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_rho_symbol sym_ecr)
    soi_ecr
;;

let elementary_border_coordinate_heterogeneous_spherical_tag_of_elementary_border_coordinate_heterogeneous_spherical_phi_tag tag_ehs =
  let (sym_ehs, soi_ehs) = tag_ehs in
  Tag_v.make  
    (Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_phi_symbol sym_ehs)
    soi_ehs
;;

let elementary_border_coordinate_heterogeneous_spherical_tag_of_elementary_border_coordinate_heterogeneous_spherical_theta_tag tag_ehs =
  let (sym_ehs, soi_ehs) = tag_ehs in
  Tag_v.make  
    (Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_theta_symbol sym_ehs)
    soi_ehs
;;

(** {6 Coercing Down Sibling Tag} *)

let elementary_border_coordinate_heterogeneous_spherical_rho_tag_off_elementary_border_coordinate_heterogeneous_spherical_tag tag_ehs =
  let (sym_ehs, soi_ehs) = tag_ehs in
  match sym_ehs with 
  | Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_rho_symbol sym_ecr ->
      Tag_v.make sym_ecr soi_ehs

  | _ -> failwith 
      "Not_a_elementary_border_coordinate_heterogeneous_spherical_rho_tag:Elementary_border_coordinate_heterogeneous_spherical_belt_v.elementary_border_coordinate_heterogeneous_spherical_rho_tag_off_elementary_border_coordinate_heterogeneous_spherical_tag"
;;

let elementary_border_coordinate_heterogeneous_spherical_phi_tag_off_elementary_border_coordinate_heterogeneous_spherical_tag tag_ehs =
  let (sym_ehs, soi_ehs) = tag_ehs in
  match sym_ehs with 
  | Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_phi_symbol sym_ecp ->
      Tag_v.make sym_ecp soi_ehs

  | _ -> failwith 
      "Not_a_elementary_border_coordinate_heterogeneous_spherical_phi_tag:Elementary_border_coordinate_heterogeneous_spherical_belt_v.elementary_border_coordinate_heterogeneous_spherical_phi_tag_off_elementary_border_coordinate_heterogeneous_spherical_tag"
;;

let elementary_border_coordinate_heterogeneous_spherical_theta_tag_off_elementary_border_coordinate_heterogeneous_spherical_tag tag_ehs =
  let (sym_ehs, soi_ehs) = tag_ehs in
  match sym_ehs with 
  | Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_theta_symbol sym_ect ->
      Tag_v.make sym_ect soi_ehs

  | _ -> failwith 
      "Not_a_elementary_border_coordinate_heterogeneous_spherical_theta_tag:Elementary_border_coordinate_heterogeneous_spherical_belt_v.elementary_border_coordinate_heterogeneous_spherical_theta_tag_off_elementary_border_coordinate_heterogeneous_spherical_tag"
;;

(** {6 Border as list of itself} *)

let coerce_up_tag tag_ehs =
  Tag_v.map_entity 
    Elementary_border_symbol_v.elementary_border_symbol_of_elementary_border_coordinate_heterogeneous_spherical_symbol 
    tag_ehs
;;

let border_of_tag tag_ehs =
  [coerce_up_tag tag_ehs]
;;

(** {6 Belt of Tag} *)

let belt_of_tag tag_ehs =
  let (sym_ehs, soi_ehs) = tag_ehs in
  match sym_ehs with 
  | Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_rho_symbol sym_ecr ->
      let tag_ecr = Tag_v.make sym_ecr soi_ehs in
      Elementary_border_coordinate_heterogeneous_spherical_belt_t.Elementary_border_coordinate_heterogeneous_spherical_rho_belt
      (Elementary_border_coordinate_heterogeneous_spherical_rho_belt_v.belt_of_tag tag_ecr)

  | Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_phi_symbol sym_ehs ->
      let tag_ecp = Tag_v.make sym_ehs soi_ehs in
      Elementary_border_coordinate_heterogeneous_spherical_belt_t.Elementary_border_coordinate_heterogeneous_spherical_phi_belt
      (Elementary_border_coordinate_heterogeneous_spherical_phi_belt_v.belt_of_tag tag_ecp)


  | Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_theta_symbol sym_ehs ->
      let tag_ect = Tag_v.make sym_ehs soi_ehs in
      Elementary_border_coordinate_heterogeneous_spherical_belt_t.Elementary_border_coordinate_heterogeneous_spherical_theta_belt
      (Elementary_border_coordinate_heterogeneous_spherical_theta_belt_v.belt_of_tag tag_ect)
;;

(** {6 Measure_actual of Tag} *)

let measure_actual_of_tag tag_ehs =
  let (sym_ehs, soi_ehs) = tag_ehs in
  match sym_ehs with 
  | Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_rho_symbol sym_ecr ->
      let tag_ecr = Tag_v.make sym_ecr soi_ehs in
      Elementary_border_coordinate_heterogeneous_spherical_rho_belt_v.measure_actual_of_tag tag_ecr

  | Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_phi_symbol sym_ehs ->
      let tag_ecp = Tag_v.make sym_ehs soi_ehs in
      Elementary_border_coordinate_heterogeneous_spherical_phi_belt_v.measure_actual_of_tag tag_ecp

  | Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_theta_symbol sym_ehs ->
      let tag_ect = Tag_v.make sym_ehs soi_ehs in
      Elementary_border_coordinate_heterogeneous_spherical_theta_belt_v.measure_actual_of_tag tag_ect
;;

let measure_actual_list_of_tag tag_ehs =
  let mea = measure_actual_of_tag tag_ehs in
  [mea]
;;

let measure_canonical_of_tag_of_calculation_name tag_ehs =
  let mea = measure_actual_of_tag tag_ehs in
  Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea
;;

let measure_canonical_list_of_tag tag_ehs =
  let can_mea = measure_canonical_of_tag_of_calculation_name tag_ehs in
  [can_mea]
;;

let measure_canonical_of_tag_of_calculation_name tag_ehs =
  let mea = measure_actual_of_tag tag_ehs in
  Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea
;;

(** {6 Measure_actual off Belt by Coercion} *)

let measure_actual_off_belt = function
  | Elementary_border_coordinate_heterogeneous_spherical_belt_t.Elementary_border_coordinate_heterogeneous_spherical_rho_belt bel_ecr ->
      Elementary_border_coordinate_heterogeneous_spherical_rho_belt_v.measure_actual_off_belt bel_ecr

  | Elementary_border_coordinate_heterogeneous_spherical_belt_t.Elementary_border_coordinate_heterogeneous_spherical_phi_belt bel_ecp ->
      Elementary_border_coordinate_heterogeneous_spherical_phi_belt_v.measure_actual_off_belt bel_ecp

  | Elementary_border_coordinate_heterogeneous_spherical_belt_t.Elementary_border_coordinate_heterogeneous_spherical_theta_belt bel_ect ->
      Elementary_border_coordinate_heterogeneous_spherical_theta_belt_v.measure_actual_off_belt bel_ect
;;

let measure_actual_list_off_belt bel_ehs =
  let mea = measure_actual_off_belt bel_ehs in
  [mea]
;;

let measure_canonical_off_belt_of_calculation_name bel_ehs =
  let mea = measure_actual_off_belt bel_ehs in
  Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea
;;

let measure_canonical_list_off_belt_of_calculation_name bel_ehs =
  let can_mea = measure_canonical_off_belt_of_calculation_name bel_ehs in
  [can_mea]
;;

(** {6 Readee of Tag} *)

let readee_of_tag tag_ehs =
  let (sym_ehs, soi_ehs) = tag_ehs in
  match sym_ehs with 
  | Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_rho_symbol sym_ecr ->
      let tag_ecr = Tag_v.make sym_ecr soi_ehs in
      Elementary_border_coordinate_heterogeneous_spherical_rho_belt_v.readee_of_tag tag_ecr

  | Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_phi_symbol sym_ecp ->
      let tag_ecp = Tag_v.make sym_ecp soi_ehs in
      Elementary_border_coordinate_heterogeneous_spherical_phi_belt_v.readee_of_tag tag_ecp

  | Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_theta_symbol sym_ect ->
      let tag_ect = Tag_v.make sym_ect soi_ehs in
      Elementary_border_coordinate_heterogeneous_spherical_theta_belt_v.readee_of_tag tag_ect
;;

(** {6 Readee off Belt} *)

let readee_off_belt bel_ehs =
  let mea = measure_actual_off_belt bel_ehs in
  Readee_v.readee_of_measure_actual mea
;;

(** {6 Closure : list of Readee} *)

let closure_of_tag tag_ehs =
  let rea = readee_of_tag tag_ehs in
  [rea]
;;

let closure_off_belt = function
  | Elementary_border_coordinate_heterogeneous_spherical_belt_t.Elementary_border_coordinate_heterogeneous_spherical_rho_belt bel_ecr ->
      Elementary_border_coordinate_heterogeneous_spherical_rho_belt_v.closure_off_belt bel_ecr

  | Elementary_border_coordinate_heterogeneous_spherical_belt_t.Elementary_border_coordinate_heterogeneous_spherical_phi_belt bel_ecp ->
      Elementary_border_coordinate_heterogeneous_spherical_phi_belt_v.closure_off_belt bel_ecp

  | Elementary_border_coordinate_heterogeneous_spherical_belt_t.Elementary_border_coordinate_heterogeneous_spherical_theta_belt bel_ect ->
      Elementary_border_coordinate_heterogeneous_spherical_theta_belt_v.closure_off_belt bel_ect
;;

(** {6 Float} *)

let float_of_tag tag_ehs  =
  let mea = measure_actual_of_tag tag_ehs in
  Measure_actual_v.float_off_measure_actual mea 
;;

(** {6 Units} *)

let elementary_fence_units_actual_tag_of_tag tag_ehs =
  let mea = measure_actual_of_tag tag_ehs in
  Measure_actual_v.elementary_fence_units_actual_symbol_off_measure_actual mea
;;

(** {6 Belt of Sibling} *)

let elementary_border_coordinate_heterogeneous_spherical_rho_belt_off_elementary_border_coordinate_heterogeneous_spherical_belt bel_ehs =
  let tag_ehs = Doublet_v.left_off_doublet bel_ehs in
  let (sym_ehs, soi_ehs) = tag_ehs in

  match sym_ehs with 
  | Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_rho_symbol sym_ecr ->
      let tag_ecr = Tag_v.make sym_ecr soi_ehs in
      Elementary_border_coordinate_heterogeneous_spherical_rho_belt_v.belt_of_tag tag_ecr

  | _ -> failwith 
      "Not_a_elementary_border_coordinate_heterogeneous_spherical_rho_tag:Elementary_border_coordinate_heterogeneous_spherical_belt_v.elementary_border_coordinate_heterogeneous_spherical_rho_belt_off_elementary_border_coordinate_heterogeneous_spherical_belt"
;;

let elementary_border_coordinate_heterogeneous_spherical_phi_belt_off_elementary_border_coordinate_heterogeneous_spherical_belt bel_ehs =
  let tag_ehs = Doublet_v.left_off_doublet bel_ehs in
  let (sym_ehs, soi_ehs) = tag_ehs in

  match sym_ehs with 
  | Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_phi_symbol sym_ehs ->
      let tag_ecp = Tag_v.make sym_ehs soi_ehs in
      Elementary_border_coordinate_heterogeneous_spherical_phi_belt_v.belt_of_tag tag_ecp

  | _ -> failwith 
      "Not_a_elementary_border_coordinate_heterogeneous_spherical_phi_tag:Elementary_border_coordinate_heterogeneous_spherical_belt_v.elementary_border_coordinate_heterogeneous_spherical_phi_belt_off_elementary_border_coordinate_heterogeneous_spherical_belt"
;;

let elementary_border_coordinate_heterogeneous_spherical_theta_belt_off_elementary_border_coordinate_heterogeneous_spherical_belt bel_ehs =
  let tag_ehs = Doublet_v.left_off_doublet bel_ehs in
  let (sym_ehs, soi_ehs) = tag_ehs in

  match sym_ehs with 
  | Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_theta_symbol sym_ehs ->
      let tag_ect = Tag_v.make sym_ehs soi_ehs in
      Elementary_border_coordinate_heterogeneous_spherical_theta_belt_v.belt_of_tag tag_ect

  | _ -> failwith 
      "Not_a_elementary_border_coordinate_heterogeneous_spherical_theta_tag:Elementary_border_coordinate_heterogeneous_spherical_belt_v.elementary_border_coordinate_heterogeneous_spherical_theta_belt_off_elementary_border_coordinate_heterogeneous_spherical_belt"
;;

(** {6 Text} *)

let text_of_tag tag_ehs =
  let (sym_ehs, soi_ehs) = tag_ehs in
  match sym_ehs with 
  | Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_rho_symbol sym_ecr ->
      let tag_ecr = Tag_v.make sym_ecr soi_ehs in
      Elementary_border_coordinate_heterogeneous_spherical_rho_belt_v.text_of_tag tag_ecr

  | Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_phi_symbol sym_ecp ->
      let tag_ecp = Tag_v.make sym_ecp soi_ehs in
      Elementary_border_coordinate_heterogeneous_spherical_phi_belt_v.text_of_tag tag_ecp

  | Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_theta_symbol sym_ect ->
      let tag_ect = Tag_v.make sym_ect soi_ehs in
      Elementary_border_coordinate_heterogeneous_spherical_theta_belt_v.text_of_tag tag_ect
;;

(** {6 Naming_for_belt} *)

let name = function
  | Elementary_border_coordinate_heterogeneous_spherical_belt_t.Elementary_border_coordinate_heterogeneous_spherical_rho_belt bel_ecr ->
      Elementary_border_coordinate_heterogeneous_spherical_rho_belt_v.name bel_ecr

  | Elementary_border_coordinate_heterogeneous_spherical_belt_t.Elementary_border_coordinate_heterogeneous_spherical_phi_belt bel_ecp ->
      Elementary_border_coordinate_heterogeneous_spherical_phi_belt_v.name bel_ecp

  | Elementary_border_coordinate_heterogeneous_spherical_belt_t.Elementary_border_coordinate_heterogeneous_spherical_theta_belt bel_ect ->
      Elementary_border_coordinate_heterogeneous_spherical_theta_belt_v.name bel_ect
;;

let longname bel_ehs =
  Format.sprintf "Elementary_border_coordinate_heterogeneous_spherical_t.%s" (String.capitalize (name bel_ehs))
;;


(* generated by ./do_belt_as_doublet_border_trunc_3sibling_2units_2beltee_v.sh elementary_border_coordinate_heterogeneous_spherical ehs rho ecr phi ecp theta ect elementary_fence_units_actual efa angle faa length fal *)
(* using ./template_belt_as_doublet_border_trunc_3sibling_2units_2beltee_v.ml *)
(* Done on mardi 24 mai 2016, 16:43:10 (UTC+0200) *)

