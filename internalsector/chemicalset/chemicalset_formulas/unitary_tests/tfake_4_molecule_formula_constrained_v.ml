(** {3 Fake_4 Molecule Formula Constrained.} *)

open Make_test_v;;

testing "Fake_4 Molecule_formula_constrained_v";;

(* toplevel 
   #use "tfake_4_molecule_formula_constrained_v.ml";; 
*)


(** C10H22
                   Ch3
                   |
                   Ch
                   /\
              (l) Ch Ch3 (r)
                 / \
           (l) Ch3  Ch (r)
                   / \
              (l) Ch Ch3 (r)
                 / \
            (l) Ch3 Ch3 (r)



"(Zbf_C_h_3C_h_, (Osz_C_h_3,str) 
    ({Osbss_C_h_ [({Osbss_C_h_ [(Osz_C_h_3,str)({Osbss_C_h_ [(Osz_C_h_3,str)(Osz_C_h_3,stl)]},stl)]},stl) (Osz_C_h_3,str)]
    } ,stl))"

*)

let foc_fake_4 = Molecule_forked_formula_constrained_v.retrieve Mfs_v.fake_4;; 

test_number 1 (
Molecule_forked_formula_constrained_v.name foc_fake_4
(* : string *)
= 
"((Zbf_C_h_3C_h_,head),(Osz_C_h_3,str){(Osbss_C_h_,stl)[{(Osbss_C_h_,str)[(Osz_C_h_3,str) {(Osbss_C_h_,stl)[(Osz_C_h_3,str) (Osz_C_h_3,stl)]}]} (Osz_C_h_3,stl)]})"
);;

