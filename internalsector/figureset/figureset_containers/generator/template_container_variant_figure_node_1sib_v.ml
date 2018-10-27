(** {3 This_container_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : FFIG:This_container_v";
   "Needs : FFIG:Sibling_1_container_v";
   "Needed-by :";
   "What-is-it : Up_coercion of Formula type as Symbol type up_coercion";
   "Remark : It is a CT Node type";
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

(** {6 Retrieving} *)

let container_of_tag tag_ttt =
  let soi_ttt = Tag_v.sole_index_off_tag tag_ttt in
  let sym_ttt = Tag_v.entity_off_tag tag_ttt in
  match sym_ttt with
  | This_symbol_t.Sibling_1_symbol sym_sib_1 ->
      This_container_t.Sibling_1_container
	(Sibling_1_container_v.container_of_tag (sym_sib_1, soi_ttt))

  | _ -> 
      failwith "This_symbol_has_only_one:This_container_v.container_of_tag"
;;

(** {6 Making} *)

let make sym_sib soi_sib =
  let tag_ttt = Tag_v.make sym_sib soi_sib in
  container_of_tag tag_ttt
;;

(** {6 Coercing up} *)

let this_container_of_sibling_1_container con_sib_1 =
  This_container_t.Sibling_1_container con_sib_1 
;;

(** {6 Coercing down} *)

let sibling_1_container_off_this_container = function
  | This_container_t.Sibling_1_container con_sib_1 -> con_sib_1
;;

(** {6 Builder Tag list of Container} *)

let buldr_tag_list_off_this_container = function
  | This_container_t.Sibling_1_container con_sib_1 ->
      Sibling_1_container_v.buldr_tag_list_off_sibling_1_container con_sib_1
;;

(** {6 Builder Tag tuple of Container} *)

let buldr_tag_tuple_off_this_container = function
  | This_container_t.Sibling_1_container con_sib_1 ->
      Sibling_1_container_v.buldr_tag_tuple_off_sibling_1_container con_sib_1
;;

(** {6 Builder Tag list of Tag} *)

let buldr_tag_list_off_this_tag tag_ttt =
  let con_ttt = container_of_tag tag_ttt in
  buldr_tag_list_off_this_container con_ttt
;;

(** {6 Builder Tag tuple of Tag} *)

let buldr_tag_tuple_off_this_tag tag_ttt =
  let con_ttt = container_of_tag tag_ttt in
  buldr_tag_tuple_off_this_container con_ttt
;;

(** {6 Closure Tag of Container} *)

let elementary_units_tag_list_list_off_this_container = function
  | This_container_t.Sibling_1_container con_sib_1 ->
      Sibling_1_container_v.elementary_units_tag_list_list_off_sibling_1_container con_sib_1
;;

let elementary_units_tag_tuple_list_off_this_container = function
  | This_container_t.Sibling_1_container con_sib_1 ->
      Sibling_1_container_v.elementary_units_tag_tuple_list_off_sibling_1_container con_sib_1
;;

(** {6 Closure Tag of Tag} *)

let elementary_units_tag_list_list_off_this_tag tag_ttt =
  let con_ttt = container_of_tag tag_ttt in
  elementary_units_tag_list_list_off_this_container con_ttt
;;

let elementary_units_tag_tuple_list_off_this_tag tag_ttt =
  let con_ttt = container_of_tag tag_ttt in
  elementary_units_tag_tuple_list_off_this_container con_ttt
;;

