(** {3 The Symbol for a Constructor}  *)

(** {6 Aliasing} *)


(** {6 Typing} *)

type constructor_symbol = 
  | Constructor_container_symbol of Constructor_container_symbol_t.constructor_container_symbol
  | Constructor_es_symbolential_symbol of Cons_symbol_t.constructor_es_symbolential_symbol
;;
(**
A Constructor is not to be confused with an Entity.
A Constructor is used to define a Framestype (an Entity_categorized)

A Constructor is what follows each '|' sign in a type = definition.

There are two main kinds of Constructors:
- a Container which define a Formula
- a Essential which define a Symbol
*)
