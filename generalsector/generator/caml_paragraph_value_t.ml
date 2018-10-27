(** {3 A Value for a Caml Paragraph.}  *)

module Clv_t = Caml_line_value_t

type caml_paragraph_value = Clv_t.caml_line_value list;;
(** the caml_line content depends upon codefile_symbol 
    that is upon target. *)
