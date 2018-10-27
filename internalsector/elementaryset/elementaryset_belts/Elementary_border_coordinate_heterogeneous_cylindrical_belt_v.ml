(** {3 Elementary_border_coordinate_heterogeneous_cylindrical_belt_v} *)

(** {6 Documenting_for_belt} *)

let documentation () = 
[
 "Current : VELE:Elementary_border_coordinate_heterogeneous_cylindrical_belt_v";
 "Needs: ";
 "Needed-by: ";
 "What-is-it : a one element list of Belte i.e. (Elementary_border_tag, Readee)";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Coercing Up Sibling Tag} *)

let elementary_border_coordinate_heterogeneous_cylindrical_tag_of_elementary_border_coordinate_heterogeneous_cylindrical_rho_tag tag_ecr =
  let (sym_ecr, soi_ecr) = tag_ecr in
  Tag_v.make  
    (Elementary_border_coordinate_heterogeneous_cylindrical_symbol_t.Elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol sym_ecr)
    soi_ecr
;;

let elementary_border_coordinate_heterogeneous_cylindrical_tag_of_elementary_border_coordinate_heterogeneous_cylindrical_phi_tag tag_ehc =
  let (sym_ehc, soi_ehc) = tag_ehc in
  Tag_v.make  
    (Elementary_border_coordinate_heterogeneous_cylindrical_symbol_t.Elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol sym_ehc)
    soi_ehc
;;

let elementary_border_coordinate_heterogeneous_cylindrical_tag_of_elementary_border_coordinate_heterogeneous_cylindrical_zed_tag tag_ehc =
  let (sym_ehc, soi_ehc) = tag_ehc in
  Tag_v.make  
    (Elementary_border_coordinate_heterogeneous_cylindrical_symbol_t.Elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol sym_ehc)
    soi_ehc
;;

(** {6 Coercing Down Sibling Tag} *)

let elementary_border_coordinate_heterogeneous_cylindrical_rho_tag_off_elementary_border_coordinate_heterogeneous_cylindrical_tag tag_ehc =
  let (sym_ehc, soi_ehc) = tag_ehc in
  match sym_ehc with 
  | Elementary_border_coordinate_heterogeneous_cylindrical_symbol_t.Elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol sym_ecr ->
      Tag_v.make sym_ecr soi_ehc

  | _ -> failwith 
      "Not_a_elementary_border_coordinate_heterogeneous_cylindrical_rho_tag:Elementary_border_coordinate_heterogeneous_cylindrical_belt_v.elementary_border_coordinate_heterogeneous_cylindrical_rho_tag_off_elementary_border_coordinate_heterogeneous_cylindrical_tag"
;;

let elementary_border_coordinate_heterogeneous_cylindrical_phi_tag_off_elementary_border_coordinate_heterogeneous_cylindrical_tag tag_ehc =
  let (sym_ehc, soi_ehc) = tag_ehc in
  match sym_ehc with 
  | Elementary_border_coordinate_heterogeneous_cylindrical_symbol_t.Elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol sym_ecp ->
      Tag_v.make sym_ecp soi_ehc

  | _ -> failwith 
      "Not_a_elementary_border_coordinate_heterogeneous_cylindrical_phi_tag:Elementary_border_coordinate_heterogeneous_cylindrical_belt_v.elementary_border_coordinate_heterogeneous_cylindrical_phi_tag_off_elementary_border_coordinate_heterogeneous_cylindrical_tag"
;;

let elementary_border_coordinate_heterogeneous_cylindrical_zed_tag_off_elementary_border_coordinate_heterogeneous_cylindrical_tag tag_ehc =
  let (sym_ehc, soi_ehc) = tag_ehc in
  match sym_ehc with 
  | Elementary_border_coordinate_heterogeneous_cylindrical_symbol_t.Elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol sym_ecz ->
      Tag_v.make sym_ecz soi_ehc

  | _ -> failwith 
      "Not_a_elementary_border_coordinate_heterogeneous_cylindrical_zed_tag:Elementary_border_coordinate_heterogeneous_cylindrical_belt_v.elementary_border_coordinate_heterogeneous_cylindrical_zed_tag_off_elementary_border_coordinate_heterogeneous_cylindrical_tag"
;;

(** {6 Border as list of itself} *)

let coerce_up_tag tag_ehc =
  Tag_v.map_entity 
    Elementary_border_symbol_v.elementary_border_symbol_of_elementary_border_coordinate_heterogeneous_cylindrical_symbol 
    tag_ehc
