(** {6 Typing} *)

type group_for_any_body_formula =
  | Group_for_any_body_son_formula of Group_for_any_body_son_formula_t.group_for_any_body_son_formula
  | Group_for_any_body_top_formula of Group_for_any_body_top_formula_t.group_for_any_body_top_formula
  | Group_for_any_body_top_main_formula of Group_for_any_body_top_main_formula_t.group_for_any_body_top_main_formula
;;

