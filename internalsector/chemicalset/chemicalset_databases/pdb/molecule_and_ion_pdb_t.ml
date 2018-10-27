(* $Id: molecule_and_ion_pdb.mli,v 1.1 2007-05-06 17:51:16 colonna Exp $ *)

(** {3 Molecules and Ions of the Pdb} *)

type t =
  | Molecule of molecule
  | Ion of ion 
and molecule =
  | HOH
  | DMS
  | NAD
  | NADH
  | NADP
and ion =
  | CA
  | HG
  | PB
  | ZN
;;
(** Molecules or Ions present in PDB : HET and FORMUL records *)

val symbol_ion_list : string list;;
(**  The list of ionic symbols (3 Capital letters) found in PDB *)

val symbol_molecule_list : string list;;
(**  The list of all molecular symbols (3 Capital letters) found in PDB *)

val symbol : t -> string;;
(** The symbol found in PDB for a [t] (Molecule or Ion) *) 

val t_of_symbol : string -> t;;
(** The type [t] of a molecular or an ionic symbol found in PDB *)

val name : t -> string;;
(** The name of the Molecule or an Ion of type [t] *)
