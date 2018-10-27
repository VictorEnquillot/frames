(** {3 The functionalities for a Symbol Formula for a Field in a ATOM Record of a Pdb file.} *)


let make ()
  [
  Atom_fieldpdb_symbol_v.atom_serial_number;
  Atom_fieldpdb_symbol_v.empty_1;
  Atom_fieldpdb_symbol_v.atom_name;
  Atom_fieldpdb_symbol_v.atom_alternate_location_id;
  Atom_fieldpdb_symbol_v.atom_residue_name;
  Atom_fieldpdb_symbol_v.empty_2;
  Atom_fieldpdb_symbol_v.atom_chain_id;
  Atom_fieldpdb_symbol_v.atom_residue_sequence_number;
  Atom_fieldpdb_symbol_v.atom_insertion_code;
  Atom_fieldpdb_symbol_v.empty_3;
  Atom_fieldpdb_symbol_v.atom_x;
  Atom_fieldpdb_symbol_v.atom_y;
  Atom_fieldpdb_symbol_v.atom_z;
  Atom_fieldpdb_symbol_v.atom_occupancy;
  Atom_fieldpdb_symbol_v.atom_b_factor;
  Atom_fieldpdb_symbol_v.empty_4;
  Atom_fieldpdb_symbol_v.atom_element_symbol;
  Atom_fieldpdb_symbol_v.atom_charge;
  ]
;;

(** {6 Converting.} *)

let name frm_smb =
  List_v.name _v.name frm_smb
;;

let print ppf frm_smb =
  List_v.print _v.name ppf frm_smb
;;
