(** {3 The Value for an Input.}  *)

(** {6 Modules.} *)

module Cts_t = Category_symbol_t
module Ens_t = Entity_symbol_t
module Cfs_t = Codefile_symbol_t

(** {6 Typing.} *)

type target_value = {
  entity_proper_symbol : Ens_t.entity_proper_symbol;
  category_symbol : Cts_t.category_symbol;
  codefile_symbol : Cfs_t.codefile_symbol;
}
