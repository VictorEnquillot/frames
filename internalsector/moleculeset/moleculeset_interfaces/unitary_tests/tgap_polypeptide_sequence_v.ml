(** {3 Polypeptide Sequence.} *)

open Make_test_v;;

testing "Gap Polypeptide_sequence_v";;
 
(* toplevel 
   #use "tgap_polypeptide_sequence_v.ml";; 
*)


let sym_plp = Pls_t.Gap;;
let seq_plp = Psq_v.make sym_plp;;
let sym_ntl = Psq_v.nterminal_molecule_aminoacid_symbol_off_polypeptide_sequence seq_plp;;
let seq_ntg = Psq_v.glycine_nterminals_off_polypeptide_sequence seq_plp;;
let seq_ntr = Psq_v.nterminal_molecule_aminoacid_symbol_remainder_list_off_polypeptide_sequence seq_plp;;
let seq_ngr = Psq_v.glycine_nterminals_remainder_off_polypeptide_sequence seq_plp;;
let seq_lem = Psq_v.largest_embedded_sequence_off_polypeptide_sequence seq_plp;;
let seq_rem = Psq_v.reduced_embedded_sequence_off_polypeptide_sequence seq_plp;;
let seq_ctg = Psq_v.cterminal_glycines_off_polypeptide_sequence seq_plp;;

test_number 1 (
Psq_v.name seq_plp
=
"GAP"
);;

test_number 2 (
smb_ntl
=
Aas_v.glycine
);;

test_number 3 (
seq_ntr
(* : Polypeptide_sequence_t.polypeptide_sequence *
    Polypeptide_sequence_t.polypeptide_sequence *)
=
 [Aas_v.alanine; Aas_v.proline]
);;

test_number 4 (
seq_ntg
(* : Polypeptide_sequence_t.polypeptide_sequence *
    Polypeptide_sequence_t.polypeptide_sequence *)
=
[Aas_v.glycine; Aas_v.alanine]
);;

test_number 5 (
seq_ngr
(* : Polypeptide_sequence_t.polypeptide_sequence *
    Polypeptide_sequence_t.polypeptide_sequence *)
=
 [Aas_v.proline]
);;

test_number 6 (
seq_rem
(* : Polypeptide_sequence_t.polypeptide_sequence *
    Polypeptide_sequence_t.polypeptide_sequence *)
=
 [Aas_v.proline]
);;

test_number 7 (
seq_lem
(* : Polypeptide_sequence_t.polypeptide_sequence *
    Polypeptide_sequence_t.polypeptide_sequence *)
=
 [Aas_v.alanine; Aas_v.proline]
);;

test_number 8 (
seq_ctg
(* : Polypeptide_sequence_t.polypeptide_sequence *
    Polypeptide_sequence_t.polypeptide_sequence *)
=
 []
);;

