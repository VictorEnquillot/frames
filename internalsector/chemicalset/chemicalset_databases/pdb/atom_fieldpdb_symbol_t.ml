(** {3 A Symbol for an ATOM field in a Pdb file record.} *)

(** 
@see {{:http://www.wwpdb.org/documentation/format32/sect9.html#ATOM}
        http://www.wwpdb.org/documentation/format32/sect9.html#ATOM}

         1         2         3         4         5         6         7         8
12345678901234567890123456789012345678901234567890123456789012345678901234567890
ATOM     32  N  AARG A  -3      11.281  86.699  94.383  0.50 35.88           N  
ATOM     33  N  BARG A  -3      11.296  86.721  94.521  0.50 35.60           N
ATOM     34  CA AARG A  -3      12.353  85.696  94.456  0.50 36.67           C
ATOM     35  CA BARG A  -3      12.333  85.862  95.041  0.50 36.42           C

ATOM     50  NH1AARG A  -3      12.218  84.840  88.007  0.50 40.76           N
ATOM     51  NH1BARG A  -3      14.338  86.056  88.706  0.50 40.23           N
ATOM     52  NH2AARG A  -3      14.421  84.308  88.373  0.50 40.45           N
*)

type atom_fieldpdb_symbol =
  | Atom_serial_number              (*  7-11 int    *)
  | Empty_1                         (* 12-12 string *)
  | Atom_name                       (* 13-16 string *) 
  | Atom_alternate_location_id      (* 17-17 char   *)
  | Atom_residue_name               (* 18-20 string *)
  | Empty_2                         (* 21-21 string *)
  | Atom_chain_id                   (* 22-22 char   *)
  | Atom_residue_sequence_number    (* 23-26 int    *)
  | Atom_insertion_code             (* 27-27 char   *)
  | Empty_3                         (* 28-30 string *)
  | Atom_x                          (* 31-38 float  *)
  | Atom_y                          (* 39-46 float  *)
  | Atom_z                          (* 47-54 float  *)
  | Atom_occupancy                  (* 55-60 float  *)           
  | Atom_b_factor                   (* 61-66 float  *)           
  | Empty_4                         (* 67-76 string *)
  | Atom_element_symbol             (* 77-78 string *)
  | Atom_charge                     (* 79-80 string *)
;;
