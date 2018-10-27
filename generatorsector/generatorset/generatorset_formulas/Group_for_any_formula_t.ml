(** {6 Typing} *)

type group_for_any_formula =
  | Group_for_any_header_formula of Group_for_any_header_formula_t.group_for_any_header_formula
  | Group_for_any_body_formula of Group_for_any_body_formula_t.group_for_any_body_formula
  | Group_for_any_footer_formula of Group_for_any_footer_formula_t.group_for_any_footer_formula
;;

