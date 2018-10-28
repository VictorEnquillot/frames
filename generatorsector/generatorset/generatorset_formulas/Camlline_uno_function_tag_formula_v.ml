(** {3 Camlline_uno_function_tag_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_uno_function_tag_formula_v";
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

let symbol_of_formula for_ccc =
  match for_ccc with
  | Camlline_uno_function_tag_formula_t.Let_make_soi_at_nam_at_s_equal _ ->
       Camlline_uno_function_tag_symbol_t.Let_make_soi_at_nam_at_s_equal

  | Camlline_uno_function_tag_formula_t.Let_make_sym_at_soi_at_equal _ ->
       Camlline_uno_function_tag_symbol_t.Let_make_sym_at_soi_at_equal

  | Camlline_uno_function_tag_formula_t.Let_name_tag_at_equal _ ->
       Camlline_uno_function_tag_symbol_t.Let_name_tag_at_equal

  | Camlline_uno_function_tag_formula_t.Space_Tag_vdot_make_sym_at_soi_at _ ->
       Camlline_uno_function_tag_symbol_t.Space_Tag_vdot_make_sym_at_soi_at

  | Camlline_uno_function_tag_formula_t.Space_Tag_vdot_name_Et_symbol_vdot_name_tag_at _ ->
       Camlline_uno_function_tag_symbol_t.Space_Tag_vdot_name_Et_symbol_vdot_name_tag_at

  | Camlline_uno_function_tag_formula_t.Let_sym_at_equal_tag_vdot_symbol_off_tag_tag_at_in _ ->
       Camlline_uno_function_tag_symbol_t.Let_sym_at_equal_tag_vdot_symbol_off_tag_tag_at_in
;;

(** {6 Naming_for_formula} *)

let name for_ccc = 
  let sym_ccc = symbol_of_formula for_ccc in
  Camlline_uno_function_tag_symbol_v.name sym_ccc
;;
(* ***

let string_off for_ccc =
  let sym_ccc = symbol_of_formula for_ccc in
  Camlline_uno_function_tag_symbol_v.string_off sym_ccc
;;

let longname for_ccc =
  Format.sprintf "Camlline_uno_function_tag_formula_t.%s" 
    (String.capitalize (name for_ccc))

let fullname for_ccc =
  Format.sprintf "%s \"%s\"" (longname for_ccc) (string_off for_ccc)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_ccc soi_cal =
  let tag_ccc = Tag_v.make sym_ccc soi_cal in
  let dec_ccc = 
    Camlline_uno_function_tag_tag_v.camlline_uno_function_tag_dectup_off_camlline_uno_function_tag_tag 
      tag_ccc 
  in
  let sym_ent_l = Camlline_uno_function_tag_interface_v.make dec_ccc soi_cal in
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

let make sym_ccc soi_cal =
  let tag_ent_l = build_n_store sym_ccc soi_cal in

  match sym_ccc with 
  | Camlline_uno_function_tag_symbol_t.Let_make_soi_at_nam_at_s_equal ->
       Camlline_uno_function_tag_formula_t.Let_make_soi_at_nam_at_s_equal tag_ent_l

  | Camlline_uno_function_tag_symbol_t.Let_make_sym_at_soi_at_equal ->
       Camlline_uno_function_tag_formula_t.Let_make_sym_at_soi_at_equal tag_ent_l

  | Camlline_uno_function_tag_symbol_t.Let_name_tag_at_equal ->
       Camlline_uno_function_tag_formula_t.Let_name_tag_at_equal tag_ent_l

  | Camlline_uno_function_tag_symbol_t.Space_Tag_vdot_make_sym_at_soi_at ->
       Camlline_uno_function_tag_formula_t.Space_Tag_vdot_make_sym_at_soi_at tag_ent_l

  | Camlline_uno_function_tag_symbol_t.Space_Tag_vdot_name_Et_symbol_vdot_name_tag_at ->
       Camlline_uno_function_tag_formula_t.Space_Tag_vdot_name_Et_symbol_vdot_name_tag_at tag_ent_l

  | Camlline_uno_function_tag_symbol_t.Let_sym_at_equal_tag_vdot_symbol_off_tag_tag_at_in ->
       Camlline_uno_function_tag_formula_t.Let_sym_at_equal_tag_vdot_symbol_off_tag_tag_at_in tag_ent_l
;;

(** {6 Retrieving} *)

let retrieve tag_ccc =
  let soi_gro = Tag_v.sole_index_off_tag tag_ccc in
  let sym_ccc = Tag_v.entity_off_tag tag_ccc in
  make sym_ccc soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_uno_function_tag_formula for_ccc =
  match for_ccc with
  | Camlline_uno_function_tag_formula_t.Let_make_soi_at_nam_at_s_equal tag_ent_l ->
      tag_ent_l

  | Camlline_uno_function_tag_formula_t.Let_make_sym_at_soi_at_equal tag_ent_l ->
      tag_ent_l

  | Camlline_uno_function_tag_formula_t.Let_name_tag_at_equal tag_ent_l ->
      tag_ent_l

  | Camlline_uno_function_tag_formula_t.Space_Tag_vdot_make_sym_at_soi_at tag_ent_l ->
      tag_ent_l

  | Camlline_uno_function_tag_formula_t.Space_Tag_vdot_name_Et_symbol_vdot_name_tag_at tag_ent_l ->
      tag_ent_l

  | Camlline_uno_function_tag_formula_t.Let_sym_at_equal_tag_vdot_symbol_off_tag_tag_at_in tag_ent_l ->
      tag_ent_l
;;

let entity_tag_list_off_camlline_uno_function_tag_tag tag_ccc =
  let for_ccc = retrieve tag_ccc in
  entity_tag_list_off_camlline_uno_function_tag_formula for_ccc
;; 

(** {6 Iterating_for_formula_uno_function_tag.} *)

let map f_of_tag_ent for_ccc = 
  let tag_ent_l = entity_tag_list_off_camlline_uno_function_tag_formula for_ccc in
  List.map f_of_tag_ent tag_ent_l
;;

let iter f_of_tag_ent for_ccc = 
  let tag_ent_l = entity_tag_list_off_camlline_uno_function_tag_formula for_ccc in
  List.iter f_of_tag_ent tag_ent_l ;;

let map2 f_of_tag_ent for_ccc_1 for_ccc_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_uno_function_tag_formula for_ccc_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_uno_function_tag_formula for_ccc_2 in
  List.map2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2
;;

let iter2 f_of_tag_ent for_ccc_1 for_ccc_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_uno_function_tag_formula for_ccc_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_uno_function_tag_formula for_ccc_2 in
  List.iter2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2 
;;
