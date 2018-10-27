open Make_test_v;;

testing "Constructor_basename_tree_by_domain_trail_provider_v with
   Constructor_basename_tree_by_domain_trail_provider_u_chemicalset_symbol.ml";; 

(* toplevel 
   #use "Constructor_basename_tree_by_domain_trail_provider_u_chemicalset_symbol.ml";; 

*)

let tra_dom = [("domain", "chemical")];;

let wws_l = Word_word_string_triplet_list_by_domain_trail_provider_v.provide tra_dom;;
let wws_fl = List.filter (fun (k, e, s) -> e = "atom_threetied") wws_l;;

let bna_dom_t = Constructor_basename_tree_by_domain_trail_provider_v.provide tra_dom;;
let son_tl = Tree_v.topson_tree_list_off_tree bna_dom_t;;

let subtree_of_node_name nam tre =
  Tree_v.subtree_of_node_predicate_off_tree (fun n -> n = nam) tre
;;

let bna_ato_t = subtree_of_node_name "atom" bna_dom_t;;

let nod_l = Tree_v.node_list_off_tree bna_ato_t;;
let boo = List_v.is_once_list_of_list nod_l;;
let non_l = Tree_v.non_unique_node_list_off_tree bna_ato_t;;
let dol = List_v.element_n_count_list_of_list nod_l;;

let cou = List_v.count_of_element_of_list "atom_threetied" nod_l;;

let lea_ato_l = List.sort String.compare (Tree_v.leaf_node_list_off_tree bna_ato_t);;

test_number 1 (
 lea_ato_l 
(* : string list *)
=
 [
  "ar";
  "atom_twotied_singlesingle_ax1en_diatomic:ofstring";
  "brm1";
  "c_c_cc";
  "c_c_d";
  "c_n_c";
  "c_n_cc";
  "c_o_c";
  "cap2";
  "clm1";
  "cup1";
  "cup2";
  "d_c_d";
  "d_c_ss";
  "d_np1_d";
  "d_np1_ss";
  "d_s_d";
  "d_s_dd";
  "fep2";
  "fep3";
  "fm1";
  "hb_c";
  "hb_d";
  "hb_s";
  "hb_t";
  "he";
  "hm1";
  "hp1";
  "im1";
  "kp1";
  "kr";
  "lip1";
  "mgp2";
  "nap1";
  "ne";
  "nip1";
  "nip3";
  "om2";
  "s_be_s";
  "s_c_cc";
  "s_c_ds";
  "s_c_sd";
  "s_c_sss";
  "s_c_t";
  "s_cl_ss";
  "s_cl_ssss";
  "s_hg_s";
  "s_im1_s";
  "s_n_c";
  "s_n_cc";
  "s_n_d";
  "s_n_sd";
  "s_n_ss";
  "s_n_sss";
  "s_np1_sss";
  "s_np1_t";
  "s_o_c";
  "s_o_s";
  "s_s_s";
  "s_s_sd";
  "s_s_sss";
  "s_s_sssss";
  "s_xe_s";
  "s_xe_sss";
  "sm2";
  "xe";
  "z_c_t";
  "z_f_s";
  "z_h_s";
  "z_n_t";
  "z_o_c";
  "z_o_d";
  "z_o_t";
  "z_s_s";
  "z_s_t";
  "znp2"
]
);;

let tsn_l = Tree_v.topson_node_list_off_tree bna_dom_t;;

test_number 2 (
tsn_l
(* : string list *)
  =
["atom"]
);;

let sut = subtree_of_node_name "atom_zerotied" bna_dom_t;;

