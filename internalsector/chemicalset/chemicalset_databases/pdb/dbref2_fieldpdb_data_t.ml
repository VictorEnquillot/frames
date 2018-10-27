(** {3 A Data for a field in a DBREF2 Record of a Pdb file.} *)

type dbref2_fieldpdb_data =
  | Empty_1 of string (* 7-7 *)
  | Dbref2_id of string (* 8-11 *)
  | Empty_2 of string (* 12-12 *)
  | Dbref2_chain_id of char (* 13-13 *)
  | Empty_3 of string (* 14-18 *)
  | Dbref2_sequence_database_accession_code of string (* 19-40 *)
  | Empty_4 of string (* 41-45 *)
  | Dbref2_pdb_sequence_segment_initial_sequence_number of int (* 46-55 *)
  | Empty_5 of string (* 56-47 *)
  | Dbref2_pdb_sequence_segment_final_sequence_number of int (* 58-67 *)
  | Empty_8 of string (* 69-80 *)
;;
(** created by ./do_some_fieldpdp_data_t Dbref2 D2fs 18 May 2010. *)
