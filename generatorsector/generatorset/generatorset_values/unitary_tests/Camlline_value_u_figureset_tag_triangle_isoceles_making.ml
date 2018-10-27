open Make_test_v;;

testing "Camlline_value_v
   Camlline_value_u_figureset_tag_triangle_isoceles_making.ml";;

(* toplevel 
   #use "Camlline_value_u_figureset_tag_triangle_isoceles_making.ml";;

*)

let nam_cod = "Camlline_value_u_figureset_tag_triangle_isoceles_making.ml";;
let nam_dom = "figure";;
let nam_cat = "tag";;
let nam_ent = "triangle_isoceles";;
let nam_cof = "value_alone";;
let nam_usf = "implementation";;
let nam_ite = "making";;

let sym_dom = Domain_symbol_v.make nam_dom "";;
let idx_dom = Domain_symbol_v.list_index_of_domain_symbol sym_dom;;
let soi_dom = Sole_index_v.make idx_dom [];;
let gss_dom = Generatorset_symbol_v.generatorset_symbol_of_domain_symbol sym_dom;;
Generatorset_symbol_by_sole_index_register_v.store soi_dom gss_dom;;
let tag_dom = Tag_v.make sym_dom soi_dom;;
let for_dom = Domain_formula_v.retrieve tag_dom;;

let sel_cat = (fun c -> Category_symbol_v.name c = nam_cat);;
let tag_cat = Doublet_list_v.find_if_left sel_cat for_dom;;

test_number 1 (
tag_cat
(* : Item_symbol_t.item_symbol * Sole_index_t.sole_index *)
=
(Category_symbol_t.Tag, [8; 2])
);;

let for_cat = Category_formula_v.retrieve tag_cat;;

test_number 2 (
for_cat
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
=
  Category_formula_t.Category_tag_formula
   [(Entity_symbol_t.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_notopsonleaf "figure"),
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

test_number 3 (
tag_ent
(* : Entity_symbol_t.entity_proper_symbol * Sole_index_t.sole_index *)
=
  (
    (Entity_symbol_t.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "triangle_isoceles")),
   [3; 8; 2])
);;

let for_ent = Entity_formula_v.retrieve tag_ent;;

test_number 4 (
for_ent
(* : Contentfile_symbol_t.contentfile_symbol Tag_t.tag list *)
  =
[(Contentfile_symbol_t.Type_alone, [1; 3; 8; 2]);
 (Contentfile_symbol_t.Value_alone, [2; 3; 8; 2])]
);;

let sel_cof = (fun c -> Contentfile_symbol_v.name c = nam_cof);;
let tag_cof = Doublet_list_v.find_if_left sel_cof for_ent;;
let for_cof = Contentfile_formula_v.retrieve tag_cof;;

let sel_usf = (fun u -> Usagefile_symbol_v.name u = nam_usf);;
let tag_usf = Doublet_list_v.find_if_left sel_usf for_cof;;

test_number 5 (
tag_usf 
(* : Usagefile_symbol_t.usagefile_symbol * Sole_index_t.sole_index *)
=
  (Usagefile_symbol_t.Implementation, [1; 2; 3; 8; 2])
);;

let for_usf = Usagefile_formula_v.retrieve tag_usf;;

test_number 6 (
for_usf
(* : Item_symbol_t.item_symbol Tag_t.tag list *)
=
  [(Item_symbol_t.Item_for_any_only_top_symbol Item_for_symbol_only_top_symbol_t.Heading,
    [1; 1; 2; 3; 8; 2]);
   (Item_symbol_t.Item_for_any_only_top_symbol Item_for_symbol_only_top_symbol_t.Documenting,
    [2; 1; 2; 3; 8; 2]);
   (Item_symbol_t.Item_by_group_topsons_symbol Item_by_group_topsons_symbol_t.Naming,
    [3; 1; 2; 3; 8; 2]);
   (Item_symbol_t.Item_each_topson_notleaf_symbol
     Item_each_topson_notleaf_symbol_t.Extracting_topson_for_symbol,
    [4; 1; 2; 3; 8; 2]);
   (Item_symbol_t.Item_each_grandson_notleaf_symbol
     Item_each_grandson_notleaf_symbol_t.Extracting_grandson_for_symbol,
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
   (Item_symbol_t.Item_by_group_topsons_symbol Item_by_group_topsons_symbol_t.Making,
    [12; 1; 2; 3; 8; 2]);
   (Item_symbol_t.Item_for_any_only_top_symbol Item_for_symbol_only_top_symbol_t.Ending,
    [13; 1; 2; 3; 8; 2])]
);;

let sel_ite = (fun i -> Item_symbol_v.name i = nam_ite);;
let tag_ite = Doublet_list_v.find_if_left sel_ite for_usf;; 

test_number 7 (
tag_ite
(* : Item_symbol_t.item_symbol * Sole_index_t.sole_index *)
  =
(Item_symbol_t.Item_by_group_topsons_symbol Item_by_group_topsons_symbol_t.Making,
 [12; 1; 2; 3; 8; 2])
);;

let for_ite = Item_formula_v.retrieve tag_ite;;

test_number 8 (
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
         Camlparagraph_for_tag_let_argument_symbol_t.Let_make_soi_nam_s_equal_for_tag)),
    [2; 12; 1; 2; 3; 8; 2])]
);;

(* Camlparagraph : Type_definition_for_tag *)

let idx_cap = 2;;
let tag_cap = List.nth for_ite (idx_cap-1);;

