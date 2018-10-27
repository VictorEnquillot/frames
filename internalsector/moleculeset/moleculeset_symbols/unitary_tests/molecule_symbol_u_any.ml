open Make_test_v;;

(** {3 Tests for Molecule_symbol_v.} *)

testing "Molecule_symbol_v with
   molecule_symbol_u_any.ml";;

(* toplevel 
   #use "molecule_symbol_u_any.ml";; 

 *)

let water = Molecule_symbol_v.make "water" "";;

test_number 1 (
ladh_a
(* : Molecule_polymer_symbol_t.molecule_polymer_symbol *)
=
Molecule_polymer_symbol_t.Polypeptide_fromid "ladh_a"
);;