test_number 3 (
sut
(* : string Tree_t.tree *)
= 
  Tree_t.Inner ("atom_zerotied",
   [Tree_t.Inner ("atom_zerotied_anion",
     [Tree_t.Inner ("atom_zerotied_anion_minusone",
       [Tree_t.Leaf "fm1"; Tree_t.Leaf "hm1"; Tree_t.Leaf "clm1";
        Tree_t.Leaf "brm1"; Tree_t.Leaf "im1"]);
      Tree_t.Inner ("atom_zerotied_anion_minustwo",
       [Tree_t.Leaf "om2"; Tree_t.Leaf "sm2"])]);
    Tree_t.Inner ("atom_zerotied_cation",
     [Tree_t.Inner ("atom_zerotied_cation_plusone",
       [Tree_t.Leaf "hp1"; Tree_t.Leaf "kp1"; Tree_t.Leaf "lip1";
        Tree_t.Leaf "nap1"; Tree_t.Leaf "nip1"; Tree_t.Leaf "cup1"]);
      Tree_t.Inner ("atom_zerotied_cation_plustwo",
       [Tree_t.Leaf "mgp2"; Tree_t.Leaf "cap2"; Tree_t.Leaf "fep2";
        Tree_t.Leaf "znp2"; Tree_t.Leaf "cup2"]);
      Tree_t.Inner ("atom_zerotied_cation_plusthree",
       [Tree_t.Leaf "fep3"; Tree_t.Leaf "nip3"])]);
    Tree_t.Inner ("atom_zerotied_raregas",
     [Tree_t.Leaf "ar"; Tree_t.Leaf "he"; Tree_t.Leaf "kr"; Tree_t.Leaf "ne";
      Tree_t.Leaf "xe"]);
    Tree_t.Inner ("atom_zerotied_halfbridge",
     [Tree_t.Leaf "hb_s"; Tree_t.Leaf "hb_c"; Tree_t.Leaf "hb_d";
      Tree_t.Leaf "hb_t"])])
);;

let sut = subtree_of_node_name "atom_onetied" bna_dom_t;;
test_number 4 (
sut
(* : string Tree_t.tree *)
= 
Tree_t.Inner ("atom_onetied",
 [Tree_t.Inner ("atom_onetied_single",
   [Tree_t.Leaf "z_h_s"; Tree_t.Leaf "z_f_s"; Tree_t.Leaf "z_s_s"]);
  Tree_t.Inner ("atom_onetied_conjugated",
   [Tree_t.Inner ("atom_onetied_conjugated_ax1en_diatomic",
     [Tree_t.Leaf "z_o_c"])]);
  Tree_t.Inner ("atom_onetied_double", [Tree_t.Leaf "z_o_d"]);
  Tree_t.Inner ("atom_onetied_triple",
   [Tree_t.Leaf "z_c_t"; Tree_t.Leaf "z_n_t"; Tree_t.Leaf "z_o_t";
    Tree_t.Leaf "z_s_t"])])
);;

let sut = subtree_of_node_name "atom_twotied" bna_dom_t;;
test_number 5 (
sut
(* : string Tree_t.tree *)
=
  Tree_t.Inner ("atom_twotied",
   [Tree_t.Inner ("atom_twotied_singlesingle",
     [Tree_t.Inner ("atom_twotied_singlesingle_ax1",
       [Tree_t.Leaf "atom_twotied_singlesingle_ax1en_diatomic:ofstring"]);
      Tree_t.Inner ("atom_twotied_singlesingle_ax2",
       [Tree_t.Inner ("atom_twotied_singlesingle_ax2e0_linear",
         [Tree_t.Leaf "s_be_s"; Tree_t.Leaf "s_hg_s"]);
        Tree_t.Inner ("atom_twotied_singlesingle_ax2e0_bent",
         [Tree_t.Leaf "s_o_s"; Tree_t.Leaf "s_s_s"]);
        Tree_t.Inner ("atom_twotied_singlesingle_ax2e3_linear",
         [Tree_t.Leaf "s_im1_s"; Tree_t.Leaf "s_xe_s"])])]);
    Tree_t.Inner ("atom_twotied_singleconjugated",
     [Tree_t.Leaf "s_n_c"; Tree_t.Leaf "s_o_c"]);
    Tree_t.Inner ("atom_twotied_singledouble", [Tree_t.Leaf "s_n_d"]);
    Tree_t.Inner ("atom_twotied_singletriple",
     [Tree_t.Inner ("atom_twotied_singletriple_ax2",
       [Tree_t.Inner ("atom_twotied_singletriple_ax2e0_linear",
         [Tree_t.Leaf "s_c_t"; Tree_t.Leaf "s_np1_t"])])]);
    Tree_t.Inner ("atom_twotied_conjugatedconjugated",
     [Tree_t.Inner ("atom_twotied_conjugatedconjugated_ax2",
       [Tree_t.Inner ("atom_twotied_conjugatedconjugated_ax2e0_linear",
         [Tree_t.Leaf "c_n_c"; Tree_t.Leaf "c_o_c"])])]);
    Tree_t.Inner ("atom_twotied_conjugateddouble",
     [Tree_t.Inner ("atom_twotied_conjugateddouble_ax2",
       [Tree_t.Inner ("atom_twotied_conjugateddouble_ax2e0_linear",
         [Tree_t.Leaf "c_c_d"])])]);
    Tree_t.Inner ("atom_twotied_doubledouble",
     [Tree_t.Inner ("atom_twotied_doubledouble_ax2",
       [Tree_t.Inner ("atom_twotied_doubledouble_ax2_linear",
         [Tree_t.Leaf "d_c_d"; Tree_t.Leaf "d_np1_d"; Tree_t.Leaf "d_s_d"])])])])
);;

