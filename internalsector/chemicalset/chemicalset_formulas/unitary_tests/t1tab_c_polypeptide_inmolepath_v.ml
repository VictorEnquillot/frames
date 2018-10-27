(** {3 1tab_c Polypeptide Inmolepath.} *)

open Make_test_v;;

testing "1tab_c Polypeptide_inmolepath_v";;

(* toplevel 
   #use "t1tab_c_polypeptide_inmolepath_v.ml";; 
*)


(** Polypeptide : Nh2-Ala-Gly-CoOh
     
       (l)   
       -Ch3   
        |    
     Nh2Ch-CoNhCh2-CoOh
 
         Nh2Ch (head)   <---         depth = 1
           / \
          /   \
 -NhCoCh2-CoOh -Ch3     <--- Ch3_1   depth = 2 Methyl
     (r)        (l)
                methyl
 Fragment_symbol_v.carcofferyl
*)    

(* Polypeptide Symbol *)

let nam_prn = "1tab";;
let sym_prn = Prs_t.Frompdbid nam_prn;;
let sym_plr = Polypeptide_symbol_t.Frompdbid (nam_prn ^ "_c");;
let sym_plp = Polypeptide_symbol_v.polypeptide_symbol_of_polypeptide_regular_symbol sym_plr;;
let sym_mol = Molecule_symbol_v.molecule_symbol_of_polypeptide_symbol sym_plp;;

(* Polypeptide Formula  *)

let for_plp = Polypeptide_formula_v.make sym_plp;;
let mrf_ch3 = Tag_v.make Fragment_symbol_v.methyl Sole_index_v.str;;
let cmf_ch3 = Chemicalset_tag_v.chemicalset_tag_of_fragment_tag mrf_ch3;;

(* Symbols of Fragments : smb *)

Polypeptide_sidegroup_symbol_v.peptideca_glycine_buried_b = 
   Segment_symbol_t.Oneone_segment_symbol
     Segment_symbol_t.Oo_CcocNch_C_h_2;;

Fragment_symbol_v.peptideca_regular_embedded_b =
Fragment_tag_t.Onefork_fragment_symbol
  (Fragment_tag_t.Onebifork_fragment_symbol
     Fragment_tag_t.Obf_CcocNch_C_h_)
;;

let sym_n_gly_conhch n_gly = 
  Fragment_tag_t.Buried_fragment_symbol 
    (Fragment_tag_t.Buried_segment_extends_buried_fragment_symbol
       (Segment_symbol_t.Polysegment_symbol
          (Index_p.make n_gly, Polypeptide_sidegroup_symbol_v.peptideca_glycine_buried_b),
	 Fragment_symbol_v.peptideca_regular_embedded_b))
;;

let sym_n_gly_cooh n_gly = 
  Fragment_tag_t.Leaf_fragment_symbol
    (Fragment_tag_t.Buried_segment_extends_leaf_fragment_symbol
       (Segment_symbol_t.Polysegment_symbol
          (Index_p.make n_gly, Polypeptide_sidegroup_symbol_v.peptideca_glycine_buried_b),
        Fragment_tag_t.Onezero_fragment_symbol
          Fragment_tag_t.Oz_CdodO_h_))
;;

let n_gly = 1;;

let sym_nh2ch = Fragment_symbol_v.peptideca_regular_nterminal_neutral;;
let sym_ch3 = Fragment_symbol_v.methyl;;
let sym_ch2oh = Fragment_symbol_v.methenol;;
let sym_cooh = sym_n_gly_cooh n_gly;;

(* Markers of Fragments : mrf *)
let cap_sci = Sole_index_v.head;;


let mrf_ch3 = Tag_v.make sym_ch3 Sole_index_v.stl;;
let mrf_ch2oh = Tag_v.make sym_ch2oh Sole_index_v.stl;;
let mrf_cooh = Tag_v.make sym_cooh Sole_index_v.str;;
let mrf_nh2ch = Tag_v.make sym_nh2ch cap_sci;;

(* Inmolepath (imp) : fragment_tag list *) 

let imp_sdg_1 = Imp_v.inmolepath_of_fragment_tag_of_depth_of_molecule_formula mrf_ch3 2 for_plp;; 

test_number 1 (
Polypeptide_sequence_v.name (Polypeptide_sequence_v.make sym_plp)
(* : string *)
=
"AG"
);;

test_number 2 (
Polypeptide_formula_v.name for_plp 
(* : string *)
  =
"{(Zbf_N_h_2C_h_,head)[((P1_Oo_CcocNch_C_h_2,Oz_CdodO_h_),str) (Osz_C_h_3,stl)]}"
);;

test_number 3 (
 for_plp 
(* : Polypeptide_formula_t.polypeptide_formula *) 
   =
Tree_t.Node
  (mrf_nh2ch,
   [Tree_t.Leaf mrf_cooh;
    Tree_t.Leaf mrf_ch3
  ])
);;

test_number 4 ( 
imp_sdg_1
(* : Inmolepath_t.inmolepath *)
  =
[mrf_ch3; mrf_nh2ch] (* first Ch3 *) 
);;

