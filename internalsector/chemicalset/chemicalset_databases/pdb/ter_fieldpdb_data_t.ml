(** {3 A Data for a field in a TER Record of a Pdb file.} *)

type ter_fieldpdb_data =
  | Ter_serial_number of int (* 7-11 *)
  | Empty_1 of string (* 12-17 *)
  | Ter_residue_name of string (* 18-20 *)
  | Empty_2 of string (* 21-21 *)
  | Ter_chain_id of char (* 22-22 *)
  | Ter_residue_sequence_number of int (* 23-26 *)
  | Ter_insertion_code of char (* 27-27 *)
  | Empty_3 of string (* 28-80 *)
;;
(** created by ./do_some_fieldpdp_data_t Ter Tfs 18 May 2010. *)
