(** {3 The Keypdb for a Pack in Pdb File} *)


type packpdb_keypdb = (Packpdb_markerpdb_t.packpdb_markerpdb, Clusterpdb_keypdb_t.clusterpdb_keypdb) Doublet_t.doublet
;;
(** The char list is generally reduced to e
    or is composed of Chainid character
    ANISOU [char]
    ATOM [char]
    DBREF1 [char]
    DBREF2 [char]
    DBREF [char]
    HELIX [char]
    HETATM [char]
    HET [char]
    MODRES [char]
    SEQADV [char]
    SEQRES [char]
    TER [char]
    SHEET [char ]
    CISPEP [char; char]
    LINK [char; char]
    SSBOND [char; char]
    SITE [char; char; char; char]
*)

(* Data hierarchy : *)

(*    atom_value *)

(*    fieldpdb_data *)

(*    recordpdb_data *)
(*         |  *)
(*         v *)
(*    recordpdb_keypdb *)
(*         | *)
(*         | calculated from record string  *)
(*         | Symbol * Chain_id * ...  *)
(*         | Chain_id position is the same for all strings in a Cluster *)
(*         v *)
(*    packpdb_data *)
(*         |                       *)
(*         | gathered from each Cluster  *)
(*         | using recorpdb_keypdb of each record *)
(*         | all Records in a Pack have same Symbol and same Chain_id *)
(*         v       *)
(*    packpdb_keypdb *)
(*         | *)
(*         | calculated from first string of each Cluster *)
(*         | Symbol * Chain_id  *)
(*         | Chain_id position is the same for all strings in a Cluster *)
(*         v *)
(*    clusterpdb_data         *)
(*         | *)
(*         | gathered as all string having same Cluster Symbol *)
(*         | some different Cluster have same Symbol  *)
(*         | all Records in a Cluster have same Symbol but may differ by Chain_id *)
(*         v  *)
(*    clusterpdb_keypdb *)
(*         | *)
(*         | calculated from first string of each Cluster *)
(*         | Symbol *)
(*         |  *)
(*         v *)
(*    entrypdp_data    *)
(*  *)
