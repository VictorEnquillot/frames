(** {3 A Tag for a Caml_Paragraph.} *)

module Cns_t = Caml_paragraph_symbol_t
module Dbt_t = Doublet_t

(** {6 Typing.} *)

type caml_paragraph_tag = (Cns_t.caml_paragraph_symbol, int) Dbt_t.doublet
;;
(** Example

    It is an element of the Caml_Paragraph Constructor_path.
    The int type is the depth of the Caml_Paragraph_symbol in the Caml_Paragraph Tree
    of a Top Entity (of the codefile).
*)
