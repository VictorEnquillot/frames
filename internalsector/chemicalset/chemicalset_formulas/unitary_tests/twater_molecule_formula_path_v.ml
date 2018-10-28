(** {3 Water Molecule Formula of Paths.} *)

open Make_test_v;;

testing "Water Molecule_formula_path_v";;

(* toplevel 
   #use "twater_molecule_formula_path_v.ml";; 
*)


(** Molecule_linear : Water *)

let foc_water = Molecule_formula_constrained_v.retrieve Molecule_symbol_v.water;; 
let for_water = Mof_v.make Molecule_symbol_v.water;; 

let itr = Mof_v.fragment_symbol_indexed_tree_off_molecule_formula for_water;;

let itr_pth = 
  Indexed_tree_v.map 
    (fun s -> Frf_v.make s)
    (fun i -> i)
    itr
;;

test_number 1 (
frc_water
(* : Molecule_formula_constrained_t.molecule_formula_constrained *)
=
Molecule_formula_constrained_t.Molecule_linear Fragment_symbol_v.water_c
);;

test_number 2 (
frm_water
(* : Molecule_formula_t.molecule_formula *)
=
Molecule_formula_t.Tree_t.Leaf
 (Fragment_tag_t.Closed_fragment_symbol
   (Fragment_tag_t.Block_zerozero_symbol
     (Fragment_tag_t.Block_symbol_t.Closed_nondiatomic_block_symbol
       Fragment_tag_t.Block_symbol_t.Zz_O_h_2)),
  Sole_index_t.Sequential_index
   Sole_index_t.Head)
);;

test_number 3 (
itr 
= 
frm_water
);;

(* Fragment symbol is replaced by its formula expressed in Block_tag *)
test_number 4 (
Frf_v.make Fragment_symbol_v.water 
  =  
[(Block_symbol_v.water, Sole_index_v.tail)]
);;

(* path tree is *)
test_number 5 (
itr_pth  
=
Tree_t.Leaf ([(Block_symbol_v.water, Sole_index_v.tail)], Sole_index_v.head) 
);;