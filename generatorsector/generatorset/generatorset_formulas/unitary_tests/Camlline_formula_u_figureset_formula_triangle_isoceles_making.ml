open Make_test_v;;

testing "Camlline_formula_v with 
   Camlline_formula_u_figureset_formula_triangle_isoceles_making.ml";;

(* toplevel 
   #use "Camlline_formula_u_figureset_formula_triangle_isoceles_making.ml";;

*)

let nam_cod = "Camlline_formula_u_figureset_formula_triangle_isoceles_making";;

let nam_dos = "figureset";;
let nam_cat = "formula";;
let nam_ent = "triangle_isoceles";;
let nam_cof = "value_alone";;
let nam_ite = "making";;
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
(* : Contentfile_symbol_t.contentfile_symbol * Sole_index_t.sole_index *)
=
  (Contentfile_symbol_t.Value_alone, [2; 3; 2; 2])
);;

let sel_usf = (fun u -> Usagefile_symbol_v.name u = nam_usf);;
let tag_usf = Doublet_list_v.find_if_left sel_usf for_cof;;

test_number 2 (
tag_usf 
(* : Usagefile_symbol_t.usagefile_symbol * Sole_index_t.sole_index *)
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

let sel_ite = (fun i -> String.lowercase (Item_symbol_v.name i) = nam_ite);;
let tag_ite = Doublet_list_v.find_if_left sel_ite for_usf;; 

test_number 4 (
tag_ite
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Making,
 [10; 1; 2; 3; 2; 2])
);;

let for_ite = Item_formula_v.retrieve tag_ite;;

test_number 5 (
for_ite 
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
 =
  [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       (Camlparagraph_for_any_comment_symbol_t.Item_title "making")),
    [1; 10; 1; 2; 3; 2; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_formula_symbol
     (Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_let_symbol
       (Camlparagraph_for_formula_let_symbol_t.Camlparagraph_for_formula_let_entity_proper_symbol
         Camlparagraph_for_formula_let_entity_proper_symbol_t.Let_make_entity_proper_for_formula)),
    [2; 10; 1; 2; 3; 2; 2])]
);;

(* Camlparagraph : 2 Let_make_equal_function_for_formula *)

let idx_cap = 2;;
let tag_cap = List.nth for_ite (idx_cap-1);;

test_number 6 (
tag_cap
(* :  Camlparagraph_symbol_t.camlparagraph_symbol * Sole_index_t.sole_index *)
=
  (Camlparagraph_symbol_t.Camlparagraph_for_formula_symbol
    (Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_let_symbol
      (Camlparagraph_for_formula_let_symbol_t.Camlparagraph_for_formula_let_entity_proper_symbol
        Camlparagraph_for_formula_let_entity_proper_symbol_t.Let_make_entity_proper_for_formula)),
   [2; 10; 1; 2; 3; 2; 2])
);;

let for_cap = Camlparagraph_formula_v.retrieve tag_cap;;

test_number 7 (
for_cap
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
  [(Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Let_make_sym_as_soi_at_equal),
    [1; 2; 10; 1; 2; 3; 2; 2]);
   (Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_function_symbol
       Camlline_uno_function_symbol_t.Space_match_sym_at_with),
    [2; 2; 10; 1; 2; 3; 2; 2]);
   (Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_function_symbol
       Camlline_uno_function_symbol_t.Comment_s_comment),
    [3; 2; 10; 1; 2; 3; 2; 2]);
   (Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Pipe_Et_symbol_tdot_Es_arrow),
    [4; 2; 10; 1; 2; 3; 2; 2]);
   (Camlline_symbol_t.Camlline_trio_symbol
     Camlline_trio_symbol_t.Space_space_el_formula_vdot_make_sym_as_soi_at,
    [5; 2; 10; 1; 2; 3; 2; 2]);
   (Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_function_symbol
       Camlline_uno_function_symbol_t.Comment_s_comment),
    [6; 2; 10; 1; 2; 3; 2; 2]);
   (Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Pipe_Et_symbol_tdot_Es_arrow),
    [7; 2; 10; 1; 2; 3; 2; 2]);
   (Camlline_symbol_t.Camlline_trio_symbol
     Camlline_trio_symbol_t.Space_space_el_formula_vdot_make_sym_as_soi_at,
    [8; 2; 10; 1; 2; 3; 2; 2]);
   (Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_function_symbol
       Camlline_uno_function_symbol_t.Comment_s_comment),
    [9; 2; 10; 1; 2; 3; 2; 2]);
   (Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Pipe_Et_symbol_tdot_Es_arrow),
    [10; 2; 10; 1; 2; 3; 2; 2]);
   (Camlline_symbol_t.Camlline_trio_symbol
     Camlline_trio_symbol_t.Space_space_el_formula_vdot_make_sym_as_soi_at,
    [11; 2; 10; 1; 2; 3; 2; 2]);
   (Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_function_symbol
       Camlline_uno_function_symbol_t.Comment_s_comment),
    [12; 2; 10; 1; 2; 3; 2; 2]);
   (Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Pipe_Et_symbol_tdot_Es_arrow),
    [13; 2; 10; 1; 2; 3; 2; 2]);
   (Camlline_symbol_t.Camlline_trio_symbol
     Camlline_trio_symbol_t.Space_space_el_formula_vdot_make_sym_as_soi_at,
    [14; 2; 10; 1; 2; 3; 2; 2]);
   (Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
       Camlline_constant_pervasive_symbol_t.Double_semicolon),
    [15; 2; 10; 1; 2; 3; 2; 2])]
);;

