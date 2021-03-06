(** {3 The Data for a Pdb Record.} *)


type recordpdb_data = (Recordpdb_keypdb_t.recordpdb_keypdb, string) Doublet_t.doublet
;;

(* Data hierarchy : *)

(*    atom_value *)

(*    fieldpdb_data *)

(*    recordpdb_data <== Here *) 
(*         |  *)
(*         | retrieved from each Pack *)
(*         | using recorpdb_keypdb of each record *)
(*         | all Records in a Pack have same Symbol and same Chain_id *)
(*         |                       *)
(*         v *)
(*    recordpdb_keypdb *) 
(*         | *)
(*         | calculated from record string  *)
(*         | Symbol * Chain_id * Record Marker *)
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
(*         | *)
(*         v *)
(*    entrypdp_data    *)
(*  *)
