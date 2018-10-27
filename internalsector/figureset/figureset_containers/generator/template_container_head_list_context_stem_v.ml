(** {3 This_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
[
  "Current : FFIG:This_container_v";
  "Needs: FFIG:Buldr_tag_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Remark: it is a Stem and a List of Buldr_tag";
]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming_for_container} *)

let name con_ttt =
  List_v.name 
    Buldr_tag_v.name
    con_ttt
;;

let string_off con_ttt =
  List_v.name 
    Buldr_tag_v.string_off
    con_ttt
;;

let longname con_ttt =
  List_v.name 
    Buldr_tag_v.longname
    con_ttt
;;

let fullname con_ttt =
  List_v.name 
    Buldr_tag_v.fullname
    con_ttt
;;

(** {6 Builder Tag Containers} *)

let builder_tag_list_of_tag tag_ttt =
  let tag_fig_son_l =
    Son_figure_tag_list_by_father_figure_tag_provider_v.provide 
      tag_ttt
  in
  List.map Buldr_tag_v.buldr_tag_off_figure_tag tag_fig_son_l
;;

let container_of_tag tag_ttt =
  builder_tag_list_of_tag tag_ttt
;;

let builder_tag_tuple tag_ttt =
  let tag_bui_l = builder_tag_list_of_tag tag_ttt in
  Tuple_v.tuple_of_list tag_bui_l
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


