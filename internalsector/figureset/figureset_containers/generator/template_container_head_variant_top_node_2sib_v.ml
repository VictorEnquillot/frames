(** {3 This_container_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : FFIG:This_container_v";
   "Needs : FFIG:Sibling_1_container_v";
   "Needs : FFIG:Sibling_2_container_v";
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

;;

let string_off = function
  | This_container_t.Sibling_1_container con_sib_1 ->
      (Sibling_1_container_v.string_off con_sib_1)
	
  | This_container_t.Sibling_2_container con_sib_2 ->
      (Sibling_2_container_v.string_off con_sib_2)

;;

let longname = function
  | This_container_t.Sibling_1_container con_sib_1 ->
      (Sibling_1_container_v.longname con_sib_1)

  | This_container_t.Sibling_2_container con_sib_2 ->
      (Sibling_2_container_v.longname con_sib_2)
;;

let fullname = function
  | This_container_t.Sibling_1_container con_sib_1 ->
      (Sibling_1_container_v.fullname con_sib_1)
	
  | This_container_t.Sibling_2_container con_sib_2 ->
      (Sibling_2_container_v.fullname con_sib_2)
;;

(** {6 Builder Tag Containers} *)

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
;;

(** {6 Coercing up} *)

let this_container_of_sibling_1_container con_sib_1 =
  This_container_t.Sibling_1_container con_sib_1 
;;

let this_container_of_sibling_2_container con_sib_2 =
  This_container_t.Sibling_2_container con_sib_2 
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

(** {6 Fence Tag of Tag (Self) } *)

let fence_list tag_ttt =
  let tag_fig = This_tag_v.figure_tag_of_this_tag tag_ttt in
  Fnc_tag_fence_by_figure_tag_provider_v.provide tag_fig
;;

let fence_tuple tag_ttt =
  let fen_l = fence_list tag_ttt in
  Tuple_v.tuple_of_list fen_l
;;

let fence_tuple_list tag_ttt =
  let fen_l = fence_list tag_ttt in
  Tuple_list_v.make fen_l
;;

(** {6 Deepfence Tag off Tag (Builder) } *)

let deepfence_list tag_ttt =
  let tag_fig = This_tag_v.figure_tag_of_this_tag tag_ttt in
  Deepfn_tag_deepfence_by_figure_tag_provider_v.provide tag_fig
;;

let deepfence_tuple_list tag_ttt =
  let dfe_l = deepfence_list tag_ttt in
  Tuple_list_v.make dfe_l
;;

let deepfence_tuple_tuple tag_ttt =
  let dfe_tl = deepfence_tuple_list tag_ttt in
  Tuple_v.tuple_of_list dfe_tl
;;


