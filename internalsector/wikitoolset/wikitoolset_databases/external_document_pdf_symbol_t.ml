(** {3 The Symbol for a Document}  *)

(** {6 Aliasing} *)

module Dps_t = Document_pdf_symbol_t
module Dts_t = Document_text_symbol_t
module Dms_t = Document_willforge_symbol_t

(** {6 Typing} *)

type document_pdf_symbol =
  | Document_pdf_symbol of
  | Document_text_symbol of Dts_t.document_text_symbol
  | Document_willforge_symbol of Dms_t.document_willforge_symbol
;;

(**
Il existe trois sortes de Documents.
*)
