(** {3 A Tag for a Caml_Line.} *)

module Cns_t = Caml_Line_symbol_t
module Dbt_t = Doublet_t

(** {6 Typing.} *)

type caml_line_tag = (Cns_t.caml_line_symbol, int) Dbt_t.doublet
;;
(** It is the lowest depth of the constructor in the line
*)
