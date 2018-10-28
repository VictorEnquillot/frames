(** {3 Elementary_fence_color_belt_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VELE:Elementary_fence_color_belt_v";
   "What-is-it : Up_coercion of Belt type as Symbol type up_coercion";
   "What-is-it : it is a Trunc belt of Fence sub-Types and thus a Uno of its own Tag";
 ]
;;

(** {6 Naming} *)

let name bel_efc =
  Uno_v.name Elementary_fence_color_tag_v.name bel_efc
;;

let string_off bel_efc =
  Uno_v.name Elementary_fence_color_tag_v.string_off bel_efc
;;

let longname bel_efc =
  Uno_v.name Elementary_fence_color_tag_v.longname bel_efc
;;

let fullname bel_efc =
  Uno_v.name Elementary_fence_color_tag_v.fullname bel_efc
;;

(** {6 Coercing Up} *)

(** {6 Coercing Down} *)
(** {6 Coercing Up Tag} *)

(** {6 Belt} *)

let belt_of_tag tag_efc =
  Uno_v.make tag_efc
;;

let tag_off_belt bel_efc =
  Uno_v.element_off_uno bel_efc
;;

let elementary_fence_color_symbol_of_tag tag_efc =
  Tag_v.entity_off_tag tag_efc
;;

let elementary_fence_color_symbol_off_belt bel_efc =
  let tag_efc = tag_off_belt bel_efc in
  elementary_fence_color_symbol_of_tag tag_efc
;;

(** {6 Measure} *)

(** {6 Readee : a Generalization of Measure} *)

let readee_off_belt bel_efc =
  let sym_eco = elementary_fence_color_symbol_off_belt bel_efc in
  Readee_v.readee_of_elementary_fence_color_symbol sym_eco 
;;

(** {6 Closure} *)

let closure_off_belt bel_efc =
  let rea = readee_off_belt bel_efc in
  [rea]
;;

let closure_of_tag tag_efc =
  let bel_efc = belt_of_tag tag_efc in
  closure_off_belt bel_efc
;;

(* generated by ./do_belt_as_uno_fence_color_branch_v.sh elementary_fence_color *)
(* using ./template_belt_as_uno_fence_color_branch_v.ml *)
(* Done on mardi 24 mai 2016, 16:43:06 (UTC+0200) *)
