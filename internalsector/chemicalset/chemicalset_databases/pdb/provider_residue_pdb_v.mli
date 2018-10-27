(* $Id:  Exp $ *)

(** {3 The provider for a Residue_pdb_t} *)

val provide_residue_pdb_insequence_number_by_residue_pdb_label : 
Residue_pdb_t.residue_label_pdb ->  Residue_pdb_t.insequence_number
;;
(** [let i = provide_residue_pdb_insequence_number_by_residue_pdb_label l;]

    [l] is the [residue_label_pdb] of the [residue_pdb].
    [i] is the [insequence_number] (effective sequence) of the [residue_pdb]. *)

val store_residue_pdb_insequence_number_by_residue_pdb_label :
    Residue_pdb_t.residue_label_pdb ->  Residue_pdb_t.insequence_number -> unit
;;
(** [store_residue_pdb_insequence_number_by_residue_pdb_label l i;;]
    Stores all [insequence_number] by [residue_label_pdb]
    into the [Register_pdb_v.residue_pdb_insequence_number_by_residue_pdb_label]

    [l] is the [residue_label_pdb] of a [residue_pdb].
    [i] is the [insequence_number] of a [residue_pdb]. *)

