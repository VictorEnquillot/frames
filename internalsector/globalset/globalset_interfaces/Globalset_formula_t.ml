(** {3 Globalset_formula_t}  *)

(** {6 Typing} *)

type mainset_formula =
  | Generatorset of Category_tag_t.category_tag list
  | Figureset of Category_tag_t.category_tag list
  | Musicset of Category_tag_t.category_tag list
  | Chemicalset of Category_tag_t.category_tag list
;;
