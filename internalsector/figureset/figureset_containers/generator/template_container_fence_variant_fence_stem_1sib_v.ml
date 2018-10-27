(** {3 This_container_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VELE:This_container_v";
   "Needs : VELE:Sibling_1_container_v";
   "Needed-by :";
   "What-is-it : Up_coercion of Formula type as Symbol type up_coercion";
   "Remark : It is a CT Node type with 1 Siblings. BT Node in Border";
   "Remark : builder_tag_list_of_tag exists when siblings give the same type";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming} *)

let name = function
  | This_container_t.Sibling_1_container con_sib_1 ->
      (Sibling_1_container_v.name con_sib_1)
;;

let string_off = function
  | This_container_t.Sibling_1_container con_sib_1 ->
      (Sibling_1_container_v.string_off con_sib_1)
;;

let longname = function
  | This_container_t.Sibling_1_container con_sib_1 ->
      (Sibling_1_container_v.longname con_sib_1)
;;

let fullname = function
  | This_container_t.Sibling_1_container con_sib_1 ->
      (Sibling_1_container_v.fullname con_sib_1)
;;

(** {6 Builder Tag Containers} *)

let builder_tag_list_of_tag tag_ttt =
  let soi_ttt = Tag_v.sole_index_off_tag tag_ttt in
  let sym_ttt = Tag_v.entity_off_tag tag_ttt in
  match sym_ttt with
  | This_symbol_t.Sibling_1_symbol sym_sib_1 ->
      (Sibling_1_container_v.builder_tag_list_of_tag (sym_sib_1, soi_ttt))
;;

let builder_tag_tuple tag_ttt =
  let soi_ttt = Tag_v.sole_index_off_tag tag_ttt in
  let sym_ttt = Tag_v.entity_off_tag tag_ttt in
  match sym_ttt with
  | This_symbol_t.Sibling_1_symbol sym_sib_1 ->
      (Sibling_1_container_v.builder_tag_tuple (sym_sib_1, soi_ttt))
;;

let container_of_tag tag_ttt =
  let soi_ttt = Tag_v.sole_index_off_tag tag_ttt in
  let sym_ttt = Tag_v.entity_off_tag tag_ttt in
  match sym_ttt with
  | This_symbol_t.Sibling_1_symbol sym_sib_1 ->
      let tag_sib_1 = Tag_v.make sym_sib_1 soi_ttt in
      This_container_t.Sibling_1_container
	(Sibling_1_container_v.container_of_tag tag_sib_1)
;;

(** {6 Coercing Up} *)

let this_container_of_sibling_1_container con_sib_1 =
  This_container_t.Sibling_1_container con_sib_1 
;;

(** {6 Coercing Down} *)

let sibling_1_container_off_this_container = function
  | This_container_t.Sibling_1_container con_sib_1 -> con_sib_1
;;

(** {6 Fence Tag off Tag} *)

let fence_list tag_ttt =
  let soi_ttt = Tag_v.sole_index_off_tag tag_ttt in
  let sym_ttt = Tag_v.entity_off_tag tag_ttt in
  match sym_ttt with
  | This_symbol_t.Sibling_1_symbol sym_sib_1 ->
      (Sibling_1_container_v.fence_list (sym_sib_1, soi_ttt))
;;

let fence_tuple tag_ttt =
  let soi_ttt = Tag_v.sole_index_off_tag tag_ttt in
  let sym_ttt = Tag_v.entity_off_tag tag_ttt in
  match sym_ttt with
  | This_symbol_t.Sibling_1_symbol sym_sib_1 ->
      (Sibling_1_container_v.fence_tuple (sym_sib_1, soi_ttt))
;;

let fence_tuple_list tag_ttt =
  let soi_ttt = Tag_v.sole_index_off_tag tag_ttt in
  let sym_ttt = Tag_v.entity_off_tag tag_ttt in
  match sym_ttt with
  | This_symbol_t.Sibling_1_symbol sym_sib_1 ->
      (Sibling_1_container_v.fence_tuple_list (sym_sib_1, soi_ttt))
;;

(** {6 Deepfence Tag off Tag} *)

let deepfence_list tag_ttt =
  let soi_ttt = Tag_v.sole_index_off_tag tag_ttt in
  let sym_ttt = Tag_v.entity_off_tag tag_ttt in
  match sym_ttt with
  | This_symbol_t.Sibling_1_symbol sym_sib_1 ->
      (Sibling_1_container_v.deepfence_list (sym_sib_1, soi_ttt))
;;

let deepfence_tuple tag_ttt =
  let soi_ttt = Tag_v.sole_index_off_tag tag_ttt in
  let sym_ttt = Tag_v.entity_off_tag tag_ttt in
  match sym_ttt with
  | This_symbol_t.Sibling_1_symbol sym_sib_1 ->
      (Sibling_1_container_v.deepfence_tuple (sym_sib_1, soi_ttt))
;;

let deepfence_tuple_list tag_ttt =
  let soi_ttt = Tag_v.sole_index_off_tag tag_ttt in
  let sym_ttt = Tag_v.entity_off_tag tag_ttt in
  match sym_ttt with
  | This_symbol_t.Sibling_1_symbol sym_sib_1 ->
      (Sibling_1_container_v.deepfence_tuple_list (sym_sib_1, soi_ttt))
;;

