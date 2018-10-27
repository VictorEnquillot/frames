(** {3 Elementary_symbol_subtree_by_db1pointsdata_context_databox_name_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BELE:Elementary_symbol_subtree_by_db1pointsdata_context_databox_name_provider_v";
   "Needs : BELE:Elementary_as_body_coordinate_tuple_symbol_subtree_list_by_db1pointsdata_context_databox_name_provider_v";
   "Needed-by :"; 
   "What-is-it : the Subtree of Elementary_symbol Rooted by Elementary_context_databox";
   "What-is-it : Elementary_context_databox sons are Elementary_body_coordinate_tuple";
   "What-is-it : Elementary_body_coordinate_tuple sons are Elementary_fence_coordinate";
   "What-is-it : it does NOT provide Elementary Values";
   "How-is-it-done : by translating Elementary_symbols from equivalent Db1pointsdata_symbols";
   "How-is-it-done : using String_off to get Db1pointsdata Tag and build Elementary_symbol";
   "Abbreviation : dbo  = db1pointsdata_context_databox";
   "Abbreviation : db1  = db1pointsdata";
   "Abbreviation : ele  = elementary";
   "Abbreviation : ect  = elementary_body_coordinate_tuple";
   "Abbreviation : l    = list";
   "Abbreviation : t    = tree";
   "Abbreviation : yt   = ytree";
   "Abbreviation : st   = subtree";
   "Abbreviation : stl  = subtree list";
   "Abbreviation : stll = subtree list list";
   "Author : François Colonna 13th March 2016 redone from Subtrees Cluster Information and Cluster Vertex";
   "Author : François Colonna 04 octobre 2016 at 08:55:33+02:00";
  ]
;;

(*    Elementary_context_databox                       Db1pointsdata_context_databox        *)
(*               |                                 |                                        *)
(*               |                                ...                                       *)
(*               |                                 |                                        *)
(*    Elementary_body_coordinate_tuple                 Db1pointsdata_set_body_record_vertex     *)
(*              "A_A"                             <=>          "A_A"                        *)
(*          /         \                                       /  |  \                       *)
(*    Elementary_border_coordinate                     keyword name sequence_float          *)
(*       /   |    \                                                      |                  *)
(*      x    y     z                                                     |                  *)
(*      rho  theta z                              <=>               float tuple             *)
(*      rho  phi   theta                                            coordinate kind         *)

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build nam_dbo =

  let sym_ele_ect_stl =
    Elementary_as_body_coordinate_tuple_symbol_subtree_list_by_db1pointsdata_context_databox_name_provider_v.provide
      nam_dbo
  in
  let sym_ele_ebo = Elementary_symbol_v.elementary_context_databox_constructor nam_dbo in

  Tree_v.make_of_node sym_ele_ebo sym_ele_ect_stl
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
(* done with do_provider_without_register.sh Elementary_symbol_subtree_by_db1pointsdata_context_databox_name_provider_v.ml force on lundi 10 octobre 2016, 09:13:03 (UTC+0200) *)
