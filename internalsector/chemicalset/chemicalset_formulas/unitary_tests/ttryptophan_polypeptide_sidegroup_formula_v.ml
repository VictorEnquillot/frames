(** {3 Tryptophan Polypeptide Sidegroup Formula.} *)

open Make_test_v;;

testing "Tryptophan Polypeptide_sidegroup_formula_v";;

(* toplevel 
   #use "ttryptophan_polypeptide_sidegroup_formula_v.ml";; 
*)


(* Polypeptide_sidegroup Symbol *)

let sym_ama = Molecule_aminoacid_symbol_v.tryptophan;;
let sym_psg = Polypeptide_sidegroup_symbol_v.make sym_ama;;
let sci = Sole_index_v.stl;;

(* Polypeptide_sidegroup Symbol Formula *)

let for_smb_psg = Psf_v.make sym_psg sci;;

let sym_frg_t = Psf_v.fragment_symbol_tree_off_polypeptide_sidegroup_formula for_smb_psg;;

test_number 1 (
smb_psg 
(* : Polypeptide_sidegroup_symbol_t.polypeptide_sidegroup_symbol *)
=
Polypeptide_sidegroup_symbol_t.MetheneIndole
);;

test_number 2 (
frm_smb_psg 
(* : Polypeptide_sidegroup_formula_t.polypeptide_sidegroup_formula *)
=
Tree_t.Node
 ((Polypeptide_sidegroup_formula_t.Fragment_tag_t.Frs_t.Buried_fragment_symbol
    (Polypeptide_sidegroup_formula_t.Fragment_tag_t.Frs_t.Onefork_fragment_symbol
      (Polypeptide_sidegroup_formula_t.Fragment_tag_t.Frs_t.Onebifork_fragment_symbol
        Polypeptide_sidegroup_formula_t.Fragment_tag_t.Frs_t.Obf_Cch_Nch_Cc)),
   Polypeptide_sidegroup_formula_t.Fragment_tag_t.Sole_index_t.Spherical_index
    (Polypeptide_sidegroup_formula_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
      Polypeptide_sidegroup_formula_t.Fragment_tag_t.Sole_index_t.St_l)),
 [Tree_t.Node
   ((Polypeptide_sidegroup_formula_t.Fragment_tag_t.Frs_t.Buried_fragment_symbol
      (Polypeptide_sidegroup_formula_t.Fragment_tag_t.Frs_t.Onefork_fragment_symbol
        (Polypeptide_sidegroup_formula_t.Fragment_tag_t.Frs_t.Onebifork_fragment_symbol
          Polypeptide_sidegroup_formula_t.Fragment_tag_t.Frs_t.Obf_Cch_Nch_Cc)),
     Polypeptide_sidegroup_formula_t.Fragment_tag_t.Sole_index_t.Planar_index
      (Polypeptide_sidegroup_formula_t.Fragment_tag_t.Sole_index_t.Planar_trigonal_index
        Polypeptide_sidegroup_formula_t.Fragment_tag_t.Sole_index_t.Pt_o)),
   [Tree_t.Node
     ((Polypeptide_sidegroup_formula_t.Fragment_tag_t.Frs_t.Buried_fragment_symbol
        (Polypeptide_sidegroup_formula_t.Fragment_tag_t.Frs_t.Onefork_fragment_symbol
          (Polypeptide_sidegroup_formula_t.Fragment_tag_t.Frs_t.Onebifork_fragment_symbol
            Polypeptide_sidegroup_formula_t.Fragment_tag_t.Frs_t.Obf_Cch_r4Cc)),
       Polypeptide_sidegroup_formula_t.Fragment_tag_t.Sole_index_t.Planar_index
        (Polypeptide_sidegroup_formula_t.Fragment_tag_t.Sole_index_t.Planar_trigonal_index
          Polypeptide_sidegroup_formula_t.Fragment_tag_t.Sole_index_t.Pt_o)),
     [Tree_t.Leaf
       (Polypeptide_sidegroup_formula_t.Fragment_tag_t.Frs_t.Leaf_fragment_symbol
         (Polypeptide_sidegroup_formula_t.Fragment_tag_t.Frs_t.Halfbridge_symbol
           Polypeptide_sidegroup_formula_t.Fragment_tag_t.Frs_t.Halfbridge_symbol_t.Hbc),
        Polypeptide_sidegroup_formula_t.Fragment_tag_t.Sole_index_t.Planar_index
         (Polypeptide_sidegroup_formula_t.Fragment_tag_t.Sole_index_t.Planar_trigonal_index
           Polypeptide_sidegroup_formula_t.Fragment_tag_t.Sole_index_t.Pt_o));
      Tree_t.Leaf
       (Polypeptide_sidegroup_formula_t.Fragment_tag_t.Frs_t.Leaf_fragment_symbol
         (Polypeptide_sidegroup_formula_t.Fragment_tag_t.Frs_t.Halfbridge_symbol
           Polypeptide_sidegroup_formula_t.Fragment_tag_t.Frs_t.Halfbridge_symbol_t.Hbc),
        Polypeptide_sidegroup_formula_t.Fragment_tag_t.Sole_index_t.Planar_index
         (Polypeptide_sidegroup_formula_t.Fragment_tag_t.Sole_index_t.Planar_trigonal_index
           Polypeptide_sidegroup_formula_t.Fragment_tag_t.Sole_index_t.Pt_b))]);
    Tree_t.Leaf
     (Polypeptide_sidegroup_formula_t.Fragment_tag_t.Frs_t.Leaf_fragment_symbol
       (Polypeptide_sidegroup_formula_t.Fragment_tag_t.Frs_t.Halfbridge_symbol
         Polypeptide_sidegroup_formula_t.Fragment_tag_t.Frs_t.Halfbridge_symbol_t.Hbc),
      Polypeptide_sidegroup_formula_t.Fragment_tag_t.Sole_index_t.Planar_index
       (Polypeptide_sidegroup_formula_t.Fragment_tag_t.Sole_index_t.Planar_trigonal_index
         Polypeptide_sidegroup_formula_t.Fragment_tag_t.Sole_index_t.Pt_b))]);
  Tree_t.Leaf
   (Polypeptide_sidegroup_formula_t.Fragment_tag_t.Frs_t.Leaf_fragment_symbol
     (Polypeptide_sidegroup_formula_t.Fragment_tag_t.Frs_t.Halfbridge_symbol
       Polypeptide_sidegroup_formula_t.Fragment_tag_t.Frs_t.Halfbridge_symbol_t.Hbc),
    Polypeptide_sidegroup_formula_t.Fragment_tag_t.Sole_index_t.Planar_index
     (Polypeptide_sidegroup_formula_t.Fragment_tag_t.Sole_index_t.Planar_trigonal_index
       Polypeptide_sidegroup_formula_t.Fragment_tag_t.Sole_index_t.Pt_b))])
);;

