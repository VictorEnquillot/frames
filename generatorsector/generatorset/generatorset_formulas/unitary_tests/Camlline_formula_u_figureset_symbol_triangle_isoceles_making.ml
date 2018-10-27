open Make_test_v;;

testing "Camlline_formula_v with
   Camlline_formula_u_figureset_symbol_triangle_isoceles_making.ml";;

(* toplevel 
   #use "Camlline_formula_u_figureset_symbol_triangle_isoceles_making.ml";;

*)

let nam_cod = "Camlline_formula_u_figureset_symbol_triangle_isoceles_making.ml";;

let nam_dos = "figureset";;
let nam_cof = "value_alone";;
let nam_enp = "triangle_isoceles";;
let nam_cat = "symbol";;
let nam_usf = "Implementation_for_symbol";;

let sym_dos = Domainset_symbol_v.make nam_dos;;
let idx_dos = Domainset_symbol_v.list_index_of_domainset_symbol sym_dos;;
let soi_dos = Sole_index_v.make idx_dos [];;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_register_v.store soi_dos gss_dos;;
let tag_dos = Tag_v.make sym_dos soi_dos;;

test_number 1 (
tag_dos
(* : Domainset_symbol_t.domainset_symbol Tag_t.tag *)
= 
(Domainset_symbol_t.Figureset, [2])
);;

let tag_cat_l = Domainset_formula_v.category_tag_list_off_domainset_tag tag_dos;;

test_number 2 (
tag_cat_l
  =
  [(Category_symbol_t.Any, [1; 2]);
   (Category_symbol_t.Formula, [2; 2]);
   (Category_symbol_t.Mark, [3; 2]);
   (Category_symbol_t.Path, [4; 2]);
   (Category_symbol_t.Property, [5; 2]);
   (Category_symbol_t.Provider, [6; 2]);
   (Category_symbol_t.Symbol, [7; 2]);
   (Category_symbol_t.Tag, [8; 2]);
   (Category_symbol_t.Value, [9; 2]);
   (Category_symbol_t.Empty, [10; 2])]
);;

let sel_cat = (fun c -> Category_symbol_v.name c = nam_cat);;
let tag_cat = Doublet_list_v.find_if_left sel_cat tag_cat_l;;

test_number 3 (
tag_cat
(* : Category_symbol_v.Category_symbol_t.category_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Category_symbol_t.Symbol, [7; 2])
);;

let tag_ent_l = Category_formula_v.entity_tag_list_off_category_tag tag_cat;;

test_number 4 (
tag_ent_l 
(* : Entity_proper_tag_t.entity_proper_tag list *)
=
  [(Entity_symbol_t.Entity_proper "figureset", [1; 7; 2]);
   (Entity_symbol_t.Entity_proper "triangle", [2; 7; 2]);
   (Entity_symbol_t.Entity_proper "triangle_isoceles", [3; 7; 2]);
   (Entity_symbol_t.Entity_proper "triangle_scalene", [4; 7; 2]);
   (Entity_symbol_t.Entity_proper "coordinate", [5; 7; 2]);
   (Entity_symbol_t.Entity_proper "coordinate_cartesian", [6; 7; 2]);
   (Entity_symbol_t.Entity_proper "coordinate_cylindrical", [7; 7; 2]);
   (Entity_symbol_t.Entity_proper "coordinate_polar", [8; 7; 2]);
   (Entity_symbol_t.Entity_proper "coordinate_spherical", [9; 7; 2])]
);;

let sel_enp = (fun e -> Entity_symbol_v.string_off e = nam_enp)
let tag_enp = Doublet_list_v.find_if_left sel_enp tag_ent_l;;

test_number 5 (
tag_enp
(* : Entity_symbol_t.Entity_proper_symbol * Tag_t.Sole_index_t.sole_index *)
=
  (Entity_symbol_t.Entity_proper "triangle_isoceles", [3; 7; 2])
);;

let sym_enp = Tag_v.symbol_off_tag tag_enp;;
let sym_cat = Tag_v.symbol_off_tag tag_cat;;
let tri_enp = (sym_enp, sym_cat, sym_dos) ;;
let sym_ent_l = Entity_topson_symbol_list_by_entity_tritup_provider_v.provide tri_enp;;

