(** {3 0plw Atom_recordpdb_symbol_formula} *)

open Make_test_v;;

testing "0plw Atom_recordpdb_symbol_formula_v";;

(* toplevel 
   #use "tatom_recordpdb_symbol_formula_v_0plw.ml";; 
*)


let frm_smb_apr = Atom_recordpdb_symbol_formula_v.make ();;

test_number 1 (
frm_smb_apr (* : Atom_recordpdb_symbol_formula_v.Atom_fieldpdb_symbol_t.atom_fieldpdb_symbol list *)
=
  [
   Atom_recordpdb_symbol_formula_t.Atom_fieldpdb_symbol_t.Atom_serial_number;
   Atom_recordpdb_symbol_formula_t.Atom_fieldpdb_symbol_t.Empty_1;
   Atom_recordpdb_symbol_formula_t.Atom_fieldpdb_symbol_t.Atom_name;
   Atom_recordpdb_symbol_formula_t.Atom_fieldpdb_symbol_t.Atom_alternate_location_id;
   Atom_recordpdb_symbol_formula_t.Atom_fieldpdb_symbol_t.Atom_residue_name;
   Atom_recordpdb_symbol_formula_t.Atom_fieldpdb_symbol_t.Empty_2;
   Atom_recordpdb_symbol_formula_t.Atom_fieldpdb_symbol_t.Atom_chain_id;
   Atom_recordpdb_symbol_formula_t.Atom_fieldpdb_symbol_t.Atom_residue_sequence_number;
   Atom_recordpdb_symbol_formula_t.Atom_fieldpdb_symbol_t.Atom_insertion_code;
   Atom_recordpdb_symbol_formula_t.Atom_fieldpdb_symbol_t.Empty_3;
   Atom_recordpdb_symbol_formula_t.Atom_fieldpdb_symbol_t.Atom_x;
   Atom_recordpdb_symbol_formula_t.Atom_fieldpdb_symbol_t.Atom_y;
   Atom_recordpdb_symbol_formula_t.Atom_fieldpdb_symbol_t.Atom_z;
   Atom_recordpdb_symbol_formula_t.Atom_fieldpdb_symbol_t.Atom_occupancy;
   Atom_recordpdb_symbol_formula_t.Atom_fieldpdb_symbol_t.Atom_b_factor;
   Atom_recordpdb_symbol_formula_t.Atom_fieldpdb_symbol_t.Empty_4;
   Atom_recordpdb_symbol_formula_t.Atom_fieldpdb_symbol_t.Atom_element_symbol;
   Atom_recordpdb_symbol_formula_t.Atom_fieldpdb_symbol_t.Atom_charge
 ]
);;

test_number 2 (
Atom_recordpdb_symbol_formula_v.name frm_smb_apr (* : string *)
= 
"Atom_serial_numberEmpty_1Atom_nameAtom_alternate_location_idResiduepdb_symbolEmpty_2Atom_chain_idResiduepdb_sequence_numberInsertion_codeEmpty_3XYZOccupancyB_factorEmpty_4Element_symbolAtom_charge"
);;
