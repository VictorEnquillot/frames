(** {3 The Symbol to refer to a leftextended non-glycine Molecule_aminoacid.} *)

module Mas_t = Molecule_aminoacid_symbol_t
module Dbt_t = Doublet_t
module Idx_p = Index_p    (* ambiguous : Count is a better name *)

type polypeptide_subunit_symbol = 
  | Proline_leftextended_symbol of Idx_p.index
  | Regular_leftextended_symbol of (Idx_p.index, Mas_t.molecule_aminoacid_regular_symbol) Dbt_t.doublet
;;
(** To exclude any Glycine appearing in the sequence 
    and making it be absorbed by the first following non-glycine molecule_aminoacid.

    The list of Glycine (if any) at the left of a non-glycine molecule_aminoacid is coupled
    to it (the list may be empty) :

    molecule_aminoacid sequence               polypeptide_subunit sequence
    [g; g; ... ; g; n]       ->      ([g, g, ..., g], n) 
    [g; n; n]                ->      [([g], n); ([], n)] 
*) 