(*
((Zbf_C_h_3C_h_,head),
(Osz_C_h_3,str) {(Osbss_C_h_,stl)
           [{(Osbss_C_h_,str)
         [(Osz_C_h_3,str) 
      {(Osbss_C_h_,stl)
   [(Osz_C_h_3,str) (Osz_C_h_3,stl)]}]} (Osz_C_h_3,stl)]})
*)
test_number 2 (
frc_fake_4
(* : Molecule_formula_constrained_t.molecule_formula_constrained *)
  =
(* Molecule_formula_constrained_t.Molecule_forked *)
(*   (  *)
(*     Fragment_symbol_v.ethidene_h, (\* level 0 *\) *)
(*     [  *)
(*        (Grouping_formula_constrained_v.methyl, Sole_index_v.str) (\* level 1 *\) *)
(*        ; *)
(*        (Indexed_leafed_tree_t.Node (\* level 1 *\) *)
(* 	  (Fragment_symbol_v.methine_b, (\* level 1 *\) *)
(* 	   [(Indexed_leafed_tree_t.Node (\* level 2 *\) *)
(* 	       (Fragment_symbol_v.methine_b, (\* level 2 *\) *)
(* 		[(Indexed_leafed_tree_t.Leaf Fragment_symbol_v.methyl_l, Sole_index_v.str) (\* level 3 *\) *)
(* 		   ; *)
(* 		 (Indexed_leafed_tree_t.Node *)
(* 		    (Fragment_symbol_v.methine_b, *)
(* 		     [(Indexed_leafed_tree_t.Leaf Fragment_symbol_v.methyl_l, Sole_index_v.str) (\* level 4 *\) *)
(* 			; *)
(* 		      (Indexed_leafed_tree_t.Leaf Fragment_symbol_v.methyl_l, Sole_index_v.stl) (\* level 4 *\) *)
(* 		    ]), Sole_index_v.stl) *)
(* 	       ]), Sole_index_v.str) *)
(* 	      ; *)
(* 	    (Indexed_leafed_tree_t.Leaf Fragment_symbol_v.methyl_l, Sole_index_v.stl) (\* level 2 *\) *)
(* 	    ] ), Sole_index_v.stl) (\* 2 level *\) *)

(*      ]  (\* 1 level *\) *)
(*    ) *)
((Molecule_forked_formula_constrained_t.Fragment_tag_t.Frs_t.Zerofork_fragment_symbol
   (Molecule_forked_formula_constrained_t.Fragment_tag_t.Frs_t.Zerobifork_fragment_symbol
     Molecule_forked_formula_constrained_t.Fragment_tag_t.Frs_t.Zbf_C_h_3C_h_),
  Molecule_forked_formula_constrained_t.Fragment_tag_t.Sole_index_t.Sequential_index
   Molecule_forked_formula_constrained_t.Fragment_tag_t.Sole_index_t.Head),
 [Molecule_forked_formula_constrained_t.Capped_leafed_tree_t.Leafed_tree_t.Leaf
   (Molecule_forked_formula_constrained_t.Fragment_tag_t.Frs_t.Onezero_block_symbol
     (Molecule_forked_formula_constrained_t.Fragment_tag_t.Frs_t.Block_symbol_t.Onesinglezero_block_symbol
       Molecule_forked_formula_constrained_t.Fragment_tag_t.Frs_t.Block_symbol_t.Osz_C_h_3),
    Molecule_forked_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_index
     (Molecule_forked_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
       Molecule_forked_formula_constrained_t.Fragment_tag_t.Sole_index_t.St_r));
  Molecule_forked_formula_constrained_t.Capped_leafed_tree_t.Leafed_tree_t.Node
   ((Molecule_forked_formula_constrained_t.Fragment_tag_t.Frs_t.Onefork_block_symbol
      (Molecule_forked_formula_constrained_t.Fragment_tag_t.Frs_t.Block_symbol_t.Onebifork_block_symbol
        (Molecule_forked_formula_constrained_t.Fragment_tag_t.Frs_t.Block_symbol_t.Onesinglebiforksinglesingle_block_symbol
          Molecule_forked_formula_constrained_t.Fragment_tag_t.Frs_t.Block_symbol_t.Osbss_C_h_)),
     Molecule_forked_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_index
      (Molecule_forked_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
        Molecule_forked_formula_constrained_t.Fragment_tag_t.Sole_index_t.St_l)),
   [Molecule_forked_formula_constrained_t.Capped_leafed_tree_t.Leafed_tree_t.Node
     ((Molecule_forked_formula_constrained_t.Fragment_tag_t.Frs_t.Onefork_block_symbol
        (Molecule_forked_formula_constrained_t.Fragment_tag_t.Frs_t.Block_symbol_t.Onebifork_block_symbol
          (Molecule_forked_formula_constrained_t.Fragment_tag_t.Frs_t.Block_symbol_t.Onesinglebiforksinglesingle_block_symbol
            Molecule_forked_formula_constrained_t.Fragment_tag_t.Frs_t.Block_symbol_t.Osbss_C_h_)),
       Molecule_forked_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_index
        (Molecule_forked_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
          Molecule_forked_formula_constrained_t.Fragment_tag_t.Sole_index_t.St_r)),
     [Molecule_forked_formula_constrained_t.Capped_leafed_tree_t.Leafed_tree_t.Leaf
       (Molecule_forked_formula_constrained_t.Fragment_tag_t.Frs_t.Onezero_block_symbol
         (Molecule_forked_formula_constrained_t.Fragment_tag_t.Frs_t.Block_symbol_t.Onesinglezero_block_symbol
           Molecule_forked_formula_constrained_t.Fragment_tag_t.Frs_t.Block_symbol_t.Osz_C_h_3),
        Molecule_forked_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_index
         (Molecule_forked_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
           Molecule_forked_formula_constrained_t.Fragment_tag_t.Sole_index_t.St_r));
      Molecule_forked_formula_constrained_t.Capped_leafed_tree_t.Leafed_tree_t.Node
       ((Molecule_forked_formula_constrained_t.Fragment_tag_t.Frs_t.Onefork_block_symbol
          (Molecule_forked_formula_constrained_t.Fragment_tag_t.Frs_t.Block_symbol_t.Onebifork_block_symbol
            (Molecule_forked_formula_constrained_t.Fragment_tag_t.Frs_t.Block_symbol_t.Onesinglebiforksinglesingle_block_symbol
              Molecule_forked_formula_constrained_t.Fragment_tag_t.Frs_t.Block_symbol_t.Osbss_C_h_)),
         Molecule_forked_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_index
          (Molecule_forked_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
            Molecule_forked_formula_constrained_t.Fragment_tag_t.Sole_index_t.St_l)),
       [Molecule_forked_formula_constrained_t.Capped_leafed_tree_t.Leafed_tree_t.Leaf
         (Molecule_forked_formula_constrained_t.Fragment_tag_t.Frs_t.Onezero_block_symbol
           (Molecule_forked_formula_constrained_t.Fragment_tag_t.Frs_t.Block_symbol_t.Onesinglezero_block_symbol
             Molecule_forked_formula_constrained_t.Fragment_tag_t.Frs_t.Block_symbol_t.Osz_C_h_3),
          Molecule_forked_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_index
           (Molecule_forked_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
             Molecule_forked_formula_constrained_t.Fragment_tag_t.Sole_index_t.St_r));
        Molecule_forked_formula_constrained_t.Capped_leafed_tree_t.Leafed_tree_t.Leaf
         (Molecule_forked_formula_constrained_t.Fragment_tag_t.Frs_t.Onezero_block_symbol
           (Molecule_forked_formula_constrained_t.Fragment_tag_t.Frs_t.Block_symbol_t.Onesinglezero_block_symbol
             Molecule_forked_formula_constrained_t.Fragment_tag_t.Frs_t.Block_symbol_t.Osz_C_h_3),
          Molecule_forked_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_index
           (Molecule_forked_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
             Molecule_forked_formula_constrained_t.Fragment_tag_t.Sole_index_t.St_l))])]);
    Molecule_forked_formula_constrained_t.Capped_leafed_tree_t.Leafed_tree_t.Leaf
     (Molecule_forked_formula_constrained_t.Fragment_tag_t.Frs_t.Onezero_block_symbol
       (Molecule_forked_formula_constrained_t.Fragment_tag_t.Frs_t.Block_symbol_t.Onesinglezero_block_symbol
         Molecule_forked_formula_constrained_t.Fragment_tag_t.Frs_t.Block_symbol_t.Osz_C_h_3),
      Molecule_forked_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_index
       (Molecule_forked_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
         Molecule_forked_formula_constrained_t.Fragment_tag_t.Sole_index_t.St_l))])])
);;
