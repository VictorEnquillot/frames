open Make_test;;

(** {3 Tests for Molecule_symbol_v.} *)

testing "Molecule_symbol_v";;

(* toplevel 
   #use "molecule_symbol_u_any.ml";; 
 *)

(* Modules *)


(** c *)

let smb_water = Molecule_symbol_v.make_of_string "water";;

test_number 0 (
smb_water (* : Molecule_symbol_t.molecule_symbol *) 
  =  
  Molecule_symbol_t.Molecule_linear_symbol
   (Molecule_symbol_t.Sms_t.Polygon_molecule_symbol
     (Molecule_symbol_t.Sms_t.Angular_molecule_symbol
       Molecule_symbol_t.Sms_t.Water))
);;
  
test_number 1 (
Molecule_symbol_v.name smb_water
=
"Water"
);;

