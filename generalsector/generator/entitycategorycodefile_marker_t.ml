(** {3 A Tag for a Entitycategorycodefile.} *)

module Ecc_t = Entitycategorycodefile_t
module Dbt_t = Doublet_t
module Tci_t = Tree_canonical_index_t

(** {6 Typing.} *)

type entitycategorycodefile_tag = (Ecc_t.entitycategorycodefile, Tci_t.tree_canonical_index) Dbt_t.doublet
;;
