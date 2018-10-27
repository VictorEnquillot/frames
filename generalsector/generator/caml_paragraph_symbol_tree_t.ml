(** {3 The Tree of all Caml_Paragraph_symbol for an Item.}  *)

(** {6 Modules.} *)

module Cps_t = Caml_paragraph_symbol_t
module Tre_t = Tree_t

(** {6 Typing.} *)

type caml_paragraph_symbol_tree = Cps_t.caml_paragraph_symbol Tre_t.tree
;;
(** 
*)

