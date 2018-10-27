(** {3 Elementary_border_coordinate_heterogeneous_belt_v} *)

(** {6 Documenting_for_belt} *)

let documentation () = 
[
 "Current : VELE:Elementary_border_coordinate_heterogeneous_belt_v";
 "Needs: ";
 "Needed-by: ";
 "What-is-it : a one element list of Belte i.e. (Elementary_border_tag, Readee)";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Coercing Up Sibling Tag} *)

let elementary_border_coordinate_heterogeneous_tag_of_elementary_border_coordinate_heterogeneous_cylindrical_tag tag_ehc =
  let (sym_ehc, soi_ehc) = tag_ehc in
  Tag_v.make  
    (Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_cylindrical_symbol sym_ehc)
    soi_ehc
;;

let elementary_border_coordinate_heterogeneous_tag_of_elementary_border_coordinate_heterogeneous_spherical_tag tag_ech =
  let (sym_ech, soi_ech) = tag_ech in
  Tag_v.make  
    (Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_symbol sym_ech)
    soi_ech
;;

let elementary_border_coordinate_heterogeneous_tag_of_elementary_border_coordinate_heterogeneous_polar_tag tag_ech =
  let (sym_ech, soi_ech) = tag_ech in
  Tag_v.make  
    (Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_polar_symbol sym_ech)
    soi_ech
;;

(** {6 Coercing Down Sibling Tag} *)

let elementary_border_coordinate_heterogeneous_cylindrical_tag_off_elementary_border_coordinate_heterogeneous_tag tag_ech =
  let (sym_ech, soi_ech) = tag_ech in
  match sym_ech with 
  | Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_cylindrical_symbol sym_ehc ->
      Tag_v.make sym_ehc soi_ech

  | _ -> failwith 
      "Not_a_elementary_border_coordinate_heterogeneous_cylindrical_tag:Elementary_border_coordinate_heterogeneous_belt_v.elementary_border_coordinate_heterogeneous_cylindrical_tag_off_elementary_border_coordinate_heterogeneous_tag"
;;

let elementary_border_coordinate_heterogeneous_spherical_tag_off_elementary_border_coordinate_heterogeneous_tag tag_ech =
  let (sym_ech, soi_ech) = tag_ech in
  match sym_ech with 
  | Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_symbol sym_ehs ->
      Tag_v.make sym_ehs soi_ech

  | _ -> failwith 
      "Not_a_elementary_border_coordinate_heterogeneous_spherical_tag:Elementary_border_coordinate_heterogeneous_belt_v.elementary_border_coordinate_heterogeneous_spherical_tag_off_elementary_border_coordinate_heterogeneous_tag"
;;

let elementary_border_coordinate_heterogeneous_polar_tag_off_elementary_border_coordinate_heterogeneous_tag tag_ech =
  let (sym_ech, soi_ech) = tag_ech in
  match sym_ech with 
  | Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_polar_symbol sym_ehp ->
      Tag_v.make sym_ehp soi_ech

  | _ -> failwith 
      "Not_a_elementary_border_coordinate_heterogeneous_polar_tag:Elementary_border_coordinate_heterogeneous_belt_v.elementary_border_coordinate_heterogeneous_polar_tag_off_elementary_border_coordinate_heterogeneous_tag"
;;

(** {6 Border as list of itself} *)

let coerce_up_tag tag_ech =
  Tag_v.map_entity 
    Elementary_border_symbol_v.elementary_border_symbol_of_elementary_border_coordinate_heterogeneous_symbol 
    tag_ech
;;

let border_of_tag tag_ech =
  [coerce_up_tag tag_ech]
;;

(** {6 Belt of Tag} *)

let belt_of_tag tag_ech =
  let (sym_ech, soi_ech) = tag_ech in
  match sym_ech with 
  | Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_cylindrical_symbol sym_ehc ->
      let tag_ehc = Tag_v.make sym_ehc soi_ech in
      Elementary_border_coordinate_heterogeneous_belt_t.Elementary_border_coordinate_heterogeneous_cylindrical_belt
      (Elementary_border_coordinate_heterogeneous_cylindrical_belt_v.belt_of_tag tag_ehc)

  | Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_symbol sym_ech ->
      let tag_ehs = Tag_v.make sym_ech soi_ech in
      Elementary_border_coordinate_heterogeneous_belt_t.Elementary_border_coordinate_heterogeneous_spherical_belt
      (Elementary_border_coordinate_heterogeneous_spherical_belt_v.belt_of_tag tag_ehs)


  | Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_polar_symbol sym_ech ->
      let tag_ehp = Tag_v.make sym_ech soi_ech in
      Elementary_border_coordinate_heterogeneous_belt_t.Elementary_border_coordinate_heterogeneous_polar_belt
      (Elementary_border_coordinate_heterogeneous_polar_belt_v.belt_of_tag tag_ehp)
;;

(** {6 Measure_actual of Tag} *)

