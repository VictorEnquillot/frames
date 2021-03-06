(** {3 Camlline_uno_function_any_symbol_t.}  *)

(** {6 Typing} *)

type camlline_uno_function_any_formula =
 | Comment_s_comment of Entity_tag_t.entity_tag list
  | Es_any_vdot_fullname_ac_as of Entity_tag_t.entity_tag list
  | Es_any_vdot_longname_ac_as of Entity_tag_t.entity_tag list
  | Es_any_vdot_make_ac_as of Entity_tag_t.entity_tag list
  | Es_any_vdot_name_ac_as of Entity_tag_t.entity_tag list
  | Es_any_vdot_print_ppf_ac_as of Entity_tag_t.entity_tag list
  | Es_any_vdot_string_off_ac_as of Entity_tag_t.entity_tag list
  | Format_sprintf_fullname_ac_as_string_off_ac_as of Entity_tag_t.entity_tag list
  | Format_sprintf_longname_Es_tdot_string_capitalize_name_ac_as of Entity_tag_t.entity_tag list
  | Left_off_doublet of Entity_tag_t.entity_tag list
  | Left_off_triplet of Entity_tag_t.entity_tag list
  | Let_fullname_ac_as_equal of Entity_tag_t.entity_tag list
  | Let_longname_ac_as_equal of Entity_tag_t.entity_tag list
  | Middle_off_triplet of Entity_tag_t.entity_tag list
  | Pipe_datastructure_ac_as_arrow of Entity_tag_t.entity_tag list
  | Right_off_doublet of Entity_tag_t.entity_tag list
  | Right_off_triplet of Entity_tag_t.entity_tag list
  | Double_quote_Current of Entity_tag_t.entity_tag list
  | Title_category of Entity_tag_t.entity_tag list
  | Title_functionalities of Entity_tag_t.entity_tag list
;;
