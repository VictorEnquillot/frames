(** {3 Elementary_body_coordinate_tuple_kind_container_v} *)

(** {6 Documenting_for_container_v} *)

let documentation () = 
  [
   "Current : FFIG:Elementary_body_coordinate_tuple_kind_container_v";
   "Needs : DELE:Son_elementary_tag_list_by_father_elementary_tag_provider_v";
   "Needed-by : ";
   "What-is-it : a Trio Elementary_coordinate_kind_tag";
   "How-is-it-done : from Son Tag List of Elementary_body_coordinate_tuple_tag";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming} *)

let name con_xxx =
  Trio_v.name 
    Elementary_coordinate_kind_tag_v.name
    con_xxx
;;

let string_off con_xxx =
  Trio_v.name 
    Elementary_coordinate_kind_tag_v.string_off
    con_xxx
;;

let longname con_xxx =
  Trio_v.name 
    Elementary_coordinate_kind_tag_v.longname
    con_xxx
;;

let fullname con_xxx =
  Trio_v.name 
    Elementary_coordinate_kind_tag_v.fullname
    con_xxx
;;

(** {6 Filling} *)

let fill tag_ccy_rho tag_ccy_phi tag_ccy_zed =
  Trio_v.make tag_ccy_rho tag_ccy_phi tag_ccy_zed 
;;

(** {6 Building} *)

let build tag_xxx =
   let tag_ele_xxx = Tag_v.map_entity (* Coerce Up *)
       Elementary_symbol_v.elementary_symbol_of_coordinate_tuple_kind_symbol
       tag_xxx
   in

  let tag_ele_son_l = Son_elementary_tag_list_by_father_elementary_tag_provider_v.provide tag_ele_xxx in

  List.map 
    (Tag_v.map_entity (* coerce down *)
       Elementary_symbol_v.elementary_coordinate_kind_symbol_off_elementary_symbol)
    tag_ele_son_l
;;

(** {6 Retrieving} *)

let container_of_tag tag_xxx =
  let tag_ccy_l = build tag_xxx in
  Trio_v.trio_off_list tag_ccy_l
;;

(** {6 Builder_tag} *)

let coordinate_kind_rho_tag_off_elementary_body_coordinate_tuple_kind_container con_xxx =
  Trio_v.left_off_trio con_xxx
;;

let coordinate_kind_phi_tag_off_elementary_body_coordinate_tuple_kind_container con_xxx =
  Trio_v.middle_off_trio con_xxx  
;;

let coordinate_kind_zed_tag_off_elementary_body_coordinate_tuple_kind_container con_xxx =
  Trio_v.right_off_trio con_xxx  
;;

let coordinate_kind_rho_tag_off_elementary_body_coordinate_tuple_kind_tag tag_xxx =
  let con_xxx = container_of_tag tag_xxx in
  coordinate_kind_rho_tag_off_elementary_body_coordinate_tuple_kind_container con_xxx 
;;

let coordinate_kind_phi_tag_off_elementary_body_coordinate_tuple_kind_tag tag_xxx =
  let con_xxx = container_of_tag tag_xxx in
  coordinate_kind_phi_tag_off_elementary_body_coordinate_tuple_kind_container con_xxx 
;;

let coordinate_kind_zed_tag_off_elementary_body_coordinate_tuple_kind_tag tag_xxx =
  let con_xxx = container_of_tag tag_xxx in
  coordinate_kind_zed_tag_off_elementary_body_coordinate_tuple_kind_container con_xxx 
;;
