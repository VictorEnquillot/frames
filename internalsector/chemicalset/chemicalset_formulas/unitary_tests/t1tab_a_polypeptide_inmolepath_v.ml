(** {3 1tab_a Polypeptide Inmolepath.} *)

open Make_test_v;;

testing "1tab_a Polypeptide_inmolepath_v";;

(* toplevel 
   #use "t1tab_a_polypeptide_inmolepath_v.ml";; 
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
let sym_mol = Molecule_symbol_v.molecule_symbol_of_polypeptide_symbol sym_plp;;

(* Polypeptide Formula  *)

let for_plp = Polypeptide_formula_v.make sym_plp;;
let for_mol = Mof_v.make sym_mol;;

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

let mkd_frg_lt = Mof_v.fragment_tag_depthed_list_tree_off_molecule_formula for_mol;;

let mkd_frg_ll = Mof_v.fragment_tag_depthed_list_list_off_molecule_formula for_mol;;

let mrk_frg_lt = Mof_v.fragment_tag_list_tree_off_molecule_formula for_mol;;
let imp_t = Imp_v.inmolepath_tree_off_molecule_formula for_mol;;

let mrk_frg_ll = Mof_v.fragment_tag_list_list_off_molecule_formula for_mol;;
let imp_l = Imp_v.inmolepath_list_off_molecule_formula for_mol;;

let imp_sdg_2 = Imp_v.inmolepath_of_fragment_tag_of_depth_of_molecule_formula mrf_sdg_2 2 for_mol;; (* first Ch3 *)
let imp_sdg_3 = Imp_v.inmolepath_of_fragment_tag_of_depth_of_molecule_formula mrf_sdg_3 3 for_mol;; (* second Sdg_3 *) 

let imp_backbone = [mrf_backbone; mrf_nterminal];; 
let imp_nterminal = [mrf_nterminal];;
let imp_cterminal = [mrf_cterminal; mrf_backbone; mrf_nterminal];; 

let mrk_frg_l = Imp_v.fragment_tag_list_off_inmolepath imp_sdg_3;;
let sym_frg_l = Imp_v.fragment_symbol_list_off_inmolepath imp_sdg_3;;
let sci_frg_l = Imp_v.sole_index_list_off_inmolepath imp_sdg_3;;

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
List.length mkd_frg_ll
(* : int *)
=
5
);;

