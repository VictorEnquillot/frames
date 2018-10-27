(** {3 Category_formula.}  *)

(** {6 Typing} *)

type category_formula = 
  | Any of Entity_tag_t.entity_tag list              (* a *)
  | Formula of Entity_tag_t.entity_tag list          (* f *)
  | Mark of Entity_tag_t.entity_tag list             (* m *)
  | Path of Entity_tag_t.entity_tag list             (* p *)
  | Property of Entity_tag_t.entity_tag list         (* w for what ? *)
  | Provider of Entity_tag_t.entity_tag list         (* r for retrieve ? *)
  | Symbol of Entity_tag_t.entity_tag list           (* s *)
  | Tag of Entity_tag_t.entity_tag list              (* t *)
  | Value of Entity_tag_t.entity_tag list            (* v *)
  | Empty of Entity_tag_t.entity_tag list            (* for external entity *)
;;
