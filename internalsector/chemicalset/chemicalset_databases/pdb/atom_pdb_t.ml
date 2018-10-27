(* $Id: atom_pdb.mli,v 1.11 2007-09-19 19:20:17 colonna Exp $ *)

(** {3 An Atom Particle of the Pdb} *)

type atom_pdb = {
    atom_partial_keypdb : Keypdb_t.keypdb;
    atom_x_pdb : float;
    atom_y_pdb : float;
    atom_z_pdb : float;
    atom_b_pdb : float;
  }
;;
(** Partial_key should be computed from Atom Record information only. *)