(* Camlline : 1 Let_make_nam_s_equal *)

let idx_cal = 1;;
let tag_cal = List.nth for_cap (idx_cal-1);;

test_number 8 (
tag_cal
(* : Camlline_symbol_t.camlline_symbol * Sole_index_t.sole_index *)
=
   (Camlline_symbol_t.Camlline_duo_symbol
    (Camlline_duo_symbol_t.Camlline_duo_function_symbol
      Camlline_duo_function_symbol_t.Let_make_sym_as_soi_at_equal),
   [1; 2; 10; 1; 2; 3; 2; 2])
);;

let for_cal = Camlline_formula_v.retrieve tag_cal;;

test_number 9 (
for_cal
(* :  Tag_t.tag list *)
=
 [(
     (Entity_symbol_t.Entity_proper_top_symbol
       (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "triangle_isoceles")),
    [1; 1; 2; 10; 1; 2; 3; 2; 2]);
   (
     (Entity_symbol_t.Entity_proper "triangle"),
    [2; 1; 2; 10; 1; 2; 3; 2; 2])]
);;

(* Camlline : 2 Match_capitalize_nam_with *)

let idx_cal = 2;;
let tag_cal = List.nth for_cap (idx_cal-1);;

test_number 10 (
tag_cal
(* : Camlline_symbol_t.camlline_symbol * Sole_index_t.sole_index *)
=
  (Camlline_symbol_t.Camlline_uno_symbol
    (Camlline_uno_symbol_t.Camlline_uno_function_symbol
      Camlline_uno_function_symbol_t.Space_match_sym_at_with),
   [2; 2; 10; 1; 2; 3; 2; 2])
);;

let for_cal = Camlline_formula_v.retrieve tag_cal;;

test_number 11 (
for_cal
(* :  Tag_t.tag list *)
= 
 [(
     (Entity_symbol_t.Entity_proper_top_symbol
       (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "triangle_isoceles")),
    [1; 2; 2; 10; 1; 2; 3; 2; 2])]
);;

(* Camlline : 3 Pipe_ecstring_arrow_ec *)

let idx_cal = 3;;
let tag_cal = List.nth for_cap (idx_cal-1);;

test_number 12 (
tag_cal
(* : Camlline_symbol_t.camlline_symbol * Sole_index_t.sole_index *)
=  
  (Camlline_symbol_t.Camlline_uno_symbol
    (Camlline_uno_symbol_t.Camlline_uno_function_symbol
      Camlline_uno_function_symbol_t.Comment_s_comment),
   [3; 2; 10; 1; 2; 3; 2; 2])
);;

let for_cal = Camlline_formula_v.retrieve tag_cal;;

test_number 13 (
for_cal
(* :  Tag_t.tag list *)
=
 [(Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Sonnullary
         "triangle_isoceles_equilateral")),
    [1; 3; 2; 10; 1; 2; 3; 2; 2])]
);;

(* Camlline : 6 Space_print_fatal_error_make_of_string_of_string *)

let idx_cal = 6;;
let tag_cal = List.nth for_cap (idx_cal-1);;

test_number 14 (
tag_cal
(* : Camlline_symbol_t.camlline_symbol * Sole_index_t.sole_index *)
=
   (Camlline_symbol_t.Camlline_uno_symbol
    (Camlline_uno_symbol_t.Camlline_uno_function_symbol
      Camlline_uno_function_symbol_t.Comment_s_comment),
   [6; 2; 10; 1; 2; 3; 2; 2])
);;

let for_cal = Camlline_formula_v.retrieve tag_cal;;

test_number 15 (
for_cal
(* :  Tag_t.tag list *)
=
  [(Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Sonnullary "triangle_isoceles_right")),
    [1; 6; 2; 10; 1; 2; 3; 2; 2])]
);;

