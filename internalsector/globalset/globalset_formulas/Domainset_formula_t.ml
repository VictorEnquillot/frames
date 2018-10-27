(** {3 Domainset_formula_t}  *)

(** {6 Typing} *)

type mainset_formula =
  | Generatorset of Category_tag_t.category_tag list
  | Figureset of Category_tag_t.category_tag list
  | Musicset of Category_tag_t.category_tag list
  | Chemicalset of Category_tag_t.category_tag list
  (* | Modelset of Category_tag_t.category_tag list *)
  (* | Moleculeset of Category_tag_t.category_tag list *)
  (* | Forcefieldset of Category_tag_t.category_tag list *)
  (* | Physicalset of Category_tag_t.category_tag list *)
  (* | Primitiveset of Category_tag_t.category_tag list *)
  (* | Prototypeset of Category_tag_t.category_tag list *)
  (* | Simulationset of Category_tag_t.category_tag list *)
  (* | Wavefunctionset of Category_tag_t.category_tag list *)
  (* | Wikitoolset of Category_tag_t.category_tag list *)
;;
