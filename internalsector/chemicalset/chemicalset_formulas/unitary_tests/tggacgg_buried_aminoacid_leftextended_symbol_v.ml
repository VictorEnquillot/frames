(** {3 Test ggacgg buried_polypeptide_subunit_symbol.} *)

open Make_test_v;;

testing "Ggacgg buried_polypeptide_subunit_symbol_v";;
 
(* toplevel 
   #use "tggacgg_buried_polypeptide_subunit_symbol_v.ml";; 
*)


let sym_plp = Polypeptide_symbol_t.Ggacgg;;
let seq_plp = Polypeptide_sequence_v.make sym_plp;;
let seq_lem = Polypeptide_sequence_v.largest_embedded_sequence_off_polypeptide_sequence seq_plp;;

let xbn_l = Xbb_v.extended_buried_fragmented_symbol_list_off_largest_embedded_sequence seq_lem;;

test_number 1 (
Polypeptide_sequence_v.name seq_plp
=
"GGACGG"
);;

test_number 2 (
seq_lem
(* : Extended_buried_fragmented_symbol_list_t.extended_buried_fragmented_symbol_list *
    Extended_buried_fragmented_symbol_list_t.extended_buried_fragmented_symbol_list *)
=
 [Molecule_aminoacid_symbol_v.glycine; Molecule_aminoacid_symbol_v.alanine; Molecule_aminoacid_symbol_v.cysteine]
);;

test_number 3 (
xbn_l (* : (Molecule_aminoacid_symbol_t.molecule_aminoacid_glycine_symbol,
     Molecule_aminoacid_symbol_t.molecule_aminoacid_fragmented_symbol)
    Booted_repeated_list_t.booted_repeated_list list *)
=
[([Molecule_aminoacid_symbol_t.Glycine],
  Molecule_aminoacid_symbol_t.Molecule_aminoacid_regular_symbol Molecule_aminoacid_symbol_t.Alanine);
 ([],
  Molecule_aminoacid_symbol_t.Molecule_aminoacid_regular_symbol Molecule_aminoacid_symbol_t.Cysteine)]
);;

test_number 4 (
Xbb_v.name_list xbn_l
=
"Gr1A:x0C"
);;
(*
test_number 5 (
Buried_polypeptide_subunit_symbol_v.buried_polypeptide_subunit_symbol_list_of_polypeptide_symbol
test_number 6 (
Buried_polypeptide_subunit_symbol_v.molecule_aminoacid_fragmented_symbol_off_buried_polypeptide_subunit_symbol 

*)
