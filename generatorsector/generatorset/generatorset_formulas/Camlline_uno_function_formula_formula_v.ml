(** {3 Camlline_uno_function_formula_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_uno_function_formula_formula_v";
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

let symbol_of_formula for_cff =
  match for_cff with
  | Camlline_uno_function_formula_formula_t.For_at _ ->
       Camlline_uno_function_formula_symbol_t.For_at

  | Camlline_uno_function_formula_formula_t.Let_make_soi_at_equal_function _ ->
       Camlline_uno_function_formula_symbol_t.Let_make_soi_at_equal_function

  | Camlline_uno_function_formula_formula_t.Let_make_tag_at_equal _ ->
       Camlline_uno_function_formula_symbol_t.Let_make_tag_at_equal

  | Camlline_uno_function_formula_formula_t.Let_name_for_at_equal _ ->
       Camlline_uno_function_formula_symbol_t.Let_name_for_at_equal

  | Camlline_uno_function_formula_formula_t.Space_Es_formula_vdot_map_for_as _ ->
       Camlline_uno_function_formula_symbol_t.Space_Es_formula_vdot_map_for_as

  | Camlline_uno_function_formula_formula_t.Space_Es_formula_vdot_name_for_as _ ->
       Camlline_uno_function_formula_symbol_t.Space_Es_formula_vdot_name_for_as

  | Camlline_uno_function_formula_formula_t.Space_Et_formula_vdot_name _ ->
       Camlline_uno_function_formula_symbol_t.Space_Et_formula_vdot_name

  | Camlline_uno_function_formula_formula_t.Let_for_ac_equal_Efc_vdot_make_tag_ac_in _ ->
       Camlline_uno_function_formula_symbol_t.Let_for_ac_equal_Efc_vdot_make_tag_ac_in

  | Camlline_uno_function_formula_formula_t.Let_for_das_equal_Das_vdot_make_tag_at_builder_list_in _ ->
       Camlline_uno_function_formula_symbol_t.Let_for_das_equal_Das_vdot_make_tag_at_builder_list_in

  | Camlline_uno_function_formula_formula_t.Let_nam_a_equal_E_tag_vdot_name_in _ ->
       Camlline_uno_function_formula_symbol_t.Let_nam_a_equal_E_tag_vdot_name_in

  | Camlline_uno_function_formula_formula_t.Let_soi_at_equal_Tag_vdot_sole_index_off_tag_tag_at_in _ ->
       Camlline_uno_function_formula_symbol_t.Let_soi_at_equal_Tag_vdot_sole_index_off_tag_tag_at_in

  | Camlline_uno_function_formula_formula_t.Let_sym_at_equal_Tag_vdot_symbol_off_tag_tag_at_in _ ->
       Camlline_uno_function_formula_symbol_t.Let_sym_at_equal_Tag_vdot_symbol_off_tag_tag_at_in

  | Camlline_uno_function_formula_formula_t.Let_tag_a_equal_E_tag_vdot_make_soi_a_in _ ->
       Camlline_uno_function_formula_symbol_t.Let_tag_a_equal_E_tag_vdot_make_soi_a_in

  | Camlline_uno_function_formula_formula_t.Let_tag_as_equal_Tag_vdot_make_sym_as_soi_as_in _ ->
       Camlline_uno_function_formula_symbol_t.Let_tag_as_equal_Tag_vdot_make_sym_as_soi_as_in

  | Camlline_uno_function_formula_formula_t.Match_sym_at_with _ ->
       Camlline_uno_function_formula_symbol_t.Match_sym_at_with
;;

(** {6 Naming_for_formula} *)

let name for_cff = 
  let sym_cff = symbol_of_formula for_cff in
  Camlline_uno_function_formula_symbol_v.name sym_cff
;;
(* ***

let string_off for_cff =
  let sym_cff = symbol_of_formula for_cff in
  Camlline_uno_function_formula_symbol_v.string_off sym_cff
;;

let longname for_cff =
  Format.sprintf "Camlline_uno_function_formula_formula_t.%s" 
    (String.capitalize (name for_cff))

let fullname for_cff =
  Format.sprintf "%s \"%s\"" (longname for_cff) (string_off for_cff)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_cff soi_cal =
  let tag_cff = Tag_v.make sym_cff soi_cal in
  let dec_cff = 
    Camlline_uno_function_formula_tag_v.camlline_uno_function_formula_dectup_off_camlline_uno_function_formula_tag 
      tag_cff 
  in
  let sym_ent_l = Camlline_uno_function_formula_interface_v.make dec_cff soi_cal in
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

let make sym_cff soi_cal =
  let tag_ent_l = build_n_store sym_cff soi_cal in

  match sym_cff with 
  | Camlline_uno_function_formula_symbol_t.For_at ->
       Camlline_uno_function_formula_formula_t.For_at tag_ent_l

  | Camlline_uno_function_formula_symbol_t.Let_make_soi_at_equal_function ->
       Camlline_uno_function_formula_formula_t.Let_make_soi_at_equal_function tag_ent_l

  | Camlline_uno_function_formula_symbol_t.Let_make_tag_at_equal ->
       Camlline_uno_function_formula_formula_t.Let_make_tag_at_equal tag_ent_l

  | Camlline_uno_function_formula_symbol_t.Let_name_for_at_equal ->
       Camlline_uno_function_formula_formula_t.Let_name_for_at_equal tag_ent_l

  | Camlline_uno_function_formula_symbol_t.Space_Es_formula_vdot_map_for_as ->
       Camlline_uno_function_formula_formula_t.Space_Es_formula_vdot_map_for_as tag_ent_l

  | Camlline_uno_function_formula_symbol_t.Space_Es_formula_vdot_name_for_as ->
       Camlline_uno_function_formula_formula_t.Space_Es_formula_vdot_name_for_as tag_ent_l

  | Camlline_uno_function_formula_symbol_t.Space_Et_formula_vdot_name ->
       Camlline_uno_function_formula_formula_t.Space_Et_formula_vdot_name tag_ent_l

  | Camlline_uno_function_formula_symbol_t.Let_for_ac_equal_Efc_vdot_make_tag_ac_in ->
       Camlline_uno_function_formula_formula_t.Let_for_ac_equal_Efc_vdot_make_tag_ac_in tag_ent_l

  | Camlline_uno_function_formula_symbol_t.Let_for_das_equal_Das_vdot_make_tag_at_builder_list_in ->
       Camlline_uno_function_formula_formula_t.Let_for_das_equal_Das_vdot_make_tag_at_builder_list_in tag_ent_l

  | Camlline_uno_function_formula_symbol_t.Let_nam_a_equal_E_tag_vdot_name_in ->
       Camlline_uno_function_formula_formula_t.Let_nam_a_equal_E_tag_vdot_name_in tag_ent_l

  | Camlline_uno_function_formula_symbol_t.Let_soi_at_equal_Tag_vdot_sole_index_off_tag_tag_at_in ->
       Camlline_uno_function_formula_formula_t.Let_soi_at_equal_Tag_vdot_sole_index_off_tag_tag_at_in tag_ent_l

  | Camlline_uno_function_formula_symbol_t.Let_sym_at_equal_Tag_vdot_symbol_off_tag_tag_at_in ->
       Camlline_uno_function_formula_formula_t.Let_sym_at_equal_Tag_vdot_symbol_off_tag_tag_at_in tag_ent_l

  | Camlline_uno_function_formula_symbol_t.Let_tag_a_equal_E_tag_vdot_make_soi_a_in ->
       Camlline_uno_function_formula_formula_t.Let_tag_a_equal_E_tag_vdot_make_soi_a_in tag_ent_l

  | Camlline_uno_function_formula_symbol_t.Let_tag_as_equal_Tag_vdot_make_sym_as_soi_as_in ->
       Camlline_uno_function_formula_formula_t.Let_tag_as_equal_Tag_vdot_make_sym_as_soi_as_in tag_ent_l

  | Camlline_uno_function_formula_symbol_t.Match_sym_at_with ->
       Camlline_uno_function_formula_formula_t.Match_sym_at_with tag_ent_l


;;

(** {6 Retrieving} *)

let retrieve tag_cff =
  let soi_gro = Tag_v.sole_index_off_tag tag_cff in
  let sym_cff = Tag_v.entity_off_tag tag_cff in
  make sym_cff soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_uno_function_formula_formula for_cff =
  match for_cff with
  | Camlline_uno_function_formula_formula_t.For_at tag_ent_l ->
      tag_ent_l

  | Camlline_uno_function_formula_formula_t.Let_make_soi_at_equal_function tag_ent_l ->
      tag_ent_l

  | Camlline_uno_function_formula_formula_t.Let_make_tag_at_equal tag_ent_l ->
      tag_ent_l

  | Camlline_uno_function_formula_formula_t.Let_name_for_at_equal tag_ent_l ->
      tag_ent_l

  | Camlline_uno_function_formula_formula_t.Space_Es_formula_vdot_map_for_as tag_ent_l ->
      tag_ent_l

  | Camlline_uno_function_formula_formula_t.Space_Es_formula_vdot_name_for_as tag_ent_l ->
      tag_ent_l

  | Camlline_uno_function_formula_formula_t.Space_Et_formula_vdot_name tag_ent_l ->
      tag_ent_l

  | Camlline_uno_function_formula_formula_t.Let_for_ac_equal_Efc_vdot_make_tag_ac_in tag_ent_l ->
      tag_ent_l

  | Camlline_uno_function_formula_formula_t.Let_for_das_equal_Das_vdot_make_tag_at_builder_list_in tag_ent_l ->
      tag_ent_l

  | Camlline_uno_function_formula_formula_t.Let_nam_a_equal_E_tag_vdot_name_in tag_ent_l ->
      tag_ent_l

  | Camlline_uno_function_formula_formula_t.Let_soi_at_equal_Tag_vdot_sole_index_off_tag_tag_at_in tag_ent_l ->
      tag_ent_l

  | Camlline_uno_function_formula_formula_t.Let_sym_at_equal_Tag_vdot_symbol_off_tag_tag_at_in tag_ent_l ->
      tag_ent_l

  | Camlline_uno_function_formula_formula_t.Let_tag_a_equal_E_tag_vdot_make_soi_a_in tag_ent_l ->
      tag_ent_l

  | Camlline_uno_function_formula_formula_t.Let_tag_as_equal_Tag_vdot_make_sym_as_soi_as_in tag_ent_l ->
      tag_ent_l

  | Camlline_uno_function_formula_formula_t.Match_sym_at_with tag_ent_l ->
      tag_ent_l
;;

let entity_tag_list_off_camlline_uno_function_formula_tag tag_cff =
  let for_cff = retrieve tag_cff in
  entity_tag_list_off_camlline_uno_function_formula_formula for_cff
;; 

(** {6 Iterating_for_formula_uno_function_formula.} *)

let map f_of_tag_ent for_cff = 
  let tag_ent_l = entity_tag_list_off_camlline_uno_function_formula_formula for_cff in
  List.map f_of_tag_ent tag_ent_l
;;

let iter f_of_tag_ent for_cff = 
  let tag_ent_l = entity_tag_list_off_camlline_uno_function_formula_formula for_cff in
  List.iter f_of_tag_ent tag_ent_l ;;

let map2 f_of_tag_ent for_cff_1 for_cff_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_uno_function_formula_formula for_cff_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_uno_function_formula_formula for_cff_2 in
  List.map2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2
;;

let iter2 f_of_tag_ent for_cff_1 for_cff_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_uno_function_formula_formula for_cff_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_uno_function_formula_formula for_cff_2 in
  List.iter2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2 
;;

