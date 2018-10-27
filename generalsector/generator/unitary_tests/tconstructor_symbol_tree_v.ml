open Gentest_v;;

testing "constructor_symbol_tree_v";;

(* toplevel 
   #use "tconstructor_symbol_tree_v.ml";; 
 *)

module Cst_t = Constructor_symbol_tree_t
module Cst_v = Constructor_symbol_tree_v
module Cns_v = Constructor_symbol_v
module Tre_v = Tree_v

let nam_ent = "atom";;

testi 0 (
Cst_v.string_tree_of_entityname nam_ent
=
Tree_t.Node ("atom",
 [Tree_t.Node ("atom_zerotied",
   [Tree_t.Node ("atom_zerotied_raregas",
     [Tree_t.Leaf "ar"; Tree_t.Leaf "he"; Tree_t.Leaf "kr"; Tree_t.Leaf "ne";
      Tree_t.Leaf "xe"]);
    Tree_t.Node ("atom_zerotied_anion",
     [Tree_t.Node ("atom_zerotied_anion_minus_one",
       [Tree_t.Leaf "f_1m"; Tree_t.Leaf "h_1m"; Tree_t.Leaf "cl_1m";
        Tree_t.Leaf "br_1m"; Tree_t.Leaf "i_1m"]);
      Tree_t.Node ("atom_zerotied_anion_minus_two",
       [Tree_t.Leaf "o_2m"; Tree_t.Leaf "s_2m"])]);
    Tree_t.Node ("atom_zerotied_cation",
     [Tree_t.Node ("atom_zerotied_cation_plus_one",
       [Tree_t.Leaf "h_1p"; Tree_t.Leaf "k_1p"; Tree_t.Leaf "li_1p";
        Tree_t.Leaf "na_1p"; Tree_t.Leaf "ni_1p"; Tree_t.Leaf "cu_1p"]);
      Tree_t.Node ("atom_zerotied_cation_plus_two",
       [Tree_t.Leaf "mg_2p"; Tree_t.Leaf "ca_2p"; Tree_t.Leaf "fe_2p";
        Tree_t.Leaf "zn_2p"; Tree_t.Leaf "cu_2p"]);
      Tree_t.Node ("atom_zerotied_cation_plus_three",
       [Tree_t.Leaf "fe_3p"; Tree_t.Leaf "ni_3p"])]);
    Tree_t.Node ("halfbridge",
     [Tree_t.Leaf "Hbc"; Tree_t.Leaf "Hbd"; Tree_t.Leaf "Hbs";
      Tree_t.Leaf "Hbt"])]);
  Tree_t.Node ("atom_onetied",
   [Tree_t.Node ("atom_onetied_conjugated", [Tree_t.Leaf "o_c"]);
    Tree_t.Node ("atom_onetied_double", [Tree_t.Leaf "o_d"]);
    Tree_t.Node ("atom_onetied_single",
     [Tree_t.Leaf "h_s"; Tree_t.Leaf "f_s"]);
    Tree_t.Node ("atom_onetied_triple",
     [Tree_t.Leaf "n_t"; Tree_t.Leaf "o_t"])]);
  Tree_t.Node ("atom_twotied",
   [Tree_t.Node ("atom_twotied_single_single",
     [Tree_t.Leaf "cl_ss"; Tree_t.Leaf "f_ss"; Tree_t.Leaf "h_ss"]);
    Tree_t.Node ("atom_twotied_single_conjugated",
     [Tree_t.Leaf "n_sc"; Tree_t.Leaf "o_sc"]);
    Tree_t.Node ("atom_twotied_single_double", [Tree_t.Leaf "n_sd"]);
    Tree_t.Node ("atom_twotied_single_triple",
     [Tree_t.Leaf "c_st"; Tree_t.Leaf "n_st"]);
    Tree_t.Node ("atom_twotied_conjugated_conjugated",
     [Tree_t.Leaf "n_cc"; Tree_t.Leaf "o_cc"]);
    Tree_t.Node ("atom_twotied_conjugated_double", [Tree_t.Leaf "c_cd"]);
    Tree_t.Node ("atom_twotied_double_double",
     [Tree_t.Leaf "c_dd"; Tree_t.Leaf "s_dd"])]);
  Tree_t.Node ("atom_threetied",
   [Tree_t.Node ("atom_threetied_single_single_single",
     [Tree_t.Leaf "n_sss"; Tree_t.Leaf "cl_sss"]);
    Tree_t.Node ("atom_threetied_single_single_double",
     [Tree_t.Leaf "c_ssd"; Tree_t.Leaf "n_sdd"; Tree_t.Leaf "s_sdd"]);
    Tree_t.Node ("atom_threetied_single_conjugated_conjugated",
     [Tree_t.Leaf "c_scc"; Tree_t.Leaf "n_scc"]);
    Tree_t.Node ("atom_threetied_conjugated_conjugated_conjugated",
     [Tree_t.Leaf "c_ccc"; Tree_t.Leaf "n_ccc"]);
    Tree_t.Node ("atom_threetied_double_double_double",
     [Tree_t.Leaf "s_ddd"])]);
  Tree_t.Node ("atom_fourtied",
   [Tree_t.Leaf "c_4s"; Tree_t.Leaf "n_4s"; Tree_t.Leaf "s_4s";
    Tree_t.Leaf "xe_4s"]);
  Tree_t.Node ("atom_fivetied", [Tree_t.Leaf "cl_5s"]);
  Tree_t.Node ("atom_sixtied", [Tree_t.Leaf "s_6s"])])
);;

