(** {3 Operation_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Operation_formula_t.Successor _ ->
      Operation_symbol_t.Successor
  | Operation_formula_t.Addition _ ->
      Operation_symbol_t.Addition
  | Operation_formula_t.Multiplication _ ->
      Operation_symbol_t.Multiplication
;;


(** {6 Building_and_storing_basic_sons} *)

let build_n_store sym_ope soi_tok =
  let sym_tok = Token_symbol_v.token_symbol_of_operation_symbol sym_ope in
  let tag_tok = Tag_v.make sym_tok soi_tok in
  let sym_str_l = String_symbol_list_by_token_tag_provider_v.provide tag_tok in
  let soi_str_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_str_l) soi_tok in
  List.map2 Tag_v.make sym_str_l soi_str_l
;;


(** {6 Making_for_formula} *)

let make sym_ope soi_tok =
  match sym_ope with
  | Operation_symbol_t.Successor ->
      let tag_str_l = build_n_store sym_ope soi_tok in
        Operation_formula_t.Successor tag_str_l
  | Operation_symbol_t.Addition ->
      let tag_str_l = build_n_store sym_ope soi_tok in
        Operation_formula_t.Addition tag_str_l
  | Operation_symbol_t.Multiplication ->
      let tag_str_l = build_n_store sym_ope soi_tok in
        Operation_formula_t.Multiplication tag_str_l
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_ope =
  let soi_tok = Tag_v.sole_index_off_tag tag_ope in
  let sym_ope = Tag_v.symbol_off_tag tag_ope in
  make sym_ope soi_tok
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_operation_formula = function
  | Operation_formula_t.Successor tag_str_l -> tag_str_l
  | Operation_formula_t.Addition tag_str_l -> tag_str_l
  | Operation_formula_t.Multiplication tag_str_l -> tag_str_l
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_operation_tag tag_ope =
  let for_ope = retrieve tag_ope in
  string_tag_list_off_operation_formula for_ope
;;


(** Operation_formula_v at 9:38:27 on 16 Jul 2013. created by version v2.4 of generator *)



