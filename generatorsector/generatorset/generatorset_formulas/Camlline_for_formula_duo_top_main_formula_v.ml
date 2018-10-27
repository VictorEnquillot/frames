(** {3 Camlline_for_formula_duo_top_main_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_for_formula_duo_top_main_formula_v";
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

let symbol_of_formula for_ctm =
  match for_ctm with
  | Camlline_for_formula_duo_top_main_formula_t.Let_sym_am_equal_em_symbol_vdot_em_symbol_of_et_symbol_sym_at_in _ ->
     Camlline_for_formula_duo_top_main_symbol_t.Let_sym_am_equal_em_symbol_vdot_em_symbol_of_et_symbol_sym_at_in

;;

(** {6 Naming_for_formula} *)

let name for_ctm = 
  let sym_ctm = symbol_of_formula for_ctm in
  Camlline_for_formula_duo_top_main_symbol_v.name sym_ctm
;;
(* ***

let string_off for_ctm =
  let sym_ctm = symbol_of_formula for_ctm in
  Camlline_for_formula_duo_top_main_symbol_v.string_off sym_ctm
;;

let longname for_ctm =
  Format.sprintf "Camlline_for_formula_duo_top_main_formula_t.%s" 
    (String.capitalize (name for_ctm))

let fullname for_ctm =
  Format.sprintf "%s \"%s\"" (longname for_ctm) (string_off for_ctm)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_ctm soi_cal =
  let tag_ctm = Tag_v.make sym_ctm soi_cal in
  let dec_ctm = 
    Camlline_for_formula_duo_top_main_tag_v.camlline_for_formula_duo_top_main_dectup_off_camlline_for_formula_duo_top_main_tag 
      tag_ctm 
  in
(****
  let idx_gro = Sole_index_v.father_index_off_sole_index soi_cal in
  let sym_ent_tos_l = Tools_ignr_v.entity_topson_symbol_list_of_dectup dec_ctm in
  let sym_ent_cur = 
    try List.nth sym_ent_tos_l (idx_gro-1) 
    with | Failure "nth" ->
      Error_messages_v.print_fatal_error nam_cod "make"
	"Number of Notleaf Entity_symbol > 0"
	(Format.sprintf "None of them for Camlline >%s< when idx_gro = %i" 
	   (Camlline_for_formula_duo_top_main_symbol_v.name sym_ctm) idx_gro
	)
	"Check"
  in
***)

(* BT builders *)

  let sym_ent_l = 
    Camlline_for_formula_duo_top_main_interface_v.make_of_tuple dec_ctm
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

let make sym_ctm soi_cal =
  let tag_ent_l = build_n_store sym_ctm soi_cal in

  match sym_ctm with 
  | Camlline_for_formula_duo_top_main_symbol_t.Let_sym_am_equal_em_symbol_vdot_em_symbol_of_et_symbol_sym_at_in ->
     Camlline_for_formula_duo_top_main_formula_t.Let_sym_am_equal_em_symbol_vdot_em_symbol_of_et_symbol_sym_at_in tag_ent_l

;;

(** {6 Retrieving} *)

let retrieve tag_ctm =
  let soi_gro = Tag_v.sole_index_off_tag tag_ctm in
  let sym_ctm = Tag_v.entity_off_tag tag_ctm in
  make sym_ctm soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_for_formula_duo_top_main_formula for_ctm =
  match for_ctm with
  | Camlline_for_formula_duo_top_main_formula_t.Let_sym_am_equal_em_symbol_vdot_em_symbol_of_et_symbol_sym_at_in tag_ent_l -> tag_ent_l

;;

let entity_tag_list_off_camlline_for_formula_duo_top_main_tag tag_ctm =
  let for_ctm = retrieve tag_ctm in
  entity_tag_list_off_camlline_for_formula_duo_top_main_formula for_ctm
;; 

(** {6 Iterating_for_formula_for_formula_duo_top_main.} *)

let map f_of_tag_ent for_ctm = 
  let tag_ent_l = entity_tag_list_off_camlline_for_formula_duo_top_main_formula for_ctm in
  List.map f_of_tag_ent tag_ent_l
;;

let iter f_of_tag_ent for_ctm = 
  let tag_ent_l = entity_tag_list_off_camlline_for_formula_duo_top_main_formula for_ctm in
  List.iter f_of_tag_ent tag_ent_l ;;

let map2 f_of_tag_ent for_ctm_1 for_ctm_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_formula_duo_top_main_formula for_ctm_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_formula_duo_top_main_formula for_ctm_2 in
  List.map2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2
;;

let iter2 f_of_tag_ent for_ctm_1 for_ctm_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_formula_duo_top_main_formula for_ctm_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_formula_duo_top_main_formula for_ctm_2 in
  List.iter2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2 
;;

