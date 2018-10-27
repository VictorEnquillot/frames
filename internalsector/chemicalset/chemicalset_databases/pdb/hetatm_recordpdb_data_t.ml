(** {3 A value for an HETATM record in a Pdb file.} *)


type hetatm_recordpdb_data = (Hetatm_recordpdb_keypdb_t.hetatm_recordpdb_keypdb, string) Doublet_t.doublet
;;
(** This couple allows to avoid using Hash.*)