test_number 3 (
Psf_v.name for_smb_psg 
  =
"{(Obf_Cch_Nch_Cc,stl)[{(Obf_Cch_Nch_Cc,pto)[{(Obf_Cch_r4Cc,pto)[(Hbc,pto) (Hbc,ptb)]} (Hbc,ptb)]} (Hbc,ptb)]}"
);;

test_number 4 (
smb_frg_t
(* : Fragment_symbol_t.fragment_symbol Tree_t.tree *)
=
Tree_t.Node
 (Fragment_symbol_t.Buried_fragment_symbol
   (Fragment_symbol_t.Onefork_fragment_symbol
     (Fragment_symbol_t.Onebifork_fragment_symbol
       Fragment_symbol_t.Obf_Cch_Nch_Cc)),
 [Tree_t.Node
   (Fragment_symbol_t.Buried_fragment_symbol
     (Fragment_symbol_t.Onefork_fragment_symbol
       (Fragment_symbol_t.Onebifork_fragment_symbol
         Fragment_symbol_t.Obf_Cch_Nch_Cc)),
   [Tree_t.Node
     (Fragment_symbol_t.Buried_fragment_symbol
       (Fragment_symbol_t.Onefork_fragment_symbol
         (Fragment_symbol_t.Onebifork_fragment_symbol
           Fragment_symbol_t.Obf_Cch_r4Cc)),
     [Tree_t.Leaf
       (Fragment_symbol_t.Leaf_fragment_symbol
         (Fragment_symbol_t.Halfbridge_symbol Fragment_symbol_t.Halfbridge_symbol_t.Hbc));
      Tree_t.Leaf
       (Fragment_symbol_t.Leaf_fragment_symbol
         (Fragment_symbol_t.Halfbridge_symbol Fragment_symbol_t.Halfbridge_symbol_t.Hbc))]);
    Tree_t.Leaf
     (Fragment_symbol_t.Leaf_fragment_symbol
       (Fragment_symbol_t.Halfbridge_symbol Fragment_symbol_t.Halfbridge_symbol_t.Hbc))]);
  Tree_t.Leaf
   (Fragment_symbol_t.Leaf_fragment_symbol
     (Fragment_symbol_t.Halfbridge_symbol Fragment_symbol_t.Halfbridge_symbol_t.Hbc))])
);; 

