(** {3 Db1pointsdata_set_body_sequence_float_tag_by_coordinate_set_body_tuple_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPAR:Db1pointsdata_set_body_sequence_float_tag_by_coordinate_set_body_tuple_tag_provider";
   "Needs : BPAR:Db1pointsdata_as_set_body_sequence_float_tag_by_coordinate_set_body_tuple_tag_provider_v";
   "Author : François Colonna 26 décembre 2016 at 22:36:18+01:00";
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
  let tag_db1_dsf =
    Db1pointsdata_as_set_body_sequence_float_tag_by_coordinate_set_body_tuple_tag_provider_v.provide
      tag_cbt
  in
  Db1pointsdata_set_body_sequence_float_tag_v.db1pointsdata_set_body_sequence_float_tag_off_db1pointsdata_tag
    tag_db1_dsf
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
