open Make_test_v;;

testing "Usagefile_formula_v with 
   Usagefile_formula_u_figureset_formula_triangle_isoceles_naming.ml";;

(* toplevel 
   #use "Usagefile_formula_u_figureset_formula_triangle_isoceles_naming.ml";;

*)

let nam_cod = "Usagefile_formula_u_figureset_formula_triangle_isoceles_naming";;

let nam_dos = "figureset";;
let nam_cat = "formula";;
let nam_cof = "value_alone";;
let nam_ite = "naming";;
let nam_ent = "triangle_isoceles";;
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

test_number 1 (
tag_cof
=
(Contentfile_symbol_t.Value_alone, [2; 3; 2; 2])
);;

let sel_usf = (fun u -> Usagefile_symbol_v.name u = nam_usf);;
let tag_usf = Doublet_list_v.find_if_left sel_usf for_cof;;

test_number 2 (
tag_usf
  =
(Usagefile_symbol_t.Implementation, [1; 2; 3; 2; 2])
);;

let for_usf = Usagefile_formula_v.retrieve tag_usf;;

test_number 3 (
 for_usf 
(* : Item_symbol_t.item_symbol Tag_t.tag list *)
=
  [(Item_symbol_t.Item_only_top_symbol Item_only_top_symbol_t.Heading,
    [1; 1; 2; 3; 2; 2]);
   (Item_symbol_t.Item_only_top_symbol Item_only_top_symbol_t.Documenting,
    [2; 1; 2; 3; 2; 2]);
   (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Naming,
    [3; 1; 2; 3; 2; 2]);
   (Item_symbol_t.Item_each_topson_notleaf_symbol
     Item_each_topson_notleaf_symbol_t.Extracting_topson,
    [4; 1; 2; 3; 2; 2]);
   (Item_symbol_t.Item_each_grandson_notleaf_symbol
     Item_each_grandson_notleaf_symbol_t.Extracting_grandson,
    [5; 1; 2; 3; 2; 2]);
   (Item_symbol_t.Item_each_topson_notleaf_symbol
     Item_each_topson_notleaf_symbol_t.Querying_topson,
    [6; 1; 2; 3; 2; 2]);
   (Item_symbol_t.Item_each_grandson_notleaf_symbol
     Item_each_grandson_notleaf_symbol_t.Querying_grandson,
    [7; 1; 2; 3; 2; 2]);
   (Item_symbol_t.Item_each_topson_notleaf_symbol
     Item_each_topson_notleaf_symbol_t.Upgrading_topson,
    [8; 1; 2; 3; 2; 2]);
   (Item_symbol_t.Item_each_grandson_notleaf_symbol
     Item_each_grandson_notleaf_symbol_t.Upgrading_grandson,
    [9; 1; 2; 3; 2; 2]);
   (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Making,
    [10; 1; 2; 3; 2; 2]);
   (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Iterating,
    [11; 1; 2; 3; 2; 2]);
   (Item_symbol_t.Item_only_top_symbol Item_only_top_symbol_t.Ending,
    [12; 1; 2; 3; 2; 2])]
);;

