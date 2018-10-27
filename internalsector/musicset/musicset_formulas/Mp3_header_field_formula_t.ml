(** {3 Mp3_header_field_formula_t} *)


(** {6 Typing_for_formula} *)

type mp3_header_field_formula =
  | Mp3_header_field_onebit_formula of Mp3_header_field_onebit_formula_t.mp3_header_field_onebit_formula
  | Mp3_header_field_twobits_formula of Mp3_header_field_twobits_formula_t.mp3_header_field_twobits_formula
  | Mp3_header_field_fourbits_formula of Mp3_header_field_fourbits_formula_t.mp3_header_field_fourbits_formula
  | Mp3_header_field_elevenbits_formula of Mp3_header_field_elevenbits_formula_t.mp3_header_field_elevenbits_formula
;;


(** Mp3_header_field_formula_t at 18:37:30 on 27 Jun 2013. created by version v2.3 of generator *)



