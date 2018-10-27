(** {3 Token_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Token_formula_t.Connective_formula for_con ->
  Token_symbol_t.Connective_symbol
      (Connective_formula_v.symbol_of_formula for_con)
  | Token_formula_t.Leftparenthesis _ ->
      Token_symbol_t.Leftparenthesis
  | Token_formula_t.Rightparenthesis _ ->
      Token_symbol_t.Rightparenthesis
;;


(** {6 Building_and_storing_basic_sons} *)

let build_n_store sym_tok soi_tok =
  
  let tag_tok = Tag_v.make sym_tok soi_tok in
  let sym_str_l = String_symbol_list_by_token_tag_provider_v.provide tag_tok in
  let soi_str_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_str_l) soi_tok in
  List.map2 Tag_v.make sym_str_l soi_str_l
;;


(** {6 Making_for_formula} *)

let make sym_tok soi_tok =
  match sym_tok with
  | Token_symbol_t.Connective_symbol sym_con ->
    Token_formula_t.Connective_formula
      (Connective_formula_v.make sym_con soi_tok)
  | Token_symbol_t.Leftparenthesis ->
      let tag_str_l = build_n_store sym_tok soi_tok in
        Token_formula_t.Leftparenthesis tag_str_l
  | Token_symbol_t.Rightparenthesis ->
      let tag_str_l = build_n_store sym_tok soi_tok in
        Token_formula_t.Rightparenthesis tag_str_l
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_tok =
  let soi_tok = Tag_v.sole_index_off_tag tag_tok in
  let sym_tok = Tag_v.symbol_off_tag tag_tok in
  make sym_tok soi_tok
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_token_formula = function
  | Token_formula_t.Connective_formula for_con ->
      Connective_formula_v.string_tag_list_off_connective_formula for_con
  | Token_formula_t.Leftparenthesis tag_str_l -> tag_str_l
  | Token_formula_t.Rightparenthesis tag_str_l -> tag_str_l
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_token_tag tag_tok =
  let for_tok = retrieve tag_tok in
  string_tag_list_off_token_formula for_tok
;;


(** Token_formula_v at 17:23:11 on 13 Jul 2013. created by version v2.3 of generator *)



