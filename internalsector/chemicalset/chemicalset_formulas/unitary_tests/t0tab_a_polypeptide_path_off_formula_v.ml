(** {3 0tab_a Polypeptide Path off formula.} *)

open Make_test_v;;

testing "0tab_a Polypeptide_path_off_formula_v";;

(* toplevel 
   #use "t0tab_a_polypeptide_path_off_formula_v.ml";; 
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
Polypeptide_formula_v.name for_plp (* : string *)
=
"{(Zbf_N_h_2C_h_,head)[{(x0Obf_CcocNch_C_h_,stl)[{(x0Obf_CcocNch_C_h_,str)[{(x0Obf_CcocNch_C_h_,str)[(Oo_CcocNch_C_h_2r1Oz_CdodO_h_,str) {(Obf_Cch_Nch_Cc,stl)[{(Obf_Cch_Nch_Cc,pto)[{(Obf_Cch_r4Cc,pto)[(Hbc,pto) (Hbc,ptb)]} (Hbc,ptb)]} (Hbc,ptb)]}]} (Osz_C_h_3,stl)]} (Osz_C_h_3,stl)]} {(Osbss_C_h_,str)[(Osz_C_h_3,str) (Osz_C_h_3,stl)]}]}"
);;

test_number 3 (
frm_plp 
(* : Polypeptide_formula_t.polypeptide_formula *) 
=
Tree_t.Node ( 
(Fragment_symbol_v.peptideca_regular_nterminal_neutral, Sole_index_v.head),  
[Tree_t.Node
   ( 

(Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Buried_fragment_symbol
   (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Buried_segment_extends_buried_fragment_symbol
      ([],
       Fragment_symbol_v.Fragment_symbol_v.peptideca_regular_embedded
      ) ), Sole_index_v.stl )
       ,
     [Tree_t.Node
	((Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Buried_fragment_symbol
            (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Buried_segment_extends_buried_fragment_symbol
               ([],
		Fragment_symbol_v.Fragment_symbol_v.peptideca_regular_embedded
	       )),
	  Sole_index_v.str
	 ),
	 [Tree_t.Node
	    ((Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Buried_fragment_symbol
		(Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Buried_segment_extends_buried_fragment_symbol
		   ([],
		   Fragment_symbol_v.Fragment_symbol_v.peptideca_regular_embedded
		   )),
	      Sole_index_v.str
	     ),
	     [Tree_t.Leaf
		(Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Leaf_fragment_symbol
		   (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Buried_segment_extends_leaf_fragment_symbol
		      ([Polypeptide_sidegroup_symbol_v.ccocnch_c_h_2_b],
		       Fragment_symbol_v.carcofferyl_l)),
		    Sole_index_v.str
		   );

        Tree_t.Node
         ((Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Buried_fragment_symbol
            (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Onefork_fragment_symbol
              (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Onebifork_fragment_symbol
                Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Obf_Cch_Nch_Cc)),
           Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Spherical_index
            (Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Spherical_tetrahedral_index
              Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.St_l)),
         [Tree_t.Node
           ((Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Buried_fragment_symbol
              (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Onefork_fragment_symbol
                (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Onebifork_fragment_symbol
                  Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Obf_Cch_Nch_Cc)),
             Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Planar_index
              (Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Planar_trigonal_index
                Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Pt_o)),
           [Tree_t.Node
             ((Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Buried_fragment_symbol
                (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Onefork_fragment_symbol
                  (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Onebifork_fragment_symbol
                    Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Obf_Cch_r4Cc)),
               Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Planar_index
                (Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Planar_trigonal_index
                  Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Pt_o)),
             [Tree_t.Leaf
               (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Leaf_fragment_symbol
                 (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Halfbridge_symbol
                   Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Halfbridge_symbol_t.Hbc),
                Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Planar_index
                 (Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Planar_trigonal_index
                   Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Pt_o));
              Tree_t.Leaf
               (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Leaf_fragment_symbol
                 (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Halfbridge_symbol
                   Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Halfbridge_symbol_t.Hbc),
                Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Planar_index
                 (Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Planar_trigonal_index
                   Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Pt_b))]);
            Tree_t.Leaf
             (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Leaf_fragment_symbol
               (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Halfbridge_symbol
                 Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Halfbridge_symbol_t.Hbc),
              Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Planar_index
               (Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Planar_trigonal_index
                 Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Pt_b))]);
          Tree_t.Leaf
           (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Leaf_fragment_symbol
             (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Halfbridge_symbol
               Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Halfbridge_symbol_t.Hbc),
            Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Planar_index
             (Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Planar_trigonal_index
               Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Pt_b))])]);
      Tree_t.Leaf
       (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Leaf_fragment_symbol
         (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Onezero_block_symbol
           (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
             Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Block_symbol_t.Osz_C_h_3)),
        Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Spherical_index
         (Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Spherical_tetrahedral_index
           Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.St_l))]);
    Tree_t.Leaf
     (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Leaf_fragment_symbol
       (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Onezero_block_symbol
         (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
           Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Block_symbol_t.Osz_C_h_3)),
      Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Spherical_index
       (Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Spherical_tetrahedral_index
         Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.St_l))]);
  Tree_t.Node
   ((Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Buried_fragment_symbol
      (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Onefork_block_symbol
        (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Block_symbol_t.Onebifork_block_symbol
          (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Block_symbol_t.Onesinglebiforksinglesingle_block_symbol
            Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Block_symbol_t.Osbss_C_h_))),
     Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Spherical_index
      (Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Spherical_tetrahedral_index
        Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.St_r)),
   [Tree_t.Leaf
     (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Leaf_fragment_symbol
       (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Onezero_block_symbol
         (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
           Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Block_symbol_t.Osz_C_h_3)),
      Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Spherical_index
       (Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Spherical_tetrahedral_index
         Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.St_r));
    Tree_t.Leaf
     (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Leaf_fragment_symbol
       (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Onezero_block_symbol
         (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
           Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Block_symbol_t.Osz_C_h_3)),
      Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Spherical_index
       (Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Spherical_tetrahedral_index
         Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.St_l))])])
);;