test_number 9 (
tag_cap
(* : Item_symbol_t.item_symbol * Sole_index_t.sole_index *)
=
  (Camlparagraph_symbol_t.Camlparagraph_for_tag_symbol
    (Camlparagraph_for_tag_symbol_t.Camlparagraph_for_tag_let_symbol
      (Camlparagraph_for_tag_let_symbol_t.Camlparagraph_for_tag_let_argument_symbol
        Camlparagraph_for_tag_let_argument_symbol_t.Let_make_soi_nam_s_equal_for_tag)),
   [2; 12; 1; 2; 3; 8; 2])
);;

let for_cap = Camlparagraph_formula_v.retrieve tag_cap;;

test_number 10 (
for_cap
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
=
 [(Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_function_symbol
       Camlline_uno_function_symbol_t.Let_make_soi_at_nam_at_s_equal),
    [1; 2; 12; 1; 2; 3; 8; 2]);
   (Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_function_symbol
       Camlline_uno_function_symbol_t.Space_let_sym_at_equal_Est_vdot_make_nam_at_s_in),
    [2; 2; 12; 1; 2; 3; 8; 2]);
   (Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_function_symbol
       Camlline_uno_function_symbol_t.Space_Tag_vdot_make_sym_at_soi_at),
    [3; 2; 12; 1; 2; 3; 8; 2]);
   (Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
       Camlline_constant_pervasive_symbol_t.Double_semicolon),
    [4; 2; 12; 1; 2; 3; 8; 2])]
);;

(* Camlline : 1 Let_make_sym_at_soi_at_equal *)

let idx_cal = 1;;
let tag_cal = List.nth for_cap (idx_cal-1);;

test_number 11 (
tag_cal
=
  (Camlline_symbol_t.Camlline_uno_symbol
    (Camlline_uno_symbol_t.Camlline_uno_function_symbol
      Camlline_uno_function_symbol_t.Let_make_soi_at_nam_at_s_equal),
   [1; 2; 12; 1; 2; 3; 8; 2])
);;

let for_cal = Camlline_formula_v.retrieve tag_cal;;

test_number 12 (
for_cal
=
 [(
     (Entity_symbol_t.Entity_proper_top_symbol
       (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "triangle_isoceles")),
    [1; 1; 2; 12; 1; 2; 3; 8; 2])]
);;

let nam_fil = Camlline_value_v.fullnameoffile "./" tag_cal;;

test_number 13 (
nam_fil
=
 "./Triangle_isoceles_tag_making_let_make_soi_nam_s_equal_for_tag_let_make_soi_at_nam_at_s_equal_v.ml"
);;

let val_cal = Camlline_value_v.make tag_cal;;

test_number 14 (
val_cal 
(* : Camlline_value_t.camlline_value *)
=
"let make soi_tis nam_tis s ="
);;

(* Camlline : 2 Space_Tag_vdot_make_sym_ast_soi_at *)

let idx_cal = 2;;
let tag_cal = List.nth for_cap (idx_cal-1);;

test_number 15 (
tag_cal
=
  (Camlline_symbol_t.Camlline_uno_symbol
    (Camlline_uno_symbol_t.Camlline_uno_function_symbol
      Camlline_uno_function_symbol_t.Space_let_sym_at_equal_Est_vdot_make_nam_at_s_in),
   [2; 2; 12; 1; 2; 3; 8; 2])
);;

let for_cal = Camlline_formula_v.retrieve tag_cal;;

test_number 16 (
for_cal
=  
[(
    (Entity_symbol_t.Entity_proper_top_symbol
       (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "triangle_isoceles")),
  [1; 2; 2; 12; 1; 2; 3; 8; 2])]
);;

let nam_fil = Camlline_value_v.fullnameoffile "./" tag_cal;;

test_number 17 (
nam_fil
=
 "./Triangle_isoceles_tag_making_let_make_soi_nam_s_equal_for_tag_let_sym_at_equal_est_vdot_make_nam_at_s_in_v.ml"
);;

let val_cal = Camlline_value_v.make tag_cal;;

test_number 18 (
val_cal 
(* : Camlline_value_t.camlline_value *)
=
  "  let sym_tis = Triangle_isoceles_symbol_v.make nam_tis s in"
);;

(* Camlline : 3 Space_Tag_vdot_make_sym_ast_soi_at *)

let idx_cal = 3;;
let tag_cal = List.nth for_cap (idx_cal-1);;

test_number 19 (
tag_cal
=
   (Camlline_symbol_t.Camlline_uno_symbol
    (Camlline_uno_symbol_t.Camlline_uno_function_symbol
      Camlline_uno_function_symbol_t.Space_Tag_vdot_make_sym_at_soi_at),
   [3; 2; 12; 1; 2; 3; 8; 2])
);;

let for_cal = Camlline_formula_v.retrieve tag_cal;;

test_number 20 (
for_cal
=  
[(
     (Entity_symbol_t.Entity_proper_top_symbol
       (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "triangle_isoceles")),
    [1; 3; 2; 12; 1; 2; 3; 8; 2])]
);;

let nam_fil = Camlline_value_v.fullnameoffile "./" tag_cal;;

test_number 21 (
nam_fil
=
"./Triangle_isoceles_tag_making_let_make_soi_nam_s_equal_for_tag_tag_vdot_make_sym_at_soi_at_v.ml"
);;

let val_cal = Camlline_value_v.make tag_cal;;

test_number 22 (
val_cal 
(* : Camlline_value_t.camlline_value *)
=
  "  Tag_v.make sym_tis soi_tis"
);;

