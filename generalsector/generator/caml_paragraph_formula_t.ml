(** {3 The Formula for a Caml Paragraph.}  *)

module Cls_t = Caml_line_symbol_t

type caml_paragraph_formula = Cls_t.caml_line_symbol list 
;;
(** the caml_line content depends upon codefile_symbol 
    that is upon target. 

N/B.: a paragraph is closed by ";;".*)
