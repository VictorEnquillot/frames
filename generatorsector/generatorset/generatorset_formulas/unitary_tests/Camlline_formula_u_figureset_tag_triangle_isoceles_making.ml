open Make_test_v;;

testing "Camlline_formula_v with
   Camlline_formula_u_figureset_tag_triangle_isoceles_making.ml";;

(* toplevel 
   #use "Camlline_formula_u_figureset_tag_triangle_isoceles_making.ml";;

*)

let nam_dos = "figureset";;
let nam_cat = "tag";;
let nam_ent = "triangle_isoceles";;
let nam_cof = "value_alone";;
let nam_ite = "making";;
let nam_usf = "implementation";;

let sym_dos = Domainset_symbol_v.make nam_dos;;
let idx_dos = Domainset_symbol_v.list_index_of_domainset_symbol sym_dos;;
let soi_dos = Sole_index_v.make idx_dos [];;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_register_v.store soi_dos gss_dos;;
let tag_dos = Tag_v.make sym_dos soi_dos;;
let for_dos = Domainset_formula_v.retrieve tag_dos;;

test_number 1 (
tag_dos
(* : Domainset_symbol_t.domainset_symbol Tag_t.tag *)
= 
(Domainset_symbol_t.Figureset, [2])
);;

test_number 2 (
for_dos
(* : Category_symbol_t.category_symbol Tag_t.tag list *)
 =
[(Category_symbol_t.Any, [1; 2]); (Category_symbol_t.Formula, [2; 2]);
 (Category_symbol_t.Mark, [3; 2]); (Category_symbol_t.Path, [4; 2]);
 (Category_symbol_t.Property, [5; 2]); (Category_symbol_t.Provider, [6; 2]);
 (Category_symbol_t.Symbol, [7; 2]); (Category_symbol_t.Tag, [8; 2]);
 (Category_symbol_t.Value, [9; 2]); (Category_symbol_t.Empty, [10; 2])]
);;

let sel_cat = (fun c -> Category_symbol_v.name c = nam_cat);;
let tag_cat = Doublet_list_v.find_if_left sel_cat for_dos;;

test_number 3 (
tag_cat
(* : Category_symbol_v.Category_symbol_t.category_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Category_symbol_t.Tag, [8; 2])
);;

let for_cat = Category_formula_v.retrieve tag_cat;;

test_number 4 (
for_cat 
(* : Entity_symbol_t.Entity_proper_symbol Tag_t.tag list *)
=
  Category_formula_t.Category_tag_formula
   [(Entity_symbol_t.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_notopsonleaf "figureset"),
     [1; 8; 2]);
    (Entity_symbol_t.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_notopsonleaf "triangle"),
     [2; 8; 2]);
    (Entity_symbol_t.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "triangle_isoceles"),
     [3; 8; 2]);
    (Entity_symbol_t.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "triangle_scalene"),
     [4; 8; 2]);
    (Entity_symbol_t.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "vector"),
     [5; 8; 2]);
    (Entity_symbol_t.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "point"),
     [6; 8; 2]);
    (Entity_symbol_t.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "coordinate"),
     [7; 8; 2]);
    (Entity_symbol_t.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_notopsonleaf "coordinate_3d"),
     [8; 8; 2]);
    (Entity_symbol_t.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_sometopsonleaf
        "coordinate_cartesian_3d"),
     [9; 8; 2]);
    (Entity_symbol_t.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_sometopsonleaf
        "coordinate_cylindrical"),
     [10; 8; 2]);
    (Entity_symbol_t.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_sometopsonleaf
        "coordinate_spherical"),
     [11; 8; 2]);
    (Entity_symbol_t.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_notopsonleaf "coordinate_2d"),
     [12; 8; 2]);
    (Entity_symbol_t.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_sometopsonleaf
        "coordinate_cartesian_2d"),
     [13; 8; 2]);
    (Entity_symbol_t.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "coordinate_polar"),
     [14; 8; 2])]
);;