;;

let border_of_tag tag_ehc =
  [coerce_up_tag tag_ehc]
;;

(** {6 Belt of Tag} *)

let belt_of_tag tag_ehc =
  let (sym_ehc, soi_ehc) = tag_ehc in
  match sym_ehc with 
  | Elementary_border_coordinate_heterogeneous_cylindrical_symbol_t.Elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol sym_ecr ->
      let tag_ecr = Tag_v.make sym_ecr soi_ehc in
      Elementary_border_coordinate_heterogeneous_cylindrical_belt_t.Elementary_border_coordinate_heterogeneous_cylindrical_rho_belt
      (Elementary_border_coordinate_heterogeneous_cylindrical_rho_belt_v.belt_of_tag tag_ecr)

  | Elementary_border_coordinate_heterogeneous_cylindrical_symbol_t.Elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol sym_ehc ->
      let tag_ecp = Tag_v.make sym_ehc soi_ehc in
      Elementary_border_coordinate_heterogeneous_cylindrical_belt_t.Elementary_border_coordinate_heterogeneous_cylindrical_phi_belt
      (Elementary_border_coordinate_heterogeneous_cylindrical_phi_belt_v.belt_of_tag tag_ecp)


  | Elementary_border_coordinate_heterogeneous_cylindrical_symbol_t.Elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol sym_ehc ->
      let tag_ecz = Tag_v.make sym_ehc soi_ehc in
      Elementary_border_coordinate_heterogeneous_cylindrical_belt_t.Elementary_border_coordinate_heterogeneous_cylindrical_zed_belt
      (Elementary_border_coordinate_heterogeneous_cylindrical_zed_belt_v.belt_of_tag tag_ecz)
;;

(** {6 Measure_actual of Tag} *)

let measure_actual_of_tag tag_ehc =
  let (sym_ehc, soi_ehc) = tag_ehc in
  match sym_ehc with 
  | Elementary_border_coordinate_heterogeneous_cylindrical_symbol_t.Elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol sym_ecr ->
      let tag_ecr = Tag_v.make sym_ecr soi_ehc in
      Elementary_border_coordinate_heterogeneous_cylindrical_rho_belt_v.measure_actual_of_tag tag_ecr

  | Elementary_border_coordinate_heterogeneous_cylindrical_symbol_t.Elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol sym_ehc ->
      let tag_ecp = Tag_v.make sym_ehc soi_ehc in
      Elementary_border_coordinate_heterogeneous_cylindrical_phi_belt_v.measure_actual_of_tag tag_ecp

  | Elementary_border_coordinate_heterogeneous_cylindrical_symbol_t.Elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol sym_ehc ->
      let tag_ecz = Tag_v.make sym_ehc soi_ehc in
      Elementary_border_coordinate_heterogeneous_cylindrical_zed_belt_v.measure_actual_of_tag tag_ecz
;;

let measure_actual_list_of_tag tag_ehc =
  let mea = measure_actual_of_tag tag_ehc in
  [mea]
;;

let measure_canonical_of_tag_of_calculation_name tag_ehc =
  let mea = measure_actual_of_tag tag_ehc in
  Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea
;;

let measure_canonical_list_of_tag tag_ehc =
  let can_mea = measure_canonical_of_tag_of_calculation_name tag_ehc in
  [can_mea]
;;

let measure_canonical_of_tag_of_calculation_name tag_ehc =
  let mea = measure_actual_of_tag tag_ehc in
  Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea
;;

(** {6 Measure_actual off Belt by Coercion} *)

let measure_actual_off_belt = function
  | Elementary_border_coordinate_heterogeneous_cylindrical_belt_t.Elementary_border_coordinate_heterogeneous_cylindrical_rho_belt bel_ecr ->
      Elementary_border_coordinate_heterogeneous_cylindrical_rho_belt_v.measure_actual_off_belt bel_ecr

  | Elementary_border_coordinate_heterogeneous_cylindrical_belt_t.Elementary_border_coordinate_heterogeneous_cylindrical_phi_belt bel_ecp ->
      Elementary_border_coordinate_heterogeneous_cylindrical_phi_belt_v.measure_actual_off_belt bel_ecp

  | Elementary_border_coordinate_heterogeneous_cylindrical_belt_t.Elementary_border_coordinate_heterogeneous_cylindrical_zed_belt bel_ecz ->
      Elementary_border_coordinate_heterogeneous_cylindrical_zed_belt_v.measure_actual_off_belt bel_ecz
;;