test_number 6 (
 sym_ent_l 
(* :  list *)
=
  [Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare
        "triangle_isoceles_equilateral"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare
        "triangle_isoceles_right"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare
        "triangle_isoceles_acute"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare
        "triangle_isoceles_obtuse"))]
);;

let tag_cof_l = Entity_formula_v.contentfile_tag_list_off_entity_tag tag_enp;;
let sel_cof = (fun c -> Contentfile_symbol_v.name c = nam_cof);;
let tag_cof = Doublet_list_v.find_if_left sel_cof tag_cof_l;;

test_number 7 (
tag_cof
=
(Contentfile_symbol_t.Value_alone, [2; 3; 7; 2])
);;

let tag_usf_l = Contentfile_formula_v.usagefile_tag_list_off_contentfile_tag tag_cof;;
let sel_usf = (fun u -> Usagefile_symbol_v.name u = nam_usf);;
let tag_usf = Doublet_list_v.find_if_left sel_usf tag_usf_l;;

test_number 8 (
tag_usf
  =
  (Usagefile_symbol_t.Usagefile_implementation_symbol
    Usagefile_implementation_symbol_t.Implementation_for_symbol,
   [1; 2; 3; 7; 2])
);;

let tag_ite_l = Usagefile_formula_v.item_tag_list_off_usagefile_tag tag_usf;;

test_number 9 (
 tag_ite_l
(* : Item_symbol_t.item_symbol Tag_t.tag list *)
=
  [(Item_symbol_t.Item_only_top_symbol
     (Item_only_top_symbol_t.Item_only_top_for_any_symbol
       Item_only_top_for_any_symbol_t.Heading),
    [1; 1; 2; 3; 7; 2]);
   (Item_symbol_t.Item_only_top_symbol
     (Item_only_top_symbol_t.Item_only_top_for_any_symbol
       Item_only_top_for_any_symbol_t.Documenting),
    [2; 1; 2; 3; 7; 2]);
   (Item_symbol_t.Item_all_topsons_symbol
     (Item_all_topsons_symbol_t.Item_all_topsons_for_symbol_symbol
       Item_all_topsons_for_symbol_symbol_t.Naming_for_symbol),
    [3; 1; 2; 3; 7; 2]);
   (Item_symbol_t.Item_all_topsons_symbol
     (Item_all_topsons_symbol_t.Item_all_topsons_for_symbol_symbol
       Item_all_topsons_for_symbol_symbol_t.String_offing_for_symbol),
    [4; 1; 2; 3; 7; 2]);
   (Item_symbol_t.Item_only_top_symbol
     (Item_only_top_symbol_t.Item_only_top_for_symbol_symbol
       Item_only_top_for_symbol_symbol_t.Longnaming_for_symbol),
    [5; 1; 2; 3; 7; 2]);
   (Item_symbol_t.Item_only_top_symbol
     (Item_only_top_symbol_t.Item_only_top_for_symbol_symbol
       Item_only_top_for_symbol_symbol_t.Fullnaming_for_symbol),
    [6; 1; 2; 3; 7; 2]);
   (Item_symbol_t.Item_each_topson_notleaf_symbol
     (Item_each_topson_notleaf_symbol_t.Item_each_topson_notleaf_for_symbol_symbol
       Item_each_topson_notleaf_for_symbol_symbol_t.Extracting_topson_for_symbol),
    [7; 1; 2; 3; 7; 2]);
   (Item_symbol_t.Item_each_grandson_notleaf_symbol
     (Item_each_grandson_notleaf_symbol_t.Item_each_grandson_notleaf_for_symbol_symbol
       Item_each_grandson_notleaf_for_symbol_symbol_t.Extracting_grandson_for_symbol),
    [8; 1; 2; 3; 7; 2]);
   (Item_symbol_t.Item_each_topson_notleaf_symbol
     (Item_each_topson_notleaf_symbol_t.Item_each_topson_notleaf_for_symbol_symbol
       Item_each_topson_notleaf_for_symbol_symbol_t.Querying_topson_for_symbol),
    [9; 1; 2; 3; 7; 2]);
   (Item_symbol_t.Item_each_grandson_notleaf_symbol
     (Item_each_grandson_notleaf_symbol_t.Item_each_grandson_notleaf_for_symbol_symbol
       Item_each_grandson_notleaf_for_symbol_symbol_t.Querying_grandson_for_symbol),
    [10; 1; 2; 3; 7; 2]);
   (Item_symbol_t.Item_each_topson_notleaf_symbol
     (Item_each_topson_notleaf_symbol_t.Item_each_topson_notleaf_for_symbol_symbol
       Item_each_topson_notleaf_for_symbol_symbol_t.Upgrading_topson_for_symbol),
    [11; 1; 2; 3; 7; 2]);
   (Item_symbol_t.Item_each_grandson_notleaf_symbol
     (Item_each_grandson_notleaf_symbol_t.Item_each_grandson_notleaf_for_symbol_symbol
       Item_each_grandson_notleaf_for_symbol_symbol_t.Upgrading_grandson_for_symbol),
    [12; 1; 2; 3; 7; 2]);
   (Item_symbol_t.Item_each_topson_leaf_symbol
     (Item_each_topson_leaf_symbol_t.Item_each_topson_leaf_for_symbol_symbol
       Item_each_topson_leaf_for_symbol_symbol_t.Abbreviating_topson_for_symbol),
    [13; 1; 2; 3; 7; 2]);
   (Item_symbol_t.Item_each_grandson_leaf_symbol
     (Item_each_grandson_leaf_symbol_t.Item_each_grandson_leaf_for_symbol_symbol
       Item_each_grandson_leaf_for_symbol_symbol_t.Abbreviating_grandson_for_symbol),
    [14; 1; 2; 3; 7; 2]);
   (Item_symbol_t.Item_all_topsons_symbol
     (Item_all_topsons_symbol_t.Item_all_topsons_for_symbol_symbol
       Item_all_topsons_for_symbol_symbol_t.Making_for_symbol),
    [15; 1; 2; 3; 7; 2]);
   (Item_symbol_t.Item_only_top_symbol
     (Item_only_top_symbol_t.Item_only_top_for_any_symbol
       Item_only_top_for_any_symbol_t.Ending),
    [16; 1; 2; 3; 7; 2])]
);;

