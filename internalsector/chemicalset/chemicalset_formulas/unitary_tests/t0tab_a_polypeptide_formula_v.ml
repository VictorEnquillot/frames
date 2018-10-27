(** {3 0tab_a Polypeptide formula.} *)

open Make_test_v;;

testing "0tab_a Polypeptide_formula_v";;

(* toplevel 
   #use "t0tab_a_polypeptide_formula_v.ml";; 
*)


(* Polypeptide Symbol *)

let sym_plr = Polypeptide_symbol_t.Tab_a;;
let sym_plp = Polypeptide_symbol_v.polypeptide_symbol_of_polypeptide_regular_symbol sym_plr;;

(* Polypeptide Formula  *)

let for_plp = Polypeptide_formula_v.make sym_plp;;

test_number 1 (
Polypeptide_sequence_v.name (Polypeptide_sequence_v.make sym_plp)
=
"VAAWG"
);;

test_number 2 (
Polypeptide_formula_v.name for_plp 
(* : string *)
=
"{(Zbf_N_h_2C_h_,head)[{((P0_Oo_CcocNch_C_h_2,Obf_CcocNch_C_h_),str)[{((P0_Oo_CcocNch_C_h_2,Obf_CcocNch_C_h_),str)[{((P0_Oo_CcocNch_C_h_2,Obf_CcocNch_C_h_),str)[((P1_Oo_CcocNch_C_h_2,Oz_CdodO_h_),str) {(Obf_Cch_Nch_Cc,stl)[{(Obf_Cch_Nch_Cc,pto)[{(Obf_Cch_r4Cc,pto)[(Hbc,pto) (Hbc,ptb)]} (Hbc,ptb)]} (Hbc,ptb)]}]} (Osz_C_h_3,stl)]} (Osz_C_h_3,stl)]} {(Osbss_C_h_,stl)[(Osz_C_h_3,str) (Osz_C_h_3,stl)]}]}"
);;

