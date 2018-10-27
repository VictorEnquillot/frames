(** {3 A Tag for a Constructor.} *)

module Cns_t = Constructor_symbol_t
module Dbt_t = Doublet_t
module Tci_t = Tree_canonical_index_t

(** {6 Typing.} *)

type constructor_tag = (Cns_t.constructor_symbol, Tci_t.tree_canonical_index) Dbt_t.doublet
;;
(** Example
    (Constructor_symbol_t.Constructor_fictive_symbol
       (Constructor_symbol_t.Leaf_constructor_fictive_symbol
         (Constructor_symbol_t.Constructor_leave_symbol "f_1m")),
      [3; 1; 2; 1])
    It is an element of the Constructor Constructor_path.
    The int type is the depth of the Constructor_symbol in the Constructor Tree
    of a Top Entity (of the codefile).
*)
