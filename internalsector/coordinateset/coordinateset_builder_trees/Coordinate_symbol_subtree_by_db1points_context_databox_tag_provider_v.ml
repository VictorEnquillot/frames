(** {3 Coordinate_symbol_subtree_by_db1points_context_databox_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BCOO:Coordinate_symbol_subtree_by_db1points_context_databox_tag_provider_v";
   "Needs : BCOO:Coordinate_as_set_body_tuple_symbol_subtree_list_by_db1pointsdata_context_databox_tag_provider_v";
   "Needed-by :"; 
   "What-is-it : the Subtree of Coordinate_symbol Rooted by Coordinate_context_databox";
   "What-is-it : Coordinate_context_databox sons are Coordinate_body_coordinate_tuple";
   "What-is-it : Coordinate_body_coordinate_tuple sons are Coordinate_set_fence_coordinate";
   "What-is-it : it does NOT provide Elementary Values";
   "How-is-it-done : by translating Coordinate_symbols from equivalent Db1pointsdata_symbols";
   "How-is-it-done : using String_off to get Db1pointsdata Tag and build Coordinate_symbol";
   "Abbreviation : dbo  = db1pointsdata_context_databox";
   "Abbreviation : db1  = db1pointsdata";
   "Abbreviation : ele  = elementary";
   "Abbreviation : ect  = coordinate_body_tuple";
   "Abbreviation : l    = list";
   "Abbreviation : t    = tree";
   "Abbreviation : yt   = ytree";
   "Abbreviation : st   = subtree";
   "Abbreviation : stl  = subtree list";
   "Abbreviation : stll = subtree list list";
   "Author : François Colonna 03 avril 2017 at 09:10:34+02:00";
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

let build tag_dcd =

  let nam_dbo = Db1pointsdata_context_databox_tag_v.string_off tag_dcd in
  let sym_coo_cbo = Coordinate_symbol_v.coordinate_context_databox_constructor nam_dbo in

  let sym_coo_cbt_stl =
    Coordinate_as_set_body_tuple_symbol_subtree_list_by_db1pointsdata_context_databox_tag_provider_v.provide
      tag_dcd
  in

  Tree_v.make_of_node sym_coo_cbo sym_coo_cbt_stl
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
(* done with do_provider_without_register.sh Coordinate_symbol_subtree_by_db1points_context_databox_tag_provider_v.ml force on lundi 10 octobre 2016, 09:13:03 (UTC+0200) *)
