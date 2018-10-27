(** {6 Typing_for_formula} *)

type camlparagraph_for_formula_formula =
  | Camlparagraph_for_formula_let_formula of Camlparagraph_for_formula_let_formula_t.camlparagraph_for_formula_let_formula
  | Camlparagraph_for_formula_type of Section_tag_t.section_tag list
;;