let tag_ent_l = Category_formula_v.entity_tag_list_off_category_formula for_cat;;
let sel_ent = (fun e -> Entity_symbol_v.string_off e = nam_ent)
let tag_ent = Doublet_list_v.find_if_left sel_ent tag_ent_l;;

test_number 5 (
tag_ent
(* : Entity_symbol_t.Entity_proper_symbol * Sole_index_t.sole_index *)
  =
  (
    (Entity_symbol_t.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "triangle_isoceles")),
   [3; 8; 2])
);;

let for_ent = Entity_formula_v.retrieve tag_ent;;

test_number 6 (
for_ent 
(*: Contentfile_symbol_t.contentfile_symbol Tag_t.tag list *)
  =
  [(Contentfile_symbol_t.Type_alone, [1; 3; 8; 2]);
   (Contentfile_symbol_t.Value_alone, [2; 3; 8; 2])]
);;

let sel_cof = (fun c -> Contentfile_symbol_v.name c = nam_cof);;
let tag_cof = Doublet_list_v.find_if_left sel_cof for_ent;;
let for_cof = Contentfile_formula_v.retrieve tag_cof;;

test_number 7 (
tag_cof
(* : Contentfile_symbol_t.contentfile_symbol * Sole_index_t.sole_index *)
=
(Contentfile_symbol_t.Value_alone, [2; 3; 8; 2])
);;

let sel_usf = (fun u -> Usagefile_symbol_v.name u = nam_usf);;
let tag_usf = Doublet_list_v.find_if_left sel_usf for_cof;;

test_number 8 (
tag_usf
(* : Usagefile_symbol_t.usagefile_symbol * Sole_index_t.sole_index *)
=
(Usagefile_symbol_t.Implementation, [1; 2; 3; 8; 2])
);;

let for_usf = Usagefile_formula_v.retrieve tag_usf;;

test_number 9 (
 for_usf 
(* : Item_symbol_t.item_symbol Tag_t.tag list *)
=
 [(Item_symbol_t.Item_only_top_symbol Item_only_top_symbol_t.Heading,
    [1; 1; 2; 3; 8; 2]);
   (Item_symbol_t.Item_only_top_symbol Item_only_top_symbol_t.Documenting,
    [2; 1; 2; 3; 8; 2]);
   (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Naming,
    [3; 1; 2; 3; 8; 2]);
   (Item_symbol_t.Item_each_topson_notleaf_symbol
     Item_each_topson_notleaf_symbol_t.Extracting_topson,
    [4; 1; 2; 3; 8; 2]);
   (Item_symbol_t.Item_each_grandson_notleaf_symbol
     Item_each_grandson_notleaf_symbol_t.Extracting_grandson,
    [5; 1; 2; 3; 8; 2]);
   (Item_symbol_t.Item_each_topson_notleaf_symbol
     Item_each_topson_notleaf_symbol_t.Querying_topson,
    [6; 1; 2; 3; 8; 2]);
   (Item_symbol_t.Item_each_grandson_notleaf_symbol
     Item_each_grandson_notleaf_symbol_t.Querying_grandson,
    [7; 1; 2; 3; 8; 2]);
   (Item_symbol_t.Item_each_topson_notleaf_symbol
     Item_each_topson_notleaf_symbol_t.Upgrading_topson,
    [8; 1; 2; 3; 8; 2]);
   (Item_symbol_t.Item_each_grandson_notleaf_symbol
     Item_each_grandson_notleaf_symbol_t.Upgrading_grandson,
    [9; 1; 2; 3; 8; 2]);
   (Item_symbol_t.Item_each_leaf_symbol
     Item_each_leaf_symbol_t.Abbreviating_grandson,
    [10; 1; 2; 3; 8; 2]);
   (Item_symbol_t.Item_each_leaf_symbol
     Item_each_leaf_symbol_t.Abbreviating_topson,
    [11; 1; 2; 3; 8; 2]);
   (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Making,
    [12; 1; 2; 3; 8; 2]);
   (Item_symbol_t.Item_only_top_symbol Item_only_top_symbol_t.Ending,
    [13; 1; 2; 3; 8; 2])]
);;

