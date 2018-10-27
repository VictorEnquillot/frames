(** {3 This_belt_v} *)

(** {6 Documenting_for_belt} *)

let documentation () = 
[
 "Current : VELE:This_belt_v";
 "Needs: ";
 "Needed-by: ";
 "What-is-it : a one element list of Belte i.e. (Elementary_border_tag, Readee)";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Coercing Up Sibling Tag} *)

let this_tag_of_sibling_1_tag tag_sib_1 =
  let (sym_sib_1, soi_sib_1) = tag_sib_1 in
  Tag_v.make  
    (This_symbol_t.Sibling_1_symbol sym_sib_1)
    soi_sib_1
;;

let this_tag_of_sibling_2_tag tag_ttt =
  let (sym_ttt, soi_ttt) = tag_ttt in
  Tag_v.make  
    (This_symbol_t.Sibling_2_symbol sym_ttt)
    soi_ttt
;;

(** {6 Coercing Down Sibling Tag} *)

let sibling_1_tag_off_this_tag tag_ttt =
  let (sym_ttt, soi_ttt) = tag_ttt in
  match sym_ttt with 
  | This_symbol_t.Sibling_1_symbol sym_sib_1 ->
      Tag_v.make sym_sib_1 soi_ttt

  | _ -> failwith 
      "Not_a_sibling_1_tag:This_belt_v.sibling_1_tag_off_this_tag"
;;

let sibling_2_tag_off_this_tag tag_ttt =
  let (sym_ttt, soi_ttt) = tag_ttt in
  match sym_ttt with 
  | This_symbol_t.Sibling_2_symbol sym_sib_2 ->
      Tag_v.make sym_sib_2 soi_ttt

  | _ -> failwith 
      "Not_a_sibling_2_tag:This_belt_v.sibling_2_tag_off_this_tag"
;;

(** {6 Border as list of itself} *)

let coerce_up_tag tag_ttt =
  Tag_v.map_entity 
    Elementary_border_symbol_v.elementary_border_symbol_of_this_symbol 
    tag_ttt
;;

let border_of_tag tag_ttt =
  [coerce_up_tag tag_ttt]
;;

(** {6 Belt of Tag} *)

let belt_of_tag tag_ttt =
  let (sym_ttt, soi_ttt) = tag_ttt in
  match sym_ttt with 
  | This_symbol_t.Sibling_1_symbol sym_sib_1 ->
      let tag_sib_1 = Tag_v.make sym_sib_1 soi_ttt in
      This_belt_t.Sibling_1_belt
      (Sibling_1_belt_v.belt_of_tag tag_sib_1)

  | This_symbol_t.Sibling_2_symbol sym_ttt ->
      let tag_sib_2 = Tag_v.make sym_ttt soi_ttt in
      This_belt_t.Sibling_2_belt
      (Sibling_2_belt_v.belt_of_tag tag_sib_2)
;;

(** {6 Measure of Tag} *)

let measure_actual_of_tag tag_ttt =
  let (sym_ttt, soi_ttt) = tag_ttt in
  match sym_ttt with 
  | This_symbol_t.Sibling_1_symbol sym_sib_1 ->
      let tag_sib_1 = Tag_v.make sym_sib_1 soi_ttt in
      Sibling_1_belt_v.measure_actual_of_tag tag_sib_1

  | This_symbol_t.Sibling_2_symbol sym_ttt ->
      let tag_sib_2 = Tag_v.make sym_ttt soi_ttt in
      Sibling_2_belt_v.measure_actual_of_tag tag_sib_2
;;

let measure_actual_list_of_tag tag_ttt =
  let mea = measure_actual_of_tag tag_ttt in
  [mea]
;;

let measure_canonical_of_tag_of_calculation_name tag_ttt =
  let mea = measure_actual_of_tag tag_ttt in
  Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea
;;

let measure_canonical_list_of_tag tag_ttt =
  let can_mea = measure_canonical_of_tag_of_calculation_name tag_ttt in
  [can_mea]
;;

let measure_canonical_of_tag_of_calculation_name tag_ttt =
  let mea = measure_actual_of_tag tag_ttt in
  Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea
;;

(** {6 Measure_actual off Belt by Coercion} *)

let measure_actual_off_belt = function
  | This_belt_t.Sibling_1_belt bel_sib_1 ->
      Sibling_1_belt_v.measure_actual_off_belt bel_sib_1

  | This_belt_t.Sibling_2_belt bel_sib_2 ->
      Sibling_2_belt_v.measure_actual_off_belt bel_sib_2
