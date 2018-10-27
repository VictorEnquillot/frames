open Make_test_v;;

testing "Camlline_duo_function_symbol_value_v
   Camlline_duo_function_formula_u_figureset_symbol_figureset_upgrading.ml";;

(* toplevel 
   #use "Camlline_duo_function_formula_u_figureset_symbol_figureset_upgrading.ml";;

*)

let nam_cod = "Camlline_duo_function_formula_u_figureset_symbol_figureset_upgrading.ml";;
let nam_dos = "figureset";;
let nam_cof = "value_alone";;
let nam_ent = "figureset";;
let nam_cat = "symbol";;
let nam_usf = "implementation";;

let store = Generatorset_symbol_by_sole_index_register_v.store;;

let sym_dos = Domainset_symbol_v.make nam_dos;;
let idx_dos = Domainset_symbol_v.list_index_of_domainset_symbol sym_dos;;
let gss_of_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol;;
let tag_dos = Tag_v.make_n_store_son store gss_of_dos sym_dos idx_dos [];;
let for_dos = Domainset_formula_v.retrieve tag_dos;;

let sel_cat = (fun c -> Category_symbol_v.name c = nam_cat);;
let tag_cat = Doublet_list_v.find_if_left sel_cat for_dos;;
let for_cat = Category_formula_v.retrieve tag_cat;;

let tag_ent_l = Category_formula_v.entity_tag_list_off_category_formula for_cat;;
let sel_ent = (fun e -> Entity_symbol_v.string_off e = nam_ent)
let tag_ent = Doublet_list_v.find_if_left sel_ent tag_ent_l;;
let for_ent = Entity_formula_v.retrieve tag_ent;;

let sel_cof = (fun c -> Contentfile_symbol_v.name c = nam_cof);;
let tag_cof = Doublet_list_v.find_if_left sel_cof for_ent;;
let for_cof = Contentfile_formula_v.retrieve tag_cof;;

let sel_usf = (fun u -> Usagefile_symbol_v.name u = nam_usf);;
let tag_usf = Doublet_list_v.find_if_left sel_usf for_cof;;
let for_usf = Usagefile_formula_v.retrieve tag_usf;;

