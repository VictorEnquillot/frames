(** {3 1tab_d Polypeptide Inmolepath.} *)

open Make_test_v;;

testing "1tab_d Polypeptide_inmolepath_v";;

(* toplevel 
   #use "t1tab_d_polypeptide_inmolepath_v.ml";; 
*)


(** Polypeptide : Gly-Ala
     
             (l)   
            -Ch3   
             |    
  Nh2Ch2-CoNhCh-CoOh
 
  Nh2Ch2-CoNhCh< (head)  <--- depth = 1
            / \
           /   \
        -CoOh  -Ch3      <--- depth = 2 Sdg_2 = Methyl
         (r)    (l)
*)    

(* Polypeptide Symbol *)

let nam_prn = "1tab";;
let sym_prn = Prs_t.Frompdbid nam_prn;;
let sym_plr = Polypeptide_symbol_t.Frompdbid (nam_prn ^ "_d");;
let sym_plp = Polypeptide_symbol_v.polypeptide_symbol_of_polypeptide_regular_symbol sym_plr;;
let sym_mol = Molecule_symbol_v.molecule_symbol_of_polypeptide_symbol sym_plp;;

(* Polypeptide Formula  *)

let for_plp = Polypeptide_formula_v.make sym_plp;;

(* Symbols of Fragments : smb *)

let n_gly = Index_p.zero;; (* Glycine at Nterminal. No embedded Glycine *)

let sym_nterminal = Polypeptide_sidegroup_symbol_v.peptideca_glycine_nterminal_neutral;;
let sym_nterminal_gly = Fragment_symbol_v.peptideca_glycine_nterminal_n_glycine_regular_embedded n_gly;;
let sym_backbone = Fragment_symbol_v.peptideca_regular_n_glycine_embedded n_gly;;
let sym_cterminal = Fragment_symbol_v.cterminal_n_glycine_neutral n_gly;;
let sym_sdg_2 = Fragment_symbol_v.methyl;;

(* Markers of Fragments : mrf *)
let cap_sci = Sole_index_v.head;;

let mrf_sdg_2 = Tag_v.make sym_sdg_2 Sole_index_v.stl;;
let mrf_backbone = Tag_v.make sym_backbone Sole_index_v.str;;
let mrf_cterminal = Tag_v.make sym_cterminal Sole_index_v.str;;
let mrf_nterminal = Tag_v.make sym_nterminal cap_sci;;
let mrf_nterminal_gly = Tag_v.make (smb_nterminal_gly) cap_sci;;

(* Inmolepath (imp) : fragment_tag list *) 

let imp_sdg_2 = Imp_v.inmolepath_of_fragment_tag_of_depth_of_molecule_formula mrf_sdg_2 2 for_plp;; 

test_number 1 (
Polypeptide_sequence_v.name (Polypeptide_sequence_v.make sym_plp)
(* : string *)
=
"GA"
);;

test_number 2 (
Polypeptide_formula_v.name for_plp 
(* : string *)
  =
"{((Zo_N_h_2C_h_2,(P0_Oo_CcocNch_C_h_2,Obf_CcocNch_C_h_)),head)[((P0_Oo_CcocNch_C_h_2,Oz_CdodO_h_),str) (Osz_C_h_3,stl)]}"
);;

test_number 3 (
mrf_nterminal_gly 
(* : (Fragment_symbol_t.fragment_symbol,
   Sole_index_t.sole_index)
   Tag_t.marker *)
  =
(Polypeptide_formula_t.Fragment_tag_t.Frs_t.Head_fragment_symbol
   (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Head_segment_extends_buried_fragment_symbol
      (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Zeroone_segment_symbol
         Polypeptide_formula_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Zo_N_h_2C_h_2,
       Polypeptide_formula_t.Fragment_tag_t.Frs_t.Buried_segment_extends_buried_fragment_symbol
        (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Polysegment_symbol
           (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Index_p.make 0,
            Polypeptide_formula_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Oneone_segment_symbol
              Polypeptide_formula_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Oo_CcocNch_C_h_2),
         Polypeptide_formula_t.Fragment_tag_t.Frs_t.Onefork_fragment_symbol
           (Polypeptide_formula_t.Fragment_tag_t.Frs_t.Onebifork_fragment_symbol
            Polypeptide_formula_t.Fragment_tag_t.Frs_t.Obf_CcocNch_C_h_)))),
 Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.Sequential_index
   Polypeptide_formula_t.Fragment_tag_t.Sole_index_t.Head)
);;

test_number 4 (
mrf_cterminal 
=
(Fragment_tag_t.Leaf_fragment_symbol
     (Fragment_tag_t.Buried_segment_extends_leaf_fragment_symbol
       (Fragment_tag_t.Segment_symbol_t.Polysegment_symbol
         (Fragment_tag_t.Segment_symbol_t.Index_p.make 0,
          Fragment_tag_t.Segment_symbol_t.Oneone_segment_symbol
           Fragment_tag_t.Segment_symbol_t.Oo_CcocNch_C_h_2),
        Fragment_tag_t.Onezero_fragment_symbol
         Fragment_tag_t.Oz_CdodO_h_)),
    Sole_index_v.str)
);;

test_number 5 (
frm_plp 
(* : Polypeptide_formula_t.polypeptide_formula *) 
  =
Polypeptide_formula_t.Tree_t.Node
  (mrf_nterminal_gly,
   [
    Tree_t.Leaf mrf_cterminal;
    Tree_t.Leaf mrf_sdg_2
  ])
);;

test_number 6 ( 
imp_sdg_2
(* : Inmolepath_t.inmolepath *)
  =
[mrf_sdg_2; mrf_nterminal_gly] 
);;


