(** {3 Onetied_formula_t} *)


(** {6 Typing_for_formula} *)

type onetied_formula =
  | Onetied_single_formula of Onetied_single_formula_t.onetied_single_formula
  | Onetied_double_formula of Onetied_double_formula_t.onetied_double_formula
  | Onetied_triple_formula of Onetied_triple_formula_t.onetied_triple_formula
  | Onetied_biconjugated_formula of Onetied_biconjugated_formula_t.onetied_biconjugated_formula
;;


(** Onetied_formula_t at 13:32:51 on 23 Jun 2013. created by version v2.2 of generator *)



