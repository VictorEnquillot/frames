(** {3 0plw Header_recordpdb_symbol_formula} *)

open Make_test_v;;

testing "0plw Header_recordpdb_symbol_formula_v";;

(* toplevel 
   #use "theader_recordpdb_symbol_formula_v_0plw.ml";; 
*)


let frm_smb_hpr = Header_recordpdb_symbol_formula_v.make ();;

test_number 1 (
frm_smb_hpr (* : Header_recordpdb_symbol_formula_v.Header_fieldpdb_symbol_t.header_fieldpdb_symbol list *)
=
 [
  Header_recordpdb_symbol_formula_t.Header_fieldpdb_symbol_t.Empty_1;
  Header_recordpdb_symbol_formula_t.Header_fieldpdb_symbol_t.Chemical_species;
  Header_recordpdb_symbol_formula_t.Header_fieldpdb_symbol_t.Deposition_date;
  Header_recordpdb_symbol_formula_t.Header_fieldpdb_symbol_t.Empty_2;
  Header_recordpdb_symbol_formula_t.Header_fieldpdb_symbol_t.PdbID;
  Header_recordpdb_symbol_formula_t.Header_fieldpdb_symbol_t.Empty_3
]
);;

test_number 2 (
Header_recordpdb_symbol_formula_v.name frm_smb_hpr (* : string *)
= 
"Empty_1:Chemical_species:Deposition_date:Empty_2:PdbID:Empty_3"
);;
