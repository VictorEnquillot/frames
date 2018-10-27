(** {3 This_envelope_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VMMM:This_envelope_v";
   "Needs : VMMM:This_sibling_1_envelope_v";
   "Needs : VMMM:This_sibling_2_envelope_v";
   "What-is-it : a Trunc Entity i.e. Up Coercion from its 2 Siblings";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Fence} *)

let fence_as_list_of_tag tag_ttt =
  let (sym_ttt, soi_ttt) = tag_ttt in
  match sym_ttt with 
  | This_symbol_t.This_sibling_1_symbol sym_sib_1 ->
      let tag_sib_1 = Tag_v.make sym_sib_1 soi_ttt in
      This_sibling_1_envelope_v.fence_as_list_of_tag tag_sib_1

  | This_symbol_t.This_sibling_2_symbol sym_sib_2 ->
      let tag_sib_2 = Tag_v.make sym_sib_2 soi_ttt in
      This_sibling_2_envelope_v.fence_as_list_of_tag tag_sib_2
;;
 
(** {6 Envelope} *)

let envelope_of_tag tag_ttt =
  let (sym_ttt, soi_ttt) = tag_ttt in
  match sym_ttt with 
  | This_symbol_t.This_sibling_1_symbol sym_sib_1 ->
      let tag_sib_1 = Tag_v.make sym_sib_1 soi_ttt in
      This_sibling_1_envelope_v.envelope_of_tag tag_sib_1

  | This_symbol_t.This_sibling_2_symbol sym_sib_2 ->
      let tag_sib_2 = Tag_v.make sym_sib_2 soi_ttt in
      This_sibling_2_envelope_v.envelope_of_tag tag_sib_2
;;

(** {6 Border} *)

let border_of_tag tag_ttt =
  let (sym_ttt, soi_ttt) = tag_ttt in
  match sym_ttt with 
  | This_symbol_t.This_sibling_1_symbol sym_sib_1 ->
      let tag_sib_1 = Tag_v.make sym_sib_1 soi_ttt in
      This_sibling_1_envelope_v.border_of_tag tag_sib_1

  | This_symbol_t.This_sibling_2_symbol sym_sib_2 ->
      let tag_sib_2 = Tag_v.make sym_sib_2 soi_ttt in
      This_sibling_2_envelope_v.border_of_tag tag_sib_2
;;

(** {6 Closure} *)

let closure_of_tag tag_ttt =
  let (sym_ttt, soi_ttt) = tag_ttt in
  match sym_ttt with 
  | This_symbol_t.This_sibling_1_symbol sym_sib_1 ->
      let tag_sib_1 = Tag_v.make sym_sib_1 soi_ttt in
      This_sibling_1_envelope_v.closure_of_tag tag_sib_1

  | This_symbol_t.This_sibling_2_symbol sym_sib_2 ->
      let tag_sib_2 = Tag_v.make sym_sib_2 soi_ttt in
      This_sibling_2_envelope_v.closure_of_tag tag_sib_2
;;

(** {6 Float List} *)

let float_list_of_tag tag_ttt  =
  let (sym_ttt, soi_ttt) = tag_ttt in
  match sym_ttt with 
  | This_symbol_t.This_sibling_1_symbol sym_sib_1 ->
      let tag_sib_1 = Tag_v.make sym_sib_1 soi_ttt in
      This_sibling_1_envelope_v.float_list_of_tag tag_sib_1

  | This_symbol_t.This_sibling_2_symbol sym_sib_2 ->
      let tag_sib_2 = Tag_v.make sym_sib_2 soi_ttt in
      This_sibling_2_envelope_v.float_list_of_tag tag_sib_2
;;

(** {6 Units List} *)

let elementary_fence_units_actual_tag_list_of_tag tag_ttt =
  let (sym_ttt, soi_ttt) = tag_ttt in
  match sym_ttt with 
  | This_symbol_t.This_sibling_1_symbol sym_sib_1 ->
      let tag_sib_1 = Tag_v.make sym_sib_1 soi_ttt in
      This_sibling_1_envelope_v.elementary_fence_units_actual_tag_list_of_tag tag_sib_1

  | This_symbol_t.This_sibling_2_symbol sym_sib_2 ->
      let tag_sib_2 = Tag_v.make sym_sib_2 soi_ttt in
      This_sibling_2_envelope_v.elementary_fence_units_actual_tag_list_of_tag tag_sib_2
;;

(** {6 Text} *)

let text_of_tag tag_ttt =
  let (sym_ttt, soi_ttt) = tag_ttt in
  match sym_ttt with 
  | This_symbol_t.This_sibling_1_symbol sym_sib_1 ->
      let tag_sib_1 = Tag_v.make sym_sib_1 soi_ttt in
      This_sibling_1_envelope_v.text_of_tag tag_sib_1

  | This_symbol_t.This_sibling_2_symbol sym_sib_2 ->
      let tag_sib_2 = Tag_v.make sym_sib_2 soi_ttt in
      This_sibling_2_envelope_v.text_of_tag tag_sib_2
;;
