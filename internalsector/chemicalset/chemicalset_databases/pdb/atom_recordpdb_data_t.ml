(** {3 A value for an ATOM record in a Pdb file.} *)


type atom_recordpdb_data = (Atom_recordpdb_keypdb_t.atom_recordpdb_keypdb, string) Doublet_t.doublet
;;
(** This couple allows to avoid using Hash.*)
