(** {3 Camlline_for_tag_uno_top_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_for_tag_uno_top_formula_v";
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

let symbol_of_formula for_cut =
  match for_cut with
  | Camlline_for_tag_uno_top_formula_t.Let_make_soi_at_nam_at_s_equal _ ->
     Camlline_for_tag_uno_top_symbol_t.Let_make_soi_at_nam_at_s_equal
  | Camlline_for_tag_uno_top_formula_t.Let_make_sym_at_soi_at_equal _ ->
     Camlline_for_tag_uno_top_symbol_t.Let_make_sym_at_soi_at_equal
  | Camlline_for_tag_uno_top_formula_t.Let_name_tag_at_equal _ ->
     Camlline_for_tag_uno_top_symbol_t.Let_name_tag_at_equal
  | Camlline_for_tag_uno_top_formula_t.Tag_vdot_make_sym_at_soi_at _ ->
     Camlline_for_tag_uno_top_symbol_t.Tag_vdot_make_sym_at_soi_at
  | Camlline_for_tag_uno_top_formula_t.Tag_vdot_name_et_symbol_vdot_name_tag_at _ ->
     Camlline_for_tag_uno_top_symbol_t.Tag_vdot_name_et_symbol_vdot_name_tag_at

;;

(** {6 Naming_for_formula} *)

let name for_cut = 
  let sym_cut = symbol_of_formula for_cut in
  Camlline_for_tag_uno_top_symbol_v.name sym_cut
;;
(* ***

let string_off for_cut =
  let sym_cut = symbol_of_formula for_cut in
  Camlline_for_tag_uno_top_symbol_v.string_off sym_cut
;;

let longname for_cut =
  Format.sprintf "Camlline_for_tag_uno_top_formula_t.%s" 
    (String.capitalize (name for_cut))

let fullname for_cut =
  Format.sprintf "%s \"%s\"" (longname for_cut) (string_off for_cut)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_cut soi_cal =
  let tag_cut = Tag_v.make sym_cut soi_cal in
  let dec_cut = 
    Camlline_for_tag_uno_top_tag_v.camlline_for_tag_uno_top_dectup_off_camlline_for_tag_uno_top_tag 
      tag_cut 
  in
(****
  let idx_gro = Sole_index_v.father_index_off_sole_index soi_cal in
  let sym_ent_tos_l = Tools_ignr_v.entity_topson_symbol_list_of_dectup dec_cut in
  let sym_ent_cur = 
    try List.nth sym_ent_tos_l (idx_gro-1) 
    with | Failure "nth" ->
      Error_messages_v.print_fatal_error nam_cod "make"
	"Number of Notleaf Entity_symbol > 0"
	(Format.sprintf "None of them for Camlline >%s< when idx_gro = %i" 
	   (Camlline_for_tag_uno_top_symbol_v.name sym_cut) idx_gro
	)
	"Check"
  in
***)

(* BT builders *)

  let sym_ent_top = Decuplet_v.right_third_off_decuplet dec_cut in
  let sym_ent_l = 
    Camlline_for_tag_uno_top_interface_v.make 
      sym_cut 
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

let make sym_cut soi_cal =
  let tag_ent_l = build_n_store sym_cut soi_cal in
  match sym_cut with 
  | Camlline_for_tag_uno_top_symbol_t.Let_make_soi_at_nam_at_s_equal ->
     Camlline_for_tag_uno_top_formula_t.Let_make_soi_at_nam_at_s_equal tag_ent_l
  | Camlline_for_tag_uno_top_symbol_t.Let_make_sym_at_soi_at_equal ->
     Camlline_for_tag_uno_top_formula_t.Let_make_sym_at_soi_at_equal tag_ent_l
  | Camlline_for_tag_uno_top_symbol_t.Let_name_tag_at_equal ->
     Camlline_for_tag_uno_top_formula_t.Let_name_tag_at_equal tag_ent_l
  | Camlline_for_tag_uno_top_symbol_t.Tag_vdot_make_sym_at_soi_at ->
     Camlline_for_tag_uno_top_formula_t.Tag_vdot_make_sym_at_soi_at tag_ent_l
  | Camlline_for_tag_uno_top_symbol_t.Tag_vdot_name_et_symbol_vdot_name_tag_at ->
     Camlline_for_tag_uno_top_formula_t.Tag_vdot_name_et_symbol_vdot_name_tag_at tag_ent_l
;;

(** {6 Retrieving} *)

let retrieve tag_cut =
  let soi_gro = Tag_v.sole_index_off_tag tag_cut in
  let sym_cut = Tag_v.entity_off_tag tag_cut in
  make sym_cut soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_for_tag_uno_top_formula for_cut =
  match for_cut with
  | Camlline_for_tag_uno_top_formula_t.Let_make_soi_at_nam_at_s_equal tag_ent_l -> tag_ent_l
  | Camlline_for_tag_uno_top_formula_t.Let_make_sym_at_soi_at_equal tag_ent_l -> tag_ent_l
  | Camlline_for_tag_uno_top_formula_t.Let_name_tag_at_equal tag_ent_l -> tag_ent_l
  | Camlline_for_tag_uno_top_formula_t.Tag_vdot_make_sym_at_soi_at tag_ent_l -> tag_ent_l
  | Camlline_for_tag_uno_top_formula_t.Tag_vdot_name_et_symbol_vdot_name_tag_at tag_ent_l -> tag_ent_l

;;

let entity_tag_list_off_camlline_for_tag_uno_top_tag tag_cut =
  let for_cut = retrieve tag_cut in
  entity_tag_list_off_camlline_for_tag_uno_top_formula for_cut
;; 

(** {6 Iterating_for_formula_for_tag_uno_top.} *)

let map f_of_tag_ent for_cut = 
  let tag_ent_l = entity_tag_list_off_camlline_for_tag_uno_top_formula for_cut in
  List.map f_of_tag_ent tag_ent_l
;;

let iter f_of_tag_ent for_cut = 
  let tag_ent_l = entity_tag_list_off_camlline_for_tag_uno_top_formula for_cut in
  List.iter f_of_tag_ent tag_ent_l ;;

let map2 f_of_tag_ent for_cut_1 for_cut_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_tag_uno_top_formula for_cut_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_tag_uno_top_formula for_cut_2 in
  List.map2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2
;;

let iter2 f_of_tag_ent for_cut_1 for_cut_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_tag_uno_top_formula for_cut_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_tag_uno_top_formula for_cut_2 in
  List.iter2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2 
;;

