open Make_test_v;;

(** {3 Tests for Molecule_polymer_symbol_v.} *)

testing "Molecule_polymer_symbol_v";;

(* toplevel 
   #use "molecule_polymer_symbol_u_any.ml";; 

 *)

let ladh_a = Molecule_polymer_symbol_v.make "Polypeptide_fromid" "ladh_a";;

test_number 1 (
ladh_a
(* : Molecule_polymer_symbol_t.molecule_polymer_symbol *)
=
Molecule_polymer_symbol_t.Polypeptide_fromid "ladh_a"
);;

