(** {3 The Symbol for an Entity Fictive.}  *)

(** {6 Aliasing} *)


(** {6 Typing} *)

type entity_fictive_symbol =
  | Entity_fictive_basicnullary_symbol of Entity_fictive_basicnullary_symbol_t.entity_fictive_basicnullary_symbol 
  | Entity_fictive_nullary_symbol of Entity_fictive_nullary_symbol_t.entity_fictive_nullary_symbol
;;
(** 
An Entity Fictive is a Nullary Constructor 
it has no implementation Camlfile
it is a Leaf of the Constructor Tree 
There are two kinds of such Entities :
- Nullary       
  Ex.: | "He" -> he 
- Basicnullary  
  Ex.: | "Polypeptide" -> polypeptide s
          where s is a string.

An Entity Fictive Nullary is a string defining the name of the Entity.
(e.g. "x" for X - Coordinate, "he" for He - Mendeleev symbol)

*)
