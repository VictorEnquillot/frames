(** {3 Camlline_uno_camltype_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_uno_camltype_formula_v";
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

let symbol_of_formula for_cuc =
  match for_cuc with
 | Camlline_uno_camltype_formula_t.Type_etc_equal _ ->
       Camlline_uno_camltype_symbol_t.Type_etc_equal

  | Camlline_uno_camltype_formula_t.Type_etc_equal_private _ ->
       Camlline_uno_camltype_symbol_t.Type_etc_equal_private

  | Camlline_uno_camltype_formula_t.Type_etc_equal_Et _ ->
       Camlline_uno_camltype_symbol_t.Type_etc_equal_Et

  | Camlline_uno_camltype_formula_t.Pipe_Etc_bof_Etc_tdot_etc _ ->
       Camlline_uno_camltype_symbol_t.Pipe_Etc_bof_Etc_tdot_etc

  | Camlline_uno_camltype_formula_t.Pipe_Es_bof_string _ ->
       Camlline_uno_camltype_symbol_t.Pipe_Es_bof_string

  | Camlline_uno_camltype_formula_t.Pipe_Esl _ ->
       Camlline_uno_camltype_symbol_t.Pipe_Esl

  | Camlline_uno_camltype_formula_t.Type_et_tag_equal_Et_symbol_tdot_et_symbol_tag _ ->
       Camlline_uno_camltype_symbol_t.Type_et_tag_equal_Et_symbol_tdot_et_symbol_tag

;;

(** {6 Naming_for_formula} *)

let name for_cuc = 
  let sym_cuc = symbol_of_formula for_cuc in
  Camlline_uno_camltype_symbol_v.name sym_cuc
;;
(* ***

let string_off for_cuc =
  let sym_cuc = symbol_of_formula for_cuc in
  Camlline_uno_camltype_symbol_v.string_off sym_cuc
;;

let longname for_cuc =
  Format.sprintf "Camlline_uno_camltype_formula_t.%s" 
    (String.capitalize (name for_cuc))

let fullname for_cuc =
  Format.sprintf "%s \"%s\"" (longname for_cuc) (string_off for_cuc)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_cuc soi_cal =
  let tag_cuc = Tag_v.make sym_cuc soi_cal in
  let dec_cuc = 
    Camlline_uno_camltype_tag_v.camlline_uno_camltype_dectup_off_camlline_uno_camltype_tag 
      tag_cuc 
  in
  let sym_ent_l = Camlline_uno_camltype_interface_v.make dec_cuc soi_cal in
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

let make sym_cuc soi_cal =
  let tag_ent_l = build_n_store sym_cuc soi_cal in

  match sym_cuc with 
  | Camlline_uno_camltype_symbol_t.Type_etc_equal ->
      Camlline_uno_camltype_formula_t.Type_etc_equal tag_ent_l
	
  | Camlline_uno_camltype_symbol_t.Type_etc_equal_private ->
      Camlline_uno_camltype_formula_t.Type_etc_equal_private tag_ent_l
	
  | Camlline_uno_camltype_symbol_t.Type_etc_equal_Et ->
      Camlline_uno_camltype_formula_t.Type_etc_equal_Et tag_ent_l
	
  | Camlline_uno_camltype_symbol_t.Pipe_Etc_bof_Etc_tdot_etc ->
      Camlline_uno_camltype_formula_t.Pipe_Etc_bof_Etc_tdot_etc tag_ent_l
	
  | Camlline_uno_camltype_symbol_t.Pipe_Es_bof_string ->
      Camlline_uno_camltype_formula_t.Pipe_Es_bof_string tag_ent_l
	
  | Camlline_uno_camltype_symbol_t.Pipe_Esl ->
      Camlline_uno_camltype_formula_t.Pipe_Esl tag_ent_l
	
  | Camlline_uno_camltype_symbol_t.Type_et_tag_equal_Et_symbol_tdot_et_symbol_tag ->
      Camlline_uno_camltype_formula_t.Type_et_tag_equal_Et_symbol_tdot_et_symbol_tag tag_ent_l
;;

(** {6 Retrieving} *)

let retrieve tag_cuc =
  let soi_gro = Tag_v.sole_index_off_tag tag_cuc in
  let sym_cuc = Tag_v.entity_off_tag tag_cuc in
  make sym_cuc soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_uno_camltype_formula for_cuc =
  match for_cuc with
  | Camlline_uno_camltype_formula_t.Type_etc_equal tag_ent_l ->
      tag_ent_l

  | Camlline_uno_camltype_formula_t.Type_etc_equal_private tag_ent_l ->
      tag_ent_l

  | Camlline_uno_camltype_formula_t.Type_etc_equal_Et tag_ent_l ->
      tag_ent_l

  | Camlline_uno_camltype_formula_t.Pipe_Etc_bof_Etc_tdot_etc tag_ent_l ->
      tag_ent_l

  | Camlline_uno_camltype_formula_t.Pipe_Es_bof_string tag_ent_l ->
      tag_ent_l

  | Camlline_uno_camltype_formula_t.Pipe_Esl tag_ent_l ->
      tag_ent_l

  | Camlline_uno_camltype_formula_t.Type_et_tag_equal_Et_symbol_tdot_et_symbol_tag tag_ent_l ->
      tag_ent_l
;;

let entity_tag_list_off_camlline_uno_camltype_tag tag_cuc =
  let for_cuc = retrieve tag_cuc in
  entity_tag_list_off_camlline_uno_camltype_formula for_cuc
;; 

(** {6 Iterating_for_formula_uno_camltype.} *)

let map f_of_tag_ent for_cuc = 
  let tag_ent_l = entity_tag_list_off_camlline_uno_camltype_formula for_cuc in
  List.map f_of_tag_ent tag_ent_l
;;

let iter f_of_tag_ent for_cuc = 
  let tag_ent_l = entity_tag_list_off_camlline_uno_camltype_formula for_cuc in
  List.iter f_of_tag_ent tag_ent_l ;;

let map2 f_of_tag_ent for_cuc_1 for_cuc_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_uno_camltype_formula for_cuc_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_uno_camltype_formula for_cuc_2 in
  List.map2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2
;;

let iter2 f_of_tag_ent for_cuc_1 for_cuc_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_uno_camltype_formula for_cuc_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_uno_camltype_formula for_cuc_2 in
  List.iter2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2 
;;

