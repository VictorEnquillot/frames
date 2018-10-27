(** {3 This_container_v.}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : FFIG:This_container_v";
   "Needs : FFIG:Buldr_tag_v";
   "Needed-by : FFIG:Elementary_body_coordinate_tuple_container_v";
   "What-is-it : This_container is Uno of Buldr_tag";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming} *)

let name con_ttt =
  Uno_v.name 
    Buldr_tag_v.name
    con_ttt
;;

let string_off con_ttt =
  Uno_v.name 
    Buldr_tag_v.string_off
    con_ttt
;;

let longname con_ttt =
  Uno_v.name 
    Buldr_tag_v.longname
    con_ttt
;;

let fullname con_ttt =
  Uno_v.name 
    Buldr_tag_v.fullname
    con_ttt
;;

(** {6 Making} *)

let make tag_bbb =
  Uno_v.make tag_bbb
;;

(** {6 Retrieving} *)

let container_of_tag tag_ttt =
  let con_ttt = This_container_v.container_of_tag tag_ttt in
  Uno_v.map Buldr_container_v.container_of_tag con_ttt
;;

(** {6 Builder Tag of Container} *)

let buldr_tag_uno_off_this_container con_ttt =
  con_ttt
;;

let buldr_tag_list_off_this_container con_ttt =
  Uno_v.list_of_uno con_ttt
;;

let buldr_tag_off_this_container con_ttt =
  Uno_v.element_off_uno con_ttt
;;

(** {6 Closure Tag} *)

let elementary_units_tag_uno_off_this_container con_ttt =
  con_ttt
;;

let elementary_units_tag_off_this_container con_ttt =
  Uno_v.element_off_uno con_ttt
;;

let elementary_units_tag_list_off_this_container con_ttt =
  let tag_uni = units_tag_off_this_container con_ttt in
  [tag_uni]
;;

let elementary_units_tag_tuple_off_this_container con_ttt =
  let tag_uni_s = units_tag_uno_off_this_container con_ttt in
  Tuple_t.Uno tag_uni_s
;;