let for_usf = Usagefile_formula_v.retrieve tag_usf;;
test_number 10 (
for_usf 
  =
  Usagefile_formula_t.Usagefile_implementation_formula
   (Usagefile_implementation_formula_t.Implementation_for_symbol tag_ite_l)
);;

(* (\** {6 Making} *\) *)

(* let name = function *)
(*   | Triangle_isoceles_symbol_t.Triangle_isoceles_equilateral -> "Triangle_isoceles_equilateral" *)
(*   | Triangle_isoceles_symbol_t.Triangle_isoceles_right -> "Triangle_isoceles_right" *)
(*   | Triangle_isoceles_symbol_t.Triangle_isoceles_acute -> "Triangle_isoceles_acute" *)
(*   | Triangle_isoceles_symbol_t.Triangle_isoceles_obtuse -> "Triangle_isoceles_obtuse" *)
(* ;; *)

let nam_ite = "making_for_symbol";;
let sel_ite = (fun i -> Item_symbol_v.name i = nam_ite);;
let tag_ite = Doublet_list_v.find_if_left sel_ite tag_ite_l;; 

test_number 11 (
tag_ite
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
  (Item_symbol_t.Item_all_topsons_symbol
    (Item_all_topsons_symbol_t.Item_all_topsons_for_symbol_symbol
      Item_all_topsons_for_symbol_symbol_t.Making_for_symbol),
   [15; 1; 2; 3; 7; 2])
);;

let tag_cap_l = Item_formula_v.camlparagraph_tag_list_off_item_tag tag_ite;;

test_number 12 (
tag_cap_l
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
=
  [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       Camlparagraph_for_any_comment_symbol_t.Item_title),
    [1; 15; 1; 2; 3; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
         Camlparagraph_for_symbol_let_argument_symbol_t.Let_make_of_topson_leaf_nam_s_equal_for_symbol)),
    [2; 15; 1; 2; 3; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
         Camlparagraph_for_symbol_let_argument_symbol_t.Let_make_of_topson_notleaf_nam_s_equal_for_symbol)),
    [3; 15; 1; 2; 3; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
         Camlparagraph_for_symbol_let_argument_symbol_t.Let_make_nam_s_equal_for_symbol)),
    [4; 15; 1; 2; 3; 7; 2])]
);;

let for_ite = Item_formula_v.retrieve tag_ite;;

