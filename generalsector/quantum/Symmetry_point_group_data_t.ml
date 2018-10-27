(** Any transformation of the group is an element of the Group and E the identity.
    Product :    
    - Any product of two elements is an element of the Group.
    - Is associative
    - usually not commutative 
    - each element has an inverse abd (AB)^-1 = (B^-1) (A^-1)

    - if commutative a group is abelian.

   Cyclic groups:
     any element can be obtained by the iteration of any of them.

   Sub-groups
     an element of a group may belong to different sub-groups.

   Order of an element
     if A is an element of G, the smallest n giving A^n = E is the order of A

   Period of an element
    {A} = A, A^2, ..., A^n = E it is a cyclic sub-group of G.

   Order of a Group : the number of elements.
     The order of a sub-group is a divisor of the order of the group. 

   Representation of a group is the set of the matrices of the transformations
   representing the elements of the group.

   The Basis of the representation (Landau p. 425) are orthonormal functions 
   of the coordinates of the molecule atoms.

   The Character is the trace of the matrix of an element.
   Different representations may have different characters. 

   The number r of irreducible representations of a group is the number of
   its classes.

   The sum of the square of character modules of an irreducible representation 
   is the order of the group.

   Rotation axes, mirror planes and inversion centres are symmetry elements
   not operations. 
   The rotation axis of highest order is known as the principal rotation axis. 
   It is conventional to set the Cartesian z axis of the molecule 
   to contain the principal rotation axis. 
*)

(** see [[Character tables for chemically important 3D point groups]] *)

module Symmetry_point_group_symbol_t = Symmetry_point_group_symbol_t

type group_representation = 
  | A of subscript (* symmetrical_representation one dimension *)
  | B of subscript (* asymmetrical_representation  one dimension *)
  | E of subscript (* doubly_degenerate_representation  two dimensions *)
  | E1 of subscript (* doubly_degenerate_representation  two dimensions *)
  | E2 of subscript (* doubly_degenerate_representation  two dimensions *)
  | T of subscript (* triply_degenerate_representation three= bnnpo)mmlé dimensions *)
and subscript = 
  | Index of index
  | Prime of prime
  | Gerade of gerade
  | Index_primed of index * prime 
  | Index_gerade of index * prime 
and index =
  | One
  | Two
  | Three
and prime =
  | Single
  | Double
and gerade =
  | G
  | U
;;

(**
- A, when rotation around the principal axis is symmetrical
- B, when rotation around the principal axis is asymmetrical
- E and T are doubly and triply degenerate representations, respectively
- when the point group has an inversion center, the subscript g (German: gerade or even) signals no change in sign, and the subscript u (ungerade or uneven) a change in sign, with respect to inversion.
- with point groups C’¡çv and D’¡çh the symbols are borrowed from angular momentum description: ’¦², ’¦°, ’¦¤.

*)

type group_element =
  | E
  | C of underscript * superscript  
  | S of underscript * superscript  
  | Sigma_v of plane_symbol
  | Sigma_prime_v of plane_symbol
and underscript = int
and superscript = int
and plane_symbol =
  | P_xy | P_xz | P_yz 
;;

(** 
http://en.wikipedia.org/wiki/Symmetry_operation 
*)

type symmetry_point_group_data = {
    symbol : Symmetry_point_group_symbol_t.symmetry_point_group_symbol;
    order : int; 
    elements : group_element array;  
    representations : group_representation array;  
    character_table : character array array;
  }
and character = | One | Zero | Minus_one | Theta | Theta_c | I
;;
