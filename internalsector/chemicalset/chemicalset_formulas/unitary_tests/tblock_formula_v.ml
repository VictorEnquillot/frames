(** {3 Block Formula.} *)

open Make_test_v;;

testing "Block_formula_v
   tblock_formula_v";;

(* toplevel 
   #use "tblock_formula_v.ml";; 
*)

let sym_blo = Block_symbol_v.n_c_ssss;;  
let tag_blo = Tag_v.make sym_blo [3; 2; 1];;
let for_blo = Block_formula_v.make tag_blo;;

test_number 1 (
for_blo
=
[]
);;


(****
(** -Ch3 *)

let sym_blk_coo = Block_symbol_v.carcofferylate;;
let for_blk_coo = Block_formula_v.make sym_blk_coo;;

(** -Co *)

let sym_blk_co = Block_symbol_v.carbonyl;;
let for_blk_co = Block_formula_v.make sym_blk_co;;

(** -Ch3 *)

let sym_blk_ch3 = Block_symbol_v.methyl;;
let for_blk_ch3 = Block_formula_v.make sym_blk_ch3;;

test_number 1 (
frm_blk_coo (* : (Atom_symbol_t.atom_symbol,
     Block_formula_constrained_t.Sole_index_t.sole_index)
    Doublet_list_t.doublet_list *)
=
[(Block_formula_t.Atom_symbol_t.Atom_core_symbol
   (Block_formula_t.Atom_symbol_t.Threetied_atom_symbol
     (Block_formula_t.Atom_symbol_t.Nonsigma_threetied_atom_symbol
       (Block_formula_t.Atom_symbol_t.Singlenonsigma_threetied_atom_symbol
         Block_formula_t.Atom_symbol_t.Snth_C))),
  Block_formula_t.Sole_index_t.Planar_index
   (Block_formula_t.Sole_index_t.Planar_trigonal_index Block_formula_t.Sole_index_t.Pt_c));
 (Block_formula_t.Atom_symbol_t.Atom_onetied_symbol
   (Block_formula_t.Atom_symbol_t.Nonsigma_atom_onetied_symbol
     Block_formula_t.Atom_symbol_t.Nlf_O),
  Block_formula_t.Sole_index_t.Planar_index
   (Block_formula_t.Sole_index_t.Planar_trigonal_index Block_formula_t.Sole_index_t.Pt_b));
 (Block_formula_t.Atom_symbol_t.Atom_onetied_symbol
   (Block_formula_t.Atom_symbol_t.Nonsigma_atom_onetied_symbol
     Block_formula_t.Atom_symbol_t.Nlf_O),
  Block_formula_t.Sole_index_t.Planar_index
   (Block_formula_t.Sole_index_t.Planar_trigonal_index Block_formula_t.Sole_index_t.Pt_o))]
);;

test_number 2 (
Block_formula_v.atom_tag_list_off_block_formula for_blk_coo
  =
frm_blk_coo
);;

test_number 3 (
Block_formula_v.name for_blk_coo
=
"(Snth_C,ptc)(Nlf_o,ptb)(Nlf_o,pto)"
);;

test_number 4 (
frm_blk_co (* : (Atom_symbol_t.atom_symbol,
     Block_formula_constrained_t.Sole_index_t.sole_index)
    Doublet_list_t.doublet_list *)
=
[(Block_formula_t.Atom_symbol_t.Atom_core_symbol
   (Block_formula_t.Atom_symbol_t.Threetied_atom_symbol
     (Block_formula_t.Atom_symbol_t.Nonsigma_threetied_atom_symbol
       (Block_formula_t.Atom_symbol_t.Singlenonsigma_threetied_atom_symbol
         Block_formula_t.Atom_symbol_t.Snth_C))),
  Block_formula_t.Sole_index_t.Planar_index
   (Block_formula_t.Sole_index_t.Planar_trigonal_index Block_formula_t.Sole_index_t.Pt_c));
 (Block_formula_t.Atom_symbol_t.Atom_onetied_symbol
   (Block_formula_t.Atom_symbol_t.Nonsigma_atom_onetied_symbol
     Block_formula_t.Atom_symbol_t.Nlf_O),
  Block_formula_t.Sole_index_t.Planar_index
   (Block_formula_t.Sole_index_t.Planar_trigonal_index Block_formula_t.Sole_index_t.Pt_b))]
);;

test_number 5 (
Block_formula_v.atom_tag_list_off_block_formula for_blk_co
  =
frm_blk_co
);;

test_number 6 (
Block_formula_v.name for_blk_co
=
"(Snth_C,ptc)(Nlf_o,ptb)"
);;

test_number 7 (
frm_blk_ch3
(* : (Atom_symbol_t.atom_symbol,
     Block_formula_constrained_t.Sole_index_t.sole_index)
    Doublet_list_t.doublet_list *)
=[(Block_formula_t.Atom_symbol_t.Atom_core_symbol
   (Block_formula_t.Atom_symbol_t.Fourtied_atom_symbol Block_formula_t.Atom_symbol_t.Fo_C),
  Block_formula_t.Sole_index_t.Spherical_index
   (Block_formula_t.Sole_index_t.Spherical_tetrahedral_index
     Block_formula_t.Sole_index_t.St_c));
 (Block_formula_t.Atom_symbol_t.Atom_onetied_symbol
   (Block_formula_t.Atom_symbol_t.Single_atom_onetied_symbol Block_formula_t.Atom_symbol_t.Slf_H),
  Block_formula_t.Sole_index_t.Spherical_index
   (Block_formula_t.Sole_index_t.Spherical_tetrahedral_index
     Block_formula_t.Sole_index_t.St_o));
 (Block_formula_t.Atom_symbol_t.Atom_onetied_symbol
   (Block_formula_t.Atom_symbol_t.Single_atom_onetied_symbol Block_formula_t.Atom_symbol_t.Slf_H),
  Block_formula_t.Sole_index_t.Spherical_index
   (Block_formula_t.Sole_index_t.Spherical_tetrahedral_index
     Block_formula_t.Sole_index_t.St_r));
 (Block_formula_t.Atom_symbol_t.Atom_onetied_symbol
   (Block_formula_t.Atom_symbol_t.Single_atom_onetied_symbol Block_formula_t.Atom_symbol_t.Slf_H),
  Block_formula_t.Sole_index_t.Spherical_index
   (Block_formula_t.Sole_index_t.Spherical_tetrahedral_index
     Block_formula_t.Sole_index_t.St_l))]
);;

test_number 8 (
Block_formula_v.atom_tag_list_off_block_formula for_blk_ch3
  =
frm_blk_ch3
);;

test_number 9 (
Block_formula_v.name for_blk_ch3
=
"(Fo_C,stc)(Slf_H,sto)(Slf_H,str)(Slf_H,stl)"
)
***)
