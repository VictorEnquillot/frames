(** {3 This_belt_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VELE:This_belt_v";
   "What-is-it : Up_coercion of Belt type as Symbol type up_coercion";
   "What-is-it : it is a Trunc belt of Fence sub-Types and thus a Uno of its own Tag";
 ]
;;

(** {6 Naming} *)

let name bel_ttt =
  Uno_v.name This_tag_v.name bel_ttt
;;

let string_off bel_ttt =
  Uno_v.name This_tag_v.string_off bel_ttt
;;

let longname bel_ttt =
  Uno_v.name This_tag_v.longname bel_ttt
;;

let fullname bel_ttt =
  Uno_v.name This_tag_v.fullname bel_ttt
;;

(** {6 Coercing Up} *)

(** {6 Coercing Down} *)
(** {6 Coercing Up Tag} *)

(** {6 Belt} *)

let belt_of_tag tag_ttt =
  Uno_v.make tag_ttt
;;

let tag_off_belt bel_ttt =
  Uno_v.element_off_uno bel_ttt
;;

let this_symbol_of_tag tag_ttt =
  Tag_v.entity_off_tag tag_ttt
;;

let this_symbol_off_belt bel_ttt =
  let tag_ttt = tag_off_belt bel_ttt in
  this_symbol_of_tag tag_ttt
;;

(** {6 Measure} *)

(** {6 Readee : a Generalization of Measure} *)

let readee_off_belt bel_ttt =
  let sym_eco = this_symbol_off_belt bel_ttt in
  Readee_v.readee_of_this_symbol sym_eco 
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
