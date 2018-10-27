(* $Id: atom_pdbs.mli,v 1.7 2007-08-22 17:37:01 colonna Exp $ *)

val keypdb_of_particle_pdb : Particle_pdb_t.particle_pdb -> Atom_keypdb_t.atom_keypdb 
;;

val position_of_particle_pdb : Particle_pdb_t.particle_pdb -> Particle_t.position
;;

val particle_pdb_of_keypdb : Atom_keypdb_t.atom_keypdb -> Particle_pdb_t.particle_pdb
;;
(** [let p = particle_pdb_of_keypdb k;;]
  
    [k] is a [keypdb].
    [p] is the [particle_pdb] associated with it. *)

val particle_pdb_of_record_atom : Recordpdb_t.record -> 
  Header_pdb_t.id_pdb -> Particle_pdb_t.particle_pdb
;;
(** atomic particle_pdb extracted from an ATOM Pdb record. *)

val print_particle_pdb : Format.formatter -> Particle_pdb_t.particle_pdb -> unit
;;

val print_particle_pdbs : Format.formatter -> Particle_pdb_t.particle_pdb array -> 
  unit
;;

val read_coordinate : Scanf.Scanning.scanbuf -> Tokenpdb_t.float_8 
;;
