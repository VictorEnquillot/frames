(** {3 Tests for 1Tab_a Molecule_formula_v.} *)

open Make_test_v;;

testing "1Tab_a Molecule_formula_v"

(* toplevel 
   #use "t1tab_a_molecule_formula_v.ml";;
 *)


(** Polypeptide : Ala-Ala
     
       (l)    (l)
       Ch3    Ch3
        |      |
     Nh2Ch-CoNhCh-CoOh
 
-----------------------------------------------
         Nh2Ch (head)    <---        depth = 1           h
           / \                                           /\
          /   \                                         /  \
    (r) CoNhCh Ch3 (l)   <--- Sdg_2  depth = 2        r.h  l.h
            / \                                       /\
           /   \                                     /  \
     (r) CoOh   Ch3 (l)  <--- Sdg_3  depth = 3   r.r.h   l.r.h


  LN :  Nh2Ch[{R_CoNhCh[{R_CoOh}*{L_Ch3}]}*{L_Ch3}]

  Node : {N[{
  Leaf : {L}

                o
                |
                x
               / \
              r   l
*)    

(* Polypeptide Symbol *)

let nam_prn = "1tab";;
let sym_prn = Prs_t.Frompdbid nam_prn;;
let sym_plr = Polypeptide_symbol_t.Frompdbid (nam_prn ^ "_a");;
let sym_plp = Polypeptide_symbol_v.polypeptide_symbol_of_polypeptide_regular_symbol sym_plr;;

(* Polypeptide Formula  *)

let for_plp = Polypeptide_formula_v.make sym_plp;;

(* Symbols of Fragments : smb *)

let sym_nterminal = Fragment_symbol_v.peptideca_regular_nterminal_neutral;;
let sym_backbone = Fragment_symbol_v.peptideca_regular_n_glycine_embedded Index_p.zero;;
let sym_cterminal = Fragment_symbol_v.cterminal_n_glycine_neutral Index_p.zero;;
let sym_sdg_2 = Fragment_symbol_v.methyl;;
let sym_sdg_3 = Fragment_symbol_v.methyl;;

(* Markers of Fragments : mrf *)

let cap_sci = Sole_index_v.head;;

let mrf_sdg_2 = Tag_v.make sym_sdg_2 Sole_index_v.stl;;
let mrf_sdg_3 = Tag_v.make sym_sdg_2 Sole_index_v.stl;;
let mrf_backbone = Tag_v.make sym_backbone Sole_index_v.str;;
let mrf_cterminal = Tag_v.make sym_cterminal Sole_index_v.str;;
let mrf_nterminal = Tag_v.make sym_nterminal cap_sci;;

(* Polypeptide_sidegroup Formula *)

let for_sdg_l = Tree_v.subtree_list_of_depth_of_tree 2 for_plp;;
let prd t = let rot = Tree_v.root_off_tree t in Tag_v.index_off_tag rot = Sole_index_v.stl;;
let for_sdg_1 = Tree_v.subtree_of_predicate_of_depth_of_tree prd 2 for_plp;;

test_number 1 (
Polypeptide_sequence_v.name (Polypeptide_sequence_v.make sym_plp)
(* : string *)
=
"AA"
);;

test_number 2 (
Polypeptide_formula_v.name for_plp 
(* : string *)
=
"{(Zbf_N_h_2C_h_,head)[{((P0_Oo_CcocNch_C_h_2,Obf_CcocNch_C_h_),str)[((P0_Oo_CcocNch_C_h_2,Oz_CdodO_h_),str) (Osz_C_h_3,stl)]} (Osz_C_h_3,stl)]}"
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
mrf_sdg_2
=
(Fragment_tag_t.Leaf_fragment_symbol
  (Fragment_tag_t.Onezero_block_symbol
     (Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
        Fragment_tag_t.Block_symbol_t.Osz_C_h_3)),
 Sole_index_v.stl)
);;
 
test_number 5 (
mrf_sdg_3
=
(Fragment_tag_t.Leaf_fragment_symbol
  (Fragment_tag_t.Onezero_block_symbol
     (Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
        Fragment_tag_t.Block_symbol_t.Osz_C_h_3)),
 Sole_index_v.stl)
);;
 
test_number 6 (
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
frm_plp 
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

