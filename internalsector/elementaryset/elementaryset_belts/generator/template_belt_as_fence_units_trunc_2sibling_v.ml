(** {3 This_belt_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VELE:This_belt_v";
   "Needs : VELE:This_sibling_1_belt_v";
   "Needs : VELE:This_sibling_2_belt_v";
   "Needs : DELE:Elementary_fence_by_elementary_tag_provider_v";
   "Needed-by :";
   "What-is-it : Up_coercion of Belt type as Symbol type up_coercion";
 ]
;;

(** {6 Naming} *)

let name = function
  | This_belt_t.This_sibling_1_belt bel_sib_1 ->
      (This_sibling_1_belt_v.name bel_sib_1)
	
  | This_belt_t.This_sibling_2_belt bel_sib_2 ->
      (This_sibling_2_belt_v.name bel_sib_2)
;;

let string_off = function
  | This_belt_t.This_sibling_1_belt bel_sib_1 ->
      (This_sibling_1_belt_v.string_off bel_sib_1)
	
  | This_belt_t.This_sibling_2_belt bel_sib_2 ->
      (This_sibling_2_belt_v.string_off bel_sib_2)
;;

let longname = function
  | This_belt_t.This_sibling_1_belt bel_sib_1 ->
      (This_sibling_1_belt_v.longname bel_sib_1)
	
  | This_belt_t.This_sibling_2_belt bel_sib_2 ->
      (This_sibling_2_belt_v.longname bel_sib_2)
;;

let fullname = function
  | This_belt_t.This_sibling_1_belt bel_sib_1 ->
      (This_sibling_1_belt_v.fullname bel_sib_1)
	
  | This_belt_t.This_sibling_2_belt bel_sib_2 ->
      (This_sibling_2_belt_v.fullname bel_sib_2)
;;

(** {6 Coercing up} *)

let this_belt_of_this_sibling_1_belt bel_sib_1 =
  This_belt_t.This_sibling_1_belt bel_sib_1 
;;

let this_belt_of_this_sibling_2_belt bel_sib_2 =
  This_belt_t.This_sibling_2_belt bel_sib_2 
;;

(** {6 Coercing down} *)

let this_sibling_1_belt_off_this_belt = function
  | This_belt_t.This_sibling_1_belt bel_sib_1 -> bel_sib_1
  | _ -> failwith "Not_a_this_sibling_1:This_belt.this_sibling_1_belt_off_this_belt"
;;

let this_sibling_2_belt_off_this_belt = function
  | This_belt_t.This_sibling_2_belt bel_sib_2 -> bel_sib_2
  | _ -> failwith "Not_a_this_sibling_2:This_belt.this_sibling_2_belt_off_this_belt"
;;

(** {6 Belt} *)

let belt_of_tag tag_ttt =
  let soi_ttt = Tag_v.sole_index_off_tag tag_ttt in
  let sym_ttt = Tag_v.entity_off_tag tag_ttt in
  match sym_ttt with
  | This_symbol_t.This_sibling_1_symbol sym_sib_1 ->
      let tag_sib_1 = Tag_v.make sym_sib_1 soi_ttt in
      This_belt_t.This_sibling_1_belt
	(This_sibling_1_belt_v.belt_of_tag tag_sib_1)

  | This_symbol_t.This_sibling_2_symbol sym_sib_2 ->
      let tag_sib_2 = Tag_v.make sym_sib_2 soi_ttt in
      This_belt_t.This_sibling_2_belt
	(This_sibling_2_belt_v.belt_of_tag tag_sib_2)
;;

(** {6 Measure off Belt} *)

let measure_off_belt = function
  | This_belt_t.This_sibling_1_belt bel_sib_1 ->
      (This_sibling_1_belt_v.measure_off_belt bel_sib_1)
	
  | This_belt_t.This_sibling_2_belt bel_sib_2 ->
      (This_sibling_2_belt_v.measure_off_belt bel_sib_2)
;;

(** {6 Measure_sibling_1 off Belt} *)

let measure_sibling_1_off_belt = function
  | Elementary_fence_units_belt_t.Elementary_fence_units_sibling_1_belt bel_eua ->
      (Elementary_fence_units_sibling_1_belt_v.measure_sibling_1_off_belt bel_eua)
	
  | Elementary_fence_units_belt_t.Elementary_fence_units_sibling_2_belt bel_euc ->
      (Elementary_fence_units_sibling_2_belt_v.measure_sibling_1_off_belt bel_euc)
;;

(** {6 Measure_sibling_2 off Belt} *)

let measure_sibling_2_off_belt_of_calculation_name bel_efu nam_cal = 
  match bel_efu with
  | Elementary_fence_units_belt_t.Elementary_fence_units_sibling_1_belt bel_eua ->
      (Elementary_fence_units_sibling_1_belt_v.measure_sibling_2_off_belt_of_calculation_name bel_eua nam_cal) 
	
  | Elementary_fence_units_belt_t.Elementary_fence_units_sibling_2_belt bel_euc ->
      (Elementary_fence_units_sibling_2_belt_v.measure_sibling_2_off_belt bel_euc)
;;

(** {6 Measure_sibling_2 List off Belt} *)

let measure_sibling_2_list_off_belt_of_calculation_name bel_euc nam_cal =
  let mea_sib_2 = measure_sibling_2_off_belt_of_calculation_name bel_euc nam_cal in
  [mea_sib_2]
;;

(** {6 Measure_sibling_1 List off Belt} *)

let measure_sibling_1_list_off_belt_of_calculation_name bel_efu =
  let mea_sib_1 = measure_sibling_1_off_belt bel_efu in
  [mea_sib_1]
;;

(** {6 Readee off Belt} *)

let readee_off_belt bel_efu =
  let mea_sib_1 = measure_sibling_1_off_belt bel_efu in
  Readee_v.readee_of_measure_sibling_1 mea_sib_1
;;

(** {6 Readee of Tag} *)

let readee_of_tag tag_efu =
  let bel_efu = belt_of_tag tag_efu in
  readee_off_belt bel_efu 
;;

(** {6 Closure} *)

let closure_of_tag tag_efu =
  let rea = readee_of_tag tag_efu in
  [rea]
;;

let closure_off_belt bel_efu =
  let rea = readee_off_belt bel_efu in
  [rea]
;;

