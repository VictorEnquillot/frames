(** {3 Entity_external_formula} *)

(** {6 Typing} *)

type entity_external_formula =
  | Entity_external_constrained_formula of Entity_external_constrained_formula_t.entity_external_constrained_formula 
  | Entity_external_tool_formula of Entity_external_tool_formula_t.entity_external_tool_formula 
  | Entity_external_datastructure_formula of Entity_external_datastructure_formula_t.entity_external_datastructure_formula 
;;
