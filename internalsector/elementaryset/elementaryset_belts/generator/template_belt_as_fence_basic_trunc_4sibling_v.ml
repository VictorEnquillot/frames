(** {3 This_belt_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VELE:This_belt_v";
   "Needs : VELE:This_sibling_1_belt_v";
   "Needs : VELE:This_sibling_2_belt_v";
   "Needs : VELE:This_sibling_3_belt_v";
   "Needs : VELE:This_sibling_4_belt_v";
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

  | This_belt_t.This_sibling_3_belt bel_sib_3 ->
      (This_sibling_3_belt_v.name bel_sib_3)
	
  | This_belt_t.This_sibling_4_belt bel_sib_4 ->
      (This_sibling_4_belt_v.name bel_sib_4)
;;

let string_off = function
  | This_belt_t.This_sibling_1_belt bel_sib_1 ->
      (This_sibling_1_belt_v.string_off bel_sib_1)
	
  | This_belt_t.This_sibling_2_belt bel_sib_2 ->
      (This_sibling_2_belt_v.string_off bel_sib_2)

  | This_belt_t.This_sibling_3_belt bel_sib_3 ->
      (This_sibling_3_belt_v.string_off bel_sib_3)
	
  | This_belt_t.This_sibling_4_belt bel_sib_4 ->
      (This_sibling_4_belt_v.string_off bel_sib_4)
;;

let longname = function
  | This_belt_t.This_sibling_1_belt bel_sib_1 ->
      (This_sibling_1_belt_v.longname bel_sib_1)
	
  | This_belt_t.This_sibling_2_belt bel_sib_2 ->
      (This_sibling_2_belt_v.longname bel_sib_2)

  | This_belt_t.This_sibling_3_belt bel_sib_3 ->
      (This_sibling_3_belt_v.longname bel_sib_3)
	
  | This_belt_t.This_sibling_4_belt bel_sib_4 ->
      (This_sibling_4_belt_v.longname bel_sib_4)
;;

let fullname = function
  | This_belt_t.This_sibling_1_belt bel_sib_1 ->
      (This_sibling_1_belt_v.fullname bel_sib_1)
	
  | This_belt_t.This_sibling_2_belt bel_sib_2 ->
      (This_sibling_2_belt_v.fullname bel_sib_2)

  | This_belt_t.This_sibling_3_belt bel_sib_3 ->
      (This_sibling_3_belt_v.fullname bel_sib_3)
	
  | This_belt_t.This_sibling_4_belt bel_sib_4 ->
      (This_sibling_4_belt_v.fullname bel_sib_4)
;;

(** {6 Coercing up} *)

let this_belt_of_sibling_1_belt bel_sib_1 =
  This_belt_t.This_sibling_1_belt bel_sib_1 
;;

let this_belt_of_sibling_2_belt bel_sib_2 =
  This_belt_t.This_sibling_2_belt bel_sib_2 
;;

let this_belt_of_sibling_3_belt bel_sib_3 =
  This_belt_t.This_sibling_3_belt bel_sib_3 
;;

let this_belt_of_sibling_4_belt bel_sib_4 =
  This_belt_t.This_sibling_4_belt bel_sib_4 
;;

(** {6 Coercing down} *)

let sibling_1_belt_off_this_belt = function
  | This_belt_t.This_sibling_1_belt bel_sib_1 -> bel_sib_1
  | _ -> failwith "Not_a_sibling_1:This_belt.This_sibling_1_belt_off_this_belt"
;;

let sibling_2_belt_off_this_belt = function
  | This_belt_t.This_sibling_2_belt bel_sib_2 -> bel_sib_2
  | _ -> failwith "Not_a_sibling_2:This_belt.This_sibling_2_belt_off_this_belt"
;;

let sibling_3_belt_off_this_belt = function
  | This_belt_t.This_sibling_3_belt bel_sib_3 -> bel_sib_3
  | _ -> failwith "Not_a_sibling_3:This_belt.sibling_3_belt_off_this_belt"
;;

let sibling_4_belt_off_this_belt = function
  | This_belt_t.This_sibling_4_belt bel_sib_4 -> bel_sib_4
  | _ -> failwith "Not_a_sibling_4:This_belt.sibling_4_belt_off_this_belt"
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

  | This_symbol_t.This_sibling_3_symbol sym_sib_3 ->
      let tag_sib_3 = Tag_v.make sym_sib_3 soi_ttt in
      This_belt_t.This_sibling_3_belt
	(This_sibling_3_belt_v.belt_of_tag tag_sib_3)

  | This_symbol_t.This_sibling_4_symbol sym_sib_4 ->
      let tag_sib_4 = Tag_v.make sym_sib_4 soi_ttt in
      This_belt_t.This_sibling_4_belt
	(This_sibling_4_belt_v.belt_of_tag tag_sib_4)
;;

(** {6 Readee_basic} *)

let readee_basic_off_belt = function
  | This_belt_t.This_sibling_1_belt bel_sib_1 ->
      (This_sibling_1_belt_v.readee_basic_off_belt bel_sib_1)
	
  | This_belt_t.This_sibling_2_belt bel_sib_2 ->
      (This_sibling_2_belt_v.readee_basic_off_belt bel_sib_2)

  | This_belt_t.This_sibling_3_belt bel_sib_3 ->
      (This_sibling_3_belt_v.readee_basic_off_belt bel_sib_3)
	
  | This_belt_t.This_sibling_4_belt bel_sib_4 ->
      (This_sibling_4_belt_v.readee_basic_off_belt bel_sib_4)
;;

(** {6 Readee : a Generalization of Readee_basic} *)

let readee_off_belt bel_ttt =
  let pba = readee_basic_off_belt bel_ttt in
  Readee_v.readee_of_readee_basic pba
;;

(** {6 Closure} *)

let closure_off_belt bel_ttt =
  let rea = readee_off_belt bel_ttt in
  [rea]
;;

let closure_of_tag tag_ttt =
  let bel_ttt = belt_of_tag tag_ttt in
  closure_off_belt bel_ttt
;;
