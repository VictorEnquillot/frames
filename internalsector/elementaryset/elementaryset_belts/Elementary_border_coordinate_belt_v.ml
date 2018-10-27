(** {3 Elementary_border_coordinate_belt_v} *)

(** {6 Documenting_for_belt} *)

let documentation () = 
[
 "Current : VELE:Elementary_border_coordinate_belt_v";
 "Needs: ";
 "Needed-by: ";
 "What-is-it : a one element list of Belte i.e. (Elementary_border_tag, Readee)";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Coercing Up Sibling Tag} *)

let elementary_border_coordinate_tag_of_elementary_border_coordinate_heterogeneous_tag tag_ehe =
  let (sym_ehe, soi_ehe) = tag_ehe in
  Tag_v.make  
    (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_heterogeneous_symbol sym_ehe)
    soi_ehe
;;

let elementary_border_coordinate_tag_of_elementary_border_coordinate_homogeneous_tag tag_ebc =
  let (sym_ebc, soi_ebc) = tag_ebc in
  Tag_v.make  
    (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol sym_ebc)
    soi_ebc
;;

(** {6 Coercing Down Sibling Tag} *)

let elementary_border_coordinate_heterogeneous_tag_off_elementary_border_coordinate_tag tag_ebc =
  let (sym_ebc, soi_ebc) = tag_ebc in
  match sym_ebc with 
  | Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_heterogeneous_symbol sym_ehe ->
      Tag_v.make sym_ehe soi_ebc

  | _ -> failwith 
      "Not_a_elementary_border_coordinate_heterogeneous_tag:Elementary_border_coordinate_belt_v.elementary_border_coordinate_heterogeneous_tag_off_elementary_border_coordinate_tag"
;;

let elementary_border_coordinate_homogeneous_tag_off_elementary_border_coordinate_tag tag_ebc =
  let (sym_ebc, soi_ebc) = tag_ebc in
  match sym_ebc with 
  | Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol sym_eho ->
      Tag_v.make sym_eho soi_ebc

  | _ -> failwith 
      "Not_a_elementary_border_coordinate_homogeneous_tag:Elementary_border_coordinate_belt_v.elementary_border_coordinate_homogeneous_tag_off_elementary_border_coordinate_tag"
;;

(** {6 Border as list of itself} *)

let coerce_up_tag tag_ebc =
  Tag_v.map_entity 
    Elementary_border_symbol_v.elementary_border_symbol_of_elementary_border_coordinate_symbol 
    tag_ebc
;;

let border_of_tag tag_ebc =
  [coerce_up_tag tag_ebc]
;;

(** {6 Belt of Tag} *)

let belt_of_tag tag_ebc =
  let (sym_ebc, soi_ebc) = tag_ebc in
  match sym_ebc with 
  | Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_heterogeneous_symbol sym_ehe ->
      let tag_ehe = Tag_v.make sym_ehe soi_ebc in
      Elementary_border_coordinate_belt_t.Elementary_border_coordinate_heterogeneous_belt
      (Elementary_border_coordinate_heterogeneous_belt_v.belt_of_tag tag_ehe)

  | Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol sym_ebc ->
      let tag_eho = Tag_v.make sym_ebc soi_ebc in
      Elementary_border_coordinate_belt_t.Elementary_border_coordinate_homogeneous_belt
      (Elementary_border_coordinate_homogeneous_belt_v.belt_of_tag tag_eho)
;;

(** {6 Measure of Tag} *)

let measure_actual_of_tag tag_ebc =
  let (sym_ebc, soi_ebc) = tag_ebc in
  match sym_ebc with 
  | Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_heterogeneous_symbol sym_ehe ->
      let tag_ehe = Tag_v.make sym_ehe soi_ebc in
      Elementary_border_coordinate_heterogeneous_belt_v.measure_actual_of_tag tag_ehe

  | Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol sym_ebc ->
      let tag_eho = Tag_v.make sym_ebc soi_ebc in
      Elementary_border_coordinate_homogeneous_belt_v.measure_actual_of_tag tag_eho
;;

let measure_actual_list_of_tag tag_ebc =
  let mea = measure_actual_of_tag tag_ebc in
  [mea]
;;

let measure_canonical_of_tag_of_calculation_name tag_ebc =
  let mea = measure_actual_of_tag tag_ebc in
  Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea
;;

let measure_canonical_list_of_tag tag_ebc =
  let can_mea = measure_canonical_of_tag_of_calculation_name tag_ebc in
  [can_mea]
;;

let measure_canonical_of_tag_of_calculation_name tag_ebc =
  let mea = measure_actual_of_tag tag_ebc in
  Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea
;;

(** {6 Measure_actual off Belt by Coercion} *)

let measure_actual_off_belt = function
  | Elementary_border_coordinate_belt_t.Elementary_border_coordinate_heterogeneous_belt bel_ehe ->
      Elementary_border_coordinate_heterogeneous_belt_v.measure_actual_off_belt bel_ehe

  | Elementary_border_coordinate_belt_t.Elementary_border_coordinate_homogeneous_belt bel_eho ->
      Elementary_border_coordinate_homogeneous_belt_v.measure_actual_off_belt bel_eho
;;

let measure_actual_list_off_belt bel_ebc =
  let mea = measure_actual_off_belt bel_ebc in
  [mea]
;;

