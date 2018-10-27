(** {3 This_envelope_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VELE:This_envelope_v";
   "Needs : VELE:This_sibling_1_envelope_v";
   "Needs : VELE:This_sibling_2_envelope_v";
   "Remark : a Skeleton Fence Envelope is the same as its Bridge Envelope";
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

  | _ -> 
      Utilities_v.not_yet_implemented nam_mod "fence_as_list_of_tag Sibling_2"
;;

let fence_coerced_down_of_tag tag_ttt =
  [tag_ttt] 
;;

(** {6 Bridge} *)

let bridge_of_tag tag_ttt =
  let (sym_ttt, soi_ttt) = tag_ttt in
  match sym_ttt with 
  | This_symbol_t.This_sibling_1_symbol sym_sib_1 ->
      let tag_sib_1 = Tag_v.make sym_sib_1 soi_ttt in
      This_sibling_1_envelope_v.bridge_of_tag tag_sib_1

  | _ -> 
      Utilities_v.not_yet_implemented nam_mod "bridge_of_tag Sibling_2"
;;

(** {6 Envelope} *)

let envelope_of_tag tag_ttt =
  let (sym_ttt, soi_ttt) = tag_ttt in
  match sym_ttt with 
  | This_symbol_t.This_sibling_1_symbol sym_sib_1 ->
      let tag_sib_1 = Tag_v.make sym_sib_1 soi_ttt in
      This_sibling_1_envelope_v.envelope_of_tag tag_sib_1

  | _ -> 
      Utilities_v.not_yet_implemented nam_mod "envelope_of_tag Sibling_2"
;;

(** {6 Border} *)

let border_of_tag tag_ttt =
  let (sym_ttt, soi_ttt) = tag_ttt in
  match sym_ttt with 
  | This_symbol_t.This_sibling_1_symbol sym_sib_1 ->
      let tag_sib_1 = Tag_v.make sym_sib_1 soi_ttt in
      This_sibling_1_envelope_v.border_of_tag tag_sib_1

  | _ -> 
      Utilities_v.not_yet_implemented nam_mod "border_of_tag Sibling_2"
;;

(** {6 Closure} *)

let closure_of_tag tag_ttt =
  let (sym_ttt, soi_ttt) = tag_ttt in
  match sym_ttt with 
  | This_symbol_t.This_sibling_1_symbol sym_sib_1 ->
      let tag_sib_1 = Tag_v.make sym_sib_1 soi_ttt in
      This_sibling_1_envelope_v.closure_of_tag tag_sib_1

  | _ -> 
      Utilities_v.not_yet_implemented nam_mod "closure_of_tag Sibling_2"
;;

(** {6 Float List} *)

let float_list_of_tag tag_ttt  =
  let (sym_ttt, soi_ttt) = tag_ttt in
  match sym_ttt with 
  | This_symbol_t.This_sibling_1_symbol sym_sib_1 ->
      let tag_sib_1 = Tag_v.make sym_sib_1 soi_ttt in
      This_sibling_1_envelope_v.float_list_of_tag tag_sib_1

  | _ -> 
      Utilities_v.not_yet_implemented nam_mod "closure_of_tag Sibling_2"
;;

(** {6 Units List} *)

let elementary_fence_units_actual_tag_list_of_tag tag_ttt =
  let (sym_ttt, soi_ttt) = tag_ttt in
  match sym_ttt with 
  | This_symbol_t.This_sibling_1_symbol sym_sib_1 ->
      let tag_sib_1 = Tag_v.make sym_sib_1 soi_ttt in
      This_sibling_1_envelope_v.elementary_fence_units_actual_tag_list_of_tag tag_sib_1

  | _ -> 
      Utilities_v.not_yet_implemented nam_mod "elementary_fence_units_actual_tag_list_of_tag Sibling_2"
;;

(** {6 Text} *)

let text_of_tag tag_ttt =
  let (sym_ttt, soi_ttt) = tag_ttt in
  match sym_ttt with 
  | This_symbol_t.This_sibling_1_symbol sym_sib_1 ->
      let tag_sib_1 = Tag_v.make sym_sib_1 soi_ttt in
      This_sibling_1_envelope_v.text_of_tag tag_sib_1

  | _ -> 
      Utilities_v.not_yet_implemented nam_mod "text_of_tag Sibling_2"
;;
