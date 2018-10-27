(** {3 Fake_a Molecule Formula of Paths.} *)

open Make_test_v;;

testing "Alanine Molecule_formula_path_v";;

(* toplevel 
   #use "talanine_molecule_formula_path_v.ml";; 
*)


(** Molecule_forked : Alanine 

                   CoOh
                   |
                   Ch
                   /\
              (l)Nh2 Ch3 (r)
 
*)

let foc_alanine = Molecule_formula_constrained_v.retrieve Molecule_symbol_v.alanine;; 
let for_alanine = Mof_v.make Molecule_symbol_v.alanine;; 

let itr = Mof_v.fragment_symbol_indexed_tree_off_molecule_formula for_alanine;;

let nod_ch3 = Indexed_tree_v.make_of_leaf
let pth_ch3 = Tree_v.path_of_node_of_tree nod_ch3 itr;;

test_number 1 (
frm_alanine
(* : Molecule_formula_t.molecule_formula *)
=
Tree_t.Node
 ((Molecule_formula_t.Fragment_tag_t.Head_fragment_symbol
    (Molecule_formula_t.Fragment_tag_t.Zerofork_fragment_symbol
      (Molecule_formula_t.Fragment_tag_t.Zerobifork_fragment_symbol
        Molecule_formula_t.Fragment_tag_t.Zbf_O_h_CdodC_h_)),
   Molecule_formula_t.Sole_index_t.Sequential_index Molecule_formula_t.Sole_index_t.Head),
 [
  Tree_t.Leaf
   (Molecule_formula_t.Fragment_tag_t.Leaf_fragment_symbol
     (Molecule_formula_t.Fragment_tag_t.Onezero_block_symbol
       (Molecule_formula_t.Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
         Molecule_formula_t.Fragment_tag_t.Block_symbol_t.Osz_N_h_2)),
    Molecule_formula_t.Sole_index_t.Spherical_index
     (Molecule_formula_t.Sole_index_t.Spherical_tetrahedral_index
       Molecule_formula_t.Sole_index_t.St_r))
    ;
  Tree_t.Leaf
   (Molecule_formula_t.Fragment_tag_t.Leaf_fragment_symbol
     (Molecule_formula_t.Fragment_tag_t.Onezero_block_symbol
       (Molecule_formula_t.Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
         Molecule_formula_t.Fragment_tag_t.Block_symbol_t.Osz_C_h_3)),
    Molecule_formula_t.Sole_index_t.Spherical_index
     (Molecule_formula_t.Sole_index_t.Spherical_tetrahedral_index
       Molecule_formula_t.Sole_index_t.St_l))
])
);;
(*
(* path ch3_1 *)
test_number 2 (
pth_ch3_1
=
[]
);;

(* path ch3_1 *)
test_number 3 (
pth_ch3_2
=
[]
);;
*)
