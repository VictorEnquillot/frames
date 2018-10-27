(** {3 Camlline_for_any_duo_son_top_bare_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_for_any_duo_son_top_bare_formula_v";
   "Needed-by : FGNR:Camlline_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_ctb =
  match for_ctb with
  | Camlline_for_any_duo_son_top_bare_formula_t.Et_any_tdot_es _ ->
     Camlline_for_any_duo_son_top_bare_symbol_t.Et_any_tdot_es
  | Camlline_for_any_duo_son_top_bare_formula_t.Pipe_et_any_tdot_es _ ->
     Camlline_for_any_duo_son_top_bare_symbol_t.Pipe_et_any_tdot_es
  | Camlline_for_any_duo_son_top_bare_formula_t.Pipe_et_any_tdot_es_arrow_true _ ->
     Camlline_for_any_duo_son_top_bare_symbol_t.Pipe_et_any_tdot_es_arrow_true

;;

(** {6 Naming_for_formula} *)

let name for_ctb = 
  let sym_ctb = symbol_of_formula for_ctb in
  Camlline_for_any_duo_son_top_bare_symbol_v.name sym_ctb
;;
(* ***

let string_off for_ctb =
  let sym_ctb = symbol_of_formula for_ctb in
  Camlline_for_any_duo_son_top_bare_symbol_v.string_off sym_ctb
;;

let longname for_ctb =
  Format.sprintf "Camlline_for_any_duo_son_top_bare_formula_t.%s" 
    (String.capitalize (name for_ctb))

let fullname for_ctb =
  Format.sprintf "%s \"%s\"" (longname for_ctb) (string_off for_ctb)
;;
*** *)

(** {6 Building_and_storing} *)

(** {6 Building_and_storing} *)

let build_n_store sym_ctn soi_cal =
  let tag_ctn = Tag_v.make sym_ctn soi_cal in
  let dec_ctn = 
    Camlline_for_any_duo_son_top_bare_tag_v.camlline_for_any_duo_son_top_bare_dectup_off_camlline_for_any_duo_son_top_bare_tag 
      tag_ctn 
  in

  let sym_ent_son = 
    Tools_fgnr_v.entity_topson_symbol_of_camlline_dectup_of_sole_index 
      dec_ctn 
      soi_cal
  in 

  let sym_ent_top = Decuplet_v.right_third_off_decuplet dec_ctn in

  let sym_ent_l = 
    Camlline_for_any_duo_son_top_bare_interface_v.make 
      sym_ctn 
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

let make sym_ctb soi_cal =
  let tag_ent_l = build_n_store sym_ctb soi_cal in

  match sym_ctb with 
  | Camlline_for_any_duo_son_top_bare_symbol_t.Et_any_tdot_es ->
     Camlline_for_any_duo_son_top_bare_formula_t.Et_any_tdot_es tag_ent_l
  | Camlline_for_any_duo_son_top_bare_symbol_t.Pipe_et_any_tdot_es ->
     Camlline_for_any_duo_son_top_bare_formula_t.Pipe_et_any_tdot_es tag_ent_l
  | Camlline_for_any_duo_son_top_bare_symbol_t.Pipe_et_any_tdot_es_arrow_true ->
     Camlline_for_any_duo_son_top_bare_formula_t.Pipe_et_any_tdot_es_arrow_true tag_ent_l

;;

(** {6 Retrieving} *)

let retrieve tag_ctb =
  let soi_gro = Tag_v.sole_index_off_tag tag_ctb in
  let sym_ctb = Tag_v.entity_off_tag tag_ctb in
  make sym_ctb soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_for_any_duo_son_top_bare_formula for_ctb =
  match for_ctb with
  | Camlline_for_any_duo_son_top_bare_formula_t.Et_any_tdot_es tag_ent_l -> tag_ent_l
  | Camlline_for_any_duo_son_top_bare_formula_t.Pipe_et_any_tdot_es tag_ent_l -> tag_ent_l
  | Camlline_for_any_duo_son_top_bare_formula_t.Pipe_et_any_tdot_es_arrow_true tag_ent_l -> tag_ent_l

;;

let entity_tag_list_off_camlline_for_any_duo_son_top_bare_tag tag_ctb =
  let for_ctb = retrieve tag_ctb in
  entity_tag_list_off_camlline_for_any_duo_son_top_bare_formula for_ctb
;; 

(** {6 Iterating_for_formula_for_any_duo_son_top_bare.} *)

let map f_of_tag_ent for_ctb = 
  let tag_ent_l = entity_tag_list_off_camlline_for_any_duo_son_top_bare_formula for_ctb in
  List.map f_of_tag_ent tag_ent_l
;;

let iter f_of_tag_ent for_ctb = 
  let tag_ent_l = entity_tag_list_off_camlline_for_any_duo_son_top_bare_formula for_ctb in
  List.iter f_of_tag_ent tag_ent_l ;;

let map2 f_of_tag_ent for_ctb_1 for_ctb_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_any_duo_son_top_bare_formula for_ctb_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_any_duo_son_top_bare_formula for_ctb_2 in
  List.map2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2
;;

let iter2 f_of_tag_ent for_ctb_1 for_ctb_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_any_duo_son_top_bare_formula for_ctb_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_any_duo_son_top_bare_formula for_ctb_2 in
  List.iter2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2 
;;

