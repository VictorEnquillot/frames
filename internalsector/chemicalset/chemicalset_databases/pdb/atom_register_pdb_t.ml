(* $Id: $Exp *)

(** {3 A Register to store Recordpdb_t_model information. } *)

(** These registers are created once and never modified afterwards. 
    - creation is done with Register_pdb_v.make_of_name. 
    - retrieve : retrieves a value for a key or raises Not_found.
    - provide : as retrieve and build_and_store values in empty register.*)

type register_pdb = {
    name : string;
    table : table;
  }
and table = (key, value) Hashtbl.t
and entry = key * value
and key = Atom_keypdb_t.atom_keypdb
and value = Atom_pdb.atom_pdb
;;
(** This Pdb_register needs [Atom_pdb] and [Atom_pdb_v] to be filled. *)



