(** {6 Typing} *)

type section_for_any_header_constant_formula =
  | Let_documentation of Group_tag_t.group_tag list
  | Let_nam_cod_equal of Group_tag_t.group_tag list
  | Type_et_any_equal of Group_tag_t.group_tag list
;;

