(** {3 Polypeptide Sequence.} *)

open Make_test_v;;

testing "0tab_b Polypeptide_sequence_v";;
 
(* toplevel 
   #use "t0tab_b_polypeptide_sequence_v.ml";; 
*)


let sym_plr = Pls_t.Tab_b;;
let sym_plp = Pls_v.polypeptide_symbol_of_polypeptide_regular_symbol sym_plr;;
let seq_plp = Psq_v.make sym_plp;;

test_number 1 (
Psq_v.name seq_plp
=
"GP"
);;

test_number 2 (
Psq_v.nterminal_molecule_aminoacid_symbol_off_polypeptide_sequence seq_plp
=
Aas_v.glycine
);;

test_number 3 (
Psq_v.nterminal_molecule_aminoacid_symbol_remainder_list_off_polypeptide_sequence seq_plp
(* : Polypeptide_sequence_t.polypeptide_sequence *
    Polypeptide_sequence_t.polypeptide_sequence *)
=
 [Aas_v.proline]
);;

test_number 4 (
Psq_v.glycine_nterminals_off_polypeptide_sequence seq_plp
(* : Polypeptide_sequence_t.polypeptide_sequence *
    Polypeptide_sequence_t.polypeptide_sequence *)
=
[Aas_v.glycine; Aas_v.proline]
);;

test_number 5 (
Psq_v.glycine_nterminals_remainder_off_polypeptide_sequence seq_plp
(* : Polypeptide_sequence_t.polypeptide_sequence *
    Polypeptide_sequence_t.polypeptide_sequence *)
=
[]
);;

test_number 6 (
Psq_v.reduced_embedded_sequence_off_polypeptide_sequence seq_plp
(* : Polypeptide_sequence_t.polypeptide_sequence *
    Polypeptide_sequence_t.polypeptide_sequence *)
=
 []
);;

test_number 7 (
Psq_v.largest_embedded_sequence_off_polypeptide_sequence seq_plp
(* : Polypeptide_sequence_t.polypeptide_sequence *
    Polypeptide_sequence_t.polypeptide_sequence *)
=
 [Aas_v.proline]
);;

test_number 8 (
Psq_v.cterminal_glycines_off_polypeptide_sequence seq_plp
(* : Polypeptide_sequence_t.polypeptide_sequence *
    Polypeptide_sequence_t.polypeptide_sequence *)
=
 []
);;

