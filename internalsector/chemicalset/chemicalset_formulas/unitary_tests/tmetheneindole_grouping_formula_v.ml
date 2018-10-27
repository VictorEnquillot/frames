open Make_test_v;;

(** {3 MetheneIndole Grouping Symbol Formula.} *)

testing "MetheneIndole Grouping_symbol_formula_v";;

(* toplevel 
   #use "tmetheneindole_grouping_symbol_formula_v.ml";; 
*)





(* MetheneIndole *)

let sym_grp = Grouping_symbol_v.metheneindole;; 
let for_smb_grp = Grouping_formula_v.make sym_grp;;

let sym_frg_t = 
  Grouping_formula_v.fragment_symbol_tree_off_grouping_symbol_formula 
    for_smb_grp;;

let sym_frg_l = 
  Grouping_formula_v.fragment_symbol_list_off_grouping_symbol_formula 
    for_smb_grp;;

let sym_blk_l = 
  Grouping_formula_v.block_symbol_list_off_grouping_symbol_formula 
    for_smb_grp;;

let sym_atm_l = 
  Grouping_formula_v.atom_symbol_list_off_grouping_symbol_formula 
    for_smb_grp;;

test_number 1 (
frm_smb_grp (* : Grouping_symbol_formula_t.grouping_symbol_formula *) 
=
Grouping_symbol_formula_t.Tree_t.Node
 (Grouping_symbol_formula_t.Fragment_tag_t.Buried_fragment_symbol
   (Grouping_symbol_formula_t.Fragment_tag_t.Onefork_fragment_symbol
     (Grouping_symbol_formula_t.Fragment_tag_t.Onebifork_fragment_symbol
       Grouping_symbol_formula_t.Fragment_tag_t.Obf_C_h_2Cc)),
 [Grouping_symbol_formula_t.Tree_t.Node
   (Grouping_symbol_formula_t.Fragment_tag_t.Buried_fragment_symbol
     (Grouping_symbol_formula_t.Fragment_tag_t.Onefork_fragment_symbol
       (Grouping_symbol_formula_t.Fragment_tag_t.Onebifork_fragment_symbol
         Grouping_symbol_formula_t.Fragment_tag_t.Obf_Cch_Nch_Cc)),
   [Grouping_symbol_formula_t.Tree_t.Node
     (Grouping_symbol_formula_t.Fragment_tag_t.Buried_fragment_symbol
       (Grouping_symbol_formula_t.Fragment_tag_t.Onefork_fragment_symbol
         (Grouping_symbol_formula_t.Fragment_tag_t.Onebifork_fragment_symbol
           Grouping_symbol_formula_t.Fragment_tag_t.Obf_Cch_r4Cc)),
     [Grouping_symbol_formula_t.Tree_t.Leaf
       (Grouping_symbol_formula_t.Fragment_tag_t.Leaf_fragment_symbol
         (Grouping_symbol_formula_t.Fragment_tag_t.Halfbridge_symbol
           Grouping_symbol_formula_t.Fragment_tag_t.Halfbridge_symbol_t.Hbc));
      Grouping_symbol_formula_t.Tree_t.Leaf
       (Grouping_symbol_formula_t.Fragment_tag_t.Leaf_fragment_symbol
         (Grouping_symbol_formula_t.Fragment_tag_t.Halfbridge_symbol
           Grouping_symbol_formula_t.Fragment_tag_t.Halfbridge_symbol_t.Hbc))]);
    Grouping_symbol_formula_t.Tree_t.Leaf
     (Grouping_symbol_formula_t.Fragment_tag_t.Leaf_fragment_symbol
       (Grouping_symbol_formula_t.Fragment_tag_t.Halfbridge_symbol
         Grouping_symbol_formula_t.Fragment_tag_t.Halfbridge_symbol_t.Hbc))]);
  Grouping_symbol_formula_t.Tree_t.Leaf
   (Grouping_symbol_formula_t.Fragment_tag_t.Leaf_fragment_symbol
     (Grouping_symbol_formula_t.Fragment_tag_t.Halfbridge_symbol
       Grouping_symbol_formula_t.Fragment_tag_t.Halfbridge_symbol_t.Hbc))])
);;

test_number 2 (
Grouping_formula_v.name for_smb_grp 
=
"{Obf_C_h_2Cc[{Obf_Cch_Nch_Cc[{Obf_Cch_r4Cc[Hbc Hbc]} Hbc]} Hbc]}"
);;

test_number 3 (
smb_frg_t
=
frm_smb_grp 
);;

