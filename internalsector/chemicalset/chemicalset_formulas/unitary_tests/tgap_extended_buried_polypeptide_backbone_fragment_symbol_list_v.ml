(** {3 extended buried polypeptide_backbone fragment symbol list .} *)

open Make_test_v;;

testing "Gap Extended_buried_polypeptide_backbone_fragment_symbol_list_v";;
 
(* toplevel 
   #use "tgap_extended_buried_polypeptide_backbone_fragment_symbol_list_v.ml";; 
*)


let sym_plp = Polypeptide_symbol_t.Gap;;
let seq_plp = Polypeptide_sequence_v.make sym_plp;;
let seq_lem = Polypeptide_sequence_v.largest_embedded_sequence_off_polypeptide_sequence seq_plp;;

let ebbfs_l = Ebb_v.extended_buried_polypeptide_backbone_fragment_symbol_list_off_largest_embedded_sequence seq_lem;;

test_number 1 (
Polypeptide_sequence_v.name seq_plp
=
"GAP"
);;

test_number 2 (
seq_lem
(* : Extended_buried_polypeptide_backbone_fragment_symbol_list_t.extended_buried_polypeptide_backbone_fragment_symbol_list *
    Extended_buried_polypeptide_backbone_fragment_symbol_list_t.extended_buried_polypeptide_backbone_fragment_symbol_list *)
=
[Molecule_aminoacid_symbol_v.alanine; Molecule_aminoacid_symbol_v.proline]
);;

test_number 3 (
ebbfs_l
=
[
 ([], Fragment_symbol_v.ccocnch_c_h__b );
 ([], Fragment_symbol_v.b_cdodn_ )
]
);;

test_number 4 (
Ebb_v.name ebbfs_l
=
"Obf_CcocNch_C_h_:Obf_CdodN_"
);;
