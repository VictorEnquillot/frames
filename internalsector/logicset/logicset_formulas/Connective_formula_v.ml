(** {3 Connective_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Connective_formula_t.Negation _ ->
      Connective_symbol_t.Negation
  | Connective_formula_t.Conjunction _ ->
      Connective_symbol_t.Conjunction
  | Connective_formula_t.Disjunction _ ->
      Connective_symbol_t.Disjunction
  | Connective_formula_t.Implication _ ->
      Connective_symbol_t.Implication
  | Connective_formula_t.Equivalence _ ->
      Connective_symbol_t.Equivalence
;;


(** {6 Building_and_storing_basic_sons} *)

let build_n_store sym_con soi_tok =
  let sym_tok = Token_symbol_v.token_symbol_of_connective_symbol sym_con in
  let tag_tok = Tag_v.make sym_tok soi_tok in
  let sym_str_l = String_symbol_list_by_token_tag_provider_v.provide tag_tok in
  let soi_str_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_str_l) soi_tok in
  List.map2 Tag_v.make sym_str_l soi_str_l
;;


(** {6 Making_for_formula} *)

let make sym_con soi_tok =
  match sym_con with
  | Connective_symbol_t.Negation ->
      let tag_str_l = build_n_store sym_con soi_tok in
        Connective_formula_t.Negation tag_str_l
  | Connective_symbol_t.Conjunction ->
      let tag_str_l = build_n_store sym_con soi_tok in
        Connective_formula_t.Conjunction tag_str_l
  | Connective_symbol_t.Disjunction ->
      let tag_str_l = build_n_store sym_con soi_tok in
        Connective_formula_t.Disjunction tag_str_l
  | Connective_symbol_t.Implication ->
      let tag_str_l = build_n_store sym_con soi_tok in
        Connective_formula_t.Implication tag_str_l
  | Connective_symbol_t.Equivalence ->
      let tag_str_l = build_n_store sym_con soi_tok in
        Connective_formula_t.Equivalence tag_str_l
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_con =
  let soi_tok = Tag_v.sole_index_off_tag tag_con in
  let sym_con = Tag_v.symbol_off_tag tag_con in
  make sym_con soi_tok
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_connective_formula = function
  | Connective_formula_t.Negation tag_str_l -> tag_str_l
  | Connective_formula_t.Conjunction tag_str_l -> tag_str_l
  | Connective_formula_t.Disjunction tag_str_l -> tag_str_l
  | Connective_formula_t.Implication tag_str_l -> tag_str_l
  | Connective_formula_t.Equivalence tag_str_l -> tag_str_l
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_connective_tag tag_con =
  let for_con = retrieve tag_con in
  string_tag_list_off_connective_formula for_con
;;


(** Connective_formula_v at 17:23:11 on 13 Jul 2013. created by version v2.3 of generator *)



