(** {3 The Values for the fields of an ATOM Pdb record.} *)

type atom_fieldpdb_values = {
   atom_serial_number : int;           (* 7-11 *)
   atom_name : string;                 (* 13-16 *)
(*
   atom_residue_name : string;         (* 18-20 *)
   atom_chain_id : char;               (* 22-22 *)
   atom_residue_sequence_number : int; (* 23-26 *)
   atom_insertion_code : char;         (* 27-27 *)
*)
   atom_x : float;                     (* 31-38 *)
   atom_y : float;                     (* 39-46 *)
   atom_z : float;                     (* 47-54 *)
   atom_occupancy : float;             (* 55-60 *)
   atom_b_factor : float;              (* 61-66 *)
(*   atom_element_symbol : string;       (* 77-78 *) *)
   atom_charge : string;               (* 79-80 *)
  }
;;(** This couple allows to avoid using Hash.*)
