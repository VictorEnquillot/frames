(** {3 A Data for a field in a DBREF1 Record of a Pdb file.} *)

type dbref1_fieldpdb_data =
  | Empty_1 of string (* 7-7 *)
  | Dbref1_id of string (* 8-11 *)
  | Empty_2 of string (* 12-12 *)
  | Dbref1_chain_id of char (* 13-13 *)
  | Empty_3 of string (* 14-14 *)
  | Dbref1_pdb_sequence_segment_initial_sequence_number of int (* 15-18 *)
  | Dbref1_pdb_sequence_segment_initial_insertion_code of char (* 19-19 *)
  | Empty_4 of string (* 20-20 *)
  | Dbref1_pdb_sequence_segment_final_sequence_number of int (* 21-24 *)
  | Dbref1_pdb_sequence_segment_final_insertion_code of char (* 25-25 *)
  | Empty_5 of string (* 26-26 *)
  | Dbref1_sequence_database_name of string (* 27-32 *)
  | Empty_6 of string (* 33-47 *)
  | Dbref1_sequence_database_identification_code of string (* 48-67 *)
  | Empty_7 of string (* 68-80 *)
;;
(** created by ./do_some_fieldpdp_data_t Dbref1 D1fs 18 May 2010. *)