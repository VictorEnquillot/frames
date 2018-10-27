open Make_test_v;;

testing "Entity_basename_constructor_tree_by_kind_trail_provider_v
   Entity_basename_constructor_tree_by_kind_trail_provider_u_moleculeset_formula.ml";;

(* toplevel 
   #use "Entity_basename_constructor_tree_by_kind_trail_provider_u_moleculeset_formula.ml";; 

*)

let nam_dos = "moleculeset";;
let nam_cat = "formula";;
let nam_kin = "type";;

let sym_dos = Domain_symbol_v.make nam_dos "";;

let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos gss_dos;;
let sym_dos = Tag_v.make sym_dos;;

let sym_cat = Category_symbol_v.make nam_cat;;
let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat gss_cat;;
let tag_cat = Tag_v.make sym_cat soi_cat;;

let sym_kin = Category_symbol_v.make nam_kin;;
let gss_kin = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_kin;;
Generatorset_symbol_by_sole_index_provider_v.store soi_kin gss_kin;;
let tag_kin = Tag_v.make sym_kin soi_kin;;

let nam_ent_t = Entity_basename_constructor_tree_by_kind_trail_provider_v.provide tag_kin;;
let nam_ent_top = Tree_v.root_off_tree nam_ent_t;;
let nam_ent_nod_l = Tree_v.node_list_off_tree nam_ent_t;;
let nam_ent_top_son_l = Tree_v.topson_node_list_off_tree nam_ent_t;;
let nam_ent_nol_son_l = Tree_v.noleaf_topson_node_list_off_tree nam_ent_t;;

let nam_ent_cur_l = Tree_v.noroot_notopson_noleaf_node_list_off_tree nam_ent_t;; 
let nam_ent_lea_l = Tree_v.leaf_node_list_off_tree nam_ent_t;;

let nam_ent_ful_l = nam_ent_top :: ( nam_ent_nol_son_l @ nam_ent_cur_l @ nam_ent_lea_l);;

test_number 1 (
Tree_v.is_complete nam_ent_t
);;

test_number 2 (
nam_ent_top 
(* : string *)
= 
"moleculeset"
);;

test_number 3 (
nam_ent_t 
(* : string Tree_t.tree *)
=
Tree_t.Inner ("moleculeset",
 [Tree_t.Inner ("grouping",
   [Tree_t.Inner ("grouping_fromid",
     [Tree_t.Leaf "capped_list fragment:mark grouping:mark"])]);
  Tree_t.Inner ("molecule",
   [Tree_t.Inner ("molecule_forked",
     [Tree_t.Leaf "guanidine";
      Tree_t.Inner ("molecule_forked_fromid",
       [Tree_t.Leaf "capped_list fragment_head:mark grouping:mark"])]);
    Tree_t.Inner ("molecule_linear",
     [Tree_t.Inner ("molecule_linear_diatomic",
       [Tree_t.Leaf "capped_list fragment_head:mark grouping:mark"]);
      Tree_t.Inner ("molecule_linear_overdiatomic",
       [Tree_t.Leaf "capped_list fragment_head:mark grouping:mark"])]);
    Tree_t.Inner ("molecule_polymer",
     [Tree_t.Inner ("polypeptide_fromid",
       [Tree_t.Leaf "list polypeptide_subunit:mark"]);
      Tree_t.Inner ("molecule_polymer_fromid",
       [Tree_t.Leaf "list polymer_subunit:mark"])])])])
);;

test_number 4 (
nam_ent_nol_son_l 
(* : string list *)
=
["grouping"; "molecule";]
);;

test_number 5 (
nam_ent_cur_l 
(* : string list *)
=
["grouping_fromid"; "molecule_forked"; "molecule_forked_fromid";
 "molecule_linear"; "molecule_linear_diatomic"; "molecule_linear_overdiatomic"; 
 "molecule_polymer"; "polypeptide_fromid"; "molecule_polymer_fromid"]
);;

test_number 6 (
nam_ent_lea_l 
(* : string list *)
 =
["capped_list fragment:mark grouping:mark"; "guanidine";
 "capped_list fragment_head:mark grouping:mark";
 "capped_list fragment_head:mark grouping:mark";
 "capped_list fragment_head:mark grouping:mark";
 "list polypeptide_subunit:mark"; "list polymer_subunit:mark"]
);;

