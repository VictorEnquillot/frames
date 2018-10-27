(** {3 extended cterminal polypeptide_backbone fragment symbol.} *)

open Make_test_v;;

testing "Acg Extended_cterminal_polypeptide_backbone_fragment_symbol_v";;
 
(* toplevel 
   #use "tacg_extended_cterminal_polypeptide_backbone_fragment_symbol_v.ml";; 
*)


let sym_plp = Polypeptide_symbol_t.Acg;;
let seq_plp = Polypeptide_sequence_v.make sym_plp;;
let seq_ctg = Polypeptide_sequence_v.cterminal_glycines_off_polypeptide_symbol sym_plp;;

let ecbfs = Ecb_v.extended_cterminal_polypeptide_backbone_fragment_symbol_of_cterminal_glycines_sequence seq_ctg;;

test_number 1 (
Polypeptide_sequence_v.name seq_plp
=
"ACG"
);;

test_number 2 (
seq_ctg
(* : Extended_cterminal_polypeptide_backbone_fragment_symbol_list_t.extended_cterminal_polypeptide_backbone_fragment_symbol_list *
    Extended_cterminal_polypeptide_backbone_fragment_symbol_list_t.extended_cterminal_polypeptide_backbone_fragment_symbol_list *)
=
 [Molecule_aminoacid_symbol_v.glycine]
);;

test_number 3 (
ecbfs (* : Extended_cterminal_polypeptide_backbone_fragment_symbol_t.extended_cterminal_polypeptide_backbone_fragment_symbol *)
=
([Polypeptide_sidegroup_symbol_v.ccocnch_c_h_2_b],
 Extended_cterminal_polypeptide_backbone_fragment_symbol_t.Fragment_tag_t.Onezero_fragment_symbol
  Extended_cterminal_polypeptide_backbone_fragment_symbol_t.Fragment_tag_t.Oz_CdodO_h_)
);;      

test_number 4 (
Ecb_v.name ecbfs
=
"Oo_CcocNch_C_h_2r1Oz_CdodO_h_"
);;
