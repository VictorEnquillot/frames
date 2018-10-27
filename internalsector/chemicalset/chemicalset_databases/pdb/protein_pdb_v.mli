(* $Id: protein_pdbs.mli,v 1.6 2007-09-19 19:20:17 colonna Exp $ *)

(** {3 The functions to handle a Pdb Protein.} *)

(** {6 Making.} *)

val make_protein_key : Protein_symbol_t.protein_symbol -> int -> 
  Keypdb_t.keypdb -> Keypdb_t.keypdb
;;

(** {6 Readings.} *)
(* *** TAKEN_OUT
val read_protein_description_of_file_name_pdb : File_format_t.file_name_pdb ->
  Protein_pdb_t.description 
;;

(** {6 Gathering.} *)

val labelled_chain_pdb_nth_of_protein_description : int -> 
  Protein_pdb_t.description -> Polypeptide_pdb_t.labelled_chain_pdb
(** n starts from 1 *)

val protein_sequence_pdb_of_protein_keypdb : Keypdb_t.keypdb ->  
  Protein_pdb_t.protein_sequence_pdb
;;

val protein_formula_pdb_of_protein_keypdb : Keypdb_t.keypdb ->  
  Protein_pdb_t.protein_formula_pdb
;;
(** Example : [|A:[|Gly; Ala; Pro|]; B:[|Gly; Ala; Ser|]|]. *)

(** [let q = of_molecule_symbol s;;]

    [s] is the [molecule_symbol] element in a [protein_path] 
    [q] is the [protein_sequence_pdb] included in [s]. *)

(** {6 Printings.} *)

val print_protein_keypdb : Format.formatter -> Keypdb_t.keypdb -> unit
;;
(** prints the [keypdb] of a [protein_pdb]. *)


val atom_description_list_of_atom_pdb_records : 
  Recordpdb_t.record list -> Atom_pdb_t.atom_pdb list
;;
(** [let l = atom_description_list_of_atom_pdb_records r];;

    [r] is the list of ATOM records of a PDB file.
    [l] is the list of the [description] of the atomic particle_pdbs in the file. *)


val particle_pdb_list_of_atom_pdb_records_and_id_pdb : Recordpdb_t.record list -> 
  Header_pdb_t.id_pdb -> Particle_pdb_t.particle_pdb list
;;
(** [let l = atom_particle_pdb_list_of_atom_pdb_records r i];;
    
    [r] is the list of ATOM records of a PDB file.
    [i] is the [id_pdb] of a PDB file.
    [l] is the list of the [particle_pdb]s in the file. *)
*)

