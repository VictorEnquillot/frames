(** {3 This_container_v} *)

(** {6 Documenting_for_container_v} *)

let documentation () = 
  [
   "Current : FFIG:This_container_v";
   "Needs : FFIG:Units_container_v";
   "Needs : FFIG:Units_tag_v";
   "Needed-by : ";
   "What-is-it : a Datstr Units_tag";
   "Remark : it is a Stem of CT and a Border of BT";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming} *)

let name con_ttt =
  Datstr_v.name 
    Buldr_tag_v.name
    con_ttt
;;

let string_off con_ttt =
  Datstr_v.name 
    Buldr_tag_v.string_off
    con_ttt
;;

let longname con_ttt =
  Datstr_v.name 
    Buldr_tag_v.longname
    con_ttt
;;

let fullname con_ttt =
  Datstr_v.name 
    Buldr_tag_v.fullname
    con_ttt
;;

(** {6 Building} *)

let builder_tag_list_of_tag tag_ttt =
  Buldr_tag_list_by_this_tag_provider_v.provide tag_ttt
;;

let container_of_tag tag_ttt =
  let tag_bbb_l = builder_tag_list_of_tag tag_ttt in
  Datstr_v.datstr_of_list tag_bbb_l
;;

let builder_tag_tuple tag_ttt =
  let tag_bbb_l = builder_tag_list_of_tag tag_ttt in
  Tuple_v.tuple_of_list tag_bbb_l
;;

(** {6 Fence Tag off Tag} *)

let fence_list tag_ttt =
  let tag_fig = This_tag_v.figure_tag_of_this_tag tag_ttt in
  This_tag_fence_by_figure_tag_provider_v.provide tag_fig 
;;

let fence_tuple tag_ttt =
  let fen_l = fence_list tag_ttt in
  Tuple_v.tuple_of_list fen_l
;;

let fence_tuple_list tag_ttt =
  let fen_l = fence_list tag_ttt in
  Tuple_list_v.make fen_l
;;

(** {6 Deepfence Tag off Tag} *)

let deepfence_list tag_ttt =
  let tag_fig = This_tag_v.figure_tag_of_this_tag tag_ttt in
  Elementary_units_tag_deepfence_by_figure_tag_provider_v.provide tag_fig
;;

let deepfence_tuple tag_ttt =
  let dfe_l = deepfence_list tag_ttt in
  Tuple_v.tuple_of_list dfe_l
;;

let deepfence_tuple_list tag_ttt =
  let dfe_l = deepfence_list tag_ttt in
  Tuple_list_v.make dfe_l
;;
