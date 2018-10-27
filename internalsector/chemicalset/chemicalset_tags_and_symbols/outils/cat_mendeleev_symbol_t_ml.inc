(** {3 The Mendeleev classification of atomic symbols.} *)

type mendeleev_symbol =
 | H                                                                                   | He
 | Li | Be                                                    | B  | C  | N  | O  | F  | Ne
 | Na | Mg                                                    | Al | Si | P  | S  | Cl | Ar
 | K  | Ca | Sc | Ti | V  | Cr | Mn | Fe | Co | Ni | Cu | Zn  | Ga | Ge | As | Se | Br | Kr
 | Rb | Sr | Y  | Zr | Nb | Mo | Tc | Ru | Rh | Pd | Ag | Cd  | In | Sn | Sb | Te | I  | Xe
 | Cs | Ba      | Hf | Ta | W  | Re | Os | Ir | Pt | Au | Hg  | Tl | Pb | Bi | Po | At | Rn
 | Fr | Ra      | Rf | Db | Sg | Bh | Hs | Mt | Uun| Uuu| Uub

 | La | Ce | Pr | Nd | Pm | Sm | Eu | Gd | Tb | Dy | Ho | Er  | Tm | Yb | Lu
 | Ac | Th | Pa | U  | Np | Pu | Am | Cm | Bk | Cf | Es | Fm  | Md | Ndod | Lr
;;

(** The Mendeleev table lists the symbols attached to atomic numbers (in
    fact, an atomic number is the number of electrons of an atom,
    characterizing the chemical behaviour of this atom).

    By default, a chemical symbol also refers to an isotope of the atom: the
    most abundant isotope of this element in nature.

    Reference :
    {{:http://www.chemicalelements.com/}
       http://www.chemicalelements.com/}. 
*)

type nucleon_cast = {
     proton_count : proton_count;
     neutron_count : neutron_count;
  }
and proton_count = Ordinal_p.ordinal
and neutron_count = Index_p.index
;;
(** The nucleon_cast is nucleon composition for an atom. *)

type nucleon_count = Ordinal_p.ordinal
;;
(** The total number of nucleons for an atom. *)

type valence = Index_p.index
;;
(** The valence of an element is non-negative integer.
    It is the number of monovalent bonds it may form in a molecule. *)

type tie = Index_p.index
;;
(** The tie of an element is a non-negative integer.
    It is the number of covalent neighbors it may have in a molecule. *)

(* http://en.wikipedia.org/wiki/Atomic_mass_unit

The unified atomic mass unit (symbol: u), also called the dalton (symbol: Da), is a unit used for indicating mass on an atomic or molecular scale. 

It is defined as one twelfth of the rest mass of an unbound atom of carbon-12 in its nuclear and electronic ground state 

Tt has a value of 1.660538782(83)×10−27 kg. 

The CIPM have categorised it as a "non-SI unit whose values in SI units must be obtained experimentally".
*)
