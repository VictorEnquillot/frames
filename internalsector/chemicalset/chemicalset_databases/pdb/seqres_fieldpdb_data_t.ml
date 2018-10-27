(** {3 A Data for a field in a SEQRES Record of a Pdb file.} *)

type seqres_fieldpdb_data =
  | Empty_1 of string (* 7-7 *)
  | Seqres_record_serial_number of int (* 8-10 *)
  | Empty_2 of string (* 11-11 *)
  | Seqres_chain_id of char (* 12-12 *)
  | Empty_3 of string (* 13-13 *)
  | Seqres_sequence_length of int (* 14-17 *)
  | Empty_4 of string (* 18-19 *)
  | Seqres_thirteen_names of string (* 20-70 *)
  | Empty_5 of string (* 71-80 *)
;;
(** created by ./do_some_fieldpdp_data_t Seqres Sqfs 18 May 2010. *)