let measure_actual_list_off_belt bel_ehc =
  let mea = measure_actual_off_belt bel_ehc in
  [mea]
;;

let measure_canonical_off_belt_of_calculation_name bel_ehc =
  let mea = measure_actual_off_belt bel_ehc in
  Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea
;;

let measure_canonical_list_off_belt_of_calculation_name bel_ehc =
  let can_mea = measure_canonical_off_belt_of_calculation_name bel_ehc in
  [can_mea]
;;

(** {6 Readee of Tag} *)

let readee_of_tag tag_ehc =
  let (sym_ehc, soi_ehc) = tag_ehc in
  match sym_ehc with 
  | Elementary_border_coordinate_heterogeneous_cylindrical_symbol_t.Elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol sym_ecr ->
      let tag_ecr = Tag_v.make sym_ecr soi_ehc in
      Elementary_border_coordinate_heterogeneous_cylindrical_rho_belt_v.readee_of_tag tag_ecr

  | Elementary_border_coordinate_heterogeneous_cylindrical_symbol_t.Elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol sym_ecp ->
      let tag_ecp = Tag_v.make sym_ecp soi_ehc in
      Elementary_border_coordinate_heterogeneous_cylindrical_phi_belt_v.readee_of_tag tag_ecp

  | Elementary_border_coordinate_heterogeneous_cylindrical_symbol_t.Elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol sym_ecz ->
      let tag_ecz = Tag_v.make sym_ecz soi_ehc in
      Elementary_border_coordinate_heterogeneous_cylindrical_zed_belt_v.readee_of_tag tag_ecz
;;

(** {6 Readee off Belt} *)

let readee_off_belt bel_ehc =
  let mea = measure_actual_off_belt bel_ehc in
  Readee_v.readee_of_measure_actual mea
;;

(** {6 Closure : list of Readee} *)

let closure_of_tag tag_ehc =
  let rea = readee_of_tag tag_ehc in
  [rea]
;;

let closure_off_belt = function
  | Elementary_border_coordinate_heterogeneous_cylindrical_belt_t.Elementary_border_coordinate_heterogeneous_cylindrical_rho_belt bel_ecr ->
      Elementary_border_coordinate_heterogeneous_cylindrical_rho_belt_v.closure_off_belt bel_ecr

  | Elementary_border_coordinate_heterogeneous_cylindrical_belt_t.Elementary_border_coordinate_heterogeneous_cylindrical_phi_belt bel_ecp ->
      Elementary_border_coordinate_heterogeneous_cylindrical_phi_belt_v.closure_off_belt bel_ecp

  | Elementary_border_coordinate_heterogeneous_cylindrical_belt_t.Elementary_border_coordinate_heterogeneous_cylindrical_zed_belt bel_ecz ->
      Elementary_border_coordinate_heterogeneous_cylindrical_zed_belt_v.closure_off_belt bel_ecz
;;

(** {6 Float} *)

let float_of_tag tag_ehc  =
  let mea = measure_actual_of_tag tag_ehc in
  Measure_actual_v.float_off_measure_actual mea 
;;

(** {6 Units} *)

let elementary_fence_units_actual_tag_of_tag tag_ehc =
  let mea = measure_actual_of_tag tag_ehc in
  Measure_actual_v.elementary_fence_units_actual_symbol_off_measure_actual mea
;;

(** {6 Belt of Sibling} *)

let elementary_border_coordinate_heterogeneous_cylindrical_rho_belt_off_elementary_border_coordinate_heterogeneous_cylindrical_belt bel_ehc =
  let tag_ehc = Doublet_v.left_off_doublet bel_ehc in
  let (sym_ehc, soi_ehc) = tag_ehc in

  match sym_ehc with 
  | Elementary_border_coordinate_heterogeneous_cylindrical_symbol_t.Elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol sym_ecr ->
      let tag_ecr = Tag_v.make sym_ecr soi_ehc in
      Elementary_border_coordinate_heterogeneous_cylindrical_rho_belt_v.belt_of_tag tag_ecr

  | _ -> failwith 
      "Not_a_elementary_border_coordinate_heterogeneous_cylindrical_rho_tag:Elementary_border_coordinate_heterogeneous_cylindrical_belt_v.elementary_border_coordinate_heterogeneous_cylindrical_rho_belt_off_elementary_border_coordinate_heterogeneous_cylindrical_belt"
;;

