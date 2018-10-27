(** {3 The Symbol for a Polypeptide_subunit.} *)



(** {6 Aliasing} *)



(** {6 Typing} *)

type polypeptide_subunit_symbol = 
  | Proline_leftextended of Index_p.index
  | Regular_leftextended of (Index_p.index, Molecule_aminoacid_fragmented_regular_symbol_t.molecule_aminoacid_fragmented_regular_symbol) Doublet_t.doublet
;;
(** To exclude any Glycine appearing in the sequence 
    and making it be absorbed by the first following non-glycine molecule_aminoacid.

    The list of Glycine (if any) at the left of a non-glycine molecule_aminoacid is coupled
    to it (the list may be empty) :

    molecule_aminoacid sequence               polypeptide_subunit sequence
    [g; g; ... ; g; n]       ->      ([g, g, ..., g], n) 
    [g; n; n]                ->      [([g], n); ([], n)] 
*) 



