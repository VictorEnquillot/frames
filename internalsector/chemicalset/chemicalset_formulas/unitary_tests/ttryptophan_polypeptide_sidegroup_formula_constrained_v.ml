(** {3 Tryptophan Polypeptide Sidegroup Formula Constrained.} *)

open Make_test_v;;

testing "Tryptophan Polypeptide_sidegroup_formula_constrained_v";;

(* toplevel 
   #use "ttryptophan_polypeptide_sidegroup_formula_constrained_v.ml";; 
*)


(* Polypeptide_sidegroup Symbol *)

let sym_ama = Molecule_aminoacid_symbol_v.molecule_aminoacid_symbol_of_string "tryptophan";;
let sym_amn = Molecule_aminoacid_symbol_v.molecule_aminoacid_fragmented_symbol_off_molecule_aminoacid_symbol sym_ama;;
let sym_amr = Molecule_aminoacid_symbol_v.molecule_aminoacid_regular_symbol_off_molecule_aminoacid_symbol sym_ama;;

let sym_ama = Molecule_aminoacid_symbol_v.tryptophan;;
let sym_sdc = Polypeptide_sidegroup_symbol_v.polypeptide_sidegroup_symbol_of_molecule_aminoacid_symbol sym_ama;;

(* Polypeptide Sidegroup Formula Constrained *)
let sci = Sole_index_v.stl;;
let foc_smb_sdc = Polypeptide_sidegroup_symbol_formula_constrained_v.retrieve sym_sdc sci;;

test_number 1 (
smb_sdc 
(* : Polypeptide_sidegroup_symbol_t.polypeptide_sidegroup_symbol *) 
  = 
Polypeptide_sidegroup_symbol_t.MetheneIndole
);;

