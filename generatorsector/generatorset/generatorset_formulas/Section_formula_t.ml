type section_formula =
  | Section_for_any_formula of Section_for_any_formula_t.section_for_any_formula
  | Section_for_formula_formula of Section_for_formula_formula_t.section_for_formula_formula
  | Section_for_symbol_formula of Section_for_symbol_formula_t.section_for_symbol_formula
;;
