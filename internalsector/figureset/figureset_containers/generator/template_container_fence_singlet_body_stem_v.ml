(** {3 This_container_v.}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : FFIG:This_container_v";
   "Needs : FFIG:Builder_tag_v";
   "Needed-by : FFIG:Elementary_body_coordinate_tuple_container_v";
   "What-is-it : This_container is Singlet of Builder_tag";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming} *)

let name con_ttt =
  Singlet_v.name 
    Builder_tag_v.name
    con_ttt
;;

let string_off con_ttt =
  Singlet_v.name 
    Builder_tag_v.string_off
    con_ttt
;;

let longname con_ttt =
  Singlet_v.name 
    Builder_tag_v.longname
    con_ttt
;;

let fullname con_ttt =
  Singlet_v.name 
    Builder_tag_v.fullname
    con_ttt
;;

(** {6 Filling} *)

let fill tag_bui_1 =
  Singlet_v.make tag_bui_1
;;

(** {6 Building} *)

let build tag_ttt =
  Builder_tag_list_by_this_tag_provider_v.provide tag_ttt
;;

(** {6 Retrieving} *)

let retrieve tag_ttt =
  let tag_bui_l = build tag_ttt in
  Singlet_v.singlet_off_list tag_bui_l
;;

(** {6 Self Fence Tag of Tag} *)

let this_tag_off_this_tag tag_ttt =
  tag_ttt
;;

let this_tag_singlet_off_this_tag tag_ttt =
  Singlet_v.make tag_ttt
;;

let this_tag_tuple_off_this_tag tag_ttt =
  Tuple_t.Singlet (Singlet_v.make tag_ttt)
;;

let this_tag_list_off_this_tag tag_ttt =
  [tag_ttt]
;;

(** {6 Builder Tag of Container} *)

let builder_tag_off_this_container con_ttt =
  Singlet_v.element_off_singlet con_ttt
;;

let builder_tag_singlet_off_this_container con_ttt =
  con_ttt
;;

let builder_tag_tuple_off_this_container con_ttt =
  Tuple_t.Singlet con_ttt
;;

let builder_tag_list_off_this_container con_ttt =
  Singlet_v.list_off_singlet con_ttt
;;

(** {6 Builder Tag of Tag} *)

let builder_tag_off_this_tag tag_ttt =
  let con_ttt = retrieve tag_ttt in
  builder_tag_off_this_container con_ttt 
;;

let builder_tag_singlet_off_this_tag tag_ttt =
  retrieve tag_ttt
;;

let builder_tag_tuple_off_this_tag tag_ttt =
  let con_ttt = retrieve tag_ttt in
  Tuple_t.Singlet con_ttt
;;

let builder_tag_list_off_this_tag tag_ttt =
  let con_ttt = retrieve tag_ttt in
  builder_tag_list_off_this_container con_ttt 
;;

(** {6 Fence Elementary_units Tag of Container} *)

let elementary_units_tag_list_off_this_container con_ttt =
  let tag_bbb = builder_tag_off_this_container con_ttt in
  let con_bbb = Builder_container_v.retrieve tag_bbb in
  Builder_container_v.elementary_units_tag_list_off_builder_container con_bbb
;;

let elementary_units_tag_tuple_off_this_container con_ttt =
  let tag_bbb = builder_tag_off_this_container con_ttt in
  let con_bbb = Builder_container_v.retrieve tag_bbb in
  Builder_container_v.elementary_units_tag_tuple_off_builder_container con_bbb
;;

(** {6 Fence Elementary_units Tag of Tag} *)

let elementary_units_tag_list_off_this_tag tag_ttt =
  let con_ttt = retrieve tag_ttt in
  elementary_units_tag_list_off_this_container con_ttt 
;;

let elementary_units_tag_tuple_off_this_tag tag_ttt =
  let tag_ect = elementary_body_coordinate_tuple_tag_off_this_tag tag_ttt in
  let con_ect = Elementary_body_coordinate_tuple_container_v.retrieve tag_ect in
  Builder_container_v.elementary_units_tag_tuple_off_elementary_body_coordinate_tuple_container con_ect
;;

let fence_list tag_ttt =
  elementary_units_tag_list_off_this_tag tag_ttt 
;;

let fence_tuple tag_ttt =
  elementary_units_tag_tuple_off_this_tag tag_ttt 
;;
