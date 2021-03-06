(** {3 The Data for a Molecule Pdb Pack.} *)


type molecule_packpdb_data = (Molecule_packpdb_keypdb_t.molecule_packpdb_keypdb, string) Capped_list_t.capped_list
;;

(** TODO its is a subpack *)

(*    molecule_packpdb_keypdb *)
(*         | *)
(*         | calculated from record string of ATOM packpdb *)
(*         | marker : Atom_molecule_name *)
(*         | Chain_id position is the same for all strings in a Cluster *)
(*         v *)
(*    molecule_packpdb_markerpdb *)

(*    packpdb_data *)
(*         |                       *)
(*         | gathered from each Cluster  *)
(*         | using recorpdb_keypdb of each record *)
(*         | all Records in a Pack have same Symbol and same Chain_id *)
(*         v       *)
