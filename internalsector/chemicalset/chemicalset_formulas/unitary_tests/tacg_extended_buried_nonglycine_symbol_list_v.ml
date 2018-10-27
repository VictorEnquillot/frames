(** {3 Buried_polypeptide_subunit_symbol list .} *)

open Make_test_v;;

testing "Acg Buried_polypeptide_subunit_symbol_list_v";;
 
(* toplevel 
   #use "tacg_buried_polypeptide_subunit_symbol_list_v.ml";; 
*)


let sym_plp = Polypeptide_symbol_t.Acg;;
let seq_plp = Polypeptide_sequence_v.make sym_plp;;
let seq_lem = Polypeptide_sequence_v.largest_embedded_sequence_off_polypeptide_sequence seq_plp;;

let xbn_l = Xbb_v.buried_polypeptide_subunit_symbol_list_off_largest_embedded_sequence seq_lem;;

test_number 1 (
Polypeptide_sequence_v.name seq_plp
=
"ACG"
);;

test_number 2 (
seq_lem
(* : Buried_polypeptide_subunit_symbol_list_t.buried_polypeptide_subunit_symbol_list *
    Buried_polypeptide_subunit_symbol_list_t.buried_polypeptide_subunit_symbol_list *)
=
 [Molecule_aminoacid_symbol_v.cysteine]
);;

test_number 3 (
xbn_l
=
[
 ([],  Molecule_aminoacid_symbol_t.Molecule_aminoacid_regular_symbol Molecule_aminoacid_symbol_t.Cysteine)
]
);;

test_number 4 (
Xbb_v.name_list xbn_l
=
"x0C"
);;
