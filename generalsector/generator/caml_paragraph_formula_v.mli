(** {3 The functionalities for a Formula for a Caml Paragraph.}  *)

(** {6 Retrieving.} *)

val retrieve :
    Caml_paragraph_symbol_t.caml_paragraph_symbol ->
      Caml_paragraph_formula_t.caml_paragraph_formula
;;

(** {6 Displaying.} *)

(** {6 Extracting.} *)

val caml_line_symbol_list_off_caml_paragraph_formula :
    Caml_paragraph_formula_t.caml_paragraph_formula ->
      Caml_line_symbol_t.caml_line_symbol list
;;

val caml_line_symbol_list_off_caml_paragraph_symbol :
    Caml_paragraph_symbol_t.caml_paragraph_symbol ->
      Caml_line_symbol_t.caml_line_symbol list
;;

