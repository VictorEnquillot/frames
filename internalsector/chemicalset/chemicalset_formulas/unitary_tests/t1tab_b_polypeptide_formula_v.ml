(** {3 1tab_b Polypeptide Formula.} *)

open Make_test_v;;

testing "1tab_b Polypeptide_formula_v";;

(* toplevel 
   #use "t1tab_b_polypeptide_formula_v.ml";; 
*)


(** Polypeptide : Ala-Ser
     
       (l)    (l)
       Ch3    Ch3
        |      |
     Nh2Ch-CoNhCh-CoOh
 
         Nh2Ch (head)     <---         depth = 1
           / \
          /   \
    (r) CoNhCh Ch3 (l)    <--- Sdg_2   depth = 2 Methyl
            / \
           /   \
     (r) CoOh   Ch2Oh (l) <--- Sdg_3   depth = 3 Methenol
*)    

(* Polypeptide Symbol *)

let nam_prn = "1tab";;
let sym_prn = Prs_t.Frompdbid nam_prn;;
let sym_plr = Polypeptide_symbol_t.Frompdbid (nam_prn ^ "_b");;
let sym_plp = Polypeptide_symbol_v.polypeptide_symbol_of_polypeptide_regular_symbol sym_plr;;

(* Polypeptide Formula  *)

let for_plp = Polypeptide_formula_v.make sym_plp;;

(* Symbols of Fragments : smb *)

let n_gly = Index_p.zero;; (* Glycine at Nterminal. No embedded Glycine *)

let sym_nterminal = Fragment_symbol_v.peptideca_regular_nterminal_neutral;;
let sym_backbone = Fragment_symbol_v.peptideca_regular_n_glycine_embedded n_gly;;
let sym_cterminal = Fragment_symbol_v.cterminal_n_glycine_neutral n_gly;;
let sym_sdg_2 = Fragment_symbol_v.methyl;;
let sym_sdg_3 = Fragment_symbol_v.methenol;;

(* Markers of Fragments : mrf *)
let cap_sci = Sole_index_v.head;;

let mrf_sdg_2 = Tag_v.make sym_sdg_2 Sole_index_v.stl;;
let mrf_sdg_3 = Tag_v.make sym_sdg_3 Sole_index_v.stl;;
let mrf_backbone = Tag_v.make sym_backbone Sole_index_v.str;;
let mrf_cterminal = Tag_v.make sym_cterminal Sole_index_v.str;;
let mrf_nterminal = Tag_v.make sym_nterminal cap_sci;;

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
(Fragment_symbol_t.Leaf_fragment_symbol
  (Fragment_symbol_t.Onezero_fragment_symbol Fragment_symbol_t.Oz_C_h_2O_h_),
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

