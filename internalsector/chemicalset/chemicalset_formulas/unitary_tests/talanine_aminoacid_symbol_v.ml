(** {3 Alanine Polypeptide_sidegroup Symbol Formula.} *)

open Make_test_v;;

testing "Alanine Polypeptide_sidegroup_symbol_formula_v";;

(* toplevel 
   #use "talanine_polypeptide_sidegroup_symbol_formula_v.ml";; 
*)


(* Peptideca Symbol *)

let sym_amr = Molecule_aminoacid_symbol_t.Alanine;;
let sym_ama = Molecule_aminoacid_symbol_t.Molecule_aminoacid_regular_symbol sym_amr;;
let sym_pce = Pcs_v.peptideca_buried_symbol_of_residue_embedded_symbol sym_ama;;
let sym_pca = Pcs_t.Peptideca_buried_symbol sym_pce;;
(* Peptideca Symbol Formula *)

let for_smb_pca = Psf_v.retrieve sym_pca;;

(** Residue Embedded Symbol : Alanine *)

let sym_res = Rss_t.Residue_embedded_symbol sym_ama;;

let for_smb_rse = retrieve_residue_embedded_symbol_formula sym_ama;;

let for_smb_res = Rsf_v.retrieve sym_res;;


(*
let sym_frg_l = Rsf_v.fragment_symbol_list_off_residue_symbol_formula for_smb_res;;
let sym_blk_l = Rsf_v.block_symbol_list_off_residue_symbol_formula for_smb_res;;
let sym_atm_l = Rsf_v.atom_symbol_list_off_residue_symbol_formula for_smb_res;;
*)
test_number 1 (
smb_res (* : Rss_t.residue_symbol *)
  =
Rss_t.Residue_embedded_symbol
 (Molecule_aminoacid_symbol_t.Residue_regular_symbol Molecule_aminoacid_symbol_t.Alanine)
);;

test_number 2 (
frm_smb_rse
(* : (Peptideca_symbol_formula_t.buried_f,
     Polypeptide_sidegroup_symbol_formula_t.Grouping_formula_t.leaf_f,
     Peptideca_symbol_formula_t.buried_s)
    Rcf_t.residue_embedded_category_formula *)
=
Rcf_t.Regular_embedded
 (Rcf_t.Pcf_t.Regular_embedded
   (Peptideca_symbol_formula_t.Fragment_tag_t.Onefork_fragment_symbol
     (Peptideca_symbol_formula_t.Fragment_tag_t.Onebifork_fragment_symbol
       Peptideca_symbol_formula_t.Fragment_tag_t.Obf_CcocNch_C_h_)),
  Rcf_t.Scf_t.Gcf_t.Leafed_tree_t.Node
   (Peptideca_symbol_formula_t.Fragment_tag_t.Onefork_fragment_symbol
     (Peptideca_symbol_formula_t.Fragment_tag_t.Onebifork_fragment_symbol
       Peptideca_symbol_formula_t.Fragment_tag_t.Obf_C_h_2Cc),
   [Rcf_t.Scf_t.Gcf_t.Leafed_tree_t.Node
     (Peptideca_symbol_formula_t.Fragment_tag_t.Onefork_block_symbol
       (Peptideca_symbol_formula_t.Fragment_tag_t.Block_symbol_t.Onebifork_block_symbol
         (Peptideca_symbol_formula_t.Fragment_tag_t.Block_symbol_t.Onesinglebiforksinglesingle_block_symbol
           Peptideca_symbol_formula_t.Fragment_tag_t.Block_symbol_t.Osbss_Cc)),
     [Rcf_t.Scf_t.Gcf_t.Leafed_tree_t.Node
       (Peptideca_symbol_formula_t.Fragment_tag_t.Onefork_fragment_symbol
         (Peptideca_symbol_formula_t.Fragment_tag_t.Onebifork_fragment_symbol
           Peptideca_symbol_formula_t.Fragment_tag_t.Obf_Cch_r4Cc),
       [Rcf_t.Scf_t.Gcf_t.Leafed_tree_t.Leaf
         (Polypeptide_sidegroup_symbol_formula_t.Grouping_formula_t.Fragment_tag_t.Onezero_block_symbol
           (Polypeptide_sidegroup_symbol_formula_t.Grouping_formula_t.Fragment_tag_t.Block_symbol_t.Halfbridge_block_symbol
             (Polypeptide_sidegroup_symbol_formula_t.Grouping_formula_t.Fragment_tag_t.Block_symbol_t.Brs_t.Mty_t.Half,
              "a")));
        Rcf_t.Scf_t.Gcf_t.Leafed_tree_t.Leaf
         (Polypeptide_sidegroup_symbol_formula_t.Grouping_formula_t.Fragment_tag_t.Onezero_block_symbol
           (Polypeptide_sidegroup_symbol_formula_t.Grouping_formula_t.Fragment_tag_t.Block_symbol_t.Halfbridge_block_symbol
             (Polypeptide_sidegroup_symbol_formula_t.Grouping_formula_t.Fragment_tag_t.Block_symbol_t.Brs_t.Mty_t.Half,
              "b")))]);
      Rcf_t.Scf_t.Gcf_t.Leafed_tree_t.Leaf
       (Polypeptide_sidegroup_symbol_formula_t.Grouping_formula_t.Fragment_tag_t.Onezero_block_symbol
         (Polypeptide_sidegroup_symbol_formula_t.Grouping_formula_t.Fragment_tag_t.Block_symbol_t.Halfbridge_block_symbol
           (Polypeptide_sidegroup_symbol_formula_t.Grouping_formula_t.Fragment_tag_t.Block_symbol_t.Brs_t.Mty_t.Half,
            "a")))]);
    Rcf_t.Scf_t.Gcf_t.Leafed_tree_t.Leaf
     (Polypeptide_sidegroup_symbol_formula_t.Grouping_formula_t.Fragment_tag_t.Bridged_fragment_symbol
       Polypeptide_sidegroup_symbol_formula_t.Grouping_formula_t.Fragment_tag_t.B_Cch_N_h_Bb)]))
);;

