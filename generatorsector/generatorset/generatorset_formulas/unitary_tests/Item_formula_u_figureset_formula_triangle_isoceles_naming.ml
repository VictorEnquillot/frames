open Make_test_v;;

testing "Item_formula_v with 
   Item_formula_u_figureset_formula_triangle_isoceles_naming.ml";;

(* toplevel 
   #use "Item_formula_u_figureset_formula_triangle_isoceles_naming.ml";;

*)

let nam_cod = "Item_formula_u_figureset_formula_triangle_isoceles_naming";;

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

(* Naming *)

let sel_ite = Item_symbol_v.is_naming;;
let tag_ite = Doublet_list_v.find_if_left sel_ite for_usf;; 

test_number 4 (
tag_ite
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Naming,
 [3; 1; 2; 3; 2; 2])
);;

let for_ite = Item_formula_v.retrieve tag_ite;;

test_number 5 (
for_ite 
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
 =
  [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       (Camlparagraph_for_any_comment_symbol_t.Item_title "naming")),
    [1; 3; 1; 2; 3; 2; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_formula_symbol
     (Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_let_symbol
       (Camlparagraph_for_formula_let_symbol_t.Camlparagraph_for_formula_let_entity_proper_symbol
         Camlparagraph_for_formula_let_entity_proper_symbol_t.Let_name_entity_proper_for_formula)),
    [2; 3; 1; 2; 3; 2; 2])]
);;

(* Camlparagraph 2 Let_name_entity_fictive_nullary_for_formula *)

let idx_cap = 2;;
let tag_cap = List.nth for_ite (idx_cap-1);;

test_number 6 (
tag_cap
(* : Camlparagraph_symbol_t.camlparagraph_symbol * Sole_index_t.sole_index *)
=
 (Camlparagraph_symbol_t.Camlparagraph_for_formula_symbol
    (Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_let_symbol
      (Camlparagraph_for_formula_let_symbol_t.Camlparagraph_for_formula_let_entity_proper_symbol
        Camlparagraph_for_formula_let_entity_proper_symbol_t.Let_name_entity_proper_for_formula)),
   [2; 3; 1; 2; 3; 2; 2])
);;

let for_cap = Camlparagraph_formula_v.retrieve tag_cap;;

test_number 7 (
for_cap 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
  [(Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_function_symbol
       Camlline_constant_function_symbol_t.Let_name_equal_function),
    [1; 2; 3; 1; 2; 3; 2; 2]);
   (Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_function_symbol
       Camlline_uno_function_symbol_t.Comment_s_comment),
    [2; 2; 3; 1; 2; 3; 2; 2]);
   (Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Pipe_Et_formula_tdot_Es_formula_space_for_as_arrow),
    [3; 2; 3; 1; 2; 3; 2; 2]);
   (Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_function_symbol
       Camlline_uno_function_symbol_t.Space_Es_formula_vdot_name_for_as),
    [4; 2; 3; 1; 2; 3; 2; 2]);
   (Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_function_symbol
       Camlline_uno_function_symbol_t.Comment_s_comment),
    [5; 2; 3; 1; 2; 3; 2; 2]);
   (Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Pipe_Et_formula_tdot_Es_formula_space_for_as_arrow),
    [6; 2; 3; 1; 2; 3; 2; 2]);
   (Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_function_symbol
       Camlline_uno_function_symbol_t.Space_Es_formula_vdot_name_for_as),
    [7; 2; 3; 1; 2; 3; 2; 2]);
   (Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_function_symbol
       Camlline_uno_function_symbol_t.Comment_s_comment),
    [8; 2; 3; 1; 2; 3; 2; 2]);
   (Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Pipe_Et_formula_tdot_Es_formula_space_for_as_arrow),
    [9; 2; 3; 1; 2; 3; 2; 2]);
   (Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_function_symbol
       Camlline_uno_function_symbol_t.Space_Es_formula_vdot_name_for_as),
    [10; 2; 3; 1; 2; 3; 2; 2]);
   (Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_function_symbol
       Camlline_uno_function_symbol_t.Comment_s_comment),
    [11; 2; 3; 1; 2; 3; 2; 2]);
   (Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Pipe_Et_formula_tdot_Es_formula_space_for_as_arrow),
    [12; 2; 3; 1; 2; 3; 2; 2]);
   (Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_function_symbol
       Camlline_uno_function_symbol_t.Space_Es_formula_vdot_name_for_as),
    [13; 2; 3; 1; 2; 3; 2; 2]);
   (Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
       Camlline_constant_pervasive_symbol_t.Double_semicolon),
    [14; 2; 3; 1; 2; 3; 2; 2])]
);;
