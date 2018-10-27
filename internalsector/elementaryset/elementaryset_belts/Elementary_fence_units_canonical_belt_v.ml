(** {3 Elementary_fence_units_canonical_belt_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VELE:Elementary_fence_units_canonical_belt_v";
   "Needs : VELE:Elementary_fence_units_canonical_classical_belt_v";
   "Needs : VELE:Elementary_fence_units_canonical_quantum_belt_v";
   "Needs : DELE:Elementary_fence_by_elementary_tag_provider_v";
   "Needed-by :";
   "What-is-it : Up_coercion of Belt type as Symbol type up_coercion";
 ]
;;

(** {6 Naming} *)

let name = function
  | Elementary_fence_units_canonical_belt_t.Elementary_fence_units_canonical_classical_belt bel_ecc ->
      (Elementary_fence_units_canonical_classical_belt_v.name bel_ecc)
	
  | Elementary_fence_units_canonical_belt_t.Elementary_fence_units_canonical_quantum_belt bel_ecq ->
      (Elementary_fence_units_canonical_quantum_belt_v.name bel_ecq)
;;

let string_off = function
  | Elementary_fence_units_canonical_belt_t.Elementary_fence_units_canonical_classical_belt bel_ecc ->
      (Elementary_fence_units_canonical_classical_belt_v.string_off bel_ecc)
	
  | Elementary_fence_units_canonical_belt_t.Elementary_fence_units_canonical_quantum_belt bel_ecq ->
      (Elementary_fence_units_canonical_quantum_belt_v.string_off bel_ecq)
;;

let longname = function
  | Elementary_fence_units_canonical_belt_t.Elementary_fence_units_canonical_classical_belt bel_ecc ->
      (Elementary_fence_units_canonical_classical_belt_v.longname bel_ecc)
	
  | Elementary_fence_units_canonical_belt_t.Elementary_fence_units_canonical_quantum_belt bel_ecq ->
      (Elementary_fence_units_canonical_quantum_belt_v.longname bel_ecq)
;;

let fullname = function
  | Elementary_fence_units_canonical_belt_t.Elementary_fence_units_canonical_classical_belt bel_ecc ->
      (Elementary_fence_units_canonical_classical_belt_v.fullname bel_ecc)
	
  | Elementary_fence_units_canonical_belt_t.Elementary_fence_units_canonical_quantum_belt bel_ecq ->
      (Elementary_fence_units_canonical_quantum_belt_v.fullname bel_ecq)
;;

(** {6 Coercing up} *)

let elementary_fence_units_canonical_belt_of_elementary_fence_units_canonical_classical_belt bel_ecc =
  Elementary_fence_units_canonical_belt_t.Elementary_fence_units_canonical_classical_belt bel_ecc 
;;

let elementary_fence_units_canonical_belt_of_elementary_fence_units_canonical_quantum_belt bel_ecq =
  Elementary_fence_units_canonical_belt_t.Elementary_fence_units_canonical_quantum_belt bel_ecq 
;;

(** {6 Coercing down} *)

let elementary_fence_units_canonical_classical_belt_off_elementary_fence_units_canonical_belt = function
  | Elementary_fence_units_canonical_belt_t.Elementary_fence_units_canonical_classical_belt bel_ecc -> bel_ecc
  | _ -> failwith "Not_a_elementary_fence_units_canonical_classical:Elementary_fence_units_canonical_belt.elementary_fence_units_canonical_classical_belt_off_elementary_fence_units_canonical_belt"
;;

let elementary_fence_units_canonical_quantum_belt_off_elementary_fence_units_canonical_belt = function
  | Elementary_fence_units_canonical_belt_t.Elementary_fence_units_canonical_quantum_belt bel_ecq -> bel_ecq
  | _ -> failwith "Not_a_elementary_fence_units_canonical_quantum:Elementary_fence_units_canonical_belt.elementary_fence_units_canonical_quantum_belt_off_elementary_fence_units_canonical_belt"
;;

(** {6 Belt} *)

let belt_of_tag tag_euc =
  let soi_euc = Tag_v.sole_index_off_tag tag_euc in
  let sym_euc = Tag_v.entity_off_tag tag_euc in
  match sym_euc with
  | Elementary_fence_units_canonical_symbol_t.Elementary_fence_units_canonical_classical_symbol sym_ecc ->
      let tag_ecc = Tag_v.make sym_ecc soi_euc in
      Elementary_fence_units_canonical_belt_t.Elementary_fence_units_canonical_classical_belt
	(Elementary_fence_units_canonical_classical_belt_v.belt_of_tag tag_ecc)

  | Elementary_fence_units_canonical_symbol_t.Elementary_fence_units_canonical_quantum_symbol sym_ecq ->
      let tag_ecq = Tag_v.make sym_ecq soi_euc in
      Elementary_fence_units_canonical_belt_t.Elementary_fence_units_canonical_quantum_belt
	(Elementary_fence_units_canonical_quantum_belt_v.belt_of_tag tag_ecq)
;;

(** {6 Measure_canonical off Belt} *)

let measure_canonical_off_belt = function
  | Elementary_fence_units_canonical_belt_t.Elementary_fence_units_canonical_classical_belt bel_ecc ->
      (Elementary_fence_units_canonical_classical_belt_v.measure_canonical_off_belt bel_ecc)
	
  | Elementary_fence_units_canonical_belt_t.Elementary_fence_units_canonical_quantum_belt bel_ecq ->
      (Elementary_fence_units_canonical_quantum_belt_v.measure_canonical_off_belt bel_ecq)
;;

(** {6 Measure_canonical List off Belt} *)

let measure_canonical_list_off_belt bel_euc =
  let mea_can = measure_canonical_off_belt bel_euc in
  [mea_can]
;;

(** {6 Measure off Belt} *)

let measure_off_belt bel_euc =
  let mea_can = measure_canonical_off_belt bel_euc in
  Measure_v.measure_of_measure_canonical mea_can
;;

(** {6 Measure_actual off Belt} *)

let measure_actual_off_belt bel_euc =
  let mea_can = measure_canonical_off_belt bel_euc in
  Measure_actual_v.measure_actual_of_measure_canonical mea_can 
;;

(** {6 Measure_actual List off Belt} *)

let measure_actual_list_off_belt_of_calculation_name bel_euc =
  let can_mea = measure_actual_off_belt bel_euc in
  [can_mea]
;;

(** {6 Readee off Belt} *)

let readee_off_belt bel_euc =
  let mea_act = measure_actual_off_belt bel_euc in
  Readee_v.readee_of_measure_actual mea_act
;;

(** {6 Readee of Tag} *)

let readee_of_tag tag_euc =
  let bel_euc = belt_of_tag tag_euc in
  readee_off_belt bel_euc 
;;

(** {6 Closure} *)

let closure_of_tag tag_euc =
  let rea = readee_of_tag tag_euc in
  [rea]
;;

let closure_off_belt bel_euc =
  let rea = readee_off_belt bel_euc in
  [rea]
;;


(* generated by ./do_belt_as_fence_units_canonical_trunc_2sibling_v.sh elementary_fence_units_canonical euc classical ecc quantum ecq *)
(* using ./template_belt_as_fence_units_canonical_trunc_2sibling_v.ml *)
(* Done on mardi 24 mai 2016, 16:43:06 (UTC+0200) *)

