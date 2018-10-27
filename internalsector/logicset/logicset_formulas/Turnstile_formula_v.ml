(** {3 Turnstile_formula_v} *)


(** {6 Symbolizing_for_formula} *)

let symbol_of_formula = function
  | Turnstile_formula_t.Turnstile_true _ ->
      Turnstile_symbol_t.Turnstile_true
  | Turnstile_formula_t.Turnstile_false _ ->
      Turnstile_symbol_t.Turnstile_false
;;


(** {6 Building_and_storing_basic_sons} *)

let build_n_store sym_tur soi_tur =
  
  let tag_tur = Tag_v.make sym_tur soi_tur in
  let sym_str_l = String_symbol_list_by_turnstile_tag_provider_v.provide tag_tur in
  let soi_str_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
    1 (List.length sym_str_l) soi_tur in
  List.map2 Tag_v.make sym_str_l soi_str_l
;;


(** {6 Making_for_formula} *)

let make sym_tur soi_tur =
  match sym_tur with
  | Turnstile_symbol_t.Turnstile_true ->
      let tag_str_l = build_n_store sym_tur soi_tur in
        Turnstile_formula_t.Turnstile_true tag_str_l
  | Turnstile_symbol_t.Turnstile_false ->
      let tag_str_l = build_n_store sym_tur soi_tur in
        Turnstile_formula_t.Turnstile_false tag_str_l
;;


(** {6 Retrieving_for_formula} *)

let retrieve tag_tur =
  let soi_tur = Tag_v.sole_index_off_tag tag_tur in
  let sym_tur = Tag_v.symbol_off_tag tag_tur in
  make sym_tur soi_tur
;;


(** {6 Data_tag_listing_off_formula} *)

let string_tag_list_off_turnstile_formula = function
  | Turnstile_formula_t.Turnstile_true tag_str_l -> tag_str_l
  | Turnstile_formula_t.Turnstile_false tag_str_l -> tag_str_l
;;


(** {6 Data_tag_listing_off_tag} *)

let string_tag_list_off_turnstile_tag tag_tur =
  let for_tur = retrieve tag_tur in
  string_tag_list_off_turnstile_formula for_tur
;;


(** Turnstile_formula_v at 17:23:11 on 13 Jul 2013. created by version v2.3 of generator *)



