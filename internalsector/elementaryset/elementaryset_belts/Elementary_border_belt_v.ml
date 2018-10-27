(** {3 Elementary_border_belt_v} *)

(** {6 Documenting_for_belt} *)

let documentation () = 
[
 "Current : VELE:Elementary_border_belt_v";
 "Needs: ";
 "Needed-by: ";
 "What-is-it : the Border Main type i.e. Belte i.e. (Elementary_border_tag, Readee)";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Coercing Up Sibling Tag} *)

let elementary_border_tag_of_elementary_border_coordinate_tag tag_ebc =
  let (sym_ebc, soi_ebc) = tag_ebc in
  Tag_v.make  
    (Elementary_border_symbol_t.Elementary_border_coordinate_symbol sym_ebc)
    soi_ebc
;;

let elementary_border_tag_of_elementary_border_parameter_tag tag_ebo =
  let (sym_ebo, soi_ebo) = tag_ebo in
  Tag_v.make  
    (Elementary_border_symbol_t.Elementary_border_parameter_symbol sym_ebo)
    soi_ebo
;;

(** {6 Coercing Down Sibling Tag} *)

let elementary_border_coordinate_tag_off_elementary_border_tag tag_ebo =
  let (sym_ebo, soi_ebo) = tag_ebo in
  match sym_ebo with 
  | Elementary_border_symbol_t.Elementary_border_coordinate_symbol sym_ebc ->
      Tag_v.make sym_ebc soi_ebo

  | _ -> failwith 
      "Not_a_elementary_border_coordinate_tag:Elementary_border_belt_v.elementary_border_coordinate_tag_off_elementary_border_tag"
;;

let elementary_border_parameter_tag_off_elementary_border_tag tag_ebo =
  let (sym_ebo, soi_ebo) = tag_ebo in
  match sym_ebo with 
  | Elementary_border_symbol_t.Elementary_border_parameter_symbol sym_ebp ->
      Tag_v.make sym_ebp soi_ebo

  | _ -> failwith 
      "Not_a_elementary_border_parameter_tag:Elementary_border_belt_v.elementary_border_parameter_tag_off_elementary_border_tag"
;;

(** {6 Border as list of itself} *)

let border_of_tag tag_ebo =
  [tag_ebo]
;;

(** {6 Belt of Tag} *)

let belt_of_tag tag_ebo =
  let (sym_ebo, soi_ebo) = tag_ebo in
  match sym_ebo with 
  | Elementary_border_symbol_t.Elementary_border_coordinate_symbol sym_ebc ->
      let tag_ebc = Tag_v.make sym_ebc soi_ebo in
      Elementary_border_belt_t.Elementary_border_coordinate_belt
      (Elementary_border_coordinate_belt_v.belt_of_tag tag_ebc)

  | Elementary_border_symbol_t.Elementary_border_parameter_symbol sym_ebo ->
      let tag_ebp = Tag_v.make sym_ebo soi_ebo in
      Elementary_border_belt_t.Elementary_border_parameter_belt
      (Elementary_border_parameter_belt_v.belt_of_tag tag_ebp)
;;

(** {6 Measure_actual of Tag} *)

let measure_actual_of_tag tag_ebo =
  let (sym_ebo, soi_ebo) = tag_ebo in
  match sym_ebo with 
  | Elementary_border_symbol_t.Elementary_border_coordinate_symbol sym_ebc ->
      let tag_ebc = Tag_v.make sym_ebc soi_ebo in
      Elementary_border_coordinate_belt_v.measure_actual_of_tag tag_ebc

  | Elementary_border_symbol_t.Elementary_border_parameter_symbol sym_ebo ->
      let tag_ebp = Tag_v.make sym_ebo soi_ebo in
      Elementary_border_parameter_belt_v.measure_actual_of_tag tag_ebp
;;

let measure_actual_list_of_tag tag_ebo =
  let mea = measure_actual_of_tag tag_ebo in
  [mea]
;;

let measure_canonical_of_tag_of_calculation_name tag_ebo =
  let mea = measure_actual_of_tag tag_ebo in
  Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea
;;

let measure_canonical_list_of_tag tag_ebo =
  let can_mea = measure_canonical_of_tag_of_calculation_name tag_ebo in
  [can_mea]
;;

let measure_canonical_of_tag_of_calculation_name tag_ebo =
  let mea = measure_actual_of_tag tag_ebo in
  Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea
;;

(** {6 Readee of Tag} *)

let readee_of_tag tag_ebo =
  let (sym_ebo, soi_ebo) = tag_ebo in
  match sym_ebo with 
  | Elementary_border_symbol_t.Elementary_border_coordinate_symbol sym_ebc ->
      let tag_ebc = Tag_v.make sym_ebc soi_ebo in
      Elementary_border_coordinate_belt_v.readee_of_tag tag_ebc

  | Elementary_border_symbol_t.Elementary_border_parameter_symbol sym_ebp ->
      let tag_ebp = Tag_v.make sym_ebp soi_ebo in
      Elementary_border_parameter_belt_v.readee_of_tag tag_ebp
