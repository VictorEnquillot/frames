(** {3 Elementary_symbol_subtree_by_db1figure_context_database_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Elementary_symbol_subtree_by_db1figure_context_database_tag_provider_v";
   "Needs : DELE:Elementary_string_off_list_by_db1figure_body_node_aoset_numerical_values_string_off_list_translator_v";
   "Needs : BDB1:Db1figure_tag_all_list_by_db1figure_context_databox_tag_provider_v";
   "Needs : TDB1:Db1figure_context_databox_tag_v";
   "Needed-by :"; 
   "What-is-it : the Subtree of Elementary_symbol Rooted by Elementary_context_databox_figuredata_symbol";
   "What-is-it : Elementary_context_databox_figuredata sons are Elementary_body_coordinate_tuple";
   "What-is-it : Elementary_body_coordinate_tuple sons are Elementary_border_coordinate";
   "What-is-it : it is a prolongation of Figure_symbol Tree to provide Elementary Values";
   "How-is-it-done : by translating Elementary_symbols from equivalent Db1figure_symbols";
   "How-is-it-done : using String_off to get Db1figure Tag and build Elementary_symbol";
   "Abbreviation : dbo  = db1figure_context_databox";
   "Abbreviation : db1  = db1figure";
   "Abbreviation : ele  = elementary";
   "Abbreviation : ect  = elementary_body_coordinate_tuple";
   "Abbreviation : ebc  = elementary_border_coordinate";
   "Abbreviation : l    = list";
   "Abbreviation : t    = tree";
   "Abbreviation : yt   = ytree";
   "Abbreviation : st   = subtree";
   "Abbreviation : stl  = subtree list";
   "Abbreviation : stll = subtree list list";
   "Author : François Colonna 13th March 2016 redone from Subtrees Cluster Information and Cluster Vertex";
  ]
;;

(*    Elementary_context_databox_figuredata            Db1figure_context_databox            *)
(*               |                                 |                                        *)
(*               |                                ...                                       *)
(*               |                                 |                                        *)
(*    Elementary_body_coordinate_tuple_homogeneous   Db1figure_body_sequence_float          *)
(*              "A"                               <=>          "A_A"                        *)
(*          /         \                                                                     *)
(*        Elementary_border_coordinate                                                      *)
(*      x     y     z    rho   phi  theta                                                   *)
(*      |     |     |     |     |     |                                                     *)
(*    units units units units units units units units                                       *)


let elementary_as_context_databox_symbol_of_db1figure_context_databox_tag tag_dbo =
  let sof_dbo = Db1figure_context_databox_tag_v.string_off tag_dbo in
  Elementary_symbol_v.elementary_context_databox_figuredata_constructor sof_dbo
;;

(** {6 Building} *)

let build tag_dbo =
  let tag_db1_dsf_stl = 
    Db1figure_as_body_sequence_float_tag_subtree_list_by_db1figure_context_databox_tag_provider_v.provide
      tag_dbo
  in

  let sym_ele_ect_stl = List.map 
      Elementary_as_body_coordinate_tuple_symbol_subtree_from_db1figure_as_body_sequence_float_tag_subtree_translator_v.translate
      tag_db1_dsf_stl
  in

  let sym_ele_ebo = 
    elementary_as_context_databox_symbol_of_db1figure_context_databox_tag 
      tag_dbo
  in

  Tree_v.make_of_node sym_ele_ebo sym_ele_ect_stl
;;

let build_n_store tag_dbo =
  build tag_dbo 
;;

let provide_without_trace tag_dbo =
  build tag_dbo
;;

let provide_with_trace tag_dbo =
  let nam_mod = Management_v.current_module_name (documentation ()) in
  Management_v.entering_of_current_module_name nam_mod;

  let result = provide_without_trace tag_dbo in

  Management_v.exiting_of_current_module_name nam_mod;
  result
;;

let provide tag_dbo =
  if Parameters_general_provider_v.provide "trace-provide" = "true"
  then provide_with_trace tag_dbo
  else provide_without_trace tag_dbo
;;


