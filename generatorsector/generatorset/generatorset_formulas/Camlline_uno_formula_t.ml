type camlline_uno_formula =
  | Camlline_uno_camlfile_formula of Camlline_uno_camlfile_formula_t.camlline_uno_camlfile_formula
  | Camlline_uno_camltype_formula of Camlline_uno_camltype_formula_t.camlline_uno_camltype_formula
  | Camlline_uno_function_formula of Camlline_uno_function_formula_t.camlline_uno_function_formula
(* ***
  | Camlline_uno_module_formula of Camlline_uno_module_formula_t.camlline_uno_module_formula
  | Camlline_uno_value_formula of Camlline_uno_value_formula_t.camlline_uno_value_formula
*** *)
;;
