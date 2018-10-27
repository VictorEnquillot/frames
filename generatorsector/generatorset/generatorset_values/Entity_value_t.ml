(** {6 Typing} *)

type entity_value = 
(* ***
  | Entity_external_value of Entity_external_value_t.entity_external_value
  | Entity_fictive_value of Entity_fictive_value_t.entity_fictive_value
*** *)
  | Entity_proper_value of Entity_proper_value_t.entity_proper_value
;;
