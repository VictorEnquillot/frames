(** {3 1tab_b Polypeptide Inmolepath.} *)

open Make_test_v;;

testing "1tab_b Polypeptide_inmolepath_v";;

(* toplevel 
   #use "t1tab_b_polypeptide_inmolepath_v.ml";; 
*)


(** Polypeptide : Ala-Ser
     
       (l)    (l)
       Ch3    Ch3
        |      |
     Nh2Ch-CoNhCh-CoOh
 
         Nh2Ch (head)     <---         depth = 1
           / \
          /   \
    (r) CoNhCh Ch3 (l)    <--- Sdg_2     depth = 2 Methyl
            / \
           /   \
     (r) CoOh   Ch2Oh (l) <--- Sdg_3   depth = 3 Methenol
*)    

(* Polypeptide Symbol *)

let nam_prn = "1tab";;
let sym_prn = Prs_t.Frompdbid nam_prn;;
let sym_plr = Polypeptide_symbol_t.Frompdbid (nam_prn ^ "_b");;
let sym_plp = Polypeptide_symbol_v.polypeptide_symbol_of_polypeptide_regular_symbol sym_plr;;
let sym_mol = Molecule_symbol_v.molecule_symbol_of_polypeptide_symbol sym_plp;;

(* Polypeptide Formula  *)

let for_plp = Polypeptide_formula_v.make sym_plp;;
let mrf_ch3 = Tag_v.make Fragment_symbol_v.methyl Sole_index_v.str;;
let cmf_ch3 = Chemicalset_tag_v.chemicalset_tag_of_fragment_tag mrf_ch3;;

(* Symbols of Fragments : smb *)

let n_gly = Index_p.zero;; (* Glycine at Nterminal. No embedded Glycine *)

let sym_nterminal = Fragment_symbol_v.peptideca_regular_nterminal_neutral;;
let sym_backbone = Fragment_symbol_v.peptideca_regular_n_glycine_embedded n_gly;;
let sym_cterminal = Fragment_symbol_v.cterminal_n_glycine_neutral n_gly;;
let sym_sdg_2 = Fragment_symbol_v.methyl;;
let sym_sdg_3 = Fragment_symbol_v.methyl;;

(* Markers of Fragments : mrf *)
let cap_sci = Sole_index_v.head;;

let mrf_sdg_2 = Tag_v.make sym_sdg_2 Sole_index_v.stl;;
let mrf_sdg_3 = Tag_v.make sym_sdg_2 Sole_index_v.stl;;
let mrf_backbone = Tag_v.make sym_backbone Sole_index_v.str;;
let mrf_cterminal = Tag_v.make sym_cterminal Sole_index_v.str;;
let mrf_nterminal = Tag_v.make sym_nterminal cap_sci;;

(* Inmolepath (imp) : fragment_tag list *) 

let imp_sdg_1 = Imp_v.inmolepath_of_fragment_tag_of_depth_of_molecule_formula mrf_sdg_2 2 for_plp;; 
let imp_sdg_2 = Imp_v.inmolepath_of_fragment_tag_of_depth_of_molecule_formula mrf_sdg_3 3 for_plp;;

test_number 1 (
Polypeptide_sequence_v.name (Polypeptide_sequence_v.make sym_plp)
(* : string *)
=
"AS"
);;

test_number 2 (
Polypeptide_formula_v.name for_plp 
(* : string *)
  =
"{(Zbf_N_h_2C_h_,head)[{((P0_Oo_CcocNch_C_h_2,Obf_CcocNch_C_h_),str)[((P0_Oo_CcocNch_C_h_2,Oz_CdodO_h_),str) (Oz_C_h_2O_h_,stl)]} (Osz_C_h_3,stl)]}"
);;

test_number 3 (
mrf_nterminal
(* : (Fragment_symbol_t.fragment_symbol,
     Sole_index_t.sole_index)
    Tag_t.marker *)
=
(Fragment_tag_t.Head_fragment_symbol
  (Fragment_tag_t.Zerofork_fragment_symbol
    (Fragment_tag_t.Zerobifork_fragment_symbol
      Fragment_tag_t.Zbf_N_h_2C_h_)),
 Sole_index_v.head)
);;