let elementary_border_coordinate_heterogeneous_cylindrical_phi_belt_off_elementary_border_coordinate_heterogeneous_cylindrical_belt bel_ehc =
  let tag_ehc = Doublet_v.left_off_doublet bel_ehc in
  let (sym_ehc, soi_ehc) = tag_ehc in

  match sym_ehc with 
  | Elementary_border_coordinate_heterogeneous_cylindrical_symbol_t.Elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol sym_ehc ->
      let tag_ecp = Tag_v.make sym_ehc soi_ehc in
      Elementary_border_coordinate_heterogeneous_cylindrical_phi_belt_v.belt_of_tag tag_ecp

  | _ -> failwith 
      "Not_a_elementary_border_coordinate_heterogeneous_cylindrical_phi_tag:Elementary_border_coordinate_heterogeneous_cylindrical_belt_v.elementary_border_coordinate_heterogeneous_cylindrical_phi_belt_off_elementary_border_coordinate_heterogeneous_cylindrical_belt"
;;

let elementary_border_coordinate_heterogeneous_cylindrical_zed_belt_off_elementary_border_coordinate_heterogeneous_cylindrical_belt bel_ehc =
  let tag_ehc = Doublet_v.left_off_doublet bel_ehc in
  let (sym_ehc, soi_ehc) = tag_ehc in

  match sym_ehc with 
  | Elementary_border_coordinate_heterogeneous_cylindrical_symbol_t.Elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol sym_ehc ->
      let tag_ecz = Tag_v.make sym_ehc soi_ehc in
      Elementary_border_coordinate_heterogeneous_cylindrical_zed_belt_v.belt_of_tag tag_ecz

  | _ -> failwith 
      "Not_a_elementary_border_coordinate_heterogeneous_cylindrical_zed_tag:Elementary_border_coordinate_heterogeneous_cylindrical_belt_v.elementary_border_coordinate_heterogeneous_cylindrical_zed_belt_off_elementary_border_coordinate_heterogeneous_cylindrical_belt"
;;

(** {6 Text} *)

let text_of_tag tag_ehc =
  let (sym_ehc, soi_ehc) = tag_ehc in
  match sym_ehc with 
  | Elementary_border_coordinate_heterogeneous_cylindrical_symbol_t.Elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol sym_ecr ->
      let tag_ecr = Tag_v.make sym_ecr soi_ehc in
      Elementary_border_coordinate_heterogeneous_cylindrical_rho_belt_v.text_of_tag tag_ecr

  | Elementary_border_coordinate_heterogeneous_cylindrical_symbol_t.Elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol sym_ecp ->
      let tag_ecp = Tag_v.make sym_ecp soi_ehc in
      Elementary_border_coordinate_heterogeneous_cylindrical_phi_belt_v.text_of_tag tag_ecp

  | Elementary_border_coordinate_heterogeneous_cylindrical_symbol_t.Elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol sym_ecz ->
      let tag_ecz = Tag_v.make sym_ecz soi_ehc in
      Elementary_border_coordinate_heterogeneous_cylindrical_zed_belt_v.text_of_tag tag_ecz
;;

(** {6 Naming_for_belt} *)

let name = function
  | Elementary_border_coordinate_heterogeneous_cylindrical_belt_t.Elementary_border_coordinate_heterogeneous_cylindrical_rho_belt bel_ecr ->
      Elementary_border_coordinate_heterogeneous_cylindrical_rho_belt_v.name bel_ecr

  | Elementary_border_coordinate_heterogeneous_cylindrical_belt_t.Elementary_border_coordinate_heterogeneous_cylindrical_phi_belt bel_ecp ->
      Elementary_border_coordinate_heterogeneous_cylindrical_phi_belt_v.name bel_ecp

  | Elementary_border_coordinate_heterogeneous_cylindrical_belt_t.Elementary_border_coordinate_heterogeneous_cylindrical_zed_belt bel_ecz ->
      Elementary_border_coordinate_heterogeneous_cylindrical_zed_belt_v.name bel_ecz
;;

let longname bel_ehc =
  Format.sprintf "Elementary_border_coordinate_heterogeneous_cylindrical_t.%s" (String.capitalize (name bel_ehc))
;;


(* generated by ./do_belt_as_doublet_border_trunc_3sibling_2units_2beltee_v.sh elementary_border_coordinate_heterogeneous_cylindrical ehc rho ecr phi ecp zed ecz elementary_fence_units_actual efa angle faa length fal *)
(* using ./template_belt_as_doublet_border_trunc_3sibling_2units_2beltee_v.ml *)
(* Done on mardi 24 mai 2016, 16:43:10 (UTC+0200) *)

