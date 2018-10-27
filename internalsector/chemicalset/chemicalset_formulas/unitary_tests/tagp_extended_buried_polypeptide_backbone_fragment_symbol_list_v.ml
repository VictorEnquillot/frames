(** {3 extended buried polypeptide_backbone fragment symbol list .} *)

open Make_test_v;;

testing "Agp Extended_buried_polypeptide_backbone_fragment_symbol_list_v";;
 
(* toplevel 
   #use "tagp_extended_buried_polypeptide_backbone_fragment_symbol_list_v.ml";; 
*)


let sym_plp = Polypeptide_symbol_t.Agp;;
let seq_plp = Polypeptide_sequence_v.make sym_plp;;
let seq_lem = Polypeptide_sequence_v.largest_embedded_sequence_off_polypeptide_sequence seq_plp;;

let ebbfs_l = Xbb_v.extended_buried_polypeptide_backbone_fragment_symbol_list_of_polypeptide_symbol sym_plp;;

test_number 1 (
Polypeptide_sequence_v.name seq_plp
=
"AGP"
);;

test_number 2 (
seq_lem
(* : Extended_buried_polypeptide_backbone_fragment_symbol_list_t.extended_buried_polypeptide_backbone_fragment_symbol_list *
    Extended_buried_polypeptide_backbone_fragment_symbol_list_t.extended_buried_polypeptide_backbone_fragment_symbol_list *)
=
 [Molecule_aminoacid_symbol_v.glycine; Molecule_aminoacid_symbol_v.proline]
);;

test_number 3 (
ebbfs_l
=
[([Polypeptide_sidegroup_symbol_v.ccocnch_c_h_2_b], Fragment_symbol_v.b_cdodn_ )]
);;

test_number 4 (
Xbb_v.name_list ebbfs_l
=
"Oo_CcocNch_C_h_2r1Obf_CdodN_"
);;
