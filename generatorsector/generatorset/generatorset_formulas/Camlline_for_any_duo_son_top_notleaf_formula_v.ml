(** {3 Camlline_for_any_duo_son_top_notleaf_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_for_any_duo_son_top_notleaf_formula_v";
   "Needed-by : FGNR:Camlline_formula_v";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "Remark : It is a For_any_duo_son_top_notleaf type";
   "Improve : ";
   "Example : ";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_ctn =
  match for_ctn with
  | Camlline_for_any_duo_son_top_notleaf_formula_t.Et_any_tdot_es_any _ ->
     Camlline_for_any_duo_son_top_notleaf_symbol_t.Et_any_tdot_es_any
  | Camlline_for_any_duo_son_top_notleaf_formula_t.If_not_is_es_any_off_et_any_ac_at _ ->
     Camlline_for_any_duo_son_top_notleaf_symbol_t.If_not_is_es_any_off_et_any_ac_at
  | Camlline_for_any_duo_son_top_notleaf_formula_t.Let_ac_as_equal_es_any_off_et_any_ac_at_in _ ->
     Camlline_for_any_duo_son_top_notleaf_symbol_t.Let_ac_as_equal_es_any_off_et_any_ac_at_in
  | Camlline_for_any_duo_son_top_notleaf_formula_t.Let_es_any_off_et_any_equal_function _ ->
     Camlline_for_any_duo_son_top_notleaf_symbol_t.Let_es_any_off_et_any_equal_function
  | Camlline_for_any_duo_son_top_notleaf_formula_t.Let_et_any_of_es_any_ac_as_equal _ ->
     Camlline_for_any_duo_son_top_notleaf_symbol_t.Let_et_any_of_es_any_ac_as_equal
  | Camlline_for_any_duo_son_top_notleaf_formula_t.Let_is_es_any_off_et_any_equal_function _ ->
     Camlline_for_any_duo_son_top_notleaf_symbol_t.Let_is_es_any_off_et_any_equal_function
  | Camlline_for_any_duo_son_top_notleaf_formula_t.Pipe_et_any_tdot_es_any_ac_as_arrow _ ->
     Camlline_for_any_duo_son_top_notleaf_symbol_t.Pipe_et_any_tdot_es_any_ac_as_arrow
  | Camlline_for_any_duo_son_top_notleaf_formula_t.Pipe_et_any_tdot_es_any_ac_as_arrow_ac_as _ ->
     Camlline_for_any_duo_son_top_notleaf_symbol_t.Pipe_et_any_tdot_es_any_ac_as_arrow_ac_as
  | Camlline_for_any_duo_son_top_notleaf_formula_t.Pipe_et_any_tdot_es_any_arrow _ ->
     Camlline_for_any_duo_son_top_notleaf_symbol_t.Pipe_et_any_tdot_es_any_arrow
  | Camlline_for_any_duo_son_top_notleaf_formula_t.Pipe_et_any_tdot_es_any_underscore_arrow_true _ ->
     Camlline_for_any_duo_son_top_notleaf_symbol_t.Pipe_et_any_tdot_es_any_underscore_arrow_true
  | Camlline_for_any_duo_son_top_notleaf_formula_t.Pipe_print_fatal_error_es_any_off_et_any_4_lines _ ->
     Camlline_for_any_duo_son_top_notleaf_symbol_t.Pipe_print_fatal_error_es_any_off_et_any_4_lines
  | Camlline_for_any_duo_son_top_notleaf_formula_t.Et_any_of_es_any_ac_as _ ->
     Camlline_for_any_duo_son_top_notleaf_symbol_t.Et_any_of_es_any_ac_as
  | Camlline_for_any_duo_son_top_notleaf_formula_t.Et_any_tdot_es_any_ac_as _ ->
     Camlline_for_any_duo_son_top_notleaf_symbol_t.Et_any_tdot_es_any_ac_as

;;

(** {6 Naming_for_formula} *)

let name for_ctn = 
  let sym_ctn = symbol_of_formula for_ctn in
  Camlline_for_any_duo_son_top_notleaf_symbol_v.name sym_ctn
;;
(* ***

let string_off for_ctn =
  let sym_ctn = symbol_of_formula for_ctn in
  Camlline_for_any_duo_son_top_notleaf_symbol_v.string_off sym_ctn
;;

let longname for_ctn =
  Format.sprintf "Camlline_for_any_duo_son_top_notleaf_formula_t.%s" 
    (String.capitalize (name for_ctn))

let fullname for_ctn =
  Format.sprintf "%s \"%s\"" (longname for_ctn) (string_off for_ctn)
;;
*** *)

(** {6 Son_symbol_listing} *)

let son_symbol_list sym_ctn soi_cal =
  let tag_ctn = Tag_v.make sym_ctn soi_cal in
  let dec_ctn = 
    Camlline_for_any_duo_son_top_notleaf_tag_v.camlline_for_any_duo_son_top_notleaf_dectup_off_camlline_for_any_duo_son_top_notleaf_tag 
      tag_ctn 
  in

  let sym_ent_top = Decuplet_v.right_third_off_decuplet dec_ctn in

  let sym_ent_son =
    Tools_fgnr_v.entity_topson_symbol_of_camlline_dectup_of_sole_index
      dec_ctn 
      soi_cal 
  in

  Camlline_for_any_duo_son_top_notleaf_interface_v.make 
    sym_ctn 
    sym_ent_son 
    sym_ent_top
;;

(** {6 Building_and_storing} *)

let build_n_store sym_ctn soi_cal =
  let sym_ent_l = son_symbol_list sym_ctn soi_cal in
  let soi_ent_l = 
    Generatorset_symbol_by_sole_index_register_v.sole_index_son_list_of_symbol_son_list_of_sole_index
      sym_ent_l 
      soi_cal 
  in
  
  let gss_of_sym = Generatorset_symbol_v.generatorset_symbol_of_entity_symbol in
  Tools_fgnr_v.store_builder_gss_datastructure gss_of_sym sym_ent_l soi_ent_l;
  
  List.map2 Tag_v.make sym_ent_l soi_ent_l
;;

(** {6 Making_for_formula} *)

let make sym_ctn soi_cal =
  let tag_ent_l = build_n_store sym_ctn soi_cal in

  match sym_ctn with 
  | Camlline_for_any_duo_son_top_notleaf_symbol_t.Et_any_tdot_es_any ->
     Camlline_for_any_duo_son_top_notleaf_formula_t.Et_any_tdot_es_any tag_ent_l
  | Camlline_for_any_duo_son_top_notleaf_symbol_t.If_not_is_es_any_off_et_any_ac_at ->
     Camlline_for_any_duo_son_top_notleaf_formula_t.If_not_is_es_any_off_et_any_ac_at tag_ent_l
  | Camlline_for_any_duo_son_top_notleaf_symbol_t.Let_ac_as_equal_es_any_off_et_any_ac_at_in ->
     Camlline_for_any_duo_son_top_notleaf_formula_t.Let_ac_as_equal_es_any_off_et_any_ac_at_in tag_ent_l
  | Camlline_for_any_duo_son_top_notleaf_symbol_t.Let_es_any_off_et_any_equal_function ->
     Camlline_for_any_duo_son_top_notleaf_formula_t.Let_es_any_off_et_any_equal_function tag_ent_l
  | Camlline_for_any_duo_son_top_notleaf_symbol_t.Let_et_any_of_es_any_ac_as_equal ->
     Camlline_for_any_duo_son_top_notleaf_formula_t.Let_et_any_of_es_any_ac_as_equal tag_ent_l
  | Camlline_for_any_duo_son_top_notleaf_symbol_t.Let_is_es_any_off_et_any_equal_function ->
     Camlline_for_any_duo_son_top_notleaf_formula_t.Let_is_es_any_off_et_any_equal_function tag_ent_l
  | Camlline_for_any_duo_son_top_notleaf_symbol_t.Pipe_et_any_tdot_es_any_ac_as_arrow ->
     Camlline_for_any_duo_son_top_notleaf_formula_t.Pipe_et_any_tdot_es_any_ac_as_arrow tag_ent_l
  | Camlline_for_any_duo_son_top_notleaf_symbol_t.Pipe_et_any_tdot_es_any_ac_as_arrow_ac_as ->
     Camlline_for_any_duo_son_top_notleaf_formula_t.Pipe_et_any_tdot_es_any_ac_as_arrow_ac_as tag_ent_l
  | Camlline_for_any_duo_son_top_notleaf_symbol_t.Pipe_et_any_tdot_es_any_arrow ->
     Camlline_for_any_duo_son_top_notleaf_formula_t.Pipe_et_any_tdot_es_any_arrow tag_ent_l
  | Camlline_for_any_duo_son_top_notleaf_symbol_t.Pipe_et_any_tdot_es_any_underscore_arrow_true ->
     Camlline_for_any_duo_son_top_notleaf_formula_t.Pipe_et_any_tdot_es_any_underscore_arrow_true tag_ent_l
  | Camlline_for_any_duo_son_top_notleaf_symbol_t.Pipe_print_fatal_error_es_any_off_et_any_4_lines ->
     Camlline_for_any_duo_son_top_notleaf_formula_t.Pipe_print_fatal_error_es_any_off_et_any_4_lines tag_ent_l
  | Camlline_for_any_duo_son_top_notleaf_symbol_t.Et_any_of_es_any_ac_as ->
     Camlline_for_any_duo_son_top_notleaf_formula_t.Et_any_of_es_any_ac_as tag_ent_l
  | Camlline_for_any_duo_son_top_notleaf_symbol_t.Et_any_tdot_es_any_ac_as ->
     Camlline_for_any_duo_son_top_notleaf_formula_t.Et_any_tdot_es_any_ac_as tag_ent_l


;;

(** {6 Retrieving} *)

let retrieve tag_ctn =
  let soi_gro = Tag_v.sole_index_off_tag tag_ctn in
  let sym_ctn = Tag_v.entity_off_tag tag_ctn in
  make sym_ctn soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_for_any_duo_son_top_notleaf_formula for_ctn =
  match for_ctn with
  | Camlline_for_any_duo_son_top_notleaf_formula_t.Et_any_tdot_es_any tag_ent_l -> tag_ent_l
  | Camlline_for_any_duo_son_top_notleaf_formula_t.If_not_is_es_any_off_et_any_ac_at tag_ent_l -> tag_ent_l
  | Camlline_for_any_duo_son_top_notleaf_formula_t.Let_ac_as_equal_es_any_off_et_any_ac_at_in tag_ent_l -> tag_ent_l
  | Camlline_for_any_duo_son_top_notleaf_formula_t.Let_es_any_off_et_any_equal_function tag_ent_l -> tag_ent_l
  | Camlline_for_any_duo_son_top_notleaf_formula_t.Let_et_any_of_es_any_ac_as_equal tag_ent_l -> tag_ent_l
  | Camlline_for_any_duo_son_top_notleaf_formula_t.Let_is_es_any_off_et_any_equal_function tag_ent_l -> tag_ent_l
  | Camlline_for_any_duo_son_top_notleaf_formula_t.Pipe_et_any_tdot_es_any_ac_as_arrow tag_ent_l -> tag_ent_l
  | Camlline_for_any_duo_son_top_notleaf_formula_t.Pipe_et_any_tdot_es_any_ac_as_arrow_ac_as tag_ent_l -> tag_ent_l
  | Camlline_for_any_duo_son_top_notleaf_formula_t.Pipe_et_any_tdot_es_any_arrow tag_ent_l -> tag_ent_l
  | Camlline_for_any_duo_son_top_notleaf_formula_t.Pipe_et_any_tdot_es_any_underscore_arrow_true tag_ent_l -> tag_ent_l
  | Camlline_for_any_duo_son_top_notleaf_formula_t.Pipe_print_fatal_error_es_any_off_et_any_4_lines tag_ent_l -> tag_ent_l
  | Camlline_for_any_duo_son_top_notleaf_formula_t.Et_any_of_es_any_ac_as tag_ent_l -> tag_ent_l
  | Camlline_for_any_duo_son_top_notleaf_formula_t.Et_any_tdot_es_any_ac_as tag_ent_l -> tag_ent_l

;;

let entity_tag_list_off_camlline_for_any_duo_son_top_notleaf_tag tag_ctn =
  let for_ctn = retrieve tag_ctn in
  entity_tag_list_off_camlline_for_any_duo_son_top_notleaf_formula for_ctn
;; 

(** {6 Iterating_for_formula_for_any_duo_son_top_notleaf.} *)

let map f_of_tag_ent for_ctn = 
  let tag_ent_l = entity_tag_list_off_camlline_for_any_duo_son_top_notleaf_formula for_ctn in
  List.map f_of_tag_ent tag_ent_l
;;

let iter f_of_tag_ent for_ctn = 
  let tag_ent_l = entity_tag_list_off_camlline_for_any_duo_son_top_notleaf_formula for_ctn in
  List.iter f_of_tag_ent tag_ent_l ;;

let map2 f_of_tag_ent for_ctn_1 for_ctn_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_any_duo_son_top_notleaf_formula for_ctn_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_any_duo_son_top_notleaf_formula for_ctn_2 in
  List.map2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2
;;

let iter2 f_of_tag_ent for_ctn_1 for_ctn_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_any_duo_son_top_notleaf_formula for_ctn_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_any_duo_son_top_notleaf_formula for_ctn_2 in
  List.iter2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2 
;;

