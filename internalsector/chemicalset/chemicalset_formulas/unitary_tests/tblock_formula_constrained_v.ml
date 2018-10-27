(** {3 Block Formula Constrained.} *)

open Make_test_v;;

testing "Block_formula_constrained_v";;

(* toplevel 
   #use "tblock_formula_constrained_v.ml";; 
*)


(** Coo- *)

let foc_blk_coo = Block_formula_constrained_v.retrieve Block_symbol_v.carcofferylate;; 

(** -Co *)

let foc_blk_co = Block_formula_constrained_v.retrieve Block_symbol_v.carbonyl;; 

(** -Ch3 *)

let foc_blk_ch3 = Block_formula_constrained_v.retrieve Block_symbol_v.methyl;;

test_number 1 (
frc_blk_coo (* : Block_formula_constrained_t.block_formula_constrained *)
  =
((Block_formula_constrained_t.Atom_tag_t.Atom_symbol_t.Threetied_atom_symbol
   (Block_formula_constrained_t.Atom_tag_t.Atom_symbol_t.Nonsigma_threetied_atom_symbol
     (Block_formula_constrained_t.Atom_tag_t.Atom_symbol_t.Singlenonsigma_threetied_atom_symbol
       Block_formula_constrained_t.Atom_tag_t.Atom_symbol_t.Snth_C)),
  Block_formula_constrained_t.Atom_tag_t.Sole_index_t.Planar_index
   (Block_formula_constrained_t.Atom_tag_t.Sole_index_t.Planar_trigonal_index
     Block_formula_constrained_t.Atom_tag_t.Sole_index_t.Pt_c)),
 [(Block_formula_constrained_t.Atom_tag_t.Atom_symbol_t.Nonsigma_atom_onetied_symbol
    Block_formula_constrained_t.Atom_tag_t.Atom_symbol_t.Nlf_O,
   Block_formula_constrained_t.Atom_tag_t.Sole_index_t.Planar_index
    (Block_formula_constrained_t.Atom_tag_t.Sole_index_t.Planar_trigonal_index
      Block_formula_constrained_t.Atom_tag_t.Sole_index_t.Pt_b));
  (Block_formula_constrained_t.Atom_tag_t.Atom_symbol_t.Nonsigma_atom_onetied_symbol
    Block_formula_constrained_t.Atom_tag_t.Atom_symbol_t.Nlf_O,
   Block_formula_constrained_t.Atom_tag_t.Sole_index_t.Planar_index
    (Block_formula_constrained_t.Atom_tag_t.Sole_index_t.Planar_trigonal_index
      Block_formula_constrained_t.Atom_tag_t.Sole_index_t.Pt_o))])
);;

test_number 2 (
Block_formula_constrained_v.atom_core_symbol_off_block_formula_constrained foc_blk_coo
(* : Atom_core_symbol_t.atom_core_symbol *)
  =
Atom_symbol_t.Threetied_atom_symbol
  (Atom_symbol_t.Nonsigma_threetied_atom_symbol
     (Atom_symbol_t.Singlenonsigma_threetied_atom_symbol Atom_symbol_t.Snth_C))
);;

test_number 3 (
Block_formula_constrained_v.atom_onetied_tag_list_off_block_formula_constrained foc_blk_coo
(* : Atom_onetied_tag_t.atom_onetied_tag list *)
=
[(Atom_tag_t.Atom_symbol_t.Nonsigma_atom_onetied_symbol Atom_tag_t.Atom_symbol_t.Nlf_O,
  Atom_tag_t.Sole_index_t.Planar_index
   (Atom_tag_t.Sole_index_t.Planar_trigonal_index Atom_tag_t.Sole_index_t.Pt_b));
 (Atom_tag_t.Atom_symbol_t.Nonsigma_atom_onetied_symbol Atom_tag_t.Atom_symbol_t.Nlf_O,
  Atom_tag_t.Sole_index_t.Planar_index
   (Atom_tag_t.Sole_index_t.Planar_trigonal_index Atom_tag_t.Sole_index_t.Pt_o))]
);;

test_number 4 (
frc_blk_co (* : Block_formula_constrained_t.block_formula_constrained *)
=
((Block_formula_constrained_t.Atom_tag_t.Atom_symbol_t.Threetied_atom_symbol
   (Block_formula_constrained_t.Atom_tag_t.Atom_symbol_t.Nonsigma_threetied_atom_symbol
     (Block_formula_constrained_t.Atom_tag_t.Atom_symbol_t.Singlenonsigma_threetied_atom_symbol
       Block_formula_constrained_t.Atom_tag_t.Atom_symbol_t.Snth_C)),
  Block_formula_constrained_t.Atom_tag_t.Sole_index_t.Planar_index
   (Block_formula_constrained_t.Atom_tag_t.Sole_index_t.Planar_trigonal_index
     Block_formula_constrained_t.Atom_tag_t.Sole_index_t.Pt_c)),
 [(Block_formula_constrained_t.Atom_tag_t.Atom_symbol_t.Nonsigma_atom_onetied_symbol
    Block_formula_constrained_t.Atom_tag_t.Atom_symbol_t.Nlf_O,
   Block_formula_constrained_t.Atom_tag_t.Sole_index_t.Planar_index
    (Block_formula_constrained_t.Atom_tag_t.Sole_index_t.Planar_trigonal_index
      Block_formula_constrained_t.Atom_tag_t.Sole_index_t.Pt_b))])
);;