test_number 4 (
mrf_backbone
=
(Fragment_tag_t.Buried_fragment_symbol
  (Fragment_tag_t.Buried_segment_extends_buried_fragment_symbol
    (Fragment_tag_t.Segment_symbol_t.Polysegment_symbol
      (Fragment_tag_t.Segment_symbol_t.Index_p.make 0,
       Fragment_tag_t.Segment_symbol_t.Oneone_segment_symbol Fragment_tag_t.Segment_symbol_t.Oo_CcocNch_C_h_2),
     Fragment_tag_t.Onefork_fragment_symbol
      (Fragment_tag_t.Onebifork_fragment_symbol Fragment_tag_t.Obf_CcocNch_C_h_))),
 Sole_index_v.str)
);;

test_number 5 (
mrf_sdg_2
=
(Fragment_tag_t.Leaf_fragment_symbol
  (Fragment_tag_t.Onezero_block_symbol
     (Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
        Fragment_tag_t.Block_symbol_t.Osz_C_h_3)),
 Sole_index_v.stl)
);;
 
test_number 6 (
mrf_sdg_3
=
(Fragment_tag_t.Leaf_fragment_symbol
  (Fragment_tag_t.Onezero_block_symbol
     (Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
        Fragment_tag_t.Block_symbol_t.Osz_C_h_3)),
 Sole_index_v.stl)
);;
 
test_number 7 (
mrf_cterminal
=
(Fragment_tag_t.Leaf_fragment_symbol
  (Fragment_tag_t.Buried_segment_extends_leaf_fragment_symbol
    (Fragment_tag_t.Segment_symbol_t.Polysegment_symbol
      (Fragment_tag_t.Segment_symbol_t.Index_p.make 0,
       Fragment_tag_t.Segment_symbol_t.Oneone_segment_symbol Fragment_tag_t.Segment_symbol_t.Oo_CcocNch_C_h_2),
     Fragment_tag_t.Onezero_fragment_symbol Fragment_tag_t.Oz_CdodO_h_)),
 Sole_index_v.str)
);;

frm_plp =
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
   [Polypeptide_formula_t.Tree_t.Leaf
     (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Leaf_fragment_symbol
       (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Buried_segment_extends_leaf_fragment_symbol
         (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Polysegment_symbol
           (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Index_p.make 0,
            Polypeptide_formula_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Oneone_segment_symbol
             Polypeptide_formula_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Oo_CcocNch_C_h_2),
          Polypeptide_formula_t.Fragment_tag_t.Frs_t.Onezero_fragment_symbol
           Polypeptide_formula_t.Fragment_tag_t.Frs_t.Oz_CdodO_h_)),
      Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.Spherical_index
       (Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
         Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.St_r));
    Polypeptide_formula_t.Tree_t.Leaf
     (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Leaf_fragment_symbol
       (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Onezero_fragment_symbol
         Polypeptide_formula_t.Fragment_tag_t.Frs_t.Oz_C_h_2O_h_),
      Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.Spherical_index
       (Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
         Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.St_l))
]);
  Polypeptide_formula_t.Tree_t.Leaf
mrf_sdg_2
])
;;

test_number 8 (
 for_plp 
(* : Polypeptide_formula_t.polypeptide_formula *) 
   =
Tree_t.Node
  (mrf_nterminal,
   [Tree_t.Node 
      (mrf_backbone,
       [Tree_t.Leaf mrf_cterminal;
        Tree_t.Leaf mrf_sdg_3;]
      );
    Tree_t.Leaf mrf_sdg_2
  ])
);;

test_number 9 ( 
imp_sdg_1
(* : Inmolepath_t.inmolepath *)
  =
[mrf_sdg_2; mrf_nterminal]
);;

test_number 10 ( 
imp_sdg_2
(* : Inmolepath_t.inmolepath *)
  =
[mrf_sdg_3; mrf_backbone; mrf_nterminal]
);;

