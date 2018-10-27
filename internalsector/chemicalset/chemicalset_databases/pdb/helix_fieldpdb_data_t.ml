(** {3 A Data for a field in a HELIX Record of a Pdb file.} *)

type helix_fieldpdb_data =
  | Empty_1 of string (* 7-7 *)
  | Helix_serial_number of int (* 8-10 *)
  | Empty_2 of string (* 11-11 *)
  | Helix_id of string (* 12-14 *)
  | Helix_initial_residue_name of string (* 16-18 *)
  | Empty_3 of string (* 19-19 *)
  | Helix_initial_chain_id of char (* 20-20 *)
  | Empty_4 of string (* 21-21 *)
  | Helix_initial_residue_sequence_number of int (* 22-25 *)
  | Helix_initial_residue_insertion_code of char (* 26-26 *)
  | Empty_5 of string (* 27-27 *)
  | Helix_final_residue_name of string (* 28-30 *)
  | Empty_6 of string (* 31-31 *)
  | Helix_final_chain_id of char (* 32-32 *)
  | Empty_7 of string (* 33-33 *)
  | Helix_final_residue_sequence_number of int (* 34-37 *)
  | Helix_final_residue_insertion_code of char (* 38-38 *)
  | Helix_class of int (* 39-40 *)
  | Empty_8 of string (* 41-71 *)
  | Helix_length of float (* 72-76 *)
  | Empty_9 of string (* 77-80 *)
;;
(** created by ./do_some_fieldpdp_data_t Helix Hlfs 18 May 2010. *)