test_number 5 (
Block_formula_constrained_v.atom_core_symbol_off_block_formula_constrained foc_blk_co
(* : Atom_core_symbol_t.atom_core_symbol *) 
=
Atom_symbol_t.Threetied_atom_symbol
 (Atom_symbol_t.Nonsigma_threetied_atom_symbol
   (Atom_symbol_t.Singlenonsigma_threetied_atom_symbol Atom_symbol_t.Snth_C))
);;

test_number 6 (
Block_formula_constrained_v.atom_onetied_tag_list_off_block_formula_constrained foc_blk_co
(* : Atom_onetied_tag_t.atom_onetied_tag list *)
=
[(Atom_tag_t.Atom_symbol_t.Nonsigma_atom_onetied_symbol Atom_tag_t.Atom_symbol_t.Nlf_O,
  Atom_tag_t.Sole_index_t.Planar_index
   (Atom_tag_t.Sole_index_t.Planar_trigonal_index Atom_tag_t.Sole_index_t.Pt_b))]
);;

(** Ch3 *)
test_number 7 (
frc_blk_ch3
(* : Block_formula_constrained_t.block_formula_constrained *)
=
((Block_formula_constrained_t.Atom_tag_t.Atom_symbol_t.Fourtied_atom_symbol
   Block_formula_constrained_t.Atom_tag_t.Atom_symbol_t.Fo_C,
  Block_formula_constrained_t.Atom_tag_t.Sole_index_t.Spherical_index
   (Block_formula_constrained_t.Atom_tag_t.Sole_index_t.Spherical_tetrahedral_index
     Block_formula_constrained_t.Atom_tag_t.Sole_index_t.St_c)),
 [(Block_formula_constrained_t.Atom_tag_t.Atom_symbol_t.Single_atom_onetied_symbol
    Block_formula_constrained_t.Atom_tag_t.Atom_symbol_t.Slf_H,
   Block_formula_constrained_t.Atom_tag_t.Sole_index_t.Spherical_index
    (Block_formula_constrained_t.Atom_tag_t.Sole_index_t.Spherical_tetrahedral_index
      Block_formula_constrained_t.Atom_tag_t.Sole_index_t.St_o));
  (Block_formula_constrained_t.Atom_tag_t.Atom_symbol_t.Single_atom_onetied_symbol
    Block_formula_constrained_t.Atom_tag_t.Atom_symbol_t.Slf_H,
   Block_formula_constrained_t.Atom_tag_t.Sole_index_t.Spherical_index
    (Block_formula_constrained_t.Atom_tag_t.Sole_index_t.Spherical_tetrahedral_index
      Block_formula_constrained_t.Atom_tag_t.Sole_index_t.St_r));
  (Block_formula_constrained_t.Atom_tag_t.Atom_symbol_t.Single_atom_onetied_symbol
    Block_formula_constrained_t.Atom_tag_t.Atom_symbol_t.Slf_H,
   Block_formula_constrained_t.Atom_tag_t.Sole_index_t.Spherical_index
    (Block_formula_constrained_t.Atom_tag_t.Sole_index_t.Spherical_tetrahedral_index
      Block_formula_constrained_t.Atom_tag_t.Sole_index_t.St_l))])
);;

test_number 8 (
Block_formula_constrained_v.atom_core_symbol_off_block_formula_constrained foc_blk_ch3
(* : Atom_core_symbol_t.atom_core_symbol *)
  =
Atom_symbol_v.cfo_c
);;

test_number 9 (
Block_formula_constrained_v.atom_onetied_tag_list_off_block_formula_constrained foc_blk_ch3
(* : Atom_onetied_tag_t.atom_onetied_tag list *)
=
[(Atom_tag_t.Atom_symbol_t.Single_atom_onetied_symbol Atom_tag_t.Atom_symbol_t.Slf_H,
  Atom_tag_t.Sole_index_t.Spherical_index
   (Atom_tag_t.Sole_index_t.Spherical_tetrahedral_index
     Atom_tag_t.Sole_index_t.St_o));
 (Atom_tag_t.Atom_symbol_t.Single_atom_onetied_symbol Atom_tag_t.Atom_symbol_t.Slf_H,
  Atom_tag_t.Sole_index_t.Spherical_index
   (Atom_tag_t.Sole_index_t.Spherical_tetrahedral_index
     Atom_tag_t.Sole_index_t.St_r));
 (Atom_tag_t.Atom_symbol_t.Single_atom_onetied_symbol Atom_tag_t.Atom_symbol_t.Slf_H,
  Atom_tag_t.Sole_index_t.Spherical_index
   (Atom_tag_t.Sole_index_t.Spherical_tetrahedral_index
     Atom_tag_t.Sole_index_t.St_l))]
);;


