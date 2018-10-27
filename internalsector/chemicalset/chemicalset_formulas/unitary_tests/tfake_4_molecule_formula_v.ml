(** {3 Fake_4 Molecule Formula.} *)

open Make_test_v;;

testing "Fake_4 Molecule_formula_v";;

(* toplevel 
   #use "tfake_4_molecule_formula_v.ml";; 
*)


(** Molecule : Fake_4 

                Ch3Ch (h)
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

let for_fake_4 = Mof_v.make Molecule_symbol_v.fake_4;; 

let mrk_ch3_l = Tag_v.make Fragment_symbol_v.methyl Sole_index_v.stl;;
let mrk_ch3_r = Tag_v.make Fragment_symbol_v.methyl Sole_index_v.str;;
let mrk_ch_l = Tag_v.make Fragment_symbol_v.methine Sole_index_v.stl;;
let mrk_ch_r = Tag_v.make Fragment_symbol_v.methine Sole_index_v.str;;
let mrk_ch3ch_h = Tag_v.make Fragment_symbol_v.ethidene Sole_index_v.head;;

test_number 1 (
Mof_v.name for_fake_4
(* : string *)
= 
"{(Zbf_C_h_3C_h_,head)[(Osz_C_h_3,str) {(Osbss_C_h_,stl)[{(Osbss_C_h_,str)[(Osz_C_h_3,str) {(Osbss_C_h_,stl)[(Osz_C_h_3,str) (Osz_C_h_3,stl)]}]} (Osz_C_h_3,stl)]}]}"
);;

test_number 2 (
frm_fake_4
(* : Molecule_formula_t.molecule_formula *)
=
Molecule_formula_t.Tree_t.Node
 ((Fragment_tag_t.Head_fragment_symbol
    (Fragment_tag_t.Zerofork_fragment_symbol
      (Fragment_tag_t.Zerobifork_fragment_symbol
        Fragment_tag_t.Zbf_C_h_3C_h_)),
   Sole_index_t.Sequential_index
    Sole_index_t.Head),
 [Molecule_formula_t.Tree_t.Leaf
   (Fragment_tag_t.Leaf_fragment_symbol
     (Fragment_tag_t.Onezero_block_symbol
       (Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
         Fragment_tag_t.Block_symbol_t.Osz_C_h_3)),
    Sole_index_t.Spherical_index
     (Sole_index_t.Spherical_tetrahedral_index
       Sole_index_t.St_r));
  Molecule_formula_t.Tree_t.Node
   ((Fragment_tag_t.Buried_fragment_symbol
      (Fragment_tag_t.Onefork_block_symbol
        (Fragment_tag_t.Block_symbol_t.Onebifork_block_symbol
          (Fragment_tag_t.Block_symbol_t.Onesinglebiforksinglesingle_block_symbol
            Fragment_tag_t.Block_symbol_t.Osbss_C_h_))),
     Sole_index_t.Spherical_index
      (Sole_index_t.Spherical_tetrahedral_index
        Sole_index_t.St_l)),
   [Molecule_formula_t.Tree_t.Node
     ((Fragment_tag_t.Buried_fragment_symbol
        (Fragment_tag_t.Onefork_block_symbol
          (Fragment_tag_t.Block_symbol_t.Onebifork_block_symbol
            (Fragment_tag_t.Block_symbol_t.Onesinglebiforksinglesingle_block_symbol
              Fragment_tag_t.Block_symbol_t.Osbss_C_h_))),
       Sole_index_t.Spherical_index
        (Sole_index_t.Spherical_tetrahedral_index
          Sole_index_t.St_r)),
     [Molecule_formula_t.Tree_t.Leaf
       (Fragment_tag_t.Leaf_fragment_symbol
         (Fragment_tag_t.Onezero_block_symbol
           (Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
             Fragment_tag_t.Block_symbol_t.Osz_C_h_3)),
        Sole_index_t.Spherical_index
         (Sole_index_t.Spherical_tetrahedral_index
           Sole_index_t.St_r));
      Molecule_formula_t.Tree_t.Node
       ((Fragment_tag_t.Buried_fragment_symbol
          (Fragment_tag_t.Onefork_block_symbol
            (Fragment_tag_t.Block_symbol_t.Onebifork_block_symbol
              (Fragment_tag_t.Block_symbol_t.Onesinglebiforksinglesingle_block_symbol
                Fragment_tag_t.Block_symbol_t.Osbss_C_h_))),
         Sole_index_t.Spherical_index
          (Sole_index_t.Spherical_tetrahedral_index
            Sole_index_t.St_l)),
       [Molecule_formula_t.Tree_t.Leaf
         (Fragment_tag_t.Leaf_fragment_symbol
           (Fragment_tag_t.Onezero_block_symbol
             (Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
               Fragment_tag_t.Block_symbol_t.Osz_C_h_3)),
          Sole_index_t.Spherical_index
           (Sole_index_t.Spherical_tetrahedral_index
             Sole_index_t.St_r));
        Molecule_formula_t.Tree_t.Leaf
         (Fragment_tag_t.Leaf_fragment_symbol
           (Fragment_tag_t.Onezero_block_symbol
             (Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
               Fragment_tag_t.Block_symbol_t.Osz_C_h_3)),
          Sole_index_t.Spherical_index
           (Sole_index_t.Spherical_tetrahedral_index
             Sole_index_t.St_l))])]);
    Molecule_formula_t.Tree_t.Leaf
     (Fragment_tag_t.Leaf_fragment_symbol
       (Fragment_tag_t.Onezero_block_symbol
         (Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
           Fragment_tag_t.Block_symbol_t.Osz_C_h_3)),
      Sole_index_t.Spherical_index
       (Sole_index_t.Spherical_tetrahedral_index
         Sole_index_t.St_l))])])
);;