testi 1 (
Cst_v.make "atom_zerotied_anion"
(* : Constructor_symbol_t.constructor_symbol Tree_t.tree *)
=
Tree_t.Node
 (Constructor_symbol_t.Constructor_proper_symbol
   (Constructor_symbol_t.Constructor_several_symbol "atom_zerotied_anion"),
 [Tree_t.Node
   (Constructor_symbol_t.Constructor_proper_symbol
     (Constructor_symbol_t.Constructor_several_symbol
       "atom_zerotied_anion_minus_one"),
   [Tree_t.Leaf
     (Constructor_symbol_t.Constructor_fictive_symbol
       (Constructor_symbol_t.Leaf_constructor_fictive_symbol
         (Constructor_symbol_t.Constructor_leave_symbol "f_1m")));
    Tree_t.Leaf
     (Constructor_symbol_t.Constructor_fictive_symbol
       (Constructor_symbol_t.Leaf_constructor_fictive_symbol
         (Constructor_symbol_t.Constructor_leave_symbol "h_1m")));
    Tree_t.Leaf
     (Constructor_symbol_t.Constructor_fictive_symbol
       (Constructor_symbol_t.Leaf_constructor_fictive_symbol
         (Constructor_symbol_t.Constructor_leave_symbol "cl_1m")));
    Tree_t.Leaf
     (Constructor_symbol_t.Constructor_fictive_symbol
       (Constructor_symbol_t.Leaf_constructor_fictive_symbol
         (Constructor_symbol_t.Constructor_leave_symbol "br_1m")));
    Tree_t.Leaf
     (Constructor_symbol_t.Constructor_fictive_symbol
       (Constructor_symbol_t.Leaf_constructor_fictive_symbol
         (Constructor_symbol_t.Constructor_leave_symbol "i_1m")))]);
  Tree_t.Node
   (Constructor_symbol_t.Constructor_proper_symbol
     (Constructor_symbol_t.Constructor_several_symbol
       "atom_zerotied_anion_minus_two"),
   [Tree_t.Leaf
     (Constructor_symbol_t.Constructor_fictive_symbol
       (Constructor_symbol_t.Leaf_constructor_fictive_symbol
         (Constructor_symbol_t.Constructor_leave_symbol "o_2m")));
    Tree_t.Leaf
     (Constructor_symbol_t.Constructor_fictive_symbol
       (Constructor_symbol_t.Leaf_constructor_fictive_symbol
         (Constructor_symbol_t.Constructor_leave_symbol "s_2m")))])])
);;

testi 2 (
Cst_v.son_constructor_symbol_list_of_constructor_symbol (Cns_v.make "atom_zerotied_anion")
(* : Constructor_symbol_t.constructor_symbol list *)
=
[
 Constructor_symbol_t.Constructor_proper_symbol
   (Constructor_symbol_t.Constructor_several_symbol
      "atom_zerotied_anion_minus_one");
 Constructor_symbol_t.Constructor_proper_symbol
   (Constructor_symbol_t.Constructor_several_symbol
      "atom_zerotied_anion_minus_two")
]
);;

testi 3 (
Cst_v.make "polyglycine"
(* : Constructor_symbol_t.constructor_symbol Tree_t.tree *)
=
Tree_t.Node
 (Constructor_symbol_t.Constructor_proper_symbol
   (Constructor_symbol_t.Constructor_oneline_symbol
     (Constructor_symbol_t.Constructor_proper_datastructure_symbol "polyglycine")),
 [Tree_t.Leaf
   (Constructor_symbol_t.Constructor_fictive_symbol
     (Constructor_symbol_t.Node_constructor_fictive_symbol
       (Constructor_symbol_t.Constructor_proper_datastructure_symbol
         (Constructor_symbol_t.Constructor_proper_doublet_symbol
           "indexed_string"))))])
);;