;;

(** {6 Measure_actual off Belt by Coercion} *)

let measure_actual_off_belt = function
  | Elementary_border_belt_t.Elementary_border_coordinate_belt bel_ebc ->
      Elementary_border_coordinate_belt_v.measure_actual_off_belt bel_ebc

  | Elementary_border_belt_t.Elementary_border_parameter_belt bel_ebp ->
      Elementary_border_parameter_belt_v.measure_actual_off_belt bel_ebp
;;

let measure_actual_list_off_belt bel_ebo =
  let mea = measure_actual_off_belt bel_ebo in
  [mea]
;;

let measure_canonical_off_belt_of_calculation_name bel_ebo =
  let mea = measure_actual_off_belt bel_ebo in
  Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea
;;

let measure_canonical_list_off_belt_of_calculation_name bel_ebo =
  let can_mea = measure_canonical_off_belt_of_calculation_name bel_ebo in
  [can_mea]
;;

(** {6 Closure : list of Readee} *)

let closure_of_tag tag_ebo =
  let rea = readee_of_tag tag_ebo in
  [rea]
;;

let closure_off_belt = function
  | Elementary_border_belt_t.Elementary_border_coordinate_belt bel_ebc ->
      Elementary_border_coordinate_belt_v.closure_off_belt bel_ebc

  | Elementary_border_belt_t.Elementary_border_parameter_belt bel_ebp ->
      Elementary_border_parameter_belt_v.closure_off_belt bel_ebp
;;

(** {6 Float} *)

let float_of_tag tag_ebo  =
  let mea = measure_actual_of_tag tag_ebo in
  Measure_actual_v.float_off_measure_actual mea 
;;

(** {6 Units} *)

let elementary_fence_units_actual_tag_of_tag tag_ebo =
  let mea = measure_actual_of_tag tag_ebo in
  Measure_actual_v.elementary_fence_units_actual_symbol_off_measure_actual mea
;;

(** {6 Belt of Sibling} *)

let elementary_border_coordinate_belt_off_elementary_border_belt bel_ebo =
  let tag_ebo = Doublet_v.left_off_doublet bel_ebo in
  let (sym_ebo, soi_ebo) = tag_ebo in

  match sym_ebo with 
  | Elementary_border_symbol_t.Elementary_border_coordinate_symbol sym_ebc ->
      let tag_ebc = Tag_v.make sym_ebc soi_ebo in
      Elementary_border_coordinate_belt_v.belt_of_tag tag_ebc

  | _ -> failwith 
      "Not_a_elementary_border_coordinate_tag:Elementary_border_belt_v.elementary_border_coordinate_belt_off_elementary_border_belt"
;;

let elementary_border_parameter_belt_off_elementary_border_belt bel_ebo =
  let tag_ebo = Doublet_v.left_off_doublet bel_ebo in
  let (sym_ebo, soi_ebo) = tag_ebo in

  match sym_ebo with 
  | Elementary_border_symbol_t.Elementary_border_parameter_symbol sym_ebo ->
      let tag_ebp = Tag_v.make sym_ebo soi_ebo in
      Elementary_border_parameter_belt_v.belt_of_tag tag_ebp

  | _ -> failwith 
      "Not_a_elementary_border_parameter_tag:Elementary_border_belt_v.elementary_border_parameter_belt_off_elementary_border_belt"
;;

(** {6 Text} *)

let text_of_tag tag_ebo =
  let (sym_ebo, soi_ebo) = tag_ebo in
  match sym_ebo with 
  | Elementary_border_symbol_t.Elementary_border_coordinate_symbol sym_ebc ->
      let tag_ebc = Tag_v.make sym_ebc soi_ebo in
      Elementary_border_coordinate_belt_v.text_of_tag tag_ebc

  | Elementary_border_symbol_t.Elementary_border_parameter_symbol sym_ebp ->
      let tag_ebp = Tag_v.make sym_ebp soi_ebo in
      Elementary_border_parameter_belt_v.text_of_tag tag_ebp
;;

(** {6 Naming_for_belt} *)

let name = function
  | Elementary_border_belt_t.Elementary_border_coordinate_belt bel_ebc ->
      Elementary_border_coordinate_belt_v.name bel_ebc

  | Elementary_border_belt_t.Elementary_border_parameter_belt bel_ebp ->
      Elementary_border_parameter_belt_v.name bel_ebp
;;

let longname bel_ebo =
  Format.sprintf "Elementary_border_t.%s" (String.capitalize (name bel_ebo))
;;


(* generated by ./do_belt_as_doublet_border_self_2sibling_2units_2beltee_v.sh elementary_border ebo coordinate ebc parameter ebp elementary_fence_units_actual efa angle fal length fal *)
(* using ./template_belt_as_doublet_border_self_2sibling_2units_2beltee_v.ml *)
(* Done on mardi 24 mai 2016, 16:43:12 (UTC+0200) *)