test_number 4 (
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

test_number 5 (
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

test_number 6 (
mrf_sdg_2
=
(Fragment_tag_t.Leaf_fragment_symbol
  (Fragment_tag_t.Onezero_block_symbol
     (Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
        Fragment_tag_t.Block_symbol_t.Osz_C_h_3)),
 Sole_index_v.stl)
);;
 
test_number 7 (
mrf_sdg_3
=
(Fragment_tag_t.Leaf_fragment_symbol
  (Fragment_tag_t.Onezero_block_symbol
     (Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
        Fragment_tag_t.Block_symbol_t.Osz_C_h_3)),
 Sole_index_v.stl)
);;
 
test_number 8 (
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

test_number 9 (
frm_mol 
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

(*
 (  (* Tree of Tag_depthed Paths : Moletree_depthed_path *)
 mkd_frg_lt  
(* : (Fragment_tag_t.fragment_tag * int) list Tree_t.tree *)
=
Tree_t.Node
 ([(mrf_nterminal, 1)],
 [Tree_t.Node
    ([(mrf_backbone, 2); (mrf_nterminal, 1)],
     [Tree_t.Leaf [(mrf_cterminal, 3); (mrf_backbone, 2); (mrf_nterminal, 1)];
      Tree_t.Leaf [(mrf_sdg_3, 3); (mrf_backbone, 2); (mrf_nterminal, 1)];]
    );
  Tree_t.Leaf [(mrf_sdg_2, 2); (mrf_nterminal, 1)]
   ])
);;
*)

test_number 10 (  (* Tree of Tag_depthed Paths : Moletree_depthed_path *)
 mkd_frg_lt  
(* : (Fragment_tag_t.fragment_tag * int) list Tree_t.tree *)
=
Tree_t.Node
 ([((Fragment_tag_t.Frs_t.Head_fragment_symbol
      (Fragment_tag_t.Frs_t.Zerofork_fragment_symbol
        (Fragment_tag_t.Frs_t.Zerobifork_fragment_symbol
          Fragment_tag_t.Frs_t.Zbf_N_h_2C_h_)),
     Fragment_tag_t.Sole_index_t.Sequential_index Fragment_tag_t.Sole_index_t.Head),
    1)],
 [Tree_t.Node
   ([((Fragment_tag_t.Frs_t.Buried_fragment_symbol
        (Fragment_tag_t.Frs_t.Buried_segment_extends_buried_fragment_symbol
          (Fragment_tag_t.Frs_t.Segment_symbol_t.Polysegment_symbol
            (Fragment_tag_t.Frs_t.Segment_symbol_t.Index_p.make 0,
             Fragment_tag_t.Frs_t.Segment_symbol_t.Oneone_segment_symbol
              Fragment_tag_t.Frs_t.Segment_symbol_t.Oo_CcocNch_C_h_2),
           Fragment_tag_t.Frs_t.Onefork_fragment_symbol
            (Fragment_tag_t.Frs_t.Onebifork_fragment_symbol
              Fragment_tag_t.Frs_t.Obf_CcocNch_C_h_))),
       Fragment_tag_t.Sole_index_t.Spherical_index
        (Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
          Fragment_tag_t.Sole_index_t.St_r)),
      2);
     ((Fragment_tag_t.Frs_t.Head_fragment_symbol
        (Fragment_tag_t.Frs_t.Zerofork_fragment_symbol
          (Fragment_tag_t.Frs_t.Zerobifork_fragment_symbol
            Fragment_tag_t.Frs_t.Zbf_N_h_2C_h_)),
       Fragment_tag_t.Sole_index_t.Sequential_index Fragment_tag_t.Sole_index_t.Head),
      1)],
   [Tree_t.Leaf
     [((Fragment_tag_t.Frs_t.Leaf_fragment_symbol
         (Fragment_tag_t.Frs_t.Buried_segment_extends_leaf_fragment_symbol
           (Fragment_tag_t.Frs_t.Segment_symbol_t.Polysegment_symbol
             (Fragment_tag_t.Frs_t.Segment_symbol_t.Index_p.make 0,
              Fragment_tag_t.Frs_t.Segment_symbol_t.Oneone_segment_symbol
               Fragment_tag_t.Frs_t.Segment_symbol_t.Oo_CcocNch_C_h_2),
            Fragment_tag_t.Frs_t.Onezero_fragment_symbol
             Fragment_tag_t.Frs_t.Oz_CdodO_h_)),
        Fragment_tag_t.Sole_index_t.Spherical_index
         (Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
           Fragment_tag_t.Sole_index_t.St_r)),
       3);
      ((Fragment_tag_t.Frs_t.Buried_fragment_symbol
         (Fragment_tag_t.Frs_t.Buried_segment_extends_buried_fragment_symbol
           (Fragment_tag_t.Frs_t.Segment_symbol_t.Polysegment_symbol
             (Fragment_tag_t.Frs_t.Segment_symbol_t.Index_p.make 0,
              Fragment_tag_t.Frs_t.Segment_symbol_t.Oneone_segment_symbol
               Fragment_tag_t.Frs_t.Segment_symbol_t.Oo_CcocNch_C_h_2),
            Fragment_tag_t.Frs_t.Onefork_fragment_symbol
             (Fragment_tag_t.Frs_t.Onebifork_fragment_symbol
               Fragment_tag_t.Frs_t.Obf_CcocNch_C_h_))),
        Fragment_tag_t.Sole_index_t.Spherical_index
         (Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
           Fragment_tag_t.Sole_index_t.St_r)),
       2);
      ((Fragment_tag_t.Frs_t.Head_fragment_symbol
         (Fragment_tag_t.Frs_t.Zerofork_fragment_symbol
           (Fragment_tag_t.Frs_t.Zerobifork_fragment_symbol
             Fragment_tag_t.Frs_t.Zbf_N_h_2C_h_)),
        Fragment_tag_t.Sole_index_t.Sequential_index Fragment_tag_t.Sole_index_t.Head),
       1)];
    Tree_t.Leaf
     [((Fragment_tag_t.Frs_t.Leaf_fragment_symbol
         (Fragment_tag_t.Frs_t.Onezero_block_symbol
           (Fragment_tag_t.Frs_t.Block_symbol_t.Onesinglezero_block_symbol
             Fragment_tag_t.Frs_t.Block_symbol_t.Osz_C_h_3)),
        Fragment_tag_t.Sole_index_t.Spherical_index
         (Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
           Fragment_tag_t.Sole_index_t.St_l)),
       3);
      ((Fragment_tag_t.Frs_t.Buried_fragment_symbol
         (Fragment_tag_t.Frs_t.Buried_segment_extends_buried_fragment_symbol
           (Fragment_tag_t.Frs_t.Segment_symbol_t.Polysegment_symbol
             (Fragment_tag_t.Frs_t.Segment_symbol_t.Index_p.make 0,
              Fragment_tag_t.Frs_t.Segment_symbol_t.Oneone_segment_symbol
               Fragment_tag_t.Frs_t.Segment_symbol_t.Oo_CcocNch_C_h_2),
            Fragment_tag_t.Frs_t.Onefork_fragment_symbol
             (Fragment_tag_t.Frs_t.Onebifork_fragment_symbol
               Fragment_tag_t.Frs_t.Obf_CcocNch_C_h_))),
        Fragment_tag_t.Sole_index_t.Spherical_index
         (Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
           Fragment_tag_t.Sole_index_t.St_r)),
       2);
      ((Fragment_tag_t.Frs_t.Head_fragment_symbol
         (Fragment_tag_t.Frs_t.Zerofork_fragment_symbol
           (Fragment_tag_t.Frs_t.Zerobifork_fragment_symbol
             Fragment_tag_t.Frs_t.Zbf_N_h_2C_h_)),
        Fragment_tag_t.Sole_index_t.Sequential_index Fragment_tag_t.Sole_index_t.Head),
       1)]]);
  Tree_t.Leaf
   [((Fragment_tag_t.Frs_t.Leaf_fragment_symbol
       (Fragment_tag_t.Frs_t.Onezero_block_symbol
         (Fragment_tag_t.Frs_t.Block_symbol_t.Onesinglezero_block_symbol
           Fragment_tag_t.Frs_t.Block_symbol_t.Osz_C_h_3)),
      Fragment_tag_t.Sole_index_t.Spherical_index
       (Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
         Fragment_tag_t.Sole_index_t.St_l)),
     2);
    ((Fragment_tag_t.Frs_t.Head_fragment_symbol
       (Fragment_tag_t.Frs_t.Zerofork_fragment_symbol
         (Fragment_tag_t.Frs_t.Zerobifork_fragment_symbol
           Fragment_tag_t.Frs_t.Zbf_N_h_2C_h_)),
      Fragment_tag_t.Sole_index_t.Sequential_index Fragment_tag_t.Sole_index_t.Head),
     1)]])
);;
(*

mkd_frg_ll
  (* : (Molecule_formula_t.Molecule_linear_formula_t.Fragment_tag_t.fragment_tag * int) list list *)
=
  [
   [(mrf_nterminal, 1)];
   [(mrf_backbone, 2); (mrf_nterminal, 1)];
   [(mrf_cterminal, 3); (mrf_backbone, 2); (mrf_nterminal, 1)];
   [(mrf_sdg_3, 3); (mrf_backbone, 2); (mrf_nterminal, 1)];
   [(mrf_sdg_2, 2); (mrf_nterminal, 1)];
]
);;
*)

test_number 11 ( 
mkd_frg_ll
  (* : (Molecule_formula_t.Molecule_linear_formula_t.Fragment_tag_t.fragment_tag * int) list list *)
=
[[((Fragment_tag_t.Head_fragment_symbol
     (Fragment_tag_t.Zerofork_fragment_symbol
       (Fragment_tag_t.Zerobifork_fragment_symbol
         Fragment_tag_t.Zbf_N_h_2C_h_)),
    Fragment_tag_t.Sole_index_t.Sequential_index Fragment_tag_t.Sole_index_t.Head),
   1)];
 [((Fragment_tag_t.Buried_fragment_symbol
     (Fragment_tag_t.Buried_segment_extends_buried_fragment_symbol
       (Fragment_tag_t.Segment_symbol_t.Polysegment_symbol
         (Fragment_tag_t.Segment_symbol_t.Index_p.make 0,
          Fragment_tag_t.Segment_symbol_t.Oneone_segment_symbol
           Fragment_tag_t.Segment_symbol_t.Oo_CcocNch_C_h_2),
        Fragment_tag_t.Onefork_fragment_symbol
         (Fragment_tag_t.Onebifork_fragment_symbol
           Fragment_tag_t.Obf_CcocNch_C_h_))),
    Fragment_tag_t.Sole_index_t.Spherical_index
     (Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
       Fragment_tag_t.Sole_index_t.St_r)),
   2);
  ((Fragment_tag_t.Head_fragment_symbol
     (Fragment_tag_t.Zerofork_fragment_symbol
       (Fragment_tag_t.Zerobifork_fragment_symbol
         Fragment_tag_t.Zbf_N_h_2C_h_)),
    Fragment_tag_t.Sole_index_t.Sequential_index Fragment_tag_t.Sole_index_t.Head),
   1)];
 [((Fragment_tag_t.Leaf_fragment_symbol
     (Fragment_tag_t.Buried_segment_extends_leaf_fragment_symbol
       (Fragment_tag_t.Segment_symbol_t.Polysegment_symbol
         (Fragment_tag_t.Segment_symbol_t.Index_p.make 0,
          Fragment_tag_t.Segment_symbol_t.Oneone_segment_symbol
           Fragment_tag_t.Segment_symbol_t.Oo_CcocNch_C_h_2),
        Fragment_tag_t.Onezero_fragment_symbol
         Fragment_tag_t.Oz_CdodO_h_)),
    Fragment_tag_t.Sole_index_t.Spherical_index
     (Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
       Fragment_tag_t.Sole_index_t.St_r)),
   3);
  ((Fragment_tag_t.Buried_fragment_symbol
     (Fragment_tag_t.Buried_segment_extends_buried_fragment_symbol
       (Fragment_tag_t.Segment_symbol_t.Polysegment_symbol
         (Fragment_tag_t.Segment_symbol_t.Index_p.make 0,
          Fragment_tag_t.Segment_symbol_t.Oneone_segment_symbol
           Fragment_tag_t.Segment_symbol_t.Oo_CcocNch_C_h_2),
        Fragment_tag_t.Onefork_fragment_symbol
         (Fragment_tag_t.Onebifork_fragment_symbol
           Fragment_tag_t.Obf_CcocNch_C_h_))),
    Fragment_tag_t.Sole_index_t.Spherical_index
     (Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
       Fragment_tag_t.Sole_index_t.St_r)),
   2);
  ((Fragment_tag_t.Head_fragment_symbol
     (Fragment_tag_t.Zerofork_fragment_symbol
       (Fragment_tag_t.Zerobifork_fragment_symbol
         Fragment_tag_t.Zbf_N_h_2C_h_)),
    Fragment_tag_t.Sole_index_t.Sequential_index Fragment_tag_t.Sole_index_t.Head),
   1)];
 [((Fragment_tag_t.Leaf_fragment_symbol
     (Fragment_tag_t.Onezero_block_symbol
       (Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
         Fragment_tag_t.Block_symbol_t.Osz_C_h_3)),
    Fragment_tag_t.Sole_index_t.Spherical_index
     (Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
       Fragment_tag_t.Sole_index_t.St_l)),
   3);
  ((Fragment_tag_t.Buried_fragment_symbol
     (Fragment_tag_t.Buried_segment_extends_buried_fragment_symbol
       (Fragment_tag_t.Segment_symbol_t.Polysegment_symbol
         (Fragment_tag_t.Segment_symbol_t.Index_p.make 0,
          Fragment_tag_t.Segment_symbol_t.Oneone_segment_symbol
           Fragment_tag_t.Segment_symbol_t.Oo_CcocNch_C_h_2),
        Fragment_tag_t.Onefork_fragment_symbol
         (Fragment_tag_t.Onebifork_fragment_symbol
           Fragment_tag_t.Obf_CcocNch_C_h_))),
    Fragment_tag_t.Sole_index_t.Spherical_index
     (Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
       Fragment_tag_t.Sole_index_t.St_r)),
   2);
  ((Fragment_tag_t.Head_fragment_symbol
     (Fragment_tag_t.Zerofork_fragment_symbol
       (Fragment_tag_t.Zerobifork_fragment_symbol
         Fragment_tag_t.Zbf_N_h_2C_h_)),
    Fragment_tag_t.Sole_index_t.Sequential_index Fragment_tag_t.Sole_index_t.Head),
   1)];
 [((Fragment_tag_t.Leaf_fragment_symbol
     (Fragment_tag_t.Onezero_block_symbol
       (Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
         Fragment_tag_t.Block_symbol_t.Osz_C_h_3)),
    Fragment_tag_t.Sole_index_t.Spherical_index
     (Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
       Fragment_tag_t.Sole_index_t.St_l)),
   2);
  ((Fragment_tag_t.Head_fragment_symbol
     (Fragment_tag_t.Zerofork_fragment_symbol
       (Fragment_tag_t.Zerobifork_fragment_symbol
         Fragment_tag_t.Zbf_N_h_2C_h_)),
    Fragment_tag_t.Sole_index_t.Sequential_index Fragment_tag_t.Sole_index_t.Head),
   1)]]
);;

test_number 12 (  (* Tree of Tag_depthed Paths : Moletree_depthed_path *)
 mrk_frg_lt  
(* : Fragment_tag_t.fragment_tag list Tree_t.tree *)
=
imp_t
);;

(*

imp_t
(* : Inmolepath_t.inmolepath Tree_t.tree *) 
=
Tree_t.Node
 ([mrf_nterminal],
 [Tree_t.Node
    ([mrf_backbone; mrf_nterminal],
     [
      Tree_t.Leaf [mrf_cterminal; mrf_backbone; mrf_nterminal];
      Tree_t.Leaf [mrf_sdg_3; mrf_backbone; mrf_nterminal];
     ]
    );
  Tree_t.Leaf [mrf_sdg_2; mrf_nterminal]
   ])
);;
*)

test_number 13 ( 
imp_t
(* : Inmolepath_t.inmolepath Tree_t.tree *) 
=
Tree_t.Node
 ([(Inmolepath_t.Fragment_tag_t.Frs_t.Head_fragment_symbol
     (Inmolepath_t.Fragment_tag_t.Frs_t.Zerofork_fragment_symbol
       (Inmolepath_t.Fragment_tag_t.Frs_t.Zerobifork_fragment_symbol
         Inmolepath_t.Fragment_tag_t.Frs_t.Zbf_N_h_2C_h_)),
    Inmolepath_t.Fragment_tag_t.Sole_index_t.Sequential_index Inmolepath_t.Fragment_tag_t.Sole_index_t.Head)],
 [Tree_t.Node
   ([(Inmolepath_t.Fragment_tag_t.Frs_t.Buried_fragment_symbol
       (Inmolepath_t.Fragment_tag_t.Frs_t.Buried_segment_extends_buried_fragment_symbol
         (Inmolepath_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Polysegment_symbol
           (Inmolepath_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Index_p.make 0,
            Inmolepath_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Oneone_segment_symbol
             Inmolepath_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Oo_CcocNch_C_h_2),
          Inmolepath_t.Fragment_tag_t.Frs_t.Onefork_fragment_symbol
           (Inmolepath_t.Fragment_tag_t.Frs_t.Onebifork_fragment_symbol
             Inmolepath_t.Fragment_tag_t.Frs_t.Obf_CcocNch_C_h_))),
      Inmolepath_t.Fragment_tag_t.Sole_index_t.Spherical_index
       (Inmolepath_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
         Inmolepath_t.Fragment_tag_t.Sole_index_t.St_r));
     (Inmolepath_t.Fragment_tag_t.Frs_t.Head_fragment_symbol
       (Inmolepath_t.Fragment_tag_t.Frs_t.Zerofork_fragment_symbol
         (Inmolepath_t.Fragment_tag_t.Frs_t.Zerobifork_fragment_symbol
           Inmolepath_t.Fragment_tag_t.Frs_t.Zbf_N_h_2C_h_)),
      Inmolepath_t.Fragment_tag_t.Sole_index_t.Sequential_index Inmolepath_t.Fragment_tag_t.Sole_index_t.Head)],
   [Tree_t.Leaf
     [(Inmolepath_t.Fragment_tag_t.Frs_t.Leaf_fragment_symbol
        (Inmolepath_t.Fragment_tag_t.Frs_t.Buried_segment_extends_leaf_fragment_symbol
          (Inmolepath_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Polysegment_symbol
            (Inmolepath_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Index_p.make 0,
             Inmolepath_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Oneone_segment_symbol
              Inmolepath_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Oo_CcocNch_C_h_2),
           Inmolepath_t.Fragment_tag_t.Frs_t.Onezero_fragment_symbol
            Inmolepath_t.Fragment_tag_t.Frs_t.Oz_CdodO_h_)),
       Inmolepath_t.Fragment_tag_t.Sole_index_t.Spherical_index
        (Inmolepath_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
          Inmolepath_t.Fragment_tag_t.Sole_index_t.St_r));
      (Inmolepath_t.Fragment_tag_t.Frs_t.Buried_fragment_symbol
        (Inmolepath_t.Fragment_tag_t.Frs_t.Buried_segment_extends_buried_fragment_symbol
          (Inmolepath_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Polysegment_symbol
            (Inmolepath_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Index_p.make 0,
             Inmolepath_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Oneone_segment_symbol
              Inmolepath_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Oo_CcocNch_C_h_2),
           Inmolepath_t.Fragment_tag_t.Frs_t.Onefork_fragment_symbol
            (Inmolepath_t.Fragment_tag_t.Frs_t.Onebifork_fragment_symbol
              Inmolepath_t.Fragment_tag_t.Frs_t.Obf_CcocNch_C_h_))),
       Inmolepath_t.Fragment_tag_t.Sole_index_t.Spherical_index
        (Inmolepath_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
          Inmolepath_t.Fragment_tag_t.Sole_index_t.St_r));
      (Inmolepath_t.Fragment_tag_t.Frs_t.Head_fragment_symbol
        (Inmolepath_t.Fragment_tag_t.Frs_t.Zerofork_fragment_symbol
          (Inmolepath_t.Fragment_tag_t.Frs_t.Zerobifork_fragment_symbol
            Inmolepath_t.Fragment_tag_t.Frs_t.Zbf_N_h_2C_h_)),
       Inmolepath_t.Fragment_tag_t.Sole_index_t.Sequential_index
        Inmolepath_t.Fragment_tag_t.Sole_index_t.Head)];
    Tree_t.Leaf
     [(Inmolepath_t.Fragment_tag_t.Frs_t.Leaf_fragment_symbol
        (Inmolepath_t.Fragment_tag_t.Frs_t.Onezero_block_symbol
          (Inmolepath_t.Fragment_tag_t.Frs_t.Block_symbol_t.Onesinglezero_block_symbol
            Inmolepath_t.Fragment_tag_t.Frs_t.Block_symbol_t.Osz_C_h_3)),
       Inmolepath_t.Fragment_tag_t.Sole_index_t.Spherical_index
        (Inmolepath_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
          Inmolepath_t.Fragment_tag_t.Sole_index_t.St_l));
      (Inmolepath_t.Fragment_tag_t.Frs_t.Buried_fragment_symbol
        (Inmolepath_t.Fragment_tag_t.Frs_t.Buried_segment_extends_buried_fragment_symbol
          (Inmolepath_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Polysegment_symbol
            (Inmolepath_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Index_p.make 0,
             Inmolepath_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Oneone_segment_symbol
              Inmolepath_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Oo_CcocNch_C_h_2),
           Inmolepath_t.Fragment_tag_t.Frs_t.Onefork_fragment_symbol
            (Inmolepath_t.Fragment_tag_t.Frs_t.Onebifork_fragment_symbol
              Inmolepath_t.Fragment_tag_t.Frs_t.Obf_CcocNch_C_h_))),
       Inmolepath_t.Fragment_tag_t.Sole_index_t.Spherical_index
        (Inmolepath_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
          Inmolepath_t.Fragment_tag_t.Sole_index_t.St_r));
      (Inmolepath_t.Fragment_tag_t.Frs_t.Head_fragment_symbol
        (Inmolepath_t.Fragment_tag_t.Frs_t.Zerofork_fragment_symbol
          (Inmolepath_t.Fragment_tag_t.Frs_t.Zerobifork_fragment_symbol
            Inmolepath_t.Fragment_tag_t.Frs_t.Zbf_N_h_2C_h_)),
       Inmolepath_t.Fragment_tag_t.Sole_index_t.Sequential_index
        Inmolepath_t.Fragment_tag_t.Sole_index_t.Head)]]);
  Tree_t.Leaf
   [(Inmolepath_t.Fragment_tag_t.Frs_t.Leaf_fragment_symbol
      (Inmolepath_t.Fragment_tag_t.Frs_t.Onezero_block_symbol
        (Inmolepath_t.Fragment_tag_t.Frs_t.Block_symbol_t.Onesinglezero_block_symbol
          Inmolepath_t.Fragment_tag_t.Frs_t.Block_symbol_t.Osz_C_h_3)),
     Inmolepath_t.Fragment_tag_t.Sole_index_t.Spherical_index
      (Inmolepath_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
        Inmolepath_t.Fragment_tag_t.Sole_index_t.St_l));
    (Inmolepath_t.Fragment_tag_t.Frs_t.Head_fragment_symbol
      (Inmolepath_t.Fragment_tag_t.Frs_t.Zerofork_fragment_symbol
        (Inmolepath_t.Fragment_tag_t.Frs_t.Zerobifork_fragment_symbol
          Inmolepath_t.Fragment_tag_t.Frs_t.Zbf_N_h_2C_h_)),
     Inmolepath_t.Fragment_tag_t.Sole_index_t.Sequential_index Inmolepath_t.Fragment_tag_t.Sole_index_t.Head)]])
);;

test_number 14 ( 
mrk_frg_ll
  (* : (Molecule_formula_t.Molecule_linear_formula_t.Fragment_tag_t.fragment_tag * int) list list *)
=
imp_l
);;

test_number 15 ( 
imp_l
(* : Inmolepath_t.inmolepath list *)
=
  [
   [mrf_nterminal];
   [mrf_backbone; mrf_nterminal];
   [mrf_cterminal; mrf_backbone; mrf_nterminal];
   [mrf_sdg_3; mrf_backbone; mrf_nterminal];
   [mrf_sdg_2; mrf_nterminal];
]
);;

test_number 16 ( 
imp_sdg_2
(* : Inmolepath_t.inmolepath *)
  =
[mrf_sdg_2; mrf_nterminal] (* first Sdg_3 *) 
);;

test_number 17 ( 
imp_sdg_3
(* : Inmolepath_t.inmolepath *)
  =
[mrf_sdg_3; mrf_backbone; mrf_nterminal]
);;

test_number 18 (
mrk_frg_l 
(* : Fragment_tag_t.fragment_tag list *)
 =
[mrf_sdg_3; mrf_backbone; mrf_nterminal]
);;

test_number 19 (
smb_frg_l 
(* : Fragment_symbol_t.fragment_symbol list *)
 =
[smb_sdg_3; sym_backbone; sym_nterminal]
);;

test_number 20 (
sci_frg_l 
(* : Sole_index_t.sole_index list *)
=
[Sole_index_v.stl; Sole_index_v.str; Sole_index_v.head]
);;

test_number 21 (
Pli_v.polypeptide_backbone_fragment_count_of_polypeptide_inmolepath imp_sdg_3
=
Ord_p.two
);;

test_number 22 (
Pli_v.is_first_fragment_polypeptide_sidegroup_of_polypeptide_inmolepath imp_sdg_3
=
true
);;

test_number 23 (
Pli_v.is_first_fragment_polypeptide_backbone_of_polypeptide_inmolepath imp_sdg_3
=
false
);;

test_number 24 (
Pli_v.residue_sequence_number_of_polypeptide_inmolepath imp_sdg_3
=
Ord_p.two
);;

