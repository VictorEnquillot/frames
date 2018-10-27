(** {3 Elementary_fence_basic_belt_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VELE:Elementary_fence_basic_belt_v";
   "Needs : VELE:Elementary_fence_basic_boolean_belt_v";
   "Needs : VELE:Elementary_fence_basic_float_belt_v";
   "Needs : VELE:Elementary_fence_basic_integer_belt_v";
   "Needs : VELE:Elementary_fence_basic_string_belt_v";
   "Needed-by :";
   "What-is-it : Up_coercion of Belt type as Symbol type up_coercion";
 ]
;;

(** {6 Naming} *)

let name = function
  | Elementary_fence_basic_belt_t.Elementary_fence_basic_boolean_belt bel_ebb ->
      (Elementary_fence_basic_boolean_belt_v.name bel_ebb)
	
  | Elementary_fence_basic_belt_t.Elementary_fence_basic_float_belt bel_ebf ->
      (Elementary_fence_basic_float_belt_v.name bel_ebf)

  | Elementary_fence_basic_belt_t.Elementary_fence_basic_integer_belt bel_ebi ->
      (Elementary_fence_basic_integer_belt_v.name bel_ebi)
	
  | Elementary_fence_basic_belt_t.Elementary_fence_basic_string_belt bel_ebs ->
      (Elementary_fence_basic_string_belt_v.name bel_ebs)
;;

let string_off = function
  | Elementary_fence_basic_belt_t.Elementary_fence_basic_boolean_belt bel_ebb ->
      (Elementary_fence_basic_boolean_belt_v.string_off bel_ebb)
	
  | Elementary_fence_basic_belt_t.Elementary_fence_basic_float_belt bel_ebf ->
      (Elementary_fence_basic_float_belt_v.string_off bel_ebf)

  | Elementary_fence_basic_belt_t.Elementary_fence_basic_integer_belt bel_ebi ->
      (Elementary_fence_basic_integer_belt_v.string_off bel_ebi)
	
  | Elementary_fence_basic_belt_t.Elementary_fence_basic_string_belt bel_ebs ->
      (Elementary_fence_basic_string_belt_v.string_off bel_ebs)
;;

let longname = function
  | Elementary_fence_basic_belt_t.Elementary_fence_basic_boolean_belt bel_ebb ->
      (Elementary_fence_basic_boolean_belt_v.longname bel_ebb)
	
  | Elementary_fence_basic_belt_t.Elementary_fence_basic_float_belt bel_ebf ->
      (Elementary_fence_basic_float_belt_v.longname bel_ebf)

  | Elementary_fence_basic_belt_t.Elementary_fence_basic_integer_belt bel_ebi ->
      (Elementary_fence_basic_integer_belt_v.longname bel_ebi)
	
  | Elementary_fence_basic_belt_t.Elementary_fence_basic_string_belt bel_ebs ->
      (Elementary_fence_basic_string_belt_v.longname bel_ebs)
;;

let fullname = function
  | Elementary_fence_basic_belt_t.Elementary_fence_basic_boolean_belt bel_ebb ->
      (Elementary_fence_basic_boolean_belt_v.fullname bel_ebb)
	
  | Elementary_fence_basic_belt_t.Elementary_fence_basic_float_belt bel_ebf ->
      (Elementary_fence_basic_float_belt_v.fullname bel_ebf)

  | Elementary_fence_basic_belt_t.Elementary_fence_basic_integer_belt bel_ebi ->
      (Elementary_fence_basic_integer_belt_v.fullname bel_ebi)
	
  | Elementary_fence_basic_belt_t.Elementary_fence_basic_string_belt bel_ebs ->
      (Elementary_fence_basic_string_belt_v.fullname bel_ebs)
;;

(** {6 Coercing up} *)

let elementary_fence_basic_belt_of_boolean_belt bel_ebb =
  Elementary_fence_basic_belt_t.Elementary_fence_basic_boolean_belt bel_ebb 
;;

let elementary_fence_basic_belt_of_float_belt bel_ebf =
  Elementary_fence_basic_belt_t.Elementary_fence_basic_float_belt bel_ebf 
;;

let elementary_fence_basic_belt_of_integer_belt bel_ebi =
  Elementary_fence_basic_belt_t.Elementary_fence_basic_integer_belt bel_ebi 
;;

let elementary_fence_basic_belt_of_string_belt bel_ebs =
  Elementary_fence_basic_belt_t.Elementary_fence_basic_string_belt bel_ebs 
;;

(** {6 Coercing down} *)

let boolean_belt_off_elementary_fence_basic_belt = function
  | Elementary_fence_basic_belt_t.Elementary_fence_basic_boolean_belt bel_ebb -> bel_ebb
  | _ -> failwith "Not_a_boolean:Elementary_fence_basic_belt.Elementary_fence_basic_boolean_belt_off_elementary_fence_basic_belt"
;;

let float_belt_off_elementary_fence_basic_belt = function
  | Elementary_fence_basic_belt_t.Elementary_fence_basic_float_belt bel_ebf -> bel_ebf
  | _ -> failwith "Not_a_float:Elementary_fence_basic_belt.Elementary_fence_basic_float_belt_off_elementary_fence_basic_belt"
;;

let integer_belt_off_elementary_fence_basic_belt = function
  | Elementary_fence_basic_belt_t.Elementary_fence_basic_integer_belt bel_ebi -> bel_ebi
  | _ -> failwith "Not_a_integer:Elementary_fence_basic_belt.integer_belt_off_elementary_fence_basic_belt"
;;

let string_belt_off_elementary_fence_basic_belt = function
  | Elementary_fence_basic_belt_t.Elementary_fence_basic_string_belt bel_ebs -> bel_ebs
  | _ -> failwith "Not_a_string:Elementary_fence_basic_belt.string_belt_off_elementary_fence_basic_belt"
;;

(** {6 Belt} *)

let belt_of_tag tag_efb =
  let soi_efb = Tag_v.sole_index_off_tag tag_efb in
  let sym_efb = Tag_v.entity_off_tag tag_efb in
  match sym_efb with
  | Elementary_fence_basic_symbol_t.Elementary_fence_basic_boolean_symbol sym_ebb ->
      let tag_ebb = Tag_v.make sym_ebb soi_efb in
      Elementary_fence_basic_belt_t.Elementary_fence_basic_boolean_belt
	(Elementary_fence_basic_boolean_belt_v.belt_of_tag tag_ebb)

  | Elementary_fence_basic_symbol_t.Elementary_fence_basic_float_symbol sym_ebf ->
      let tag_ebf = Tag_v.make sym_ebf soi_efb in
      Elementary_fence_basic_belt_t.Elementary_fence_basic_float_belt
	(Elementary_fence_basic_float_belt_v.belt_of_tag tag_ebf)

  | Elementary_fence_basic_symbol_t.Elementary_fence_basic_integer_symbol sym_ebi ->
      let tag_ebi = Tag_v.make sym_ebi soi_efb in
      Elementary_fence_basic_belt_t.Elementary_fence_basic_integer_belt
	(Elementary_fence_basic_integer_belt_v.belt_of_tag tag_ebi)

  | Elementary_fence_basic_symbol_t.Elementary_fence_basic_string_symbol sym_ebs ->
      let tag_ebs = Tag_v.make sym_ebs soi_efb in
      Elementary_fence_basic_belt_t.Elementary_fence_basic_string_belt
	(Elementary_fence_basic_string_belt_v.belt_of_tag tag_ebs)
;;

(** {6 Readee_basic} *)

let readee_basic_off_belt = function
  | Elementary_fence_basic_belt_t.Elementary_fence_basic_boolean_belt bel_ebb ->
      (Elementary_fence_basic_boolean_belt_v.readee_basic_off_belt bel_ebb)
	
  | Elementary_fence_basic_belt_t.Elementary_fence_basic_float_belt bel_ebf ->
      (Elementary_fence_basic_float_belt_v.readee_basic_off_belt bel_ebf)

  | Elementary_fence_basic_belt_t.Elementary_fence_basic_integer_belt bel_ebi ->
      (Elementary_fence_basic_integer_belt_v.readee_basic_off_belt bel_ebi)
	
  | Elementary_fence_basic_belt_t.Elementary_fence_basic_string_belt bel_ebs ->
      (Elementary_fence_basic_string_belt_v.readee_basic_off_belt bel_ebs)
;;

(** {6 Readee : a Generalization of Readee_basic} *)

let readee_off_belt bel_efb =
  let pba = readee_basic_off_belt bel_efb in
  Readee_v.readee_of_readee_basic pba
;;

(** {6 Closure} *)

let closure_off_belt bel_efb =
  let rea = readee_off_belt bel_efb in
  [rea]
;;

let closure_of_tag tag_efb =
  let bel_efb = belt_of_tag tag_efb in
  closure_off_belt bel_efb
;;

(* generated by ./do_belt_as_fence_basic_trunc_4sibling_v.sh elementary_fence_basic efb boolean ebb float ebf integer ebi string ebs *)
(* using ./template_belt_as_fence_basic_trunc_4sibling_v.ml *)
(* Done on mardi 24 mai 2016, 16:43:08 (UTC+0200) *)

