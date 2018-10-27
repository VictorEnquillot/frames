(** {3 The Formula for an Item in a Codefile.}  *)

module Cps_t = Caml_paragraph_symbol_t
module Tre_t = Tree_t

type item_formula = Cps_t.caml_paragraph_symbol Tre_t.tree;;
(** A paragraph symbol is parametrized by the paragraph context. *)
