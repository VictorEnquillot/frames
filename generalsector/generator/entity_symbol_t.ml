(** {3 The Symbol for an Entity.}  *)

module Exs_t = Entity_external_symbol_t

(** {6 Typing.} *)

type entity_symbol = 
  | Entity_proper_symbol of entity_proper_symbol (* has a file of constructors *)
  | Entity_fictive_symbol of entity_fictive_symbol (* has no file of constructors *)
  | Entity_external_symbol of entity_external_symbol (* Ex.: Ordinal *)

and entity_proper_symbol = 
  | Entity_proper_datastructure_symbol of entity_proper_datastructure_symbol (* aggregate; polyglycine *)
  | Entity_local_symbol of entity_local_symbol  (* any locally defined entity *)

and entity_local_symbol = string

and entity_external_symbol = Exs_t.entity_external_symbol (* error_messages *)

and entity_proper_datastructure_symbol = string (* aggregate *)

and entity_fictive_symbol =
  | Entity_bare_symbol of entity_bare_symbol
  | Entity_barebasic_symbol of entity_barebasic_symbol
 
and entity_bare_symbol = string  (* "h_s" *)

and entity_barebasic_symbol =
  | String 
  | Integer
  | Float
  | Boolean
;;

(** The entity has as many part as the entity depth is low
    Example : atom  depth 3
      name                  is atom
      name_capitalized      is Atom
      abbreviation_argument is atm
      abbreviation_module   is At

    Example : atom_zerotied depth 2
      name                  is atom_zerotied
      name_capitalized      is Atom_zerotied
      abbreviation_argument is az
      abbreviation_module   is Az

    
 *)


