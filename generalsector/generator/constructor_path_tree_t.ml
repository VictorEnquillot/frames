(** {3 The Tree of all Constructor_path for a Top Entity.}  *)

(** {6 Modules.} *)

module Cnp_t = Constructor_path_t
module Tre_t = Tree_t

(** {6 Typing.} *)

type constructor_path_tree = Cnp_t.constructor_path Tre_t.tree
;;
(** 
*)