test_number 13 (
for_ite
=
  Item_formula_t.Item_all_topsons_formula
   (Item_all_topsons_formula_t.Item_all_topsons_for_symbol_formula
     (Item_all_topsons_for_symbol_formula_t.Making_for_symbol
	tag_cap_l ))
);;

(* 2 Camlparagraph_for_symbol_let_match_symbol_t.Let_name_equal_function_for_symbol *)
(* let make_of_topson_leaf nam s = *)
(*   let nam_low = String.lowercase nam in *)
(*   match nam_low with *)
(*   | "triangle_isoceles_equilateral" -> triangle_isoceles_equilateral *)
(*   | "triangle_isoceles_acute" -> triangle_isoceles_acute *)
(*   | "triangle_isoceles_right" -> triangle_isoceles_right *)
(*   | "triangle_isoceles_obtuse" -> triangle_isoceles_obtuse *)
(*   | _ -> *)
(*   |  failwith "Not_a_topson_leaf:Triangle_isoceles_symbol_v.ml:make_of_topson_leaf" *)
(* ;; *)

let idx_cap = 2;;
let tag_cap = List.nth tag_cap_l (idx_cap-1);;

test_number 14 (
tag_cap
=
  (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
    (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
      (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
        Camlparagraph_for_symbol_let_argument_symbol_t.Let_make_of_topson_leaf_nam_s_equal_for_symbol)),
   [2; 15; 1; 2; 3; 7; 2])
);;

let tag_sec_l = Camlparagraph_formula_v.section_tag_list_off_camlparagraph_tag tag_cap;;

test_number 15 (
tag_sec_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
  [(Section_symbol_t.Section_for_symbol_symbol
     (Section_for_symbol_symbol_t.Section_for_symbol_header_symbol
       (Section_for_symbol_header_symbol_t.Section_for_symbol_header_constant_symbol
         Section_for_symbol_header_constant_symbol_t.Let_make_of_topson_leaf_nam_s_equal)),
    [1; 2; 15; 1; 2; 3; 7; 2]);
   (Section_symbol_t.Section_for_symbol_symbol
     (Section_for_symbol_symbol_t.Section_for_symbol_body_symbol
       (Section_for_symbol_body_symbol_t.Section_for_symbol_body_son_symbol
         (Section_for_symbol_body_son_symbol_t.Section_for_symbol_body_son_bare_symbol
           Section_for_symbol_body_son_bare_symbol_t.Make_ecstring_pattern_bare_for_symbol))),
    [2; 2; 15; 1; 2; 3; 7; 2]);
   (Section_symbol_t.Section_for_symbol_symbol
     (Section_for_symbol_symbol_t.Section_for_symbol_body_symbol
       (Section_for_symbol_body_symbol_t.Section_for_symbol_body_son_symbol
         (Section_for_symbol_body_son_symbol_t.Section_for_symbol_body_son_ofstring_symbol
           Section_for_symbol_body_son_ofstring_symbol_t.Make_ecstring_pattern_ofstring_for_symbol))),
    [3; 2; 15; 1; 2; 3; 7; 2]);
   (Section_symbol_t.Section_for_symbol_symbol
     (Section_for_symbol_symbol_t.Section_for_symbol_footer_symbol
       (Section_for_symbol_footer_symbol_t.Section_for_symbol_footer_top_symbol
         Section_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_leaf)),
    [4; 2; 15; 1; 2; 3; 7; 2])]
);; 

(* 1 Section_for_symbol_header_constant_symbol_t.Let_make_of_topson_leaf_nam_s_equal *)
(* let make_of_topson_leaf nam s = *)
(*   let nam_low = String.lowercase nam in *)
(*   match nam_low with *)

let idx_sec = 1;;
let tag_sec = List.nth tag_sec_l (idx_sec-1);;

test_number 16 (
tag_sec 
(* : Section_symbol_t.section_symbol Tag_t.tag *)
=
  (Section_symbol_t.Section_for_symbol_symbol
    (Section_for_symbol_symbol_t.Section_for_symbol_header_symbol
      (Section_for_symbol_header_symbol_t.Section_for_symbol_header_constant_symbol
        Section_for_symbol_header_constant_symbol_t.Let_make_of_topson_leaf_nam_s_equal)),
   [1; 2; 15; 1; 2; 3; 7; 2])
);;

let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec;; 

