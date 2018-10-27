(** {3 The Tree of all Constructor_symbol for an Entity.}  *)

(** {6 Modules.} *)

module Cns_t = Constructor_symbol_t
module Tre_t = Tree_t

(** {6 Typing.} *)

type constructor_symbol_tree = Cns_t.constructor_symbol Tre_t.tree
;;
(** 
*)

