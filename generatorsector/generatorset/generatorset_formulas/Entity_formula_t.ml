(** {3 Entity_formula_t} *)

(** {6 Typing} *)

type entity_formula = 
(*
  | Entity_external_formula of Entity_external_formula_t.entity_external_formula
  | Entity_fictive_formula of Entity_fictive_formula_t.entity_fictive_formula
*)
  | Entity_proper_formula of Entity_proper_formula_t.entity_proper_formula      
;;
  
