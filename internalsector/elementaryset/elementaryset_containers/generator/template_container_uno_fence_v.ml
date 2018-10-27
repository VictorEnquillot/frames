(** {3 This_container_v.}  *)

(** {6 Documenting} *)

let documentation () = 
  [
  "Current : FMMM:This_container_v";
   "Needs : FMMM:This_tag_v";
   "Needed-by : FMMM:Elementary_coordinate_tuple_container_v";
   "What-is-it : This_container is Uno of This_tag";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming} *)

let name con_ttt =
  Uno_v.name 
    This_tag_v.name
    con_ttt
;;

let string_off con_ttt =
  Uno_v.name 
    This_tag_v.string_off
    con_ttt
;;

let longname con_ttt =
  Uno_v.name 
    This_tag_v.longname
    con_ttt
;;

let fullname con_ttt =
  Uno_v.name 
    This_tag_v.fullname
    con_ttt
;;

(** {6 Making} *)

let make tag_ttt =
  Uno_v.make tag_ttt
;;

(** {6 Building} *)

let container_of_tag tag_ttt =
  let con_ttt = This_container_v.container_of_tag tag_ttt in
  Uno_v.map This_container_v.container_of_tag con_ttt
;;

(** {6 Builder Tag of Container} *)

let this_tag_uno_off_this_container con_ttt =
  con_ttt
;;

let this_tag_list_off_this_container con_ttt =
  Uno_v.list_off_uno con_ttt
;;

let this_tag_off_this_container con_ttt =
  Uno_v.left_off_uno con_ttt
;;

(** {6 Deepfence Tag} *)

let elementary_deepfence_units_tag_uno_off_this_container con_ttt =
  con_ttt
;;

let elementary_deepfence_units_tag_off_this_container con_ttt =
  Uno_v.element_off_uno con_ttt
;;

let elementary_deepfence_units_tag_list_off_this_container con_ttt =
  let tag_uni = elementary_deepfence_units_tag_off_this_container con_ttt in
  [tag_uni]
;;

let elementary_deepfence_units_tag_tuple_off_this_container con_ttt =
  let tag_uni_s = elementary_deepfence_units_tag_uno_off_this_container con_ttt in
  Tuple_t.Uno tag_uni_s
;;


