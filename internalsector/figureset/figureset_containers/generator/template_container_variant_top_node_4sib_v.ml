(** {3 This_container_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : FFIG:This_container_v";
   "Needs : FFIG:Sibling_1_container_v";
   "Needs : FFIG:Sibling_2_container_v";
   "Needs : FFIG:Sibling_3_container_v";
   "Needs : FFIG:Sibling_4_container_v";
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
	
  | This_container_t.Sibling_2_container con_sib_2 ->
      (Sibling_2_container_v.name con_sib_2)

  | This_container_t.Sibling_3_container con_sib_3 ->
      (Sibling_3_container_v.name con_sib_3)

  | This_container_t.Sibling_4_container con_sib_4 ->
      (Sibling_4_container_v.name con_sib_4)
;;

let string_off = function
  | This_container_t.Sibling_1_container con_sib_1 ->
      (Sibling_1_container_v.string_off con_sib_1)
	
  | This_container_t.Sibling_2_container con_sib_2 ->
      (Sibling_2_container_v.string_off con_sib_2)

  | This_container_t.Sibling_3_container con_sib_3 ->
      (Sibling_3_container_v.string_off con_sib_3)

  | This_container_t.Sibling_4_container con_sib_4 ->
      (Sibling_4_container_v.string_off con_sib_4)
;;

let longname = function
  | This_container_t.Sibling_1_container con_sib_1 ->
      (Sibling_1_container_v.longname con_sib_1)

  | This_container_t.Sibling_2_container con_sib_2 ->
      (Sibling_2_container_v.longname con_sib_2)

  | This_container_t.Sibling_3_container con_sib_3 ->
      (Sibling_3_container_v.longname con_sib_3)

  | This_container_t.Sibling_4_container con_sib_4 ->
      (Sibling_4_container_v.longname con_sib_4)
;;

let fullname = function
  | This_container_t.Sibling_1_container con_sib_1 ->
      (Sibling_1_container_v.fullname con_sib_1)
	
  | This_container_t.Sibling_2_container con_sib_2 ->
      (Sibling_2_container_v.fullname con_sib_2)

  | This_container_t.Sibling_3_container con_sib_3 ->
      (Sibling_3_container_v.fullname con_sib_3)

  | This_container_t.Sibling_4_container con_sib_4 ->
      (Sibling_4_container_v.fullname con_sib_4)
;;

(** {6 Retrieving} *)

let container_of_tag tag_ttt =
  let soi_ttt = Tag_v.sole_index_off_tag tag_ttt in
  let sym_ttt = Tag_v.entity_off_tag tag_ttt in
  match sym_ttt with
  | This_symbol_t.Sibling_1_symbol sym_sib_1 ->
      This_container_t.Sibling_1_container
	(Sibling_1_container_v.container_of_tag (sym_sib_1, soi_ttt))

  | This_symbol_t.Sibling_2_symbol sym_sib_2 ->
      This_container_t.Sibling_2_container
	(Sibling_2_container_v.container_of_tag (sym_sib_2, soi_ttt))

  | This_symbol_t.Sibling_3_symbol sym_sib_3 ->
      This_container_t.Sibling_3_container
	(Sibling_3_container_v.container_of_tag (sym_sib_3, soi_ttt))

  | This_symbol_t.Sibling_4_symbol sym_sib_4 ->
      This_container_t.Sibling_4_container
	(Sibling_4_container_v.container_of_tag (sym_sib_4, soi_ttt))
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

let this_container_of_sibling_2_container con_sib_2 =
  This_container_t.Sibling_2_container con_sib_2 
;;

let this_container_of_sibling_3_container con_sib_3 =
  This_container_t.Sibling_3_container con_sib_3 
;;

let this_container_of_sibling_4_container con_sib_4 =
  This_container_t.Sibling_4_container con_sib_4 
;;

(** {6 Coercing down} *)

let sibling_1_container_off_this_container = function
  | This_container_t.Sibling_1_container con_sib_1 -> con_sib_1
  | _ -> failwith "Not_a_sibling_1:This_container.sibling_1_container_off_this_container"
;;

let sibling_2_container_off_this_container = function
  | This_container_t.Sibling_2_container con_sib_2 -> con_sib_2
  | _ -> failwith "Not_a_sibling_2:This_container.sibling_2_container_off_this_container"
;;

let sibling_3_container_off_this_container = function
  | This_container_t.Sibling_3_container con_sib_3 -> con_sib_3
  | _ -> failwith "Not_a_sibling_3:This_container.sibling_3_container_off_this_container"
;;

let sibling_4_container_off_this_container = function
  | This_container_t.Sibling_4_container con_sib_4 -> con_sib_4
  | _ -> failwith "Not_a_sibling_4:This_container.sibling_4_container_off_this_container"
;;

