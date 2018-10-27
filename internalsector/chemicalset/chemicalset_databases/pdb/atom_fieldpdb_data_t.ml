
(** {3 A Data for a field in a ATOM Record of a Pdb file.} *)

type atom_fieldpdb_data =
  | Atom_serial_number of int (* 7-11 *)
  | Empty_1 of string (* 12-12 *)
  | Atom_name of string (* 13-16 *)
  | Atom_alternate_location_id of char (* 17-17 *)
  | Atom_residue_name of string (* 18-20 *)
  | Empty_2 of string (* 21-21 *)
  | Atom_chain_id of char (* 22-22 *)
  | Atom_residue_sequence_number of int (* 23-26 *)
  | Atom_insertion_code of char (* 27-27 *)
  | Empty_3 of string (* 28-30 *)
  | Atom_x of float (* 31-38 *)
  | Atom_y of float (* 39-46 *)
  | Atom_z of float (* 47-54 *)
  | Atom_occupancy of float (* 55-60 *)
  | Atom_b_factor of float (* 61-66 *)
  | Empty_4 of string (* 67-76 *)
  | Atom_element_symbol of string (* 77-78 *)
  | Atom_charge of string (* 79-80 *)
;;
(** created by ./do_some_fieldpdp_data_t Atom Atfs 18 May 2010. *)
