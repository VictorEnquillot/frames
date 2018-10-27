(** {3 The Tree of all Constructor_tag for a Top Entity.}  *)

(** {6 Modules.} *)

module Cnm_t = Constructor_tag_t
module Tre_t = Tree_t

(** {6 Typing.} *)

type constructor_tag_tree = Cnm_t.constructor_tag Tre_t.tree
;;
(** 
*)

