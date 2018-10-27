(** {3 The Context for a Paragraph of Caml_line in an Item.}  *)

(** {6 Modules.} *)

module Cnp_t = Constructor_path_t
module Kyl_t = Key_list_t
module Dbt_t = Doublet_t

(** {6 Typing.} *)

type caml_paragraph_context = (Cnp_t.constructor_path, Kyl_t.key_list) Dbt_t.doublet
;;
(* Kyl_t.key_list starts with item_symbol *)
