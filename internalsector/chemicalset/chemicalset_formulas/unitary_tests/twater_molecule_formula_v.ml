(** {3 Water Molecule Formula.} *)

open Make_test_v;;

testing "Water Molecule_formula_v";;

(* toplevel 
   #use "twater_molecule_formula_v.ml";; 
*)


(** Molecule_linear : Water *)

let sym_mol = Molecule_symbol_v.water;;
let for_mol = Mof_v.make sym_mol;; 
let mrk_frg_l = Mof_v.fragment_tag_list_off_molecule_formula for_mol;;
let mrk_chs_frg_l = Mof_v.fragment_chemicalset_tag_list_off_molecule_formula for_mol;;

test_number 1 (
frm_mol
(* : Molecule_formula_t.molecule_formula *)
=
Molecule_formula_t.Tree_t.Leaf
(Fragment_symbol_v.water, Sole_index_v.head)
);;

(* Fragment symbol is replaced by its formula expressed in Block_tag *)
test_number 2 (
Fragment_formula_v.make Fragment_symbol_v.water 
  =  
[(Block_symbol_v.water, Sole_index_v.tail)]
);;

test_number 3 (
mrk_frg_l
(* : Chemicalset_tag_t.chemicalset_tag list *)
=
[(Fragment_symbol_v.water, Sole_index_v.head)]
);;

test_number 4 (
Mof_v.fragment_tag_depthed_list_list_off_molecule_formula for_mol
(* : (Fragment_tag_t.fragment_tag * int) list list *) 
=
[[((Fragment_symbol_v.water, Sole_index_v.head), 1)]]
);;

test_number 5 (
mrk_chs_frg_l
(* : Chemicalset_tag_t.chemicalset_tag list *)
=
[Chm_v.chemicalset_tag_of_fragment_tag (Fragment_symbol_v.water, Sole_index_v.head)]
);;

(*
let block_tag_list_add_of_fragment_tag (s, i) =
  let mrk_blk_l = Fragment_formula_v.block_tag_list_off_fragment_symbol s in
  let mrk_chs_blk_l =
    List.map Chm_v.chemicalset_tag_of_block_tag mrk_blk_l in 
  mrk_chs_blk_l @ [Chm_v.chemicalset_tag_of_fragment_tag (s,i)]
;;

let mrk_chs_blk_ll =
  List.map 
    block_tag_list_add_of_fragment_tag mrk_frg_l
;;

test_number 6 (
mrk_chs_blk_l
(* : Chemicalset_tag_t.chemicalset_tag list list list *)
=
 [
  (Chs_t.Block_symbol Block_symbol_v.water, Sole_index_v.tail);
  (Chs_t.Fragment_symbol Fragment_symbol_v.water, Sole_index_v.head);
]
);;

test_number 7 (
Block_formula_v.atom_tag_list_off_block_symbol Block_symbol_v.water            
(* : Atom_tag_t.atom_tag list *)
 =
 [
  (Atom_symbol_v.sstw_o, Sole_index_v.pbc);
  (Atom_symbol_v.slf_h, Sole_index_v.pbi);
  (Atom_symbol_v.slf_h, Sole_index_v.pbo);
]
);;

let atom_tag_list_add_of_block_tag (s, i) =
  let mrk_atm_l = Block_formula_v.atom_tag_list_off_block_symbol s in
  let mrk_chs_atm_l =
    List.map Chm_v.chemicalset_tag_of_atom_tag mrk_atm_l in 
  mrk_chs_atm_l @ [Chm_v.chemicalset_tag_of_block_tag (s,i)]
;;

let mrk_chs_atm_llll =
  List.map 
    (List.map 
       atom_tag_list_add_of_block_tag) mrk_blk_lll
;;

test_number 8 (
mrk_chs_atm_lll
(* : Chemicalset_tag_t.chemicalset_tag list list list *)
=
[[

 [(Chs_t.Atom_symbol Atom_symbol_v.sstw_o, Sole_index_v.ptc);
  (Chs_t.Block_symbol Block_symbol_v.water, Sole_index_v.tail);
  (Chs_t.Fragment_symbol Fragment_symbol_v.water, Sole_index_v.head);];
 [(Chs_t.Atom_symbol Atom_symbol_v.slf_h, Sole_index_v.pti);
  (Chs_t.Block_symbol Block_symbol_v.water, Sole_index_v.tail);
  (Chs_t.Fragment_symbol Fragment_symbol_v.water, Sole_index_v.head);];
 [(Chs_t.Atom_symbol Atom_symbol_v.slf, Sole_index_v.pto);
  (Chs_t.Block_symbol Block_symbol_v.water, Sole_index_v.tail);
  (Chs_t.Fragment_symbol Fragment_symbol_v.water, Sole_index_v.head);]
]]
);;


*)