test_number 17 (
tag_gro_l 
(* : Group_symbol_t.group_symbol Tag_t.tag list *)
 =
  [(Group_symbol_t.Group_for_symbol_symbol
     (Group_for_symbol_symbol_t.Group_for_symbol_header_symbol
       (Group_for_symbol_header_symbol_t.Group_for_symbol_header_constant_symbol
         Group_for_symbol_header_constant_symbol_t.Let_make_of_topson_leaf_nam_s_equal)),
    [1; 1; 2; 15; 1; 2; 3; 7; 2])]
);;

let idx_gro = 1;;
let tag_gro = List.nth tag_gro_l (idx_gro-1);;

test_number 18 (
tag_gro 
(* : Group_symbol_t.group_symbol Tag_t.tag *)
=
List.nth tag_gro_l 0
);;

(* 1 Group_for_symbol_header_constant_symbol_t.Let_make_of_topson_leaf_nam_s_equal *)
(* let make_of_topson_leaf nam s = *)
(*   let nam_low = String.lowercase nam in *)
(*   match nam_low with *)

let tag_cal_l = Group_formula_v.camlline_tag_list_off_group_tag tag_gro;; 

test_number 19 (
tag_cal_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
  [(Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_function_symbol
       Camlline_constant_function_symbol_t.Let_make_of_topson_leaf_nam_s_equal),
    [1; 1; 1; 2; 15; 1; 2; 3; 7; 2]);
   (Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_function_symbol
       Camlline_constant_function_symbol_t.Space_let_nam_low_equal_string_lowercase_nam_in),
    [2; 1; 1; 2; 15; 1; 2; 3; 7; 2]);
   (Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_function_symbol
       Camlline_constant_function_symbol_t.Space_match_nam_low_with),
    [3; 1; 1; 2; 15; 1; 2; 3; 7; 2])]
);;

let idx_cal = 1;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 20 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
= 
List.nth tag_cal_l 0
);;

let soi_cal = Tag_v.sole_index_off_tag tag_cal;;
let idx_cap = List.hd (Generatorset_symbol_by_sole_index_provider_v.camlparagraph_sole_index_off_sole_index soi_cal);;

(* 1 Camlline_constant_function_symbol_t.Let_name_equal_function *)
(* let name = function *)

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;

test_number 21 (
tag_ent_l 
(* :  Tag_t.tag list *)
=
  []
);;

(* 2 Section_for_symbol_body_son_top_symbol_t.Pipe_ecstring_arrow_ec *)
(*   | "triangle_isoceles_equilateral" -> triangle_isoceles_equilateral *)
(*   | "triangle_isoceles_acute" -> triangle_isoceles_acute *)
(*   | "triangle_isoceles_right" -> triangle_isoceles_right *)
(*   | "triangle_isoceles_obtuse" -> triangle_isoceles_obtuse *)

let idx_sec = 2;;
let tag_sec = List.nth tag_sec_l (idx_sec-1);;

test_number 22 (
tag_sec 
(* : Section_symbol_t.section_symbol Tag_t.tag *)
=
  (Section_symbol_t.Section_for_symbol_symbol
    (Section_for_symbol_symbol_t.Section_for_symbol_body_symbol
      (Section_for_symbol_body_symbol_t.Section_for_symbol_body_son_symbol
        (Section_for_symbol_body_son_symbol_t.Section_for_symbol_body_son_bare_symbol
          Section_for_symbol_body_son_bare_symbol_t.Make_ecstring_pattern_bare_for_symbol))),
   [2; 2; 15; 1; 2; 3; 7; 2])
);;

let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec;; 