let measure_canonical_off_belt_of_calculation_name bel_ebc =
  let mea = measure_actual_off_belt bel_ebc in
  Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea
;;

let measure_canonical_list_off_belt_of_calculation_name bel_ebc =
  let can_mea = measure_canonical_off_belt_of_calculation_name bel_ebc in
  [can_mea]
;;

(** {6 Readee of Tag} *)

let readee_of_tag tag_ebc =
  let (sym_ebc, soi_ebc) = tag_ebc in
  match sym_ebc with 
  | Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_heterogeneous_symbol sym_ehe ->
      let tag_ehe = Tag_v.make sym_ehe soi_ebc in
      Elementary_border_coordinate_heterogeneous_belt_v.readee_of_tag tag_ehe

  | Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol sym_eho ->
      let tag_eho = Tag_v.make sym_eho soi_ebc in
      Elementary_border_coordinate_homogeneous_belt_v.readee_of_tag tag_eho
;;

(** {6 Readee off Belt} *)

let readee_off_belt bel_ebc =
  let mea = measure_actual_off_belt bel_ebc in
  Readee_v.readee_of_measure_actual mea
;;

(** {6 Closure : list of Readee} *)

let closure_of_tag tag_ebc =
  let rea = readee_of_tag tag_ebc in
  [rea]
;;

let closure_off_belt = function
  | Elementary_border_coordinate_belt_t.Elementary_border_coordinate_heterogeneous_belt bel_ehe ->
      Elementary_border_coordinate_heterogeneous_belt_v.closure_off_belt bel_ehe

  | Elementary_border_coordinate_belt_t.Elementary_border_coordinate_homogeneous_belt bel_eho ->
      Elementary_border_coordinate_homogeneous_belt_v.closure_off_belt bel_eho
;;

(** {6 Float} *)

let float_of_tag tag_ebc  =
  let mea = measure_actual_of_tag tag_ebc in
  Measure_actual_v.float_off_measure_actual mea 
;;

(** {6 Units} *)

let elementary_fence_units_actual_tag_of_tag tag_ebc =
  let mea = measure_actual_of_tag tag_ebc in
  Measure_actual_v.elementary_fence_units_actual_symbol_off_measure_actual mea
;;

(** {6 Belt of Sibling} *)

let elementary_border_coordinate_heterogeneous_belt_off_elementary_border_coordinate_belt bel_ebc =
  let tag_ebc = Doublet_v.left_off_doublet bel_ebc in
  let (sym_ebc, soi_ebc) = tag_ebc in

  match sym_ebc with 
  | Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_heterogeneous_symbol sym_ehe ->
      let tag_ehe = Tag_v.make sym_ehe soi_ebc in
      Elementary_border_coordinate_heterogeneous_belt_v.belt_of_tag tag_ehe

  | _ -> failwith 
      "Not_a_elementary_border_coordinate_heterogeneous_tag:Elementary_border_coordinate_belt_v.elementary_border_coordinate_heterogeneous_belt_off_elementary_border_coordinate_belt"
;;

let elementary_border_coordinate_homogeneous_belt_off_elementary_border_coordinate_belt bel_ebc =
  let tag_ebc = Doublet_v.left_off_doublet bel_ebc in
  let (sym_ebc, soi_ebc) = tag_ebc in

  match sym_ebc with 
  | Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol sym_ebc ->
      let tag_eho = Tag_v.make sym_ebc soi_ebc in
      Elementary_border_coordinate_homogeneous_belt_v.belt_of_tag tag_eho

  | _ -> failwith 
      "Not_a_elementary_border_coordinate_homogeneous_tag:Elementary_border_coordinate_belt_v.elementary_border_coordinate_homogeneous_belt_off_elementary_border_coordinate_belt"
;;

(** {6 Text} *)

let text_of_tag tag_ebc =
  let (sym_ebc, soi_ebc) = tag_ebc in
  match sym_ebc with 
  | Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_heterogeneous_symbol sym_ehe ->
      let tag_ehe = Tag_v.make sym_ehe soi_ebc in
      Elementary_border_coordinate_heterogeneous_belt_v.text_of_tag tag_ehe

  | Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol sym_eho ->
      let tag_eho = Tag_v.make sym_eho soi_ebc in
      Elementary_border_coordinate_homogeneous_belt_v.text_of_tag tag_eho
;;

(** {6 Naming_for_belt} *)

let name = function
  | Elementary_border_coordinate_belt_t.Elementary_border_coordinate_heterogeneous_belt bel_ehe ->
      Elementary_border_coordinate_heterogeneous_belt_v.name bel_ehe

  | Elementary_border_coordinate_belt_t.Elementary_border_coordinate_homogeneous_belt bel_eho ->
      Elementary_border_coordinate_homogeneous_belt_v.name bel_eho
;;

let longname bel_ebc =
  Format.sprintf "Elementary_border_coordinate_t.%s" (String.capitalize (name bel_ebc))
;;


(* generated by ./do_belt_as_doublet_border_trunc_2sibling_2units_2beltee_v.sh elementary_border_coordinate ebc heterogeneous ehe homogeneous eho elementary_fence_units_actual efa angle faa length fal *)
(* using ./template_belt_as_doublet_border_trunc_2sibling_2units_2beltee_v.ml *)
(* Done on mardi 24 mai 2016, 16:43:11 (UTC+0200) *)

