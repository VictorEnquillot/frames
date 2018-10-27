(** {3 Tests for Grouping_formula_constrained_v.} *)

open Make_test_v;;

(** {3 Guanidine Grouping Formula_Constrained.} *)

testing "Guanidine grouping_formula_constrained_v";;

(* toplevel 
   #use "tguanidine_grouping_formula_constrained_v.ml";; 
*)


(** Bridged_grouping *)

let sym_grp = Grouping_symbol_v.guanidine;; (*
		Nh2 spl
   spi  -N=C<          
		Nh2 spr
			*)


let mrk_grp = Tag_v.make sym_grp idx_grp;;

let foc_mrk_grp = Grouping_formula_constrained_v.retrieve_grouping_polyfragment_tag mrk_grp;;

test_number 1 (
frc_mrk_grp
(* : (Fragment_buried_tag_t.fragment_buried_tag,
     Fragment_leaf_tag_t.fragment_leaf_tag)
    Leafed_tree_t.leafed_tree *)
=
  Leafed_tree_t.Node
   ((Fragment_tag_t.Fragment_tag_t.Onefork_fragment_symbol
      (Fragment_tag_t.Fragment_tag_t.Onebifork_fragment_symbol
        Fragment_tag_t.Fragment_tag_t.Obf_NdCd),
     Fragment_tag_t.Fri_t.Sole_index_t.Planar_index
      (Fragment_tag_t.Fri_t.Sole_index_t.Planar_trigonal_index
        Fragment_tag_t.Fri_t.Sole_index_t.Pt_c)),
   [Leafed_tree_t.Leaf
     (Fragment_tag_t.Fragment_tag_t.Onezero_block_symbol
       (Fragment_tag_t.Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
         Fragment_tag_t.Fragment_tag_t.Block_symbol_t.Osz_Nsh_2),
      Fragment_tag_t.Fri_t.Sole_index_t.Planar_index
       (Fragment_tag_t.Fri_t.Sole_index_t.Planar_trigonal_index
         Fragment_tag_t.Fri_t.Sole_index_t.Pt_o));
    Leafed_tree_t.Leaf
     (Fragment_tag_t.Fragment_tag_t.Onezero_block_symbol
       (Fragment_tag_t.Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
         Fragment_tag_t.Fragment_tag_t.Block_symbol_t.Osz_Nsh_2),
      Fragment_tag_t.Fri_t.Sole_index_t.Planar_index
       (Fragment_tag_t.Fri_t.Sole_index_t.Planar_trigonal_index
         Fragment_tag_t.Fri_t.Sole_index_t.Pt_b))])
);;
 
