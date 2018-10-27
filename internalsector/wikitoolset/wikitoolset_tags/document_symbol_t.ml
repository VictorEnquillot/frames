(** {3 The Symbol for a Document}  *)

(** {6 Aliasing} *)

module Dts_t = Document_text_symbol_t

(** {6 Typing} *)

type document_symbol =
  | Document_pdf
  | Document_willforge
  | Document_text_symbol of Dts_t.document_text_symbol
;;

(**
Il existe trois sortes de Documents.

             document
     /         |                  \
  pdf      willforge              text
                             /    /    \             \
            Lemondediplomatique Rue89 LaVieDesIdees Ceo

Arbre des Constructeurs (CT) de Document_symbol 
*)