test_number 23 (
tag_gro_l 
(* : Group_symbol_t.group_symbol Tag_t.tag list *)
 =
  [(Group_symbol_t.Group_for_symbol_symbol
     (Group_for_symbol_symbol_t.Group_for_symbol_body_symbol
       (Group_for_symbol_body_symbol_t.Group_for_symbol_body_son_symbol
         Group_for_symbol_body_son_symbol_t.Pipe_ecstring_arrow_ec)),
    [1; 2; 2; 15; 1; 2; 3; 7; 2]);
   (Group_symbol_t.Group_for_symbol_symbol
     (Group_for_symbol_symbol_t.Group_for_symbol_body_symbol
       (Group_for_symbol_body_symbol_t.Group_for_symbol_body_son_symbol
         Group_for_symbol_body_son_symbol_t.Pipe_ecstring_arrow_ec)),
    [2; 2; 2; 15; 1; 2; 3; 7; 2]);
   (Group_symbol_t.Group_for_symbol_symbol
     (Group_for_symbol_symbol_t.Group_for_symbol_body_symbol
       (Group_for_symbol_body_symbol_t.Group_for_symbol_body_son_symbol
         Group_for_symbol_body_son_symbol_t.Pipe_ecstring_arrow_ec)),
    [3; 2; 2; 15; 1; 2; 3; 7; 2]);
   (Group_symbol_t.Group_for_symbol_symbol
     (Group_for_symbol_symbol_t.Group_for_symbol_body_symbol
       (Group_for_symbol_body_symbol_t.Group_for_symbol_body_son_symbol
         Group_for_symbol_body_son_symbol_t.Pipe_ecstring_arrow_ec)),
    [4; 2; 2; 15; 1; 2; 3; 7; 2])]
);;

(* 1 Group_for_symbol_body_son_symbol_t.Pipe_ecstring_arrow_ec *)
(*   | "triangle_isoceles_equilateral" -> triangle_isoceles_equilateral *)

let idx_gro = 1;;
let tag_gro = List.nth tag_gro_l (idx_gro-1);;

test_number 24 (
tag_gro 
(* : Group_symbol_t.group_symbol Tag_t.tag *)
= 
  (Group_symbol_t.Group_for_symbol_symbol
    (Group_for_symbol_symbol_t.Group_for_symbol_body_symbol
      (Group_for_symbol_body_symbol_t.Group_for_symbol_body_son_symbol
        Group_for_symbol_body_son_symbol_t.Pipe_ecstring_arrow_ec)),
   [1; 2; 2; 15; 1; 2; 3; 7; 2])
);;

let tag_cal_l = Group_formula_v.camlline_tag_list_off_group_tag tag_gro;; 

test_number 25 (
tag_cal_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
  =
  [(Camlline_symbol_t.Camlline_for_symbol_symbol
     (Camlline_for_symbol_symbol_t.Camlline_for_symbol_uno_symbol
       (Camlline_for_symbol_uno_symbol_t.Camlline_for_symbol_uno_current_symbol
         Camlline_for_symbol_uno_current_symbol_t.Pipe_ecstring_arrow_ec)),
    [1; 1; 2; 2; 15; 1; 2; 3; 7; 2])]
);;

(* 1 Camlline_for_symbol_uno_current_symbol_t.Pipe_ecstring_arrow_ec *)
(*   | "triangle_isoceles_equilateral" -> triangle_isoceles_equilateral *)

let idx_cal = 1;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 26 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
= 
List.nth tag_cal_l 0
);;

let soi_cal = Tag_v.sole_index_off_tag tag_cal;;
let idx_cap = List.hd (Generatorset_symbol_by_sole_index_provider_v.camlparagraph_sole_index_off_sole_index soi_cal);;
let sym_cdf = Camlline_for_any_duo_son_top_symbol_t.Pipe_et_any_tdot_es_any_space_ac_as_arrow;;
let tag_cdf = Tag_v.make sym_cdf soi_cal;;
  let dec_cdf = 
    Camlline_for_any_duo_son_top_tag_v.camlline_for_any_duo_son_top_dectup_off_camlline_for_any_duo_son_top_tag 
      tag_cdf 
 ;;

let sym_ent_l = Tools_ignr_v.entity_topson_symbol_list_of_dectup dec_cdf;;

let sym_ent_cur = 
    Tools_fgnr_v.entity_current_symbol_of_camlline_dectup_of_sole_index 
      dec_cdf 
      soi_cal 
 ;;

(* | Triangle_isoceles_symbol_t.Triangle_isoceles_equilateral -> "Triangle_isoceles_equilateral" *)

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;

test_number 27 (
tag_ent_l 
(* :  Tag_t.tag list *)
=
  [(Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Bare
         "triangle_isoceles_equilateral")),
    [1; 1; 1; 2; 2; 15; 1; 2; 3; 7; 2])]
);;

(* 4 Group_for_symbol_body_son_symbol_t.Pipe_ecstring_arrow_ec *)
(*   | "triangle_isoceles_obtuse" -> triangle_isoceles_obtuse *)

let idx_gro = 4;;
let tag_gro = List.nth tag_gro_l (idx_gro-1);;

