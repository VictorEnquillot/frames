(** {3 Camlline_duo_function_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_duo_function_formula_v";
   "Needed-by : FGNR:Camlline_uno_formula_v";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "Remark : It is a Stem type";
   "Improve : relation between Camlparagraph index and Entity index should be set in Item_formula";
   "Example : ";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_cdf =
  match for_cdf with
  | Camlline_duo_function_formula_t.Es_any_vdot_ec_any_off_es_any_ac_as _ ->
      Camlline_duo_function_symbol_t.Es_any_vdot_ec_any_off_es_any_ac_as
  | Camlline_duo_function_formula_t.Es_any_vdot_is_ec_any_off_es_any_ac_as _ ->
      Camlline_duo_function_symbol_t.Es_any_vdot_is_ec_any_off_es_any_ac_as
  | Camlline_duo_function_formula_t.Es_any_vdot_ec_any_off_es_any_ac_as _ ->
      Camlline_duo_function_symbol_t.Es_any_vdot_ec_any_off_es_any_ac_as
  | Camlline_duo_function_formula_t.Es_any_vdot_is_ec_any_off_es_any_ac_as _ ->
      Camlline_duo_function_symbol_t.Es_any_vdot_is_ec_any_off_es_any_ac_as
  | Camlline_duo_function_formula_t.If_not_is_es_any_off_et_any_ac_at _ ->
      Camlline_duo_function_symbol_t.If_not_is_es_any_off_et_any_ac_at
  | Camlline_duo_function_formula_t.If_not_is_es_any_off_et_any_ac_at _ ->
      Camlline_duo_function_symbol_t.If_not_is_es_any_off_et_any_ac_at
  | Camlline_duo_function_formula_t.Let_ac_as_equal_Es_any_vdot_es_any_of_ec_any_ac_ac_in _ ->
      Camlline_duo_function_symbol_t.Let_ac_as_equal_Es_any_vdot_es_any_of_ec_any_ac_ac_in
  | Camlline_duo_function_formula_t.Let_aas_equal_eas_off_eat_aat_in _ ->
      Camlline_duo_function_symbol_t.Let_aas_equal_eas_off_eat_aat_in
  | Camlline_duo_function_formula_t.Let_ac_as_equal_Es_any_vdot_es_any_of_ec_any_ac_ac_in _ ->
      Camlline_duo_function_symbol_t.Let_ac_as_equal_Es_any_vdot_es_any_of_ec_any_ac_ac_in
  | Camlline_duo_function_formula_t.Let_ass_equal_es_symbol_off_et_symbol_ast_in _ ->
      Camlline_duo_function_symbol_t.Let_ass_equal_es_symbol_off_et_symbol_ast_in
  | Camlline_duo_function_formula_t.Let_ec_any_off_et_any_ac_at_equal _ ->
      Camlline_duo_function_symbol_t.Let_ec_any_off_et_any_ac_at_equal
  | Camlline_duo_function_formula_t.Let_es_any_off_et_any_equal_function _ ->
      Camlline_duo_function_symbol_t.Let_es_any_off_et_any_equal_function
  | Camlline_duo_function_formula_t.Let_et_any_of_ec_any_ac_ac_equal _ ->
      Camlline_duo_function_symbol_t.Let_et_any_of_ec_any_ac_ac_equal
  | Camlline_duo_function_formula_t.Let_et_any_of_es_any_ac_as_equal _ ->
      Camlline_duo_function_symbol_t.Let_et_any_of_es_any_ac_as_equal
  | Camlline_duo_function_formula_t.Let_ec_any_off_et_any_ac_at_equal _ ->
      Camlline_duo_function_symbol_t.Let_ec_any_off_et_any_ac_at_equal
  | Camlline_duo_function_formula_t.Let_es_equal_et_symbol_of_es_symbol_es_symbol_vdot_es _ ->
      Camlline_duo_function_symbol_t.Let_es_equal_et_symbol_of_es_symbol_es_symbol_vdot_es
  | Camlline_duo_function_formula_t.Let_es_symbol_arg_equal_Et_symbol_tdot_Es_symbol_arg _ ->
      Camlline_duo_function_symbol_t.Let_es_symbol_arg_equal_Et_symbol_tdot_Es_symbol_arg
  | Camlline_duo_function_formula_t.Let_es_equal_Et_symbol_tdot_Es _ ->
      Camlline_duo_function_symbol_t.Let_es_equal_Et_symbol_tdot_Es
  | Camlline_duo_function_formula_t.Let_es_any_off_et_any_equal_function _ ->
      Camlline_duo_function_symbol_t.Let_es_any_off_et_any_equal_function
  | Camlline_duo_function_formula_t.Let_tag_ec_equal_Tag_vdot_make_ec_symbol_sym_ac_soi_ac_in _ ->
      Camlline_duo_function_symbol_t.Let_tag_ec_equal_Tag_vdot_make_ec_symbol_sym_ac_soi_ac_in
  | Camlline_duo_function_formula_t.Let_is_eac_off_eat_aat_equal _ ->
      Camlline_duo_function_symbol_t.Let_is_eac_off_eat_aat_equal
  | Camlline_duo_function_formula_t.Let_is_eas_off_eat_equal_function _ ->
      Camlline_duo_function_symbol_t.Let_is_eas_off_eat_equal_function
  | Camlline_duo_function_formula_t.Let_make_sym_as_soi_at_equal _ ->
      Camlline_duo_function_symbol_t.Let_make_sym_as_soi_at_equal
  | Camlline_duo_function_formula_t.Let_make_sym_at_soi_am_equal _ ->
      Camlline_duo_function_symbol_t.Let_make_sym_at_soi_am_equal
  | Camlline_duo_function_formula_t.Pipe_ecstring_arrow_Et_symbol_tdot_Ec_string _ ->
      Camlline_duo_function_symbol_t.Pipe_ecstring_arrow_Et_symbol_tdot_Ec_string
  | Camlline_duo_function_formula_t.Pipe_Et_formula_tdot_Es_formula_for_as_arrow _ ->
      Camlline_duo_function_symbol_t.Pipe_Et_formula_tdot_Es_formula_for_as_arrow
  | Camlline_duo_function_formula_t.Pipe_Et_symbol_tdot_Es_arrow _ ->
      Camlline_duo_function_symbol_t.Pipe_Et_symbol_tdot_Es_arrow
  | Camlline_duo_function_formula_t.Pipe_Et_symbol_tdot_Es_arrow_string _ ->
      Camlline_duo_function_symbol_t.Pipe_Et_symbol_tdot_Es_arrow_string
  | Camlline_duo_function_formula_t.Pipe_Et_symbol_tdot_Es_sarg_arrow _ ->
      Camlline_duo_function_symbol_t.Pipe_Et_symbol_tdot_Es_sarg_arrow
  | Camlline_duo_function_formula_t.Pipe_Et_any_tdot_Es_any_arrow _ ->
      Camlline_duo_function_symbol_t.Pipe_Et_any_tdot_Es_any_arrow
  | Camlline_duo_function_formula_t.Pipe_Et_symbol_tdot_Es_symbol_ass_arrow _ ->
      Camlline_duo_function_symbol_t.Pipe_Et_symbol_tdot_Es_symbol_ass_arrow
  | Camlline_duo_function_formula_t.Pipe_Et_symbol_tdot_Es_symbol_ass_arrow_ass _ ->
      Camlline_duo_function_symbol_t.Pipe_Et_symbol_tdot_Es_symbol_ass_arrow_ass
  | Camlline_duo_function_formula_t.Pipe_Et_any_tdot_Es_any_ac_as_arrow _ ->
      Camlline_duo_function_symbol_t.Pipe_Et_any_tdot_Es_any_ac_as_arrow
  | Camlline_duo_function_formula_t.Pipe_Et_symbol_tdot_Es_symbol_underscore_arrow_string _ ->
      Camlline_duo_function_symbol_t.Pipe_Et_symbol_tdot_Es_symbol_underscore_arrow_string
  | Camlline_duo_function_formula_t.Pipe_Et_any_tdot_Es_any_underscore_arrow_true _ ->
      Camlline_duo_function_symbol_t.Pipe_Et_any_tdot_Es_any_underscore_arrow_true
  | Camlline_duo_function_formula_t.Pipe_print_fatal_error_eas_off_eat_4_lines _ ->
      Camlline_duo_function_symbol_t.Pipe_print_fatal_error_eas_off_eat_4_lines
  | Camlline_duo_function_formula_t.Pipe_print_fatal_error_es_symbol_off_et_symbol_4_lines _ ->
      Camlline_duo_function_symbol_t.Pipe_print_fatal_error_es_symbol_off_et_symbol_4_lines
  | Camlline_duo_function_formula_t.Space_eat_of_eas_aas _ ->
      Camlline_duo_function_symbol_t.Space_eat_of_eas_aas
  | Camlline_duo_function_formula_t.Space_Es_formula_vdot_make_sym_as_soi_at _ ->
      Camlline_duo_function_symbol_t.Space_Es_formula_vdot_make_sym_as_soi_at
  | Camlline_duo_function_formula_t.Space2_Es_symbol_vdot_name_sym_as _ ->
      Camlline_duo_function_symbol_t.Space2_Es_symbol_vdot_name_sym_as
  | Camlline_duo_function_formula_t.Space_Es_symbol_vdot_string_off_sym_as _ ->
      Camlline_duo_function_symbol_t.Space_Es_symbol_vdot_string_off_sym_as
  | Camlline_duo_function_formula_t.Space_Et_formula_tdot_Es_for_das _ ->
      Camlline_duo_function_symbol_t.Space_Et_formula_tdot_Es_for_das
  | Camlline_duo_function_formula_t.Et_symbol_of_es_symbol_sym_as _ ->
      Camlline_duo_function_symbol_t.Et_symbol_of_es_symbol_sym_as
  | Camlline_duo_function_formula_t.Space_Et_symbol_tdot_Es_symbol_sym_as _ ->
      Camlline_duo_function_symbol_t.Space_Et_symbol_tdot_Es_symbol_sym_as
  | Camlline_duo_function_formula_t.Let_ac_at_equal_Et_symbol_vdot_es_in _ ->
      Camlline_duo_function_symbol_t.Let_ac_at_equal_Et_symbol_vdot_es_in
  | Camlline_duo_function_formula_t.Let_dos_of_ste_equal_Dos_vdot_fun_in _ ->
      Camlline_duo_function_symbol_t.Let_dos_of_ste_equal_Dos_vdot_fun_in
  | Camlline_duo_function_formula_t.Let_nam_as_equal_Es_tag_vdot_name_for_at_in _ ->
      Camlline_duo_function_symbol_t.Let_nam_as_equal_Es_tag_vdot_name_for_at_in
  | Camlline_duo_function_formula_t.Let_nam_as_equal_Tag_vdot_name_Et_symbol_vdot_name_in _ ->
      Camlline_duo_function_symbol_t.Let_nam_as_equal_Tag_vdot_name_Et_symbol_vdot_name_in
  | Camlline_duo_function_formula_t.Let_soi_as_equal_Sole_index_vdot_make_count_soi_at_in _ ->
      Camlline_duo_function_symbol_t.Let_soi_as_equal_Sole_index_vdot_make_count_soi_at_in
  | Camlline_duo_function_formula_t.Space_Tag_vdot_map_left_Et_symbol_vdot_ec_symbol_off_et_symbol_tag_at _ ->
      Camlline_duo_function_symbol_t.Space_Tag_vdot_map_left_Et_symbol_vdot_ec_symbol_off_et_symbol_tag_at
  | Camlline_duo_function_formula_t.Space_Tag_vdot_map_left_Et_symbol_vdot_et_symbol_of_ec_symbol_tag_ac _ ->
      Camlline_duo_function_symbol_t.Space_Tag_vdot_map_left_Et_symbol_vdot_et_symbol_of_ec_symbol_tag_ac
  | Camlline_duo_function_formula_t.Space_Tag_vdot_map_left_Et_symbol_vdot_is_ec_symbol_off_et_symbol_tag_at _ ->
      Camlline_duo_function_symbol_t.Space_Tag_vdot_map_left_Et_symbol_vdot_is_ec_symbol_off_et_symbol_tag_at
  | Camlline_duo_function_formula_t.Try_et_symbol_of_es_symbol _ ->
      Camlline_duo_function_symbol_t.Try_et_symbol_of_es_symbol

;;

(** {6 Naming_for_formula} *)

let name for_cdf = 
  let sym_cdf = symbol_of_formula for_cdf in
  Camlline_duo_function_symbol_v.name sym_cdf
;;

(* ***

let string_off for_cdf =
  let sym_cdf = symbol_of_formula for_cdf in
  Camlline_duo_function_symbol_v.string_off sym_cdf
;;

let longname for_cdf =
  Format.sprintf "Camlline_duo_function_formula_t.%s" 
    (String.capitalize (name for_cdf))

let fullname for_cdf =
  Format.sprintf "%s \"%s\"" (longname for_cdf) (string_off for_cdf)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_cdf soi_cal =
  let tag_cdf = Tag_v.make sym_cdf soi_cal in
  let dec_cdf = 
    Camlline_duo_function_tag_v.camlline_duo_function_dectup_off_camlline_duo_function_tag 
      tag_cdf 
  in

(* BT builders *)
  let sym_ent_cur = 
    Tools_fgnr_v.entity_current_symbol_of_camlline_dectup_of_sole_index 
      dec_cdf 
      soi_cal 
  in
  let sym_ent_top = Decuplet_v.right_third_off_decuplet dec_cdf in
  let sym_ent_l = 
    Camlline_duo_function_interface_v.make 
      sym_cdf 
      sym_ent_cur sym_ent_top
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
  | Camlline_duo_function_symbol_t.Es_any_vdot_ec_any_off_es_any_ac_as ->
      Camlline_duo_function_formula_t.Es_any_vdot_ec_any_off_es_any_ac_as tag_ent_l

  | Camlline_duo_function_symbol_t.Es_any_vdot_is_ec_any_off_es_any_ac_as ->
      Camlline_duo_function_formula_t.Es_any_vdot_is_ec_any_off_es_any_ac_as tag_ent_l

  | Camlline_duo_function_symbol_t.Es_any_vdot_ec_any_off_es_any_ac_as ->
      Camlline_duo_function_formula_t.Es_any_vdot_ec_any_off_es_any_ac_as tag_ent_l

  | Camlline_duo_function_symbol_t.Es_any_vdot_is_ec_any_off_es_any_ac_as ->
      Camlline_duo_function_formula_t.Es_any_vdot_is_ec_any_off_es_any_ac_as tag_ent_l

  | Camlline_duo_function_symbol_t.If_not_is_es_any_off_et_any_ac_at ->
      Camlline_duo_function_formula_t.If_not_is_es_any_off_et_any_ac_at tag_ent_l

  | Camlline_duo_function_symbol_t.If_not_is_es_any_off_et_any_ac_at ->
      Camlline_duo_function_formula_t.If_not_is_es_any_off_et_any_ac_at tag_ent_l

  | Camlline_duo_function_symbol_t.Let_ac_as_equal_Es_any_vdot_es_any_of_ec_any_ac_ac_in ->
      Camlline_duo_function_formula_t.Let_ac_as_equal_Es_any_vdot_es_any_of_ec_any_ac_ac_in tag_ent_l

  | Camlline_duo_function_symbol_t.Let_aas_equal_eas_off_eat_aat_in ->
      Camlline_duo_function_formula_t.Let_aas_equal_eas_off_eat_aat_in tag_ent_l

  | Camlline_duo_function_symbol_t.Let_ac_as_equal_Es_any_vdot_es_any_of_ec_any_ac_ac_in ->
      Camlline_duo_function_formula_t.Let_ac_as_equal_Es_any_vdot_es_any_of_ec_any_ac_ac_in tag_ent_l

  | Camlline_duo_function_symbol_t.Let_ass_equal_es_symbol_off_et_symbol_ast_in ->
      Camlline_duo_function_formula_t.Let_ass_equal_es_symbol_off_et_symbol_ast_in tag_ent_l

  | Camlline_duo_function_symbol_t.Let_ec_any_off_et_any_ac_at_equal ->
      Camlline_duo_function_formula_t.Let_ec_any_off_et_any_ac_at_equal tag_ent_l

  | Camlline_duo_function_symbol_t.Let_ec_any_off_et_any_ac_at_equal ->
      Camlline_duo_function_formula_t.Let_ec_any_off_et_any_ac_at_equal tag_ent_l

  | Camlline_duo_function_symbol_t.Let_es_any_off_et_any_equal_function ->
      Camlline_duo_function_formula_t.Let_es_any_off_et_any_equal_function tag_ent_l

  | Camlline_duo_function_symbol_t.Let_et_any_of_ec_any_ac_ac_equal ->
      Camlline_duo_function_formula_t.Let_et_any_of_ec_any_ac_ac_equal tag_ent_l

  | Camlline_duo_function_symbol_t.Let_et_any_of_es_any_ac_as_equal ->
      Camlline_duo_function_formula_t.Let_et_any_of_es_any_ac_as_equal tag_ent_l

  | Camlline_duo_function_symbol_t.Let_es_equal_et_symbol_of_es_symbol_es_symbol_vdot_es ->
      Camlline_duo_function_formula_t.Let_es_equal_et_symbol_of_es_symbol_es_symbol_vdot_es tag_ent_l

  | Camlline_duo_function_symbol_t.Let_es_symbol_arg_equal_Et_symbol_tdot_Es_symbol_arg ->
      Camlline_duo_function_formula_t.Let_es_symbol_arg_equal_Et_symbol_tdot_Es_symbol_arg tag_ent_l

  | Camlline_duo_function_symbol_t.Let_es_equal_Et_symbol_tdot_Es ->
      Camlline_duo_function_formula_t.Let_es_equal_Et_symbol_tdot_Es tag_ent_l

  | Camlline_duo_function_symbol_t.Let_es_any_off_et_any_equal_function ->
      Camlline_duo_function_formula_t.Let_es_any_off_et_any_equal_function tag_ent_l

  | Camlline_duo_function_symbol_t.Let_tag_ec_equal_Tag_vdot_make_ec_symbol_sym_ac_soi_ac_in ->
      Camlline_duo_function_formula_t.Let_tag_ec_equal_Tag_vdot_make_ec_symbol_sym_ac_soi_ac_in tag_ent_l

  | Camlline_duo_function_symbol_t.Let_is_eac_off_eat_aat_equal ->
      Camlline_duo_function_formula_t.Let_is_eac_off_eat_aat_equal tag_ent_l

  | Camlline_duo_function_symbol_t.Let_is_eas_off_eat_equal_function ->
      Camlline_duo_function_formula_t.Let_is_eas_off_eat_equal_function tag_ent_l

  | Camlline_duo_function_symbol_t.Let_make_sym_as_soi_at_equal ->
      Camlline_duo_function_formula_t.Let_make_sym_as_soi_at_equal tag_ent_l

  | Camlline_duo_function_symbol_t.Let_make_sym_at_soi_am_equal ->
      Camlline_duo_function_formula_t.Let_make_sym_at_soi_am_equal tag_ent_l

  | Camlline_duo_function_symbol_t.Pipe_ecstring_arrow_Et_symbol_tdot_Ec_string ->
      Camlline_duo_function_formula_t.Pipe_ecstring_arrow_Et_symbol_tdot_Ec_string tag_ent_l

  | Camlline_duo_function_symbol_t.Pipe_Et_formula_tdot_Es_formula_for_as_arrow ->
      Camlline_duo_function_formula_t.Pipe_Et_formula_tdot_Es_formula_for_as_arrow tag_ent_l

  | Camlline_duo_function_symbol_t.Pipe_Et_symbol_tdot_Es_arrow ->
      Camlline_duo_function_formula_t.Pipe_Et_symbol_tdot_Es_arrow tag_ent_l

  | Camlline_duo_function_symbol_t.Pipe_Et_symbol_tdot_Es_arrow_string ->
      Camlline_duo_function_formula_t.Pipe_Et_symbol_tdot_Es_arrow_string tag_ent_l

  | Camlline_duo_function_symbol_t.Pipe_Et_symbol_tdot_Es_sarg_arrow ->
      Camlline_duo_function_formula_t.Pipe_Et_symbol_tdot_Es_sarg_arrow tag_ent_l

  | Camlline_duo_function_symbol_t.Pipe_Et_any_tdot_Es_any_arrow ->
      Camlline_duo_function_formula_t.Pipe_Et_any_tdot_Es_any_arrow tag_ent_l

  | Camlline_duo_function_symbol_t.Pipe_Et_symbol_tdot_Es_symbol_ass_arrow ->
      Camlline_duo_function_formula_t.Pipe_Et_symbol_tdot_Es_symbol_ass_arrow tag_ent_l

  | Camlline_duo_function_symbol_t.Pipe_Et_symbol_tdot_Es_symbol_ass_arrow_ass ->
      Camlline_duo_function_formula_t.Pipe_Et_symbol_tdot_Es_symbol_ass_arrow_ass tag_ent_l

  | Camlline_duo_function_symbol_t.Pipe_Et_any_tdot_Es_any_ac_as_arrow ->
      Camlline_duo_function_formula_t.Pipe_Et_any_tdot_Es_any_ac_as_arrow tag_ent_l

  | Camlline_duo_function_symbol_t.Pipe_Et_symbol_tdot_Es_symbol_underscore_arrow_string ->
      Camlline_duo_function_formula_t.Pipe_Et_symbol_tdot_Es_symbol_underscore_arrow_string tag_ent_l

  | Camlline_duo_function_symbol_t.Pipe_Et_any_tdot_Es_any_underscore_arrow_true ->
      Camlline_duo_function_formula_t.Pipe_Et_any_tdot_Es_any_underscore_arrow_true tag_ent_l

  | Camlline_duo_function_symbol_t.Pipe_print_fatal_error_eas_off_eat_4_lines ->
      Camlline_duo_function_formula_t.Pipe_print_fatal_error_eas_off_eat_4_lines tag_ent_l

  | Camlline_duo_function_symbol_t.Pipe_print_fatal_error_es_symbol_off_et_symbol_4_lines ->
      Camlline_duo_function_formula_t.Pipe_print_fatal_error_es_symbol_off_et_symbol_4_lines tag_ent_l

  | Camlline_duo_function_symbol_t.Space_eat_of_eas_aas ->
      Camlline_duo_function_formula_t.Space_eat_of_eas_aas tag_ent_l

  | Camlline_duo_function_symbol_t.Space_Es_formula_vdot_make_sym_as_soi_at ->
      Camlline_duo_function_formula_t.Space_Es_formula_vdot_make_sym_as_soi_at tag_ent_l

  | Camlline_duo_function_symbol_t.Space2_Es_symbol_vdot_name_sym_as ->
      Camlline_duo_function_formula_t.Space2_Es_symbol_vdot_name_sym_as tag_ent_l

  | Camlline_duo_function_symbol_t.Space_Es_symbol_vdot_string_off_sym_as ->
      Camlline_duo_function_formula_t.Space_Es_symbol_vdot_string_off_sym_as tag_ent_l

  | Camlline_duo_function_symbol_t.Space_Et_formula_tdot_Es_for_das ->
      Camlline_duo_function_formula_t.Space_Et_formula_tdot_Es_for_das tag_ent_l

  | Camlline_duo_function_symbol_t.Et_symbol_of_es_symbol_sym_as ->
      Camlline_duo_function_formula_t.Et_symbol_of_es_symbol_sym_as tag_ent_l

  | Camlline_duo_function_symbol_t.Space_Et_symbol_tdot_Es_symbol_sym_as ->
      Camlline_duo_function_formula_t.Space_Et_symbol_tdot_Es_symbol_sym_as tag_ent_l

  | Camlline_duo_function_symbol_t.Let_ac_at_equal_Et_symbol_vdot_es_in ->
      Camlline_duo_function_formula_t.Let_ac_at_equal_Et_symbol_vdot_es_in tag_ent_l

  | Camlline_duo_function_symbol_t.Let_dos_of_ste_equal_Dos_vdot_fun_in ->
      Camlline_duo_function_formula_t.Let_dos_of_ste_equal_Dos_vdot_fun_in tag_ent_l

  | Camlline_duo_function_symbol_t.Let_nam_as_equal_Es_tag_vdot_name_for_at_in ->
      Camlline_duo_function_formula_t.Let_nam_as_equal_Es_tag_vdot_name_for_at_in tag_ent_l

  | Camlline_duo_function_symbol_t.Let_nam_as_equal_Tag_vdot_name_Et_symbol_vdot_name_in ->
      Camlline_duo_function_formula_t.Let_nam_as_equal_Tag_vdot_name_Et_symbol_vdot_name_in tag_ent_l

  | Camlline_duo_function_symbol_t.Let_soi_as_equal_Sole_index_vdot_make_count_soi_at_in ->
      Camlline_duo_function_formula_t.Let_soi_as_equal_Sole_index_vdot_make_count_soi_at_in tag_ent_l

  | Camlline_duo_function_symbol_t.Space_Tag_vdot_map_left_Et_symbol_vdot_ec_symbol_off_et_symbol_tag_at ->
      Camlline_duo_function_formula_t.Space_Tag_vdot_map_left_Et_symbol_vdot_ec_symbol_off_et_symbol_tag_at tag_ent_l

  | Camlline_duo_function_symbol_t.Space_Tag_vdot_map_left_Et_symbol_vdot_et_symbol_of_ec_symbol_tag_ac ->
      Camlline_duo_function_formula_t.Space_Tag_vdot_map_left_Et_symbol_vdot_et_symbol_of_ec_symbol_tag_ac tag_ent_l

  | Camlline_duo_function_symbol_t.Space_Tag_vdot_map_left_Et_symbol_vdot_is_ec_symbol_off_et_symbol_tag_at ->
      Camlline_duo_function_formula_t.Space_Tag_vdot_map_left_Et_symbol_vdot_is_ec_symbol_off_et_symbol_tag_at tag_ent_l

  | Camlline_duo_function_symbol_t.Try_et_symbol_of_es_symbol ->
      Camlline_duo_function_formula_t.Try_et_symbol_of_es_symbol tag_ent_l
;;

(** {6 Retrieving.} *)

let retrieve tag_cdf = 
  let sym_cdf = Tag_v.entity_off_tag tag_cdf in
  let soi_cal = Tag_v.sole_index_off_tag tag_cdf in
  make sym_cdf soi_cal
;;

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_duo_function_formula for_cdf =
  match for_cdf with
  | Camlline_duo_function_formula_t.Es_any_vdot_ec_any_off_es_any_ac_as tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.Es_any_vdot_is_ec_any_off_es_any_ac_as tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.Es_any_vdot_ec_any_off_es_any_ac_as tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.Es_any_vdot_is_ec_any_off_es_any_ac_as tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.If_not_is_es_any_off_et_any_ac_at tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.If_not_is_es_any_off_et_any_ac_at tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.Let_ac_as_equal_Es_any_vdot_es_any_of_ec_any_ac_ac_in tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.Let_aas_equal_eas_off_eat_aat_in tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.Let_ac_as_equal_Es_any_vdot_es_any_of_ec_any_ac_ac_in tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.Let_ass_equal_es_symbol_off_et_symbol_ast_in tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.Let_ec_any_off_et_any_ac_at_equal tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.Let_ec_any_off_et_any_ac_at_equal tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.Let_es_any_off_et_any_equal_function tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.Let_et_any_of_ec_any_ac_ac_equal tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.Let_et_any_of_es_any_ac_as_equal tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.Let_es_equal_et_symbol_of_es_symbol_es_symbol_vdot_es tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.Let_es_symbol_arg_equal_Et_symbol_tdot_Es_symbol_arg tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.Let_es_equal_Et_symbol_tdot_Es tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.Let_es_any_off_et_any_equal_function tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.Let_tag_ec_equal_Tag_vdot_make_ec_symbol_sym_ac_soi_ac_in tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.Let_is_eac_off_eat_aat_equal tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.Let_is_eas_off_eat_equal_function tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.Let_make_sym_as_soi_at_equal tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.Let_make_sym_at_soi_am_equal tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.Pipe_ecstring_arrow_Et_symbol_tdot_Ec_string tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.Pipe_Et_formula_tdot_Es_formula_for_as_arrow tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.Pipe_Et_symbol_tdot_Es_arrow tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.Pipe_Et_symbol_tdot_Es_arrow_string tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.Pipe_Et_symbol_tdot_Es_sarg_arrow tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.Pipe_Et_any_tdot_Es_any_arrow tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.Pipe_Et_symbol_tdot_Es_symbol_ass_arrow tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.Pipe_Et_symbol_tdot_Es_symbol_ass_arrow_ass tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.Pipe_Et_any_tdot_Es_any_ac_as_arrow tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.Pipe_Et_symbol_tdot_Es_symbol_underscore_arrow_string tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.Pipe_Et_any_tdot_Es_any_underscore_arrow_true tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.Pipe_print_fatal_error_eas_off_eat_4_lines tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.Pipe_print_fatal_error_es_symbol_off_et_symbol_4_lines tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.Space_eat_of_eas_aas tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.Space_Es_formula_vdot_make_sym_as_soi_at tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.Space2_Es_symbol_vdot_name_sym_as tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.Space_Es_symbol_vdot_string_off_sym_as tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.Space_Et_formula_tdot_Es_for_das tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.Et_symbol_of_es_symbol_sym_as tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.Space_Et_symbol_tdot_Es_symbol_sym_as tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.Let_ac_at_equal_Et_symbol_vdot_es_in tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.Let_dos_of_ste_equal_Dos_vdot_fun_in tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.Let_nam_as_equal_Es_tag_vdot_name_for_at_in tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.Let_nam_as_equal_Tag_vdot_name_Et_symbol_vdot_name_in tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.Let_soi_as_equal_Sole_index_vdot_make_count_soi_at_in tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.Space_Tag_vdot_map_left_Et_symbol_vdot_ec_symbol_off_et_symbol_tag_at tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.Space_Tag_vdot_map_left_Et_symbol_vdot_et_symbol_of_ec_symbol_tag_ac tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.Space_Tag_vdot_map_left_Et_symbol_vdot_is_ec_symbol_off_et_symbol_tag_at tag_ent_l ->
      tag_ent_l
  | Camlline_duo_function_formula_t.Try_et_symbol_of_es_symbol tag_ent_l ->
      tag_ent_l

;;

(** {6 Iterating.} *)

let map f for_cdf = 
  let tag_ent_l = entity_tag_list_off_camlline_duo_function_formula for_cdf in
  List.map f tag_ent_l
;;

let iter f for_cdf = 
  let tag_ent_l = entity_tag_list_off_camlline_duo_function_formula for_cdf in
  List.iter f tag_ent_l ;;

let map2 f for_cdf_1 for_cdf_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_duo_function_formula for_cdf_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_duo_function_formula for_cdf_2 in
  List.map2 f tag_ent_l_1 tag_ent_l_2
;;

let iter2 f for_cdf_1 for_cdf_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_duo_function_formula for_cdf_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_duo_function_formula for_cdf_2 in
  List.iter2 f tag_ent_l_1 tag_ent_l_2 
;;