test_number 3 (
frm_smb_res (* : Residue_symbol_formula_t.residue_symbol_formula *) 
  =
  Residue_symbol_formula_t.Rcf_t.Embedded_residue_category_formula
   (Residue_symbol_formula_t.Rcf_t.Regular_embedded
     (Residue_symbol_formula_t.Rcf_t.Pcf_t.Regular_embedded
       (Residue_symbol_formula_t.Fragment_tag_t.Onefork_fragment_symbol
         (Residue_symbol_formula_t.Fragment_tag_t.Onebifork_fragment_symbol
           Residue_symbol_formula_t.Fragment_tag_t.Obf_CcocNch_C_h_)),
      Residue_symbol_formula_t.Rcf_t.Scf_t.Gcf_t.Leafed_tree_t.Node
       (Residue_symbol_formula_t.Fragment_tag_t.Onefork_fragment_symbol
         (Residue_symbol_formula_t.Fragment_tag_t.Onebifork_fragment_symbol
           Residue_symbol_formula_t.Fragment_tag_t.Obf_C_h_2Cc),
       [Residue_symbol_formula_t.Rcf_t.Scf_t.Gcf_t.Leafed_tree_t.Node
         (Residue_symbol_formula_t.Fragment_tag_t.Onefork_block_symbol
           (Residue_symbol_formula_t.Fragment_tag_t.Block_symbol_t.Onebifork_block_symbol
             (Residue_symbol_formula_t.Fragment_tag_t.Block_symbol_t.Onesinglebiforksinglesingle_block_symbol
               Residue_symbol_formula_t.Fragment_tag_t.Block_symbol_t.Osbss_Cc)),
         [Residue_symbol_formula_t.Rcf_t.Scf_t.Gcf_t.Leafed_tree_t.Node
           (Residue_symbol_formula_t.Fragment_tag_t.Onefork_fragment_symbol
             (Residue_symbol_formula_t.Fragment_tag_t.Onebifork_fragment_symbol
               Residue_symbol_formula_t.Fragment_tag_t.Obf_Cch_r4Cc),
           [Residue_symbol_formula_t.Rcf_t.Scf_t.Gcf_t.Leafed_tree_t.Leaf
             (Residue_symbol_formula_t.Fragment_tag_t.Onezero_block_symbol
               (Residue_symbol_formula_t.Fragment_tag_t.Block_symbol_t.Halfbridge_block_symbol
                 (Residue_symbol_formula_t.Fragment_tag_t.Block_symbol_t.Brs_t.Mty_t.Half, "a")));
            Residue_symbol_formula_t.Rcf_t.Scf_t.Gcf_t.Leafed_tree_t.Leaf
             (Residue_symbol_formula_t.Fragment_tag_t.Onezero_block_symbol
               (Residue_symbol_formula_t.Fragment_tag_t.Block_symbol_t.Halfbridge_block_symbol
                 (Residue_symbol_formula_t.Fragment_tag_t.Block_symbol_t.Brs_t.Mty_t.Half, "b")))]);
          Residue_symbol_formula_t.Rcf_t.Scf_t.Gcf_t.Leafed_tree_t.Leaf
           (Residue_symbol_formula_t.Fragment_tag_t.Onezero_block_symbol
             (Residue_symbol_formula_t.Fragment_tag_t.Block_symbol_t.Halfbridge_block_symbol
               (Residue_symbol_formula_t.Fragment_tag_t.Block_symbol_t.Brs_t.Mty_t.Half, "a")))]);
        Residue_symbol_formula_t.Rcf_t.Scf_t.Gcf_t.Leafed_tree_t.Leaf
         (Residue_symbol_formula_t.Fragment_tag_t.Bridged_fragment_symbol
           Residue_symbol_formula_t.Fragment_tag_t.B_Cch_N_h_Bb)])))
);;
(*

test_number 4 (
Rsf_v.name for_smb_res 
  =
"(CoNhCh,{Ch2Cr[{CrhNhCr[{Crhr4C[BSa BSb]} BSa]} BSb]})"
);;

test_number 5 (
smb_frg_l (* : Fragment_symbol_t.fragment_symbol list *)
=
);; 

test_number 6 (
smb_blk_l (* : Block_symbol_t.block_symbol list *)
=
);;

test_number 7 (
smb_atm_l (* : Atom_symbol_t.atom_symbol list *) 
=

);;

*)