let sel_ite = (fun i -> String.lowercase (Item_symbol_v.name i) = nam_ite);;
let tag_ite = Doublet_list_v.find_if_left sel_ite for_usf;; 

test_number 10 (
tag_ite
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
  =
(Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Making,
 [12; 1; 2; 3; 8; 2])
);;

let for_ite = Item_formula_v.retrieve tag_ite;;

test_number 11 (
for_ite 
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
=
  [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       (Camlparagraph_for_any_comment_symbol_t.Item_title "making")),
    [1; 12; 1; 2; 3; 8; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_tag_symbol
     (Camlparagraph_for_tag_symbol_t.Camlparagraph_for_tag_let_symbol
       (Camlparagraph_for_tag_let_symbol_t.Camlparagraph_for_tag_let_argument_symbol
         Camlparagraph_for_tag_let_argument_symbol_t.Let_make_equal_make_for_tag)),
    [2; 12; 1; 2; 3; 8; 2])]
);;

(* Camlparagraph : Item_title "making" *)

let idx_cap = 1;;
let tag_cap = List.nth for_ite (idx_cap-1);;

test_number 12 (
tag_cap
(* : Camlparagraph_symbol_t.camlparagraph_symbol * Sole_index_t.sole_index *)
=
 (Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
    (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
      (Camlparagraph_for_any_comment_symbol_t.Item_title "making")),
   [1; 12; 1; 2; 3; 8; 2])
);;

let for_cap = Camlparagraph_formula_v.retrieve tag_cap;;

test_number 13 (
for_cap
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
[(Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
       (Camlline_constant_pervasive_symbol_t.Item_title "making")),
  [1; 1; 12; 1; 2; 3; 8; 2])]
);;

(* Camlline : Item_title "making" *)

let idx_cal = 1;;
let tag_cal = List.nth for_cap (idx_cal-1);;

test_number 14 (
tag_cal
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
  (Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
      (Camlline_constant_pervasive_symbol_t.Item_title "making")),
   [1; 1; 12; 1; 2; 3; 8; 2])
);;

let for_cal = Camlline_formula_v.retrieve tag_cal;;

test_number 15 (
for_cal 
(* :  Tag_t.tag list *)
=
  [(Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       Entity_fictive_nullary_symbol_t.Empty),
    [1; 1; 1; 12; 1; 2; 3; 8; 2])]
);;

(* Camlparagraph : 2 Let_make_equal_function_for_tag *)

let idx_cap = 2;;
let tag_cap = List.nth for_ite (idx_cap-1);;

test_number 16 (
tag_cap 
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_for_tag_symbol
   (Camlparagraph_for_tag_symbol_t.Camlparagraph_for_tag_let_symbol
      (Camlparagraph_for_tag_let_symbol_t.Camlparagraph_for_tag_let_argument_symbol
         Camlparagraph_for_tag_let_argument_symbol_t.Let_make_equal_make_for_tag)),
 [2; 12; 1; 2; 3; 8; 2])
);;

let for_cap = Camlparagraph_formula_v.retrieve tag_cap;;

test_number 17 (
for_cap
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
  [(Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_function_symbol
       Camlline_constant_function_symbol_t.Let_make_equal_Tag_vdot_make_double_semicolon),
    [1; 2; 12; 1; 2; 3; 8; 2])]
);;

(* Camlline : 1 Let_make_sym_at_soi_at_equal *)

let idx_cal = 1;;
let tag_cal = List.nth for_cap (idx_cal-1);;

test_number 18 (
 tag_cal 
(* : Camlline_symbol_t.camlline_symbol * Sole_index_t.sole_index *)
=
  (Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_function_symbol
      Camlline_constant_function_symbol_t.Let_make_equal_Tag_vdot_make_double_semicolon),
   [1; 2; 12; 1; 2; 3; 8; 2])
);;

let for_cal = Camlline_formula_v.retrieve tag_cal;;

test_number 19 (
 for_cal 
(* :  Tag_t.tag list *)
=
[]
);;

