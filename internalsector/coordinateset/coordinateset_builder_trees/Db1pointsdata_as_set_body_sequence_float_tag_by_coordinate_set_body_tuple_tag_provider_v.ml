(** {3 Db1pointsdata_as_set_body_sequence_float_tag_by_coordinate_set_body_tuple_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPAR:Db1pointsdata_as_set_body_sequence_float_tag_by_coordinate_set_body_tuple_tag_provider";
   "Needs : BPAR:Basicname_databox_by_any_sole_index_provider_v";
   "Needs : BPAR:Db1pointsdata_as_set_body_sequence_float_tag_list_by_basicname_databox_provider_v";
   "Author : François Colonna 30 mars 2017 at 17:34:50+02:00";
 ]
;;

(* Coordinate_vs_Db1points_Scheme *)
(*    Coordinate_context_databox         Db1pointsdata_context_databox                  *)
(*               |                           |                                          *)
(*               |                          ...                                         *)
(*               |                           |                                          *)
(*               |                       Db1pointsdata_set_body_record_vertex           *)
(*               |                                        "A_A"                         *)
(*               |                                       /  |  \                        *)
(*                                               keyword vertex_name  \                 *)
(*    Coordinate_set_body_tuple                  Db1pointsdata_set_body_record_vertex   *)
(*            "A_A"                 <=>                          "A_A"                  *)
(*          /   |   \                                          /   |   \                *)                         
(*    Coordinate_set_fence_               Db1pointsdata_set_fence_basic_numerical_float *)
(*       /    |    \                      Db1pointsdata_set_fence_basic_numerical_float *)
(*      f     f     f                     Db1pointsdata_set_fence_basic_numerical_float *)
(*      x     y     z                   |-                                              *)
(*      rho   theta z               <=> |-             coordinate kind                  *)
(*      rho   phi   theta               |-                                              *)

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_cbt =
  let soi_cbt = Tag_v.sole_index_off_tag tag_cbt in
  let nam_dbo = Basicname_databox_by_any_sole_index_provider_v.provide soi_cbt in
  
  let sof_cbt = Coordinate_set_body_tuple_tag_v.string_off tag_cbt in

  let tag_db1_l =
    Db1pointsdata_as_set_body_sequence_float_tag_list_by_basicname_databox_provider_v.provide
      nam_dbo
  in

  List_v.only_element_of_predicate_off_list
    (fun t -> Db1pointsdata_tag_v.string_off t = sof_cbt)
    tag_db1_l
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_without_register_v.ml *)
(* done with do_provider_without_register.sh Coordinate_basicname_sector_by_unit_provider_v.ml force on lundi 10 octobre 2016, 09:13:01 (UTC+0200) *)