let sut = subtree_of_node_name "atom_threetied" bna_dom_t;;

test_number 6 (
sut
(* : string Tree_t.tree *)
=
  Tree_t.Inner ("atom_threetied",
		[Tree_t.Inner ("atom_threetied_conjugatedconjugatedconjugated",
			       [Tree_t.Leaf "c_c_cc"; Tree_t.Leaf "c_n_cc"]);
		 Tree_t.Inner ("atom_threetied_doubledoubledouble", [Tree_t.Leaf "d_s_dd"]);
		 Tree_t.Inner ("atom_threetied_doublesinglesingle",
			       [Tree_t.Inner ("atom_threetied_doublesinglesingle_ax3",
					      [Tree_t.Inner ("atom_threetied_doublesinglesingle_ax3e0_trigonalplanar",
							     [Tree_t.Leaf "d_c_ss"; Tree_t.Leaf "d_np1_ss"])])]);
		 Tree_t.Inner ("atom_threetied_singleconjugatedconjugated",
			       [Tree_t.Leaf "s_c_cc"; Tree_t.Leaf "s_n_cc"]);
		 Tree_t.Inner ("atom_threetied_singledoublesingle",
			       [Tree_t.Inner ("atom_threetied_singledoublesingle_ax3",
					      [Tree_t.Inner ("atom_threetied_singledoublesingle_ax3e0_trigonalplanar",
							     [Tree_t.Leaf "s_c_ds"])])]);
		 Tree_t.Inner ("atom_threetied_singlesingledouble",
			       [Tree_t.Leaf "s_c_sd"; Tree_t.Leaf "s_n_sd"; Tree_t.Leaf "s_s_sd"]);
		 Tree_t.Inner ("atom_threetied_singlesinglesingle",
			       [Tree_t.Leaf "s_n_ss"; Tree_t.Leaf "s_cl_ss"])])
);;

let sut = subtree_of_node_name "atom_fourtied" bna_dom_t;;

test_number 7 (
sut
(* : string Tree_t.tree *)
=
  Tree_t.Inner ("atom_fourtied",
   [Tree_t.Inner ("atom_fourtied_singlesinglesinglesingle_ax4e1_tetrahedral",
     [Tree_t.Leaf "s_c_sss"; Tree_t.Leaf "s_np1_sss"; Tree_t.Leaf "s_n_sss";
      Tree_t.Leaf "s_s_sss"; Tree_t.Leaf "s_xe_sss"])])
);;

let sut = subtree_of_node_name "atom_fivetied" bna_dom_t;;

test_number 8 (
sut
(* : string Tree_t.tree *)
=
 Tree_t.Inner ("atom_fivetied", [Tree_t.Leaf "s_cl_ssss"])
);;

let sut = subtree_of_node_name "atom_sixtied" bna_dom_t;;

test_number 9 (
sut
(* : string Tree_t.tree *)
=
  Tree_t.Inner ("atom_sixtied", [Tree_t.Leaf "s_s_sssss"])
);;

