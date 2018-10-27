(** {3 Elementary_fence_units_belt_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VELE:Elementary_fence_units_belt_v";
   "Needs : VELE:Elementary_fence_units_actual_belt_v";
   "Needs : VELE:Elementary_fence_units_canonical_belt_v";
   "Needs : DELE:Elementary_fence_by_elementary_tag_provider_v";
   "Needed-by :";
   "What-is-it : Up_coercion of Belt type as Symbol type up_coercion";
 ]
;;

(** {6 Naming} *)

let name = function
  | Elementary_fence_units_belt_t.Elementary_fence_units_actual_belt bel_eua ->
      (Elementary_fence_units_actual_belt_v.name bel_eua)
	
  | Elementary_fence_units_belt_t.Elementary_fence_units_canonical_belt bel_euc ->
      (Elementary_fence_units_canonical_belt_v.name bel_euc)
;;

let string_off = function
  | Elementary_fence_units_belt_t.Elementary_fence_units_actual_belt bel_eua ->
      (Elementary_fence_units_actual_belt_v.string_off bel_eua)
	
  | Elementary_fence_units_belt_t.Elementary_fence_units_canonical_belt bel_euc ->
      (Elementary_fence_units_canonical_belt_v.string_off bel_euc)
;;

let longname = function
  | Elementary_fence_units_belt_t.Elementary_fence_units_actual_belt bel_eua ->
      (Elementary_fence_units_actual_belt_v.longname bel_eua)
	
  | Elementary_fence_units_belt_t.Elementary_fence_units_canonical_belt bel_euc ->
      (Elementary_fence_units_canonical_belt_v.longname bel_euc)
;;

let fullname = function
  | Elementary_fence_units_belt_t.Elementary_fence_units_actual_belt bel_eua ->
      (Elementary_fence_units_actual_belt_v.fullname bel_eua)
	
  | Elementary_fence_units_belt_t.Elementary_fence_units_canonical_belt bel_euc ->
      (Elementary_fence_units_canonical_belt_v.fullname bel_euc)
;;

(** {6 Coercing up} *)

let elementary_fence_units_belt_of_elementary_fence_units_actual_belt bel_eua =
  Elementary_fence_units_belt_t.Elementary_fence_units_actual_belt bel_eua 
;;

let elementary_fence_units_belt_of_elementary_fence_units_canonical_belt bel_euc =
  Elementary_fence_units_belt_t.Elementary_fence_units_canonical_belt bel_euc 
;;

(** {6 Coercing down} *)

let elementary_fence_units_actual_belt_off_elementary_fence_units_belt = function
  | Elementary_fence_units_belt_t.Elementary_fence_units_actual_belt bel_eua -> bel_eua
  | _ -> failwith "Not_a_elementary_fence_units_actual:Elementary_fence_units_belt.elementary_fence_units_actual_belt_off_elementary_fence_units_belt"
;;

let elementary_fence_units_canonical_belt_off_elementary_fence_units_belt = function
  | Elementary_fence_units_belt_t.Elementary_fence_units_canonical_belt bel_euc -> bel_euc
  | _ -> failwith "Not_a_elementary_fence_units_canonical:Elementary_fence_units_belt.elementary_fence_units_canonical_belt_off_elementary_fence_units_belt"
;;

(** {6 Belt} *)

let belt_of_tag tag_efu =
  let soi_efu = Tag_v.sole_index_off_tag tag_efu in
  let sym_efu = Tag_v.entity_off_tag tag_efu in
  match sym_efu with
  | Elementary_fence_units_symbol_t.Elementary_fence_units_actual_symbol sym_eua ->
      let tag_eua = Tag_v.make sym_eua soi_efu in
      Elementary_fence_units_belt_t.Elementary_fence_units_actual_belt
	(Elementary_fence_units_actual_belt_v.belt_of_tag tag_eua)

  | Elementary_fence_units_symbol_t.Elementary_fence_units_canonical_symbol sym_euc ->
      let tag_euc = Tag_v.make sym_euc soi_efu in
      Elementary_fence_units_belt_t.Elementary_fence_units_canonical_belt
	(Elementary_fence_units_canonical_belt_v.belt_of_tag tag_euc)
;;

(** {6 Measure off Belt} *)

let measure_off_belt = function
  | Elementary_fence_units_belt_t.Elementary_fence_units_actual_belt bel_eua ->
      (Elementary_fence_units_actual_belt_v.measure_off_belt bel_eua)
	
  | Elementary_fence_units_belt_t.Elementary_fence_units_canonical_belt bel_euc ->
      (Elementary_fence_units_canonical_belt_v.measure_off_belt bel_euc)
;;

(** {6 Measure_actual off Belt} *)

let measure_actual_off_belt = function
  | Elementary_fence_units_belt_t.Elementary_fence_units_actual_belt bel_eua ->
      (Elementary_fence_units_actual_belt_v.measure_actual_off_belt bel_eua)
	
  | Elementary_fence_units_belt_t.Elementary_fence_units_canonical_belt bel_euc ->
      (Elementary_fence_units_canonical_belt_v.measure_actual_off_belt bel_euc)
;;

(** {6 Measure_canonical off Belt} *)

let measure_canonical_off_belt_of_calculation_name bel_efu nam_cal = 
  match bel_efu with
  | Elementary_fence_units_belt_t.Elementary_fence_units_actual_belt bel_eua ->
      (Elementary_fence_units_actual_belt_v.measure_canonical_off_belt_of_calculation_name bel_eua nam_cal) 
	
  | Elementary_fence_units_belt_t.Elementary_fence_units_canonical_belt bel_euc ->
      (Elementary_fence_units_canonical_belt_v.measure_canonical_off_belt bel_euc)
;;

(** {6 Measure_canonical List off Belt} *)

let measure_canonical_list_off_belt_of_calculation_name bel_euc nam_cal =
  let mea_euc = measure_canonical_off_belt_of_calculation_name bel_euc nam_cal in
  [mea_euc]
;;

(** {6 Measure_actual List off Belt} *)

let measure_actual_list_off_belt_of_calculation_name bel_efu =
  let mea_eua = measure_actual_off_belt bel_efu in
  [mea_eua]
;;

(** {6 Readee off Belt} *)

let readee_off_belt bel_efu =
  let mea_eua = measure_actual_off_belt bel_efu in
  Readee_v.readee_of_measure_actual mea_eua
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


(* generated by ./do_belt_as_fence_units_trunc_2sibling_v.sh elementary_fence_units efu actual eua canonical euc *)
(* using ./template_belt_as_fence_units_trunc_2sibling_v.ml *)
(* Done on mardi 24 mai 2016, 16:43:07 (UTC+0200) *)