test_number 28 (
tag_gro 
(* : Group_symbol_t.group_symbol Tag_t.tag *)
= 
  (Group_symbol_t.Group_for_symbol_symbol
    (Group_for_symbol_symbol_t.Group_for_symbol_body_symbol
      (Group_for_symbol_body_symbol_t.Group_for_symbol_body_son_symbol
        Group_for_symbol_body_son_symbol_t.Pipe_ecstring_arrow_ec)),
   [4; 2; 2; 15; 1; 2; 3; 7; 2])
);;

let tag_cal_l = Group_formula_v.camlline_tag_list_off_group_tag tag_gro;; 

test_number 29 (
tag_cal_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
  =
  [(Camlline_symbol_t.Camlline_for_symbol_symbol
     (Camlline_for_symbol_symbol_t.Camlline_for_symbol_uno_symbol
       (Camlline_for_symbol_uno_symbol_t.Camlline_for_symbol_uno_current_symbol
         Camlline_for_symbol_uno_current_symbol_t.Pipe_ecstring_arrow_ec)),
    [1; 4; 2; 2; 15; 1; 2; 3; 7; 2])]
);;

(* 1 Camlline_for_symbol_uno_current_symbol_t.Pipe_ecstring_arrow_ec *)
(*   | "triangle_isoceles_obtuse" -> triangle_isoceles_obtuse *)

let idx_cal = 1;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 30 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
= 
List.nth tag_cal_l 0
);;

let soi_cal = Tag_v.sole_index_off_tag tag_cal;;
let idx_cap = List.hd (Generatorset_symbol_by_sole_index_provider_v.camlparagraph_sole_index_off_sole_index soi_cal);;
let sym_cdf = Camlline_for_any_duo_son_top_symbol_t.Pipe_et_any_tdot_es_any_space_ac_as_arrow;;
let tag_cdf = Tag_v.make sym_cdf soi_cal;;
  let dec_cdf = 
    Camlline_for_any_duo_son_top_tag_v.camlline_for_any_duo_son_top_dectup_off_camlline_for_any_duo_son_top_tag 
      tag_cdf 
 ;;

let sym_ent_l = Tools_ignr_v.entity_topson_symbol_list_of_dectup dec_cdf;;

let sym_ent_cur = 
    Tools_fgnr_v.entity_current_symbol_of_camlline_dectup_of_sole_index 
      dec_cdf 
      soi_cal 
 ;;

(* | Triangle_symbol_t.Triangle_scalene_symbol sym_tis -> *)

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;

test_number 31 (
tag_ent_l 
(* :  Tag_t.tag list *)
=
  [(Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Bare
         "triangle_isoceles_obtuse")),
    [1; 1; 4; 2; 2; 15; 1; 2; 3; 7; 2])]
);;

(* 3 Section_for_symbol_body_son_top_symbol_t.Pipe_ecstring_arrow_ec *)
(* _ofstring_ empty *)

let idx_sec = 3;;
let tag_sec = List.nth tag_sec_l (idx_sec-1);;

test_number 32 (
tag_sec 
(* : Section_symbol_t.section_symbol Tag_t.tag *)
=
  (Section_symbol_t.Section_for_symbol_symbol
    (Section_for_symbol_symbol_t.Section_for_symbol_body_symbol
      (Section_for_symbol_body_symbol_t.Section_for_symbol_body_son_symbol
        (Section_for_symbol_body_son_symbol_t.Section_for_symbol_body_son_ofstring_symbol
          Section_for_symbol_body_son_ofstring_symbol_t.Make_ecstring_pattern_ofstring_for_symbol))),
   [3; 2; 15; 1; 2; 3; 7; 2])
);;

let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec;; 

test_number 33 (
tag_gro_l 
(* : Group_symbol_t.group_symbol Tag_t.tag list *)
 =
  []
);;

(* 4 Section_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_leaf *)
(*   | _ -> *)
(*   |  failwith "Not_a_topson_leaf:Triangle_isoceles_symbol_v.ml:make_of_topson_leaf" *)
(* ;; *)

let idx_sec = 4;;
let tag_sec = List.nth tag_sec_l (idx_sec-1);;

