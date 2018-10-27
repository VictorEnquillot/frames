(** {3 Camlline_for_symbol_duo_son_top_notleaf_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_for_symbol_duo_son_top_notleaf_formula_v";
   "Needed-by : FGNR:Camlline_formula_v";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "Remark : It is a Stem type";
   "Improve : ";
   "Example : ";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_cdf =
  match for_cdf with
  | Camlline_for_symbol_duo_son_top_notleaf_formula_t.Et_symbol_tdot_es_symbol _ ->
      Camlline_for_symbol_duo_son_top_notleaf_symbol_t.Et_symbol_tdot_es_symbol

  | Camlline_for_symbol_duo_son_top_notleaf_formula_t.Let_es_equal_et_symbol_of_es_symbol_es_symbol_vdot_es _ ->
      Camlline_for_symbol_duo_son_top_notleaf_symbol_t.Let_es_equal_et_symbol_of_es_symbol_es_symbol_vdot_es

  | Camlline_for_symbol_duo_son_top_notleaf_formula_t.Let_es_symbol_arg_equal_et_symbol_tdot_es_symbol_arg _ ->
      Camlline_for_symbol_duo_son_top_notleaf_symbol_t.Let_es_symbol_arg_equal_et_symbol_tdot_es_symbol_arg

  | Camlline_for_symbol_duo_son_top_notleaf_formula_t.Pipe_et_symbol_tdot_es_symbol_underscore_arrow_string _ ->
      Camlline_for_symbol_duo_son_top_notleaf_symbol_t.Pipe_et_symbol_tdot_es_symbol_underscore_arrow_string

  | Camlline_for_symbol_duo_son_top_notleaf_formula_t.Pipe_et_symbol_tdot_es_symbol_sym_as_arrow _ ->
      Camlline_for_symbol_duo_son_top_notleaf_symbol_t.Pipe_et_symbol_tdot_es_symbol_sym_as_arrow


  | Camlline_for_symbol_duo_son_top_notleaf_formula_t.Et_symbol_of_es_symbol_sym_as _ ->
      Camlline_for_symbol_duo_son_top_notleaf_symbol_t.Et_symbol_of_es_symbol_sym_as


  | Camlline_for_symbol_duo_son_top_notleaf_formula_t.Et_symbol_tdot_es_symbol_sym_as _ ->
      Camlline_for_symbol_duo_son_top_notleaf_symbol_t.Et_symbol_tdot_es_symbol_sym_as


  | Camlline_for_symbol_duo_son_top_notleaf_formula_t.Try_et_symbol_of_es_symbol _ ->
      Camlline_for_symbol_duo_son_top_notleaf_symbol_t.Try_et_symbol_of_es_symbol

;;

(** {6 Naming_for_formula} *)

let name for_cdf = 
  let sym_cdf = symbol_of_formula for_cdf in
  Camlline_for_symbol_duo_son_top_notleaf_symbol_v.name sym_cdf
;;
(* ***

let string_off for_cdf =
  let sym_cdf = symbol_of_formula for_cdf in
  Camlline_for_symbol_duo_son_top_notleaf_symbol_v.string_off sym_cdf
;;

let longname for_cdf =
  Format.sprintf "Camlline_for_symbol_duo_son_top_notleaf_formula_t.%s" 
    (String.capitalize (name for_cdf))

let fullname for_cdf =
  Format.sprintf "%s \"%s\"" (longname for_cdf) (string_off for_cdf)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_cdf soi_cal =
  let tag_cdf = Tag_v.make sym_cdf soi_cal in
  let dec_cdf = 
    Camlline_for_symbol_duo_son_top_notleaf_tag_v.camlline_for_symbol_duo_son_top_notleaf_dectup_off_camlline_for_symbol_duo_son_top_notleaf_tag 
      tag_cdf 
  in

(* BT builder from Group index *)

  let sym_ent_tos_l = 
    Tools_ignr_v.entity_topson_notleaf_symbol_list_of_dectup 
      dec_cdf 
  in
  let idx_gro = Sole_index_v.father_index_off_sole_index soi_cal in
  let sym_ent_son = 
    try List.nth sym_ent_tos_l (idx_gro-1) 
    with | Failure "nth" ->
      Error_messages_v.print_fatal_error nam_cod "make"
        "Number of Notleaf Entity_symbol > 0"
        (Format.sprintf "None of them for Camlline >%s< when idx_gro = %i" 
           (Camlline_for_symbol_duo_son_top_notleaf_symbol_v.name sym_cdf) idx_gro
        )
        "Check"
  in
  let sym_ent_top = Decuplet_v.right_third_off_decuplet dec_cdf in
  let sym_ent_l = 
    Camlline_for_symbol_duo_son_top_notleaf_interface_v.make 
      sym_cdf 
      sym_ent_son 
      sym_ent_top
  in
  let soi_ent_l =               (* Sole_index_datastructure_of_datastructure_of_sole_index *)
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
      1 (List.length sym_ent_l)
      soi_cal
  in

  let gss_of_sym = Generatorset_symbol_v.generatorset_symbol_of_entity_symbol in
  Tools_fgnr_v.store_builder_gss_datastructure gss_of_sym sym_ent_l soi_ent_l;
  
  List.map2 Tag_v.make sym_ent_l soi_ent_l
;;

(** {6 Making_for_formula} *)

let make sym_cdf soi_cal =
  let tag_ent_l = build_n_store sym_cdf soi_cal in

  match sym_cdf with 
  | Camlline_for_symbol_duo_son_top_notleaf_symbol_t.Et_symbol_tdot_es_symbol ->
      Camlline_for_symbol_duo_son_top_notleaf_formula_t.Et_symbol_tdot_es_symbol tag_ent_l
	
  | Camlline_for_symbol_duo_son_top_notleaf_symbol_t.Let_es_equal_et_symbol_of_es_symbol_es_symbol_vdot_es ->
      Camlline_for_symbol_duo_son_top_notleaf_formula_t.Let_es_equal_et_symbol_of_es_symbol_es_symbol_vdot_es tag_ent_l
	
  | Camlline_for_symbol_duo_son_top_notleaf_symbol_t.Let_es_symbol_arg_equal_et_symbol_tdot_es_symbol_arg ->
      Camlline_for_symbol_duo_son_top_notleaf_formula_t.Let_es_symbol_arg_equal_et_symbol_tdot_es_symbol_arg tag_ent_l
	
  | Camlline_for_symbol_duo_son_top_notleaf_symbol_t.Pipe_et_symbol_tdot_es_symbol_underscore_arrow_string ->
      Camlline_for_symbol_duo_son_top_notleaf_formula_t.Pipe_et_symbol_tdot_es_symbol_underscore_arrow_string tag_ent_l
	
  | Camlline_for_symbol_duo_son_top_notleaf_symbol_t.Pipe_et_symbol_tdot_es_symbol_sym_as_arrow ->
      Camlline_for_symbol_duo_son_top_notleaf_formula_t.Pipe_et_symbol_tdot_es_symbol_sym_as_arrow tag_ent_l

  | Camlline_for_symbol_duo_son_top_notleaf_symbol_t.Et_symbol_of_es_symbol_sym_as ->
      Camlline_for_symbol_duo_son_top_notleaf_formula_t.Et_symbol_of_es_symbol_sym_as tag_ent_l

  | Camlline_for_symbol_duo_son_top_notleaf_symbol_t.Et_symbol_tdot_es_symbol_sym_as ->
      Camlline_for_symbol_duo_son_top_notleaf_formula_t.Et_symbol_tdot_es_symbol_sym_as tag_ent_l

  | Camlline_for_symbol_duo_son_top_notleaf_symbol_t.Try_et_symbol_of_es_symbol ->
      Camlline_for_symbol_duo_son_top_notleaf_formula_t.Try_et_symbol_of_es_symbol tag_ent_l
;;

(** {6 Retrieving} *)

let retrieve tag_cdf =
  let soi_gro = Tag_v.sole_index_off_tag tag_cdf in
  let sym_cdf = Tag_v.entity_off_tag tag_cdf in
  make sym_cdf soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_for_symbol_duo_son_top_notleaf_formula for_cdf =
  match for_cdf with
  | Camlline_for_symbol_duo_son_top_notleaf_formula_t.Et_symbol_tdot_es_symbol tag_ent_l -> tag_ent_l
  | Camlline_for_symbol_duo_son_top_notleaf_formula_t.Let_es_equal_et_symbol_of_es_symbol_es_symbol_vdot_es tag_ent_l -> tag_ent_l
  | Camlline_for_symbol_duo_son_top_notleaf_formula_t.Let_es_symbol_arg_equal_et_symbol_tdot_es_symbol_arg tag_ent_l -> tag_ent_l
  | Camlline_for_symbol_duo_son_top_notleaf_formula_t.Pipe_et_symbol_tdot_es_symbol_underscore_arrow_string tag_ent_l -> tag_ent_l
  | Camlline_for_symbol_duo_son_top_notleaf_formula_t.Pipe_et_symbol_tdot_es_symbol_sym_as_arrow tag_ent_l -> tag_ent_l
  | Camlline_for_symbol_duo_son_top_notleaf_formula_t.Et_symbol_of_es_symbol_sym_as tag_ent_l -> tag_ent_l
  | Camlline_for_symbol_duo_son_top_notleaf_formula_t.Et_symbol_tdot_es_symbol_sym_as tag_ent_l -> tag_ent_l
  | Camlline_for_symbol_duo_son_top_notleaf_formula_t.Try_et_symbol_of_es_symbol tag_ent_l -> tag_ent_l
;;

let entity_tag_list_off_camlline_for_symbol_duo_son_top_notleaf_tag tag_cdf =
  let for_cdf = retrieve tag_cdf in
  entity_tag_list_off_camlline_for_symbol_duo_son_top_notleaf_formula for_cdf
;; 

(** {6 Iterating_for_formula_for_symbol_duo_son_top_notleaf.} *)

let map f_of_tag_ent for_cdf = 
  let tag_ent_l = entity_tag_list_off_camlline_for_symbol_duo_son_top_notleaf_formula for_cdf in
  List.map f_of_tag_ent tag_ent_l
;;

let iter f_of_tag_ent for_cdf = 
  let tag_ent_l = entity_tag_list_off_camlline_for_symbol_duo_son_top_notleaf_formula for_cdf in
  List.iter f_of_tag_ent tag_ent_l ;;

let map2 f_of_tag_ent for_cdf_1 for_cdf_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_symbol_duo_son_top_notleaf_formula for_cdf_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_symbol_duo_son_top_notleaf_formula for_cdf_2 in
  List.map2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2
;;

let iter2 f_of_tag_ent for_cdf_1 for_cdf_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_symbol_duo_son_top_notleaf_formula for_cdf_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_symbol_duo_son_top_notleaf_formula for_cdf_2 in
  List.iter2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2 
;;

