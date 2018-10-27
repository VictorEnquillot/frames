(** {3 An Abstraction of the Covalent Bond_state in a Molecule
       between Atoms, Blocks, Fragments, Groupings.} *)


type ('a, 'b) bond = 
  | Extended of ('a, 'b) bond_extended 
  | Pair of ('a, 'b) bond_pair

and ('a, 'b) bond_extended = {
    e_characteristic : 'a;
    list : 'b list;
  }
 
and ('a, 'b) bond_pair = {
    p_characteristic : 'a;
    pair : 'b Pair_t.pair; 
  }
;;
(** An extended bond extends through several consecutive vertices of a tree.
    A bond_pair is a tree vertex. 
  - 'a defines the charateristic of the bond : multiplicity or symbol or designator 
  - 'b the element of the bond : atom or  block or fragment or molecule ...
*)

(** 
    tobind is to make an internal bond 
    tobond is to make an external bond. 
    toallbind is to make all possible internal bond 
    toallbond is to make all possible external bond. 
*) 