;;

let measure_actual_list_off_belt bel_ttt =
  let mea = measure_actual_off_belt bel_ttt in
  [mea]
;;

let measure_canonical_off_belt_of_calculation_name bel_ttt =
  let mea = measure_actual_off_belt bel_ttt in
  Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea
;;

let measure_canonical_list_off_belt_of_calculation_name bel_ttt =
  let can_mea = measure_canonical_off_belt_of_calculation_name bel_ttt in
  [can_mea]
;;

(** {6 Readee of Tag} *)

let readee_of_tag tag_ttt =
  let (sym_ttt, soi_ttt) = tag_ttt in
  match sym_ttt with 
  | This_symbol_t.Sibling_1_symbol sym_sib_1 ->
      let tag_sib_1 = Tag_v.make sym_sib_1 soi_ttt in
      Sibling_1_belt_v.readee_of_tag tag_sib_1

  | This_symbol_t.Sibling_2_symbol sym_sib_2 ->
      let tag_sib_2 = Tag_v.make sym_sib_2 soi_ttt in
      Sibling_2_belt_v.readee_of_tag tag_sib_2
;;

(** {6 Readee off Belt} *)

let readee_off_belt bel_ttt =
  let mea = measure_actual_off_belt bel_ttt in
  Readee_v.readee_of_measure_actual mea
;;

(** {6 Closure : list of Readee} *)

let closure_of_tag tag_ttt =
  let rea = readee_of_tag tag_ttt in
  [rea]
;;

let closure_off_belt = function
  | This_belt_t.Sibling_1_belt bel_sib_1 ->
      Sibling_1_belt_v.closure_off_belt bel_sib_1

  | This_belt_t.Sibling_2_belt bel_sib_2 ->
      Sibling_2_belt_v.closure_off_belt bel_sib_2
;;

(** {6 Float} *)

let float_of_tag tag_ttt  =
  let mea = measure_actual_of_tag tag_ttt in
  Measure_actual_v.float_off_measure_actual mea 
;;

(** {6 Units} *)

let untup_tag_of_tag tag_ttt =
  let mea = measure_actual_of_tag tag_ttt in
  Measure_actual_v.untup_symbol_off_measure_actual mea
;;

(** {6 Belt of Sibling} *)

let sibling_1_belt_off_this_belt bel_ttt =
  let tag_ttt = Doublet_v.left_off_doublet bel_ttt in
  let (sym_ttt, soi_ttt) = tag_ttt in

  match sym_ttt with 
  | This_symbol_t.Sibling_1_symbol sym_sib_1 ->
      let tag_sib_1 = Tag_v.make sym_sib_1 soi_ttt in
      Sibling_1_belt_v.belt_of_tag tag_sib_1

  | _ -> failwith 
      "Not_a_sibling_1_tag:This_belt_v.sibling_1_belt_off_this_belt"
;;

let sibling_2_belt_off_this_belt bel_ttt =
  let tag_ttt = Doublet_v.left_off_doublet bel_ttt in
  let (sym_ttt, soi_ttt) = tag_ttt in

  match sym_ttt with 
  | This_symbol_t.Sibling_2_symbol sym_ttt ->
      let tag_sib_2 = Tag_v.make sym_ttt soi_ttt in
      Sibling_2_belt_v.belt_of_tag tag_sib_2

  | _ -> failwith 
      "Not_a_sibling_2_tag:This_belt_v.sibling_2_belt_off_this_belt"
;;

(** {6 Text} *)

let text_of_tag tag_ttt =
  let (sym_ttt, soi_ttt) = tag_ttt in
  match sym_ttt with 
  | This_symbol_t.Sibling_1_symbol sym_sib_1 ->
      let tag_sib_1 = Tag_v.make sym_sib_1 soi_ttt in
      Sibling_1_belt_v.text_of_tag tag_sib_1

  | This_symbol_t.Sibling_2_symbol sym_sib_2 ->
      let tag_sib_2 = Tag_v.make sym_sib_2 soi_ttt in
      Sibling_2_belt_v.text_of_tag tag_sib_2
;;

(** {6 Naming_for_belt} *)

let name = function
  | This_belt_t.Sibling_1_belt bel_sib_1 ->
      Sibling_1_belt_v.name bel_sib_1

  | This_belt_t.Sibling_2_belt bel_sib_2 ->
      Sibling_2_belt_v.name bel_sib_2
;;

let longname bel_ttt =
  Format.sprintf "This_t.%s" (String.capitalize (name bel_ttt))
;;