test_number 4 (
smb_frg_l (* : Fragment_symbol_t.fragment_symbol list *)
=
[Fragment_symbol_t.Buried_fragment_symbol
  (Fragment_symbol_t.Onefork_fragment_symbol
    (Fragment_symbol_t.Onebifork_fragment_symbol
      Fragment_symbol_t.Obf_C_h_2Cc));
 Fragment_symbol_t.Buried_fragment_symbol
  (Fragment_symbol_t.Onefork_fragment_symbol
    (Fragment_symbol_t.Onebifork_fragment_symbol
      Fragment_symbol_t.Obf_Cch_Nch_Cc));
 Fragment_symbol_t.Buried_fragment_symbol
  (Fragment_symbol_t.Onefork_fragment_symbol
    (Fragment_symbol_t.Onebifork_fragment_symbol
      Fragment_symbol_t.Obf_Cch_r4Cc));
 Fragment_symbol_t.Leaf_fragment_symbol
  (Fragment_symbol_t.Halfbridge_symbol Fragment_symbol_t.Halfbridge_symbol_t.Hbc);
 Fragment_symbol_t.Leaf_fragment_symbol
  (Fragment_symbol_t.Halfbridge_symbol Fragment_symbol_t.Halfbridge_symbol_t.Hbc);
 Fragment_symbol_t.Leaf_fragment_symbol
  (Fragment_symbol_t.Halfbridge_symbol Fragment_symbol_t.Halfbridge_symbol_t.Hbc);
 Fragment_symbol_t.Leaf_fragment_symbol
  (Fragment_symbol_t.Halfbridge_symbol Fragment_symbol_t.Halfbridge_symbol_t.Hbc)]
);;

test_number 5 (
smb_blk_l (* : Block_symbol_t.block_symbol list *) 
=
[Block_symbol_t.Block_oneone_symbol
  (Block_symbol_t.Onesingleonesingle_block_symbol Block_symbol_t.Osos_C_h_2);
 Block_symbol_t.Block_oneend_symbol
  (Block_symbol_t.Onefork_block_symbol
    (Block_symbol_t.Onebifork_block_symbol
      (Block_symbol_t.Onesinglebiforksinglesingle_block_symbol
        Block_symbol_t.Osbss_Cc)));
 Block_symbol_t.Block_oneone_symbol
  (Block_symbol_t.Onesingleonesingle_block_symbol Block_symbol_t.Osos_Cch_);
 Block_symbol_t.Block_oneone_symbol
  (Block_symbol_t.Onesingleonesingle_block_symbol Block_symbol_t.Osos_Nch_);
 Block_symbol_t.Block_oneend_symbol
  (Block_symbol_t.Onefork_block_symbol
    (Block_symbol_t.Onebifork_block_symbol
      (Block_symbol_t.Onesinglebiforksinglesingle_block_symbol
        Block_symbol_t.Osbss_Cc)));
 Block_symbol_t.Block_oneone_symbol
  (Block_symbol_t.Onesingleonesingle_block_symbol Block_symbol_t.Osos_Cch_);
 Block_symbol_t.Block_oneone_symbol
  (Block_symbol_t.Onesingleonesingle_block_symbol Block_symbol_t.Osos_Cch_);
 Block_symbol_t.Block_oneone_symbol
  (Block_symbol_t.Onesingleonesingle_block_symbol Block_symbol_t.Osos_Cch_);
 Block_symbol_t.Block_oneone_symbol
  (Block_symbol_t.Onesingleonesingle_block_symbol Block_symbol_t.Osos_Cch_);
 Block_symbol_t.Block_oneend_symbol
  (Block_symbol_t.Onefork_block_symbol
    (Block_symbol_t.Onebifork_block_symbol
      (Block_symbol_t.Onesinglebiforksinglesingle_block_symbol
        Block_symbol_t.Osbss_Cc)));
 Block_symbol_t.Block_oneend_symbol
  (Block_symbol_t.Onezero_block_symbol
    (Block_symbol_t.Onezerohalfbridge_block_symbol Block_symbol_t.Halfbridge_symbol_t.Hbc));
 Block_symbol_t.Block_oneend_symbol
  (Block_symbol_t.Onezero_block_symbol
    (Block_symbol_t.Onezerohalfbridge_block_symbol Block_symbol_t.Halfbridge_symbol_t.Hbc));
 Block_symbol_t.Block_oneend_symbol
  (Block_symbol_t.Onezero_block_symbol
    (Block_symbol_t.Onezerohalfbridge_block_symbol Block_symbol_t.Halfbridge_symbol_t.Hbc));
 Block_symbol_t.Block_oneend_symbol
  (Block_symbol_t.Onezero_block_symbol
    (Block_symbol_t.Onezerohalfbridge_block_symbol Block_symbol_t.Halfbridge_symbol_t.Hbc))]
);;

test_number 6 (
smb_atm_l
  =
[ 
  Atom_symbol_v.fo_c;
  Atom_symbol_v.slf_h; 
  Atom_symbol_v.slf_h; 
  Atom_symbol_v.snth_c; 
  Atom_symbol_v.snth_c;
  Atom_symbol_v.slf_h; 
  Atom_symbol_v.snth_n; 
  Atom_symbol_v.slf_h; 
  Atom_symbol_v.snth_c; 
  Atom_symbol_v.snth_c; 
  Atom_symbol_v.slf_h; 
  Atom_symbol_v.snth_c; 
  Atom_symbol_v.slf_h; 
  Atom_symbol_v.snth_c; 
  Atom_symbol_v.slf_h; 
  Atom_symbol_v.snth_c; 
  Atom_symbol_v.slf_h; 
  Atom_symbol_v.snth_c; 
  Atom_symbol_v.hbc; 
  Atom_symbol_v.hbc; 
  Atom_symbol_v.hbc; 
  Atom_symbol_v.hbc; 
]
);;

