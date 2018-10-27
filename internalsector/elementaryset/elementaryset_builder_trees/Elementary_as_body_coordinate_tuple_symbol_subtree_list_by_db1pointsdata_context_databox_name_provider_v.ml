(** {3 Elementary_as_body_coordinate_tuple_symbol_subtree_list_by_db1pointsdata_context_databox_name_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BELE:Elementary_as_body_coordinate_tuple_symbol_subtree_list_by_db1pointsdata_context_databox_name_provider_v";
   "Needs : BELE:Db1pointsdata_as_set_body_name_vertex_symbol_list_by_databox_name_provider_v";
   "Needs : BELE:	Elementary_as_body_coordinate_tuple_symbol_subtree_by_vertex_name_n_databox_name_provider_v";
   "Needed-by :"; 
   "What-is-it : the Subtree of Elementary_symbol Rooted by Elementary_context_databox_figuredata_symbol";
   "What-is-it : Elementary_context_databox_figuredata sons are Elementary_body_coordinate_tuple";
   "What-is-it : Elementary_body_coordinate_tuple sons are Elementary_border_coordinate";
   "What-is-it : it is a prolongation of Figure_symbol Tree to provide Elementary Values";
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
   "Author : François Colonna 30 septembre 2016 at 15:38:44+02:00";
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

  let sym_db1_dnv_l = 
    Db1pointsdata_as_set_body_name_vertex_symbol_list_by_databox_name_provider_v.provide 
      nam_dbo
  in
  let nam_ver_l = List.map Db1pointsdata_symbol_v.string_off sym_db1_dnv_l in

  List.map
      (fun n -> 
	Elementary_as_body_coordinate_tuple_symbol_subtree_by_vertex_name_n_databox_name_provider_v.provide
	  (n, nam_dbo)
      )
      nam_ver_l
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
(* done with do_provider_without_register.sh Elementary_as_body_coordinate_tuple_symbol_subtree_list_by_db1pointsdata_context_databox_name_provider_v.ml force on lundi 10 octobre 2016, 09:13:00 (UTC+0200) *)