let measure_actual_of_tag tag_ech =
  let (sym_ech, soi_ech) = tag_ech in
  match sym_ech with 
  | Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_cylindrical_symbol sym_ehc ->
      let tag_ehc = Tag_v.make sym_ehc soi_ech in
      Elementary_border_coordinate_heterogeneous_cylindrical_belt_v.measure_actual_of_tag tag_ehc

  | Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_symbol sym_ech ->
      let tag_ehs = Tag_v.make sym_ech soi_ech in
      Elementary_border_coordinate_heterogeneous_spherical_belt_v.measure_actual_of_tag tag_ehs

  | Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_polar_symbol sym_ech ->
      let tag_ehp = Tag_v.make sym_ech soi_ech in
      Elementary_border_coordinate_heterogeneous_polar_belt_v.measure_actual_of_tag tag_ehp
;;

let measure_actual_list_of_tag tag_ech =
  let mea = measure_actual_of_tag tag_ech in
  [mea]
;;

let measure_canonical_of_tag_of_calculation_name tag_ech =
  let mea = measure_actual_of_tag tag_ech in
  Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea
;;

let measure_canonical_list_of_tag tag_ech =
  let can_mea = measure_canonical_of_tag_of_calculation_name tag_ech in
  [can_mea]
;;

let measure_canonical_of_tag_of_calculation_name tag_ech =
  let mea = measure_actual_of_tag tag_ech in
  Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea
;;

(** {6 Measure_actual off Belt by Coercion} *)

let measure_actual_off_belt = function
  | Elementary_border_coordinate_heterogeneous_belt_t.Elementary_border_coordinate_heterogeneous_cylindrical_belt bel_ehc ->
      Elementary_border_coordinate_heterogeneous_cylindrical_belt_v.measure_actual_off_belt bel_ehc

  | Elementary_border_coordinate_heterogeneous_belt_t.Elementary_border_coordinate_heterogeneous_spherical_belt bel_ehs ->
      Elementary_border_coordinate_heterogeneous_spherical_belt_v.measure_actual_off_belt bel_ehs

  | Elementary_border_coordinate_heterogeneous_belt_t.Elementary_border_coordinate_heterogeneous_polar_belt bel_ehp ->
      Elementary_border_coordinate_heterogeneous_polar_belt_v.measure_actual_off_belt bel_ehp
;;

let measure_actual_list_off_belt bel_ech =
  let mea = measure_actual_off_belt bel_ech in
  [mea]
;;

let measure_canonical_off_belt_of_calculation_name bel_ech =
  let mea = measure_actual_off_belt bel_ech in
  Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea
;;

let measure_canonical_list_off_belt_of_calculation_name bel_ech =
  let can_mea = measure_canonical_off_belt_of_calculation_name bel_ech in
  [can_mea]
;;

(** {6 Readee of Tag} *)

let readee_of_tag tag_ech =
  let (sym_ech, soi_ech) = tag_ech in
  match sym_ech with 
  | Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_cylindrical_symbol sym_ehc ->
      let tag_ehc = Tag_v.make sym_ehc soi_ech in
      Elementary_border_coordinate_heterogeneous_cylindrical_belt_v.readee_of_tag tag_ehc

  | Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_symbol sym_ehs ->
      let tag_ehs = Tag_v.make sym_ehs soi_ech in
      Elementary_border_coordinate_heterogeneous_spherical_belt_v.readee_of_tag tag_ehs

  | Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_polar_symbol sym_ehp ->
      let tag_ehp = Tag_v.make sym_ehp soi_ech in
      Elementary_border_coordinate_heterogeneous_polar_belt_v.readee_of_tag tag_ehp
;;

(** {6 Readee off Belt} *)

let readee_off_belt bel_ech =
  let mea = measure_actual_off_belt bel_ech in
  Readee_v.readee_of_measure_actual mea
;;

(** {6 Closure : list of Readee} *)

let closure_of_tag tag_ech =
  let rea = readee_of_tag tag_ech in
  [rea]
;;

let closure_off_belt = function
  | Elementary_border_coordinate_heterogeneous_belt_t.Elementary_border_coordinate_heterogeneous_cylindrical_belt bel_ehc ->
      Elementary_border_coordinate_heterogeneous_cylindrical_belt_v.closure_off_belt bel_ehc

  | Elementary_border_coordinate_heterogeneous_belt_t.Elementary_border_coordinate_heterogeneous_spherical_belt bel_ehs ->
      Elementary_border_coordinate_heterogeneous_spherical_belt_v.closure_off_belt bel_ehs

  | Elementary_border_coordinate_heterogeneous_belt_t.Elementary_border_coordinate_heterogeneous_polar_belt bel_ehp ->
      Elementary_border_coordinate_heterogeneous_polar_belt_v.closure_off_belt bel_ehp
;;

(** {6 Float} *)

let float_of_tag tag_ech  =
  let mea = measure_actual_of_tag tag_ech in
  Measure_actual_v.float_off_measure_actual mea 
;;

(** {6 Units} *)

