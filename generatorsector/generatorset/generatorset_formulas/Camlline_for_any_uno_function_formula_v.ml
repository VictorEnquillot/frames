(** {3 Camlline_for_any_uno_function_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_for_any_uno_function_formula_v";
   "Needed-by : FGNR:Camlline_uno_function_formula_v";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "Remark : It is a Stem type";
   "Improve : ";
   "Example : ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_cfa =
  match for_cfa with
  | Camlline_for_any_uno_function_formula_t.Comment_es_comment _ ->
       Camlline_for_any_uno_function_symbol_t.Comment_es_comment
  | Camlline_for_any_uno_function_formula_t.Es_any_vdot_fullname_ac_as _ ->
       Camlline_for_any_uno_function_symbol_t.Es_any_vdot_fullname_ac_as
  | Camlline_for_any_uno_function_formula_t.Es_any_vdot_longname_ac_as _ ->
       Camlline_for_any_uno_function_symbol_t.Es_any_vdot_longname_ac_as
  | Camlline_for_any_uno_function_formula_t.Es_any_vdot_make_ac_as _ ->
       Camlline_for_any_uno_function_symbol_t.Es_any_vdot_make_ac_as
  | Camlline_for_any_uno_function_formula_t.Es_any_vdot_name_ac_as _ ->
       Camlline_for_any_uno_function_symbol_t.Es_any_vdot_name_ac_as
  | Camlline_for_any_uno_function_formula_t.Es_any_vdot_string_off_ac_as _ ->
       Camlline_for_any_uno_function_symbol_t.Es_any_vdot_string_off_ac_as
  | Camlline_for_any_uno_function_formula_t.Format_sprintf_fullname_ac_as_string_off_ac_as _ ->
       Camlline_for_any_uno_function_symbol_t.Format_sprintf_fullname_ac_as_string_off_ac_as
  | Camlline_for_any_uno_function_formula_t.Format_sprintf_longname_es_tdot_string_capitalize_name_ac_as _ ->
       Camlline_for_any_uno_function_symbol_t.Format_sprintf_longname_es_tdot_string_capitalize_name_ac_as
  | Camlline_for_any_uno_function_formula_t.Left_off_doublet _ ->
       Camlline_for_any_uno_function_symbol_t.Left_off_doublet
  | Camlline_for_any_uno_function_formula_t.Left_off_triplet _ ->
       Camlline_for_any_uno_function_symbol_t.Left_off_triplet
  | Camlline_for_any_uno_function_formula_t.Let_fullname_ac_at_equal _ ->
       Camlline_for_any_uno_function_symbol_t.Let_fullname_ac_at_equal
  | Camlline_for_any_uno_function_formula_t.Let_longname_ac_at_equal _ ->
       Camlline_for_any_uno_function_symbol_t.Let_longname_ac_at_equal
  | Camlline_for_any_uno_function_formula_t.Let_string_off_ac_at_equal _ ->
       Camlline_for_any_uno_function_symbol_t.Let_string_off_ac_at_equal
  | Camlline_for_any_uno_function_formula_t.Middle_off_triplet _ ->
       Camlline_for_any_uno_function_symbol_t.Middle_off_triplet
  | Camlline_for_any_uno_function_formula_t.Pipe_datastructure_ac_as_arrow _ ->
       Camlline_for_any_uno_function_symbol_t.Pipe_datastructure_ac_as_arrow
  | Camlline_for_any_uno_function_formula_t.Right_off_doublet _ ->
       Camlline_for_any_uno_function_symbol_t.Right_off_doublet
  | Camlline_for_any_uno_function_formula_t.Right_off_triplet _ ->
       Camlline_for_any_uno_function_symbol_t.Right_off_triplet
  | Camlline_for_any_uno_function_formula_t.Double_quote_current _ ->
       Camlline_for_any_uno_function_symbol_t.Double_quote_current
  | Camlline_for_any_uno_function_formula_t.Title_category _ ->
       Camlline_for_any_uno_function_symbol_t.Title_category
  | Camlline_for_any_uno_function_formula_t.Title_functionalities _ ->
       Camlline_for_any_uno_function_symbol_t.Title_functionalities

;;

(** {6 Naming_for_formula} *)

let name for_cfa = 
  let sym_cfa = symbol_of_formula for_cfa in
  Camlline_for_any_uno_function_symbol_v.name sym_cfa
;;
(* ***

let string_off for_cfa =
  let sym_cfa = symbol_of_formula for_cfa in
  Camlline_for_any_uno_function_symbol_v.string_off sym_cfa
;;

let longname for_cfa =
  Format.sprintf "Camlline_for_any_uno_function_formula_t.%s" 
    (String.capitalize (name for_cfa))

let fullname for_cfa =
  Format.sprintf "%s \"%s\"" (longname for_cfa) (string_off for_cfa)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_cfa soi_cal =
  let tag_cfa = Tag_v.make sym_cfa soi_cal in
  let dec_cfa = 
    Camlline_for_any_uno_function_tag_v.camlline_for_any_uno_function_dectup_off_camlline_for_any_uno_function_tag 
      tag_cfa 
  in
  let sym_ent_l = Camlline_for_any_uno_function_interface_v.make dec_cfa soi_cal in
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

let make sym_cfa soi_cal =
  let tag_ent_l = build_n_store sym_cfa soi_cal in

  match sym_cfa with
  | Camlline_for_any_uno_function_symbol_t.Comment_es_comment ->
       Camlline_for_any_uno_function_formula_t.Comment_es_comment tag_ent_l

  | Camlline_for_any_uno_function_symbol_t.Es_any_vdot_fullname_ac_as ->
       Camlline_for_any_uno_function_formula_t.Es_any_vdot_fullname_ac_as tag_ent_l

  | Camlline_for_any_uno_function_symbol_t.Es_any_vdot_longname_ac_as ->
       Camlline_for_any_uno_function_formula_t.Es_any_vdot_longname_ac_as tag_ent_l

  | Camlline_for_any_uno_function_symbol_t.Es_any_vdot_make_ac_as ->
       Camlline_for_any_uno_function_formula_t.Es_any_vdot_make_ac_as tag_ent_l

  | Camlline_for_any_uno_function_symbol_t.Es_any_vdot_name_ac_as ->
       Camlline_for_any_uno_function_formula_t.Es_any_vdot_name_ac_as tag_ent_l

  | Camlline_for_any_uno_function_symbol_t.Es_any_vdot_string_off_ac_as ->
       Camlline_for_any_uno_function_formula_t.Es_any_vdot_string_off_ac_as tag_ent_l

  | Camlline_for_any_uno_function_symbol_t.Format_sprintf_fullname_ac_as_string_off_ac_as ->
       Camlline_for_any_uno_function_formula_t.Format_sprintf_fullname_ac_as_string_off_ac_as tag_ent_l

  | Camlline_for_any_uno_function_symbol_t.Format_sprintf_longname_es_tdot_string_capitalize_name_ac_as ->
       Camlline_for_any_uno_function_formula_t.Format_sprintf_longname_es_tdot_string_capitalize_name_ac_as tag_ent_l

  | Camlline_for_any_uno_function_symbol_t.Left_off_doublet ->
       Camlline_for_any_uno_function_formula_t.Left_off_doublet tag_ent_l

  | Camlline_for_any_uno_function_symbol_t.Left_off_triplet ->
       Camlline_for_any_uno_function_formula_t.Left_off_triplet tag_ent_l

  | Camlline_for_any_uno_function_symbol_t.Let_fullname_ac_at_equal ->
       Camlline_for_any_uno_function_formula_t.Let_fullname_ac_at_equal tag_ent_l

  | Camlline_for_any_uno_function_symbol_t.Let_longname_ac_at_equal ->
       Camlline_for_any_uno_function_formula_t.Let_longname_ac_at_equal tag_ent_l

  | Camlline_for_any_uno_function_symbol_t.Let_string_off_ac_at_equal ->
       Camlline_for_any_uno_function_formula_t.Let_string_off_ac_at_equal tag_ent_l

  | Camlline_for_any_uno_function_symbol_t.Middle_off_triplet ->
       Camlline_for_any_uno_function_formula_t.Middle_off_triplet tag_ent_l

  | Camlline_for_any_uno_function_symbol_t.Pipe_datastructure_ac_as_arrow ->
       Camlline_for_any_uno_function_formula_t.Pipe_datastructure_ac_as_arrow tag_ent_l

  | Camlline_for_any_uno_function_symbol_t.Right_off_doublet ->
       Camlline_for_any_uno_function_formula_t.Right_off_doublet tag_ent_l

  | Camlline_for_any_uno_function_symbol_t.Right_off_triplet ->
       Camlline_for_any_uno_function_formula_t.Right_off_triplet tag_ent_l

  | Camlline_for_any_uno_function_symbol_t.Double_quote_current ->
       Camlline_for_any_uno_function_formula_t.Double_quote_current tag_ent_l

  | Camlline_for_any_uno_function_symbol_t.Title_category ->
       Camlline_for_any_uno_function_formula_t.Title_category tag_ent_l

  | Camlline_for_any_uno_function_symbol_t.Title_functionalities ->
       Camlline_for_any_uno_function_formula_t.Title_functionalities tag_ent_l
;;

(** {6 Retrieving} *)

let retrieve tag_cfa =
  let soi_gro = Tag_v.sole_index_off_tag tag_cfa in
  let sym_cfa = Tag_v.entity_off_tag tag_cfa in
  make sym_cfa soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_for_any_uno_function_formula for_cfa =
  match for_cfa with
  | Camlline_for_any_uno_function_formula_t.Comment_es_comment tag_ent_l ->
       tag_ent_l
  | Camlline_for_any_uno_function_formula_t.Es_any_vdot_fullname_ac_as tag_ent_l ->
       tag_ent_l
  | Camlline_for_any_uno_function_formula_t.Es_any_vdot_longname_ac_as tag_ent_l ->
       tag_ent_l
  | Camlline_for_any_uno_function_formula_t.Es_any_vdot_make_ac_as tag_ent_l ->
       tag_ent_l
  | Camlline_for_any_uno_function_formula_t.Es_any_vdot_name_ac_as tag_ent_l ->
       tag_ent_l
  | Camlline_for_any_uno_function_formula_t.Es_any_vdot_string_off_ac_as tag_ent_l ->
       tag_ent_l
  | Camlline_for_any_uno_function_formula_t.Format_sprintf_fullname_ac_as_string_off_ac_as tag_ent_l ->
       tag_ent_l
  | Camlline_for_any_uno_function_formula_t.Format_sprintf_longname_es_tdot_string_capitalize_name_ac_as tag_ent_l ->
       tag_ent_l
  | Camlline_for_any_uno_function_formula_t.Left_off_doublet tag_ent_l ->
       tag_ent_l
  | Camlline_for_any_uno_function_formula_t.Left_off_triplet tag_ent_l ->
       tag_ent_l
  | Camlline_for_any_uno_function_formula_t.Let_fullname_ac_at_equal tag_ent_l ->
       tag_ent_l
  | Camlline_for_any_uno_function_formula_t.Let_longname_ac_at_equal tag_ent_l ->
       tag_ent_l
  | Camlline_for_any_uno_function_formula_t.Let_string_off_ac_at_equal tag_ent_l ->
       tag_ent_l
  | Camlline_for_any_uno_function_formula_t.Middle_off_triplet tag_ent_l ->
       tag_ent_l
  | Camlline_for_any_uno_function_formula_t.Pipe_datastructure_ac_as_arrow tag_ent_l ->
       tag_ent_l
  | Camlline_for_any_uno_function_formula_t.Right_off_doublet tag_ent_l ->
       tag_ent_l
  | Camlline_for_any_uno_function_formula_t.Right_off_triplet tag_ent_l ->
       tag_ent_l
  | Camlline_for_any_uno_function_formula_t.Double_quote_current tag_ent_l ->
       tag_ent_l
  | Camlline_for_any_uno_function_formula_t.Title_category tag_ent_l ->
       tag_ent_l
  | Camlline_for_any_uno_function_formula_t.Title_functionalities tag_ent_l ->
       tag_ent_l
;;

let entity_tag_list_off_camlline_for_any_uno_function_tag tag_cfa =
  let for_cfa = retrieve tag_cfa in
  entity_tag_list_off_camlline_for_any_uno_function_formula for_cfa
;; 

(** {6 Iterating_for_formula_uno_function_any.} *)

let map f_of_tag_ent for_cfa = 
  let tag_ent_l = entity_tag_list_off_camlline_for_any_uno_function_formula for_cfa in
  List.map f_of_tag_ent tag_ent_l
;;

let iter f_of_tag_ent for_cfa = 
  let tag_ent_l = entity_tag_list_off_camlline_for_any_uno_function_formula for_cfa in
  List.iter f_of_tag_ent tag_ent_l ;;

let map2 f_of_tag_ent for_cfa_1 for_cfa_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_any_uno_function_formula for_cfa_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_any_uno_function_formula for_cfa_2 in
  List.map2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2
;;

let iter2 f_of_tag_ent for_cfa_1 for_cfa_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_any_uno_function_formula for_cfa_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_any_uno_function_formula for_cfa_2 in
  List.iter2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2 
;;
