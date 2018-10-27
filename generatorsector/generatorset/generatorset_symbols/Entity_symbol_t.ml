(** {3 The Symbol for an Entity.}  *)

(** {6 Aliasing} *)


(** {6 Typing} *)

type entity_symbol = 
  | Entity_external_symbol of Entity_external_symbol_t.entity_external_symbol (* e.g.: Ordinal *)
  | Entity_fictive_symbol of Entity_fictive_symbol_t.entity_fictive_symbol (* has no constructor *)
  | Entity_proper_symbol of Entity_proper_symbol_t.entity_proper_symbol
;;
  
(**  
An `Entity' is any concept represented and manipulated by a Computer Program.

A Symbol for an Entity which is linked to its relative topological position
in a subtree DIFFERS for each Subtree
. 
There are three main kinds of `Entities' :
- Proper   
     which are defined by a `Framestype' and therefore by a `Module' 
     file in the current directory 
     They are Inner Nodes of the Constructor Tree (CT).

   Names :
     Their names are strictly defined as words separated by '_'. 
     The first word is the name of the Father entity of the Family.
     Then Subentities name add appended to form a string like :
              atom  depth = 1
              atom_zerotied  depth = 2
              atom_zerotied_cation  depth = 3
              atom_zerotied_cation_threeplus  depth = 4

     Each word coresponds to a well defined depth equal to its position
     in the name string.

    Important Remark :
     No extra '_' can be used.
      For example 
        atom_threetied_conjugated_conjugated_conjugated
      is no longer accepted as there does not exit any 
        atom_threetied_conjugated_conjugated
      and is replaced by
        atom_threetied_conjugatedconjugatedconjugated

   Entity_categorized :
     In Frames any Entity is always associated with a Category (symbol, tag, 
     formula, value) to be implemented as a Caml Module (for any Proper Entity
     there is usually 4 Modules to implement it). This couple is called an
     Entity_categorized or Ec.

     The name of an Entity_categorized is obtained by appending the name of 
     the category to that of the Entity.
     For example for the atom Family and category Symbol :
              atom_symbol
              atom_zerotied_symbol
              atom_zerotied_cation_symbol
              atom_zerotied_cation_threeplus_symbol

   Entity_categorized_content :
     In Frames a third information (the Content of the Camlfile) is necessary
     to fully characterized a Caml Module.
     This triplet information is named  Entity_categorized_content or Ecc

- Fictive 
      which are only `Constructors' and therefore have no Camlfile nor Category
      They are Leaves of the Constructor Tree (CT).
      (e.g. He - Mendeleev symbol, X - Coordinate)
- External
      which are already implemented in an other Domainset of Frames.
      (e.g. Ordinal, Tree defined in general/tools )


All these should be defined in domainset_entity_symbol.set file
*)


