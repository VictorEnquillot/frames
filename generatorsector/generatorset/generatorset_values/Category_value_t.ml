(** {3 Category_value_t}  *)

(** {6 Typing} *)

type category_value = 
  | Any of Entity_value_t.entity_value list              (* a *)
  | Formula of Entity_value_t.entity_value list          (* f *)
  | Mark of Entity_value_t.entity_value list             (* m *)
  | Path of Entity_value_t.entity_value list             (* p *)
  | Property of Entity_value_t.entity_value list         (* w for what ? *)
  | Provider of Entity_value_t.entity_value list         (* r for retrieve ? *)
  | Symbol of Entity_value_t.entity_value list           (* s *)
  | Tag of Entity_value_t.entity_value list              (* t *)
  | Value of Entity_value_t.entity_value list            (* v *)
  | Empty of Entity_value_t.entity_value list            (* for external entity *)
;;
