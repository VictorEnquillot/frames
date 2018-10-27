(** {3 A Data for a field in a HET Record of a Pdb file.} *)

type het_fieldpdb_data =
  | Empty_1 of string (* 7-7 *)
  | Het_id of string (* 8-10 *)
  | Empty_2 of string (* 11-12 *)
  | Het_chain_id of char (* 13-13 *)
  | Het_sequence_number of int (* 14-17 *)
  | Het_insertion_code of char (* 18-18 *)
  | Empty_3 of string (* 19-20 *)
  | Het_HETATM_record_number of int (* 21-25 *)
  | Empty_4 of string (* 26-30 *)
  | Het_description of string (* 31-70 *)
  | Empty_5 of string (* 71-80 *)
;;
(** created by ./do_some_fieldpdp_data_t Het Htfs 18 May 2010. *)