test_number 3 (
frm_plp 
(* : Polypeptide_formula_t.polypeptide_formula *) 
=
Polypeptide_formula_t.Tree_t.Node
 ((Polypeptide_formula_t.Fragment_tag_t.Frs_t.Head_fragment_symbol
    (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Zerofork_fragment_symbol
      (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Zerobifork_fragment_symbol
        Polypeptide_formula_t.Fragment_tag_t.Frs_t.Zbf_N_h_2C_h_)),
   Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.Sequential_index
    Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.Head),
 [Polypeptide_formula_t.Tree_t.Node
   ((Polypeptide_formula_t.Fragment_tag_t.Frs_t.Buried_fragment_symbol
      (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Buried_segment_extends_buried_fragment_symbol
        (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Polysegment_symbol
          (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Index_p.make 0,
           Polypeptide_formula_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Oneone_segment_symbol
            Polypeptide_formula_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Oo_CcocNch_C_h_2),
         Polypeptide_formula_t.Fragment_tag_t.Frs_t.Onefork_fragment_symbol
          (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Onebifork_fragment_symbol
            Polypeptide_formula_t.Fragment_tag_t.Frs_t.Obf_CcocNch_C_h_))),
     Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.Spherical_index
      (Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
        Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.St_r)),
   [Polypeptide_formula_t.Tree_t.Node
     ((Polypeptide_formula_t.Fragment_tag_t.Frs_t.Buried_fragment_symbol
        (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Buried_segment_extends_buried_fragment_symbol
          (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Polysegment_symbol
            (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Index_p.make 0,
             Polypeptide_formula_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Oneone_segment_symbol
              Polypeptide_formula_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Oo_CcocNch_C_h_2),
           Polypeptide_formula_t.Fragment_tag_t.Frs_t.Onefork_fragment_symbol
            (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Onebifork_fragment_symbol
              Polypeptide_formula_t.Fragment_tag_t.Frs_t.Obf_CcocNch_C_h_))),
       Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.Spherical_index
        (Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
          Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.St_r)),
     [Polypeptide_formula_t.Tree_t.Node
       ((Polypeptide_formula_t.Fragment_tag_t.Frs_t.Buried_fragment_symbol
          (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Buried_segment_extends_buried_fragment_symbol
            (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Polysegment_symbol
              (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Index_p.make 0,
               Polypeptide_formula_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Oneone_segment_symbol
                Polypeptide_formula_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Oo_CcocNch_C_h_2),
             Polypeptide_formula_t.Fragment_tag_t.Frs_t.Onefork_fragment_symbol
              (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Onebifork_fragment_symbol
                Polypeptide_formula_t.Fragment_tag_t.Frs_t.Obf_CcocNch_C_h_))),
         Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.Spherical_index
          (Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
            Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.St_r)),
       [Polypeptide_formula_t.Tree_t.Leaf
         (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Leaf_fragment_symbol
           (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Buried_segment_extends_leaf_fragment_symbol
             (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Polysegment_symbol
               (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Index_p.make 1,
                Polypeptide_formula_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Oneone_segment_symbol
                 Polypeptide_formula_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Oo_CcocNch_C_h_2),
              Polypeptide_formula_t.Fragment_tag_t.Frs_t.Onezero_fragment_symbol
               Polypeptide_formula_t.Fragment_tag_t.Frs_t.Oz_CdodO_h_)),
          Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.Spherical_index
           (Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
             Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.St_r));
        Polypeptide_formula_t.Tree_t.Node
         ((Polypeptide_formula_t.Fragment_tag_t.Frs_t.Buried_fragment_symbol
            (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Onefork_fragment_symbol
              (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Onebifork_fragment_symbol
                Polypeptide_formula_t.Fragment_tag_t.Frs_t.Obf_Cch_Nch_Cc)),
           Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.Spherical_index
            (Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
              Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.St_l)),
         [Polypeptide_formula_t.Tree_t.Node
           ((Polypeptide_formula_t.Fragment_tag_t.Frs_t.Buried_fragment_symbol
              (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Onefork_fragment_symbol
                (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Onebifork_fragment_symbol
                  Polypeptide_formula_t.Fragment_tag_t.Frs_t.Obf_Cch_Nch_Cc)),
             Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.Planar_index
              (Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.Planar_trigonal_index
                Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.Pt_o)),
           [Polypeptide_formula_t.Tree_t.Node
             ((Polypeptide_formula_t.Fragment_tag_t.Frs_t.Buried_fragment_symbol
                (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Onefork_fragment_symbol
                  (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Onebifork_fragment_symbol
                    Polypeptide_formula_t.Fragment_tag_t.Frs_t.Obf_Cch_r4Cc)),
               Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.Planar_index
                (Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.Planar_trigonal_index
                  Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.Pt_o)),
             [Polypeptide_formula_t.Tree_t.Leaf
               (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Leaf_fragment_symbol
                 (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Halfbridge_symbol
                   Polypeptide_formula_t.Fragment_tag_t.Frs_t.Halfbridge_symbol_t.Hbc),
                Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.Planar_index
                 (Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.Planar_trigonal_index
                   Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.Pt_o));
              Polypeptide_formula_t.Tree_t.Leaf
               (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Leaf_fragment_symbol
                 (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Halfbridge_symbol
                   Polypeptide_formula_t.Fragment_tag_t.Frs_t.Halfbridge_symbol_t.Hbc),
                Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.Planar_index
                 (Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.Planar_trigonal_index
                   Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.Pt_b))]);
            Polypeptide_formula_t.Tree_t.Leaf
             (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Leaf_fragment_symbol
               (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Halfbridge_symbol
                 Polypeptide_formula_t.Fragment_tag_t.Frs_t.Halfbridge_symbol_t.Hbc),
              Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.Planar_index
               (Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.Planar_trigonal_index
                 Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.Pt_b))]);
          Polypeptide_formula_t.Tree_t.Leaf
           (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Leaf_fragment_symbol
             (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Halfbridge_symbol
               Polypeptide_formula_t.Fragment_tag_t.Frs_t.Halfbridge_symbol_t.Hbc),
            Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.Planar_index
             (Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.Planar_trigonal_index
               Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.Pt_b))])]);
      Polypeptide_formula_t.Tree_t.Leaf
       (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Leaf_fragment_symbol
         (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Onezero_block_symbol
           (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Block_symbol_t.Onesinglezero_block_symbol
             Polypeptide_formula_t.Fragment_tag_t.Frs_t.Block_symbol_t.Osz_C_h_3)),
        Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.Spherical_index
         (Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
           Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.St_l))]);
    Polypeptide_formula_t.Tree_t.Leaf
     (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Leaf_fragment_symbol
       (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Onezero_block_symbol
         (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Block_symbol_t.Onesinglezero_block_symbol
           Polypeptide_formula_t.Fragment_tag_t.Frs_t.Block_symbol_t.Osz_C_h_3)),
      Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.Spherical_index
       (Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
         Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.St_l))]);
  Polypeptide_formula_t.Tree_t.Node
   ((Polypeptide_formula_t.Fragment_tag_t.Frs_t.Buried_fragment_symbol
      (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Onefork_block_symbol
        (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Block_symbol_t.Onebifork_block_symbol
          (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Block_symbol_t.Onesinglebiforksinglesingle_block_symbol
            Polypeptide_formula_t.Fragment_tag_t.Frs_t.Block_symbol_t.Osbss_C_h_))),
     Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.Spherical_index
      (Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
        Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.St_l)),
   [Polypeptide_formula_t.Tree_t.Leaf
     (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Leaf_fragment_symbol
       (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Onezero_block_symbol
         (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Block_symbol_t.Onesinglezero_block_symbol
           Polypeptide_formula_t.Fragment_tag_t.Frs_t.Block_symbol_t.Osz_C_h_3)),
      Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.Spherical_index
       (Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
         Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.St_r));
    Polypeptide_formula_t.Tree_t.Leaf
     (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Leaf_fragment_symbol
       (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Onezero_block_symbol
         (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Block_symbol_t.Onesinglezero_block_symbol
           Polypeptide_formula_t.Fragment_tag_t.Frs_t.Block_symbol_t.Osz_C_h_3)),
      Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.Spherical_index
       (Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
         Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.St_l))])])
);;

