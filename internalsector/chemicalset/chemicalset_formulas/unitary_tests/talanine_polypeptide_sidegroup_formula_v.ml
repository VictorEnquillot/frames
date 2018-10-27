(** {3 Alanine Polypeptide Sidegroup Formula.} *)

open Make_test_v;;

testing "Alanine Polypeptide_sidegroup_formula_v";;

(* toplevel 
   #use "talanine_polypeptide_sidegroup_formula_v.ml";; 
*)


(* Polypeptide_sidegroup Symbol *)

let sym_ama = Molecule_aminoacid_symbol_v.alanine;;
let sym_psg = Polypeptide_sidegroup_symbol_v.make sym_ama;;
let sci = Sole_index_v.stl;;

(* Polypeptide_sidegroup Symbol Formula *)

let for_smb_psg = Psf_v.make sym_psg sci;;

let sym_frg_t = Psf_v.fragment_symbol_tree_off_polypeptide_sidegroup_formula for_smb_psg;;

test_number 1 (
smb_psg (* : Polypeptide_sidegroup_symbol_t.polypeptide_sidegroup_symbol *)
= 
Polypeptide_sidegroup_symbol_t.Methyl
);;

test_number 2 (
frm_smb_psg 
(* : Polypeptide_sidegroup_formula_t.polypeptide_sidegroup_formula *)
=
Tree_t.Leaf
 (Polypeptide_sidegroup_formula_t.Fragment_tag_t.Frs_t.Leaf_fragment_symbol
   (Polypeptide_sidegroup_formula_t.Fragment_tag_t.Frs_t.Onezero_block_symbol
     (Polypeptide_sidegroup_formula_t.Fragment_tag_t.Frs_t.Block_symbol_t.Onesinglezero_block_symbol
       Polypeptide_sidegroup_formula_t.Fragment_tag_t.Frs_t.Block_symbol_t.Osz_C_h_3)),
  Polypeptide_sidegroup_formula_t.Fragment_tag_t.Sole_index_t.Spherical_index
   (Polypeptide_sidegroup_formula_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
     Polypeptide_sidegroup_formula_t.Fragment_tag_t.Sole_index_t.St_l))
);;

test_number 3 (
Psf_v.name for_smb_psg 
  =
"(Osz_C_h_3,stl)"
);;

test_number 4 (
smb_frg_t 
(* : Fragment_symbol_t.fragment_symbol Tree_t.tree *)
=
Tree_t.Leaf
 (Fragment_symbol_t.Leaf_fragment_symbol
   (Fragment_symbol_t.Onezero_block_symbol
     (Fragment_symbol_t.Block_symbol_t.Onesinglezero_block_symbol
       Fragment_symbol_t.Block_symbol_t.Osz_C_h_3)))
);; 

