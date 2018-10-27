(** {3 The Symbol for an External Document}  *)

(** {6 Aliasing} *)

module Edts_t = External_document_pdf_symbol_t

(** {6 Typing} *)

type external_document_symbol =
  | External_document_pdf_symbol of Edps_t.external_document_pdf_symbol
  | External_document_url
;;

(**
Il existe deux sortes de Documents.

           document
     /                  \
  pdf                   url
*)
