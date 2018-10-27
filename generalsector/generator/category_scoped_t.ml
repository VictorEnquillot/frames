(** {3 The Scope for a Category for an Entity}  *)

module Cts_t = Category_symbol_t
module Scp_t = Scope_t
module Dbt_t = Doublet_t

type category_scoped = (Cts_t.category_symbol, Scp_t.scope) Dbt_t.doublet;;
(** It associates a category and a scope - for an entity *)
