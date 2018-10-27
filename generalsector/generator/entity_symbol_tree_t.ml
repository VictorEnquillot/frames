(** {3 The Tree of all Entity_symbol for an Entity.}  *)

(** {6 Modules.} *)

module Ens_t = Entity_symbol_t
module Tre_t = Tree_t

(** {6 Typing.} *)

type entity_symbol_tree = Ens_t.entity_symbol Tre_t.tree
;;
(** 
*)