let elementary_fence_units_actual_tag_of_tag tag_ech =
  let mea = measure_actual_of_tag tag_ech in
  Measure_actual_v.elementary_fence_units_actual_symbol_off_measure_actual mea
;;

(** {6 Belt of Sibling} *)

let elementary_border_coordinate_heterogeneous_cylindrical_belt_off_elementary_border_coordinate_heterogeneous_belt bel_ech =
  let tag_ech = Doublet_v.left_off_doublet bel_ech in
  let (sym_ech, soi_ech) = tag_ech in

  match sym_ech with 
  | Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_cylindrical_symbol sym_ehc ->
      let tag_ehc = Tag_v.make sym_ehc soi_ech in
      Elementary_border_coordinate_heterogeneous_cylindrical_belt_v.belt_of_tag tag_ehc

  | _ -> failwith 
      "Not_a_elementary_border_coordinate_heterogeneous_cylindrical_tag:Elementary_border_coordinate_heterogeneous_belt_v.elementary_border_coordinate_heterogeneous_cylindrical_belt_off_elementary_border_coordinate_heterogeneous_belt"
;;

let elementary_border_coordinate_heterogeneous_spherical_belt_off_elementary_border_coordinate_heterogeneous_belt bel_ech =
  let tag_ech = Doublet_v.left_off_doublet bel_ech in
  let (sym_ech, soi_ech) = tag_ech in

  match sym_ech with 
  | Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_symbol sym_ech ->
      let tag_ehs = Tag_v.make sym_ech soi_ech in
      Elementary_border_coordinate_heterogeneous_spherical_belt_v.belt_of_tag tag_ehs

  | _ -> failwith 
      "Not_a_elementary_border_coordinate_heterogeneous_spherical_tag:Elementary_border_coordinate_heterogeneous_belt_v.elementary_border_coordinate_heterogeneous_spherical_belt_off_elementary_border_coordinate_heterogeneous_belt"
;;

let elementary_border_coordinate_heterogeneous_polar_belt_off_elementary_border_coordinate_heterogeneous_belt bel_ech =
  let tag_ech = Doublet_v.left_off_doublet bel_ech in
  let (sym_ech, soi_ech) = tag_ech in

  match sym_ech with 
  | Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_polar_symbol sym_ech ->
      let tag_ehp = Tag_v.make sym_ech soi_ech in
      Elementary_border_coordinate_heterogeneous_polar_belt_v.belt_of_tag tag_ehp

  | _ -> failwith 
      "Not_a_elementary_border_coordinate_heterogeneous_polar_tag:Elementary_border_coordinate_heterogeneous_belt_v.elementary_border_coordinate_heterogeneous_polar_belt_off_elementary_border_coordinate_heterogeneous_belt"
;;

(** {6 Text} *)

let text_of_tag tag_ech =
  let (sym_ech, soi_ech) = tag_ech in
  match sym_ech with 
  | Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_cylindrical_symbol sym_ehc ->
      let tag_ehc = Tag_v.make sym_ehc soi_ech in
      Elementary_border_coordinate_heterogeneous_cylindrical_belt_v.text_of_tag tag_ehc

  | Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_symbol sym_ehs ->
      let tag_ehs = Tag_v.make sym_ehs soi_ech in
      Elementary_border_coordinate_heterogeneous_spherical_belt_v.text_of_tag tag_ehs

  | Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_polar_symbol sym_ehp ->
      let tag_ehp = Tag_v.make sym_ehp soi_ech in
      Elementary_border_coordinate_heterogeneous_polar_belt_v.text_of_tag tag_ehp
;;

(** {6 Naming_for_belt} *)

let name = function
  | Elementary_border_coordinate_heterogeneous_belt_t.Elementary_border_coordinate_heterogeneous_cylindrical_belt bel_ehc ->
      Elementary_border_coordinate_heterogeneous_cylindrical_belt_v.name bel_ehc

  | Elementary_border_coordinate_heterogeneous_belt_t.Elementary_border_coordinate_heterogeneous_spherical_belt bel_ehs ->
      Elementary_border_coordinate_heterogeneous_spherical_belt_v.name bel_ehs

  | Elementary_border_coordinate_heterogeneous_belt_t.Elementary_border_coordinate_heterogeneous_polar_belt bel_ehp ->
      Elementary_border_coordinate_heterogeneous_polar_belt_v.name bel_ehp
;;

let longname bel_ech =
  Format.sprintf "Elementary_border_coordinate_heterogeneous_t.%s" (String.capitalize (name bel_ech))
;;


(* generated by ./do_belt_as_doublet_border_trunc_3sibling_2units_2beltee_v.sh elementary_border_coordinate_heterogeneous ech cylindrical ehc spherical ehs polar ehp elementary_fence_units_actual efa angle faa length fal *)
(* using ./template_belt_as_doublet_border_trunc_3sibling_2units_2beltee_v.ml *)
(* Done on mardi 24 mai 2016, 16:43:11 (UTC+0200) *)

