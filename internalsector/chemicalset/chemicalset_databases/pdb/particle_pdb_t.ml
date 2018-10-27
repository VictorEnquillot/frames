(* $Id: atom_pdbs.mli,v 1.7 2007-08-22 17:37:01 colonna Exp $ *)

(** {3 An atomic Particle of the Pdb} *)

type particle_pdb = Atom_pdb_t.atom_pdb * Particle_t.position 
;;