test_number 34 (
tag_sec 
(* : Section_symbol_t.section_symbol Tag_t.tag *)
=
  (Section_symbol_t.Section_for_symbol_symbol
    (Section_for_symbol_symbol_t.Section_for_symbol_footer_symbol
      (Section_for_symbol_footer_symbol_t.Section_for_symbol_footer_top_symbol
        Section_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_leaf)),
   [4; 2; 15; 1; 2; 3; 7; 2])
);;

let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec;; 

test_number 35 (
tag_gro_l 
(* : Group_symbol_t.group_symbol Tag_t.tag list *)
 =
  [(Group_symbol_t.Group_for_symbol_symbol
     (Group_for_symbol_symbol_t.Group_for_symbol_footer_symbol
       (Group_for_symbol_footer_symbol_t.Group_for_symbol_footer_top_symbol
         Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_leaf)),
    [1; 4; 2; 15; 1; 2; 3; 7; 2])]
);;

(* 1 Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_leaf *)
(*   | _ -> *)
(*   |  failwith "Not_a_topson_leaf:Triangle_isoceles_symbol_v.ml:make_of_topson_leaf" *)
(* ;; *)

let idx_gro = 1;;
let tag_gro = List.nth tag_gro_l (idx_gro-1);;

test_number 36 (
tag_gro 
(* : Group_symbol_t.group_symbol Tag_t.tag *)
= 
List.nth tag_gro_l 0
);;

let tag_cal_l = Group_formula_v.camlline_tag_list_off_group_tag tag_gro;; 

test_number 37 (
tag_cal_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
  =
  [(Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_function_symbol
       Camlline_constant_function_symbol_t.Pipe_underscore_arrow),
    [1; 1; 4; 2; 15; 1; 2; 3; 7; 2]);
   (Camlline_symbol_t.Camlline_for_symbol_symbol
     (Camlline_for_symbol_symbol_t.Camlline_for_symbol_uno_symbol
       (Camlline_for_symbol_uno_symbol_t.Camlline_for_symbol_uno_top_symbol
         Camlline_for_symbol_uno_top_symbol_t.Space_failwith_not_a_topson_notleaf_et_symbol_make)),
    [2; 1; 4; 2; 15; 1; 2; 3; 7; 2]);
   (Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
       Camlline_constant_pervasive_symbol_t.Double_semicolon),
    [3; 1; 4; 2; 15; 1; 2; 3; 7; 2])]
);;

(* 1 Camlline_constant_function_symbol_t.Pipe_underscore_arrow *)
(*   | _ -> *)

let idx_cal = 1;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 38 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
= 
  (Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_function_symbol
      Camlline_constant_function_symbol_t.Pipe_underscore_arrow),
   [1; 1; 4; 2; 15; 1; 2; 3; 7; 2])
);;

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;

test_number 39 (
tag_ent_l 
(* :  Tag_t.tag list *)
=
  []
);;

(* 2 Camlline_for_symbol_uno_top_symbol_t.Space_failwith_not_a_topson_notleaf_et_symbol_make *)
(*   |  failwith "Not_a_topson_leaf:Triangle_isoceles_symbol_v.ml:make_of_topson_leaf" *)

let idx_cal = 2;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 40 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
= 
   (Camlline_symbol_t.Camlline_for_symbol_symbol
     (Camlline_for_symbol_symbol_t.Camlline_for_symbol_uno_symbol
       (Camlline_for_symbol_uno_symbol_t.Camlline_for_symbol_uno_top_symbol
         Camlline_for_symbol_uno_top_symbol_t.Space_failwith_not_a_topson_notleaf_et_symbol_make)),
    [2; 1; 4; 2; 15; 1; 2; 3; 7; 2]);
);;

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;

test_number 41 (
tag_ent_l 
(* :  Tag_t.tag list *)
=
  [(
     (Entity_symbol_t.Entity_proper "triangle_isoceles"),
    [1; 2; 1; 4; 2; 15; 1; 2; 3; 7; 2])]
);;

(* 3 Camlline_for_symbol_uno_top_symbol_t.Space_failwith_not_a_topson_notleaf_et_symbol_make *)
(* ;; *)

let idx_cal = 3;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 42 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
= 
  (Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
      Camlline_constant_pervasive_symbol_t.Double_semicolon),
   [3; 1; 4; 2; 15; 1; 2; 3; 7; 2])
);;

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;

test_number 43 (
tag_ent_l 
(* :  Tag_t.tag list *)
=
  []
);;