test_number 1 (
for_usf
(* : Item_symbol_t.item_symbol Tag_t.tag list *)
=
  [(Item_symbol_t.Item_only_top_symbol Item_only_top_symbol_t.Heading,
    [1; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_only_top_symbol Item_only_top_symbol_t.Documenting,
    [2; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Naming,
    [3; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_topson_notleaf_symbol
     Item_each_topson_notleaf_symbol_t.Extracting_topson,
    [4; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_grandson_notleaf_symbol
     Item_each_grandson_notleaf_symbol_t.Extracting_grandson,
    [5; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_topson_notleaf_symbol
     Item_each_topson_notleaf_symbol_t.Querying_topson,
    [6; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_grandson_notleaf_symbol
     Item_each_grandson_notleaf_symbol_t.Querying_grandson,
    [7; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_topson_notleaf_symbol
     Item_each_topson_notleaf_symbol_t.Upgrading_topson,
    [8; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_grandson_notleaf_symbol
     Item_each_grandson_notleaf_symbol_t.Upgrading_grandson,
    [9; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_leaf_symbol
     Item_each_leaf_symbol_t.Abbreviating_topson,
    [10; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_leaf_symbol
     Item_each_leaf_symbol_t.Abbreviating_grandson,
    [11; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Making,
    [12; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_only_top_symbol Item_only_top_symbol_t.Ending,
    [13; 1; 2; 1; 7; 2])]
);;

let nam_ite = "upgrading_topson";;
let sel_ite = (fun i -> Item_symbol_v.name i = nam_ite);;
let tag_ite = Doublet_list_v.find_if_left sel_ite for_usf;; 

test_number 2 (
tag_ite 
(* : Item_symbol_t.item_symbol * Sole_index_t.sole_index *)
=
  (Item_symbol_t.Item_each_topson_notleaf_symbol
    Item_each_topson_notleaf_symbol_t.Upgrading_topson,
   [8; 1; 2; 1; 7; 2])
);;

let for_ite = Item_formula_v.retrieve tag_ite;;

test_number 3 (
for_ite
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
=
  [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       (Camlparagraph_for_any_comment_symbol_t.Item_title "upgrading_topson")),
    [1; 8; 1; 2; 1; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
         Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_topson_symbol)),
    [2; 8; 1; 2; 1; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
         Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_topson_symbol)),
    [3; 8; 1; 2; 1; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
         Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_topson_symbol)),
    [4; 8; 1; 2; 1; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
         Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_topson_symbol)),
    [5; 8; 1; 2; 1; 7; 2])]
);;

let idx_cap = 3;;
let tag_cap = List.nth for_ite (idx_cap-1);;

test_number 4 (
tag_cap
(* : Camlparagraph_symbol_t.camlparagraph_symbol * Sole_index_t.sole_index *)
=
  (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
    (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
      (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
        Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_topson_symbol)),
   [3; 8; 1; 2; 1; 7; 2])
);;

let for_cap = Camlparagraph_formula_v.retrieve tag_cap;;

test_number 5 (
for_cap
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
  [(Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Let_et_any_of_es_any_space_ac_as_equal),
    [1; 3; 8; 1; 2; 1; 7; 2]);
   (Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Space_Est_tdot_Ess_space_ass),
    [2; 3; 8; 1; 2; 1; 7; 2]);
   (Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
       Camlline_constant_pervasive_symbol_t.Double_semicolon),
    [3; 3; 8; 1; 2; 1; 7; 2])]
);;

(* Camlline : Let_et_any_of_es_any_space_ac_as_equal *)

let sel_cal = Camlline_symbol_v.is_let_est_of_ess_space_ass_equal;;
let tag_cal = Doublet_list_v.find_if_left sel_cal for_cap;;

test_number 6 (
tag_cal
(* : Camlline_symbol_t.camlline_symbol * Sole_index_t.sole_index *)
=
  (Camlline_symbol_t.Camlline_duo_symbol
    (Camlline_duo_symbol_t.Camlline_duo_function_symbol
      Camlline_duo_function_symbol_t.Let_et_any_of_es_any_space_ac_as_equal),
   [1; 3; 8; 1; 2; 1; 7; 2])
);;

let for_cal = Camlline_formula_v.retrieve tag_cal;;

test_number 7 (
for_cal
(* :  Tag_t.tag list *)
=
 [(
     (Entity_symbol_t.Entity_proper_son_symbol
       (Entity_proper_son_symbol_t.Notonlyson "vector")),
    [1; 1; 3; 8; 1; 2; 1; 7; 2]);
   (
     (Entity_symbol_t.Entity_proper_top_symbol
       (Entity_proper_top_symbol_t.Top_has_notopsonleaf "figureset")),
    [2; 1; 3; 8; 1; 2; 1; 7; 2])]
);;

(* Camlline : Space_Est_tdot_Ess_space_ass *)

let sel_cal = Camlline_symbol_v.is_est_tdot_ess_space_ass;;
let tag_cal = Doublet_list_v.find_if_left sel_cal for_cap;;

test_number 8 (
tag_cal
(* : Camlline_symbol_t.camlline_symbol * Sole_index_t.sole_index *)
=
 (Camlline_symbol_t.Camlline_duo_symbol
    (Camlline_duo_symbol_t.Camlline_duo_function_symbol
      Camlline_duo_function_symbol_t.Space_Est_tdot_Ess_space_ass),
   [2; 3; 8; 1; 2; 1; 7; 2])
);;

let for_cal = Camlline_formula_v.retrieve tag_cal;;

test_number 9 (
for_cal
(* :  Tag_t.tag list *)
=
  [(
     (Entity_symbol_t.Entity_proper_son_symbol
       (Entity_proper_son_symbol_t.Notonlyson "vector")),
    [1; 2; 3; 8; 1; 2; 1; 7; 2]);
   (
     (Entity_symbol_t.Entity_proper_top_symbol
       (Entity_proper_top_symbol_t.Top_has_notopsonleaf "figureset")),
    [2; 2; 3; 8; 1; 2; 1; 7; 2])]
);;

