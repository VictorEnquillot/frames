(** {3 A Data for a field in a MODRES Record of a Pdb file.} *)

type modres_fieldpdb_data =
  | Empty_1 of string (* 7-7 *)
  | Modres_id of string (* 8-11 *)
  | Empty_2 of string (* 12-12 *)
  | Modres_residue_name of string (* 13-15 *)
  | Empty_3 of string (* 16-16 *)
  | Modres_chain_id of char (* 17-17 *)
  | Empty_4 of string (* 18-18 *)
  | Modres_sequence_number of int (* 19-22 *)
  | Modres_insertion_code of char (* 23-23 *)
  | Empty_5 of string (* 24-24 *)
  | Modres_standard_residue_name of string (* 25-27 *)
  | Empty_6 of string (* 28-29 *)
  | Modres_description of string (* 30-70 *)
  | Empty_7 of string (* 71-80 *)
;;
(** created by ./do_some_fieldpdp_data_t Modres Mfs 18 May 2010. *)