test_number 2 (
frc_smb_sdc 
(* : Polypeptide_sidegroup_formula_constrained_t.polypeptide_sidegroup_formula_constrained *)
=
Polypeptide_sidegroup_formula_constrained_t.Leafed_tree_t.Node
 ((Polypeptide_sidegroup_formula_constrained_t.Fragment_tag_t.Frs_t.Onefork_fragment_symbol
    (Polypeptide_sidegroup_formula_constrained_t.Fragment_tag_t.Frs_t.Onebifork_fragment_symbol
      Polypeptide_sidegroup_formula_constrained_t.Fragment_tag_t.Frs_t.Obf_Cch_Nch_Cc),
   Polypeptide_sidegroup_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_index
    (Polypeptide_sidegroup_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
      Polypeptide_sidegroup_formula_constrained_t.Fragment_tag_t.Sole_index_t.St_l)),
 [Polypeptide_sidegroup_formula_constrained_t.Leafed_tree_t.Node
   ((Polypeptide_sidegroup_formula_constrained_t.Fragment_tag_t.Frs_t.Onefork_fragment_symbol
      (Polypeptide_sidegroup_formula_constrained_t.Fragment_tag_t.Frs_t.Onebifork_fragment_symbol
        Polypeptide_sidegroup_formula_constrained_t.Fragment_tag_t.Frs_t.Obf_Cch_Nch_Cc),
     Polypeptide_sidegroup_formula_constrained_t.Fragment_tag_t.Sole_index_t.Planar_index
      (Polypeptide_sidegroup_formula_constrained_t.Fragment_tag_t.Sole_index_t.Planar_trigonal_index
        Polypeptide_sidegroup_formula_constrained_t.Fragment_tag_t.Sole_index_t.Pt_o)),
   [Polypeptide_sidegroup_formula_constrained_t.Leafed_tree_t.Node
     ((Polypeptide_sidegroup_formula_constrained_t.Fragment_tag_t.Frs_t.Onefork_fragment_symbol
        (Polypeptide_sidegroup_formula_constrained_t.Fragment_tag_t.Frs_t.Onebifork_fragment_symbol
          Polypeptide_sidegroup_formula_constrained_t.Fragment_tag_t.Frs_t.Obf_Cch_r4Cc),
       Polypeptide_sidegroup_formula_constrained_t.Fragment_tag_t.Sole_index_t.Planar_index
        (Polypeptide_sidegroup_formula_constrained_t.Fragment_tag_t.Sole_index_t.Planar_trigonal_index
          Polypeptide_sidegroup_formula_constrained_t.Fragment_tag_t.Sole_index_t.Pt_o)),
     [Polypeptide_sidegroup_formula_constrained_t.Leafed_tree_t.Leaf
       (Polypeptide_sidegroup_formula_constrained_t.Fragment_tag_t.Frs_t.Halfbridge_symbol
         Polypeptide_sidegroup_formula_constrained_t.Fragment_tag_t.Frs_t.Halfbridge_symbol_t.Hbc,
        Polypeptide_sidegroup_formula_constrained_t.Fragment_tag_t.Sole_index_t.Planar_index
         (Polypeptide_sidegroup_formula_constrained_t.Fragment_tag_t.Sole_index_t.Planar_trigonal_index
           Polypeptide_sidegroup_formula_constrained_t.Fragment_tag_t.Sole_index_t.Pt_o));
      Polypeptide_sidegroup_formula_constrained_t.Leafed_tree_t.Leaf
       (Polypeptide_sidegroup_formula_constrained_t.Fragment_tag_t.Frs_t.Halfbridge_symbol
         Polypeptide_sidegroup_formula_constrained_t.Fragment_tag_t.Frs_t.Halfbridge_symbol_t.Hbc,
        Polypeptide_sidegroup_formula_constrained_t.Fragment_tag_t.Sole_index_t.Planar_index
         (Polypeptide_sidegroup_formula_constrained_t.Fragment_tag_t.Sole_index_t.Planar_trigonal_index
           Polypeptide_sidegroup_formula_constrained_t.Fragment_tag_t.Sole_index_t.Pt_b))]);
    Polypeptide_sidegroup_formula_constrained_t.Leafed_tree_t.Leaf
     (Polypeptide_sidegroup_formula_constrained_t.Fragment_tag_t.Frs_t.Halfbridge_symbol
       Polypeptide_sidegroup_formula_constrained_t.Fragment_tag_t.Frs_t.Halfbridge_symbol_t.Hbc,
      Polypeptide_sidegroup_formula_constrained_t.Fragment_tag_t.Sole_index_t.Planar_index
       (Polypeptide_sidegroup_formula_constrained_t.Fragment_tag_t.Sole_index_t.Planar_trigonal_index
         Polypeptide_sidegroup_formula_constrained_t.Fragment_tag_t.Sole_index_t.Pt_b))]);
  Polypeptide_sidegroup_formula_constrained_t.Leafed_tree_t.Leaf
   (Polypeptide_sidegroup_formula_constrained_t.Fragment_tag_t.Frs_t.Halfbridge_symbol
     Polypeptide_sidegroup_formula_constrained_t.Fragment_tag_t.Frs_t.Halfbridge_symbol_t.Hbc,
    Polypeptide_sidegroup_formula_constrained_t.Fragment_tag_t.Sole_index_t.Planar_index
     (Polypeptide_sidegroup_formula_constrained_t.Fragment_tag_t.Sole_index_t.Planar_trigonal_index
       Polypeptide_sidegroup_formula_constrained_t.Fragment_tag_t.Sole_index_t.Pt_b))])
);;

test_number 3 (
Polypeptide_sidegroup_symbol_formula_constrained_v.name foc_smb_sdc 
  =
"{(Obf_Cch_Nch_Cc,stl)[{(Obf_Cch_Nch_Cc,pto)[{(Obf_Cch_r4Cc,pto)[(Hbc,pto) (Hbc,ptb)]} (Hbc,ptb)]} (Hbc,ptb)]}"
);;

test_number 4 (
Polypeptide_sidegroup_symbol_formula_constrained_v.polypeptide_sidegroup_formula_constrained_of_molecule_aminoacid_symbol_of_index sym_ama sci 
 (* : Polypeptide_sidegroup_formula_constrained_t.polypeptide_sidegroup_formula_constrained *)
=
frc_smb_sdc
);;

