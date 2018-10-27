open Make_test_v;;

(** {3 Grouping Path Formula.} *)

testing "grouping_path_formula_v";;

(* toplevel 
   #use "tgrouping_path_formula_v.ml";; 
*)


let est_vac = EvS_t.Chemical (ChS_t.Environment EvS_t.Vacuum);;
let est_abs = EvS_t.Chemical (ChS_t.Protonation Protonation_state_t.Absent);;

(** C8h18 *)

let sym_c8h = Msy_t.Fragmented Msy_t.C8h18;;
let cst_c8h = est_vac;;
let dsg_c8h = Mde_v.make sym_c8h cst_c8h;;
let upp_c8h = Mpa_p.Top [];;
let mpp_c8h = Mpa_p.make dsg_c8h Index_p.zero upp_c8h;;
let mpt_c8h = Mpa_p.molpath_off_molecule_path mpp_c8h;;

(** Groupings *)

(** CMethyl3 : C FCh3 LCh3 RCh3 *)

let sym_cmt = Grouping_symbol_t.CMethyl3;; 
let sym_grp = Grouping_symbol_t.Fragmented sym_cmt;;

let cst_cmt = est_vac;;
let dsg_cmt = Dsg_v.make sym_cmt cst_cmt;; 
let dsg_grp = Gde_t.Fragmented dsg_cmt;;
let upp_cmt = Grp_p.Molecule mpp_c8h;;
let wid_cmt = Mpt_t.W_forth;;
let mpp_cmt = Grp_p.make dsg_grp wid_cmt upp_cmt;;
let mpt_cmt = Grp_p.molpath_off_grouping_path mpp_cmt;;

let for_mpp_grp = Gpf_v.retrieve mpp_cmt;;

let mpp_blk_a = 
  Gpf_v.block_path_array_off_grouping_path_formula 
    for_mpp_grp;;

let mpp_atm_a = 
  Gpf_v.atom_path_array_off_grouping_path_formula 
    for_mpp_grp;;

test_number 1 (
Block_path_p.molpath_off_block_path mpp_blk_a.(0)
  =
[(Molpath_t.Block_tag
   (Block_tag_t.Triforked
     {Block_tag_t.Dsg_t.symbol = Block_tag_t.Block_symbol_t.C;
      Block_tag_t.Dsg_t.state = est_abs}),
  Molpath_t.Tin (Ordinal_p.one));
 (Molpath_t.Fragment_tag
   (Fragment_tag_t.Fourtied_block
     {Fragment_tag_t.Bld_t.Dsg_t.symbol =
       Fragment_tag_t.Bld_t.Block_symbol_t.C;
      Fragment_tag_t.Bld_t.Dsg_t.state = est_abs}),
  Molpath_t.Single);
 (Molpath_t.Grouping_tag
   (Grouping_tag_t.Fragmented
     {Grouping_tag_t.Dsg_t.symbol =
       Grouping_tag_t.Grouping_symbol_t.CMethyl3;
      Grouping_tag_t.Dsg_t.state = est_vac}),
  Molpath_t.Web Molpath_t.W_forth);
 (Molpath_t.Molecule_tag
   (Molecule_tag_t.Fragmented
     {Molecule_tag_t.Dsg_t.symbol = Molecule_tag_t.Msy_t.C8h18;
      Molecule_tag_t.Dsg_t.state = est_vac}),
  Molpath_t.Can (Index_p.zero))]
);;

test_number 2 (
Atom_path_p.molpath_off_atom_path mpp_atm_a.(0)
  =
[(Molpath_t.Atom_tag
   {Atom_tag_t.Dsg_t.symbol =
     Atom_tag_t.Cns_t.Element Mendeleev_symbol_t.C;
    Atom_tag_t.Dsg_t.state =
     Atom_tag_t.EvS_t.Chemical
      (Atom_tag_t.EvS_t.ChS_t.Protonation Protonation_state_t.Absent)},
  Molpath_t.Web Molpath_t.W_elder);
 (Molpath_t.Block_tag
   (Block_tag_t.Triforked
     {Block_tag_t.Dsg_t.symbol = Block_tag_t.Block_symbol_t.C;
      Block_tag_t.Dsg_t.state = est_abs}),
  Molpath_t.Tin (Ordinal_p.one));
 (Molpath_t.Fragment_tag
   (Fragment_tag_t.Fourtied_block
     {Fragment_tag_t.Bld_t.Dsg_t.symbol =
       Fragment_tag_t.Bld_t.Block_symbol_t.C;
      Fragment_tag_t.Bld_t.Dsg_t.state = est_abs}),
  Molpath_t.Single);
 (Molpath_t.Grouping_tag
   (Grouping_tag_t.Fragmented
     {Grouping_tag_t.Dsg_t.symbol =
       Grouping_tag_t.Grouping_symbol_t.CMethyl3;
      Grouping_tag_t.Dsg_t.state = est_vac}),
  Molpath_t.Web Molpath_t.W_forth);
 (Molpath_t.Molecule_tag
   (Molecule_tag_t.Fragmented
     {Molecule_tag_t.Dsg_t.symbol = Molecule_tag_t.Msy_t.C8h18;
      Molecule_tag_t.Dsg_t.state = est_vac}),
  Molpath_t.Can (Index_p.zero))]
);;
