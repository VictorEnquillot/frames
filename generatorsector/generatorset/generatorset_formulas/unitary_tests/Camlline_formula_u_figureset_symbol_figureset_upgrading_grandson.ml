open Make_test_v;;

testing "Camlline_formula_v with
   Camlline_formula_u_figureset_symbol_figureset_upgrading_grandson.ml";;

(* toplevel 
   #use "Camlline_formula_u_figureset_symbol_figureset_upgrading_grandson.ml";;

*)

let nam_cod = "Camlline_formula_u_figureset_symbol_figureset_upgrading_grandson.ml";;

let nam_dos = "figureset";;
let nam_cof = "value_alone";;
let nam_enp = "figureset";;
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

let sym_cat = Tag_v.symbol_off_tag tag_cat;;
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
(Entity_symbol_t.Entity_proper "figureset", [1; 7; 2])
);;

let sym_enp = Tag_v.symbol_off_tag tag_enp;;
let tri_enp = Triplet_v.make sym_enp sym_cat sym_dos;;
let sym_ent_gsn_l = Entity_grandson_notleaf_symbol_list_by_entity_tritup_provider_v.provide tri_enp;;

test_number 6 (
sym_ent_gsn_l
(* :  list *)
=
 [
    (Entity_symbol_t.Entity_proper "triangle_isoceles");
   
    (Entity_symbol_t.Entity_proper "triangle_scalene");
   
    (Entity_symbol_t.Entity_proper "coordinate_cartesian");
   
    (Entity_symbol_t.Entity_proper "coordinate_cylindrical");
   
    (Entity_symbol_t.Entity_proper "coordinate_polar");
   
    (Entity_symbol_t.Entity_proper "coordinate_spherical")]
);;

let tag_cof_l = Entity_formula_v.contentfile_tag_list_off_entity_tag tag_enp;;
let sel_cof = (fun c -> Contentfile_symbol_v.name c = nam_cof);;
let tag_cof = Doublet_list_v.find_if_left sel_cof tag_cof_l;;

test_number 7 (
tag_cof
=
(Contentfile_symbol_t.Value_alone, [2; 1; 7; 2])
);;

let tag_usf_l = Contentfile_formula_v.usagefile_tag_list_off_contentfile_tag tag_cof;;
let sel_usf = (fun u -> Usagefile_symbol_v.name u = nam_usf);;
let tag_usf = Doublet_list_v.find_if_left sel_usf tag_usf_l;;

test_number 8 (
tag_usf
  =
  (Usagefile_symbol_t.Usagefile_implementation_symbol
    Usagefile_implementation_symbol_t.Implementation_for_symbol,
   [1; 2; 1; 7; 2])
);;

let tag_ite_l = Usagefile_formula_v.item_tag_list_off_usagefile_tag tag_usf;;

test_number 9 (
 tag_ite_l
(* : Item_symbol_t.item_symbol Tag_t.tag list *)
=
  [(Item_symbol_t.Item_only_top_symbol
     (Item_only_top_symbol_t.Item_only_top_for_any_symbol
       Item_only_top_for_any_symbol_t.Heading),
    [1; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_only_top_symbol
     (Item_only_top_symbol_t.Item_only_top_for_any_symbol
       Item_only_top_for_any_symbol_t.Documenting),
    [2; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_all_topsons_symbol
     (Item_all_topsons_symbol_t.Item_all_topsons_for_symbol_symbol
       Item_all_topsons_for_symbol_symbol_t.Naming_for_symbol),
    [3; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_all_topsons_symbol
     (Item_all_topsons_symbol_t.Item_all_topsons_for_symbol_symbol
       Item_all_topsons_for_symbol_symbol_t.String_offing_for_symbol),
    [4; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_only_top_symbol
     (Item_only_top_symbol_t.Item_only_top_for_symbol_symbol
       Item_only_top_for_symbol_symbol_t.Longnaming_for_symbol),
    [5; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_only_top_symbol
     (Item_only_top_symbol_t.Item_only_top_for_symbol_symbol
       Item_only_top_for_symbol_symbol_t.Fullnaming_for_symbol),
    [6; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_topson_notleaf_symbol
     (Item_each_topson_notleaf_symbol_t.Item_each_topson_notleaf_for_symbol_symbol
       Item_each_topson_notleaf_for_symbol_symbol_t.Extracting_topson_for_symbol),
    [7; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_grandson_notleaf_symbol
     (Item_each_grandson_notleaf_symbol_t.Item_each_grandson_notleaf_for_symbol_symbol
       Item_each_grandson_notleaf_for_symbol_symbol_t.Extracting_grandson_for_symbol),
    [8; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_topson_notleaf_symbol
     (Item_each_topson_notleaf_symbol_t.Item_each_topson_notleaf_for_symbol_symbol
       Item_each_topson_notleaf_for_symbol_symbol_t.Querying_topson_for_symbol),
    [9; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_grandson_notleaf_symbol
     (Item_each_grandson_notleaf_symbol_t.Item_each_grandson_notleaf_for_symbol_symbol
       Item_each_grandson_notleaf_for_symbol_symbol_t.Querying_grandson_for_symbol),
    [10; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_topson_notleaf_symbol
     (Item_each_topson_notleaf_symbol_t.Item_each_topson_notleaf_for_symbol_symbol
       Item_each_topson_notleaf_for_symbol_symbol_t.Upgrading_topson_for_symbol),
    [11; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_grandson_notleaf_symbol
     (Item_each_grandson_notleaf_symbol_t.Item_each_grandson_notleaf_for_symbol_symbol
       Item_each_grandson_notleaf_for_symbol_symbol_t.Upgrading_grandson_for_symbol),
    [12; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_topson_leaf_symbol
     (Item_each_topson_leaf_symbol_t.Item_each_topson_leaf_for_symbol_symbol
       Item_each_topson_leaf_for_symbol_symbol_t.Abbreviating_topson_for_symbol),
    [13; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_grandson_leaf_symbol
     (Item_each_grandson_leaf_symbol_t.Item_each_grandson_leaf_for_symbol_symbol
       Item_each_grandson_leaf_for_symbol_symbol_t.Abbreviating_grandson_for_symbol),
    [14; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_all_topsons_symbol
     (Item_all_topsons_symbol_t.Item_all_topsons_for_symbol_symbol
       Item_all_topsons_for_symbol_symbol_t.Making_for_symbol),
    [15; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_only_top_symbol
     (Item_only_top_symbol_t.Item_only_top_for_any_symbol
       Item_only_top_for_any_symbol_t.Ending),
    [16; 1; 2; 1; 7; 2])]
);;

let for_usf = Usagefile_formula_v.retrieve tag_usf;;
test_number 10 (
for_usf 
  =
  Usagefile_formula_t.Usagefile_implementation_formula
   (Usagefile_implementation_formula_t.Implementation_for_symbol tag_ite_l)
);;

let nam_ite = "upgrading_grandson_for_symbol";;
let sel_ite = (fun i -> Item_symbol_v.name i = nam_ite);;
let tag_ite = Doublet_list_v.find_if_left sel_ite tag_ite_l;; 

test_number 11 (
tag_ite
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
  (Item_symbol_t.Item_each_grandson_notleaf_symbol
    (Item_each_grandson_notleaf_symbol_t.Item_each_grandson_notleaf_for_symbol_symbol
      Item_each_grandson_notleaf_for_symbol_symbol_t.Upgrading_grandson_for_symbol),
   [12; 1; 2; 1; 7; 2])
);;

let sym_cof = Tag_v.symbol_off_tag tag_cof;;
let sym_usf = Tag_v.symbol_off_tag tag_usf;;
let sym_ite = Tag_v.symbol_off_tag tag_ite;;

(* (\** {6 Upgrading_grandson_for_symbol} *\) *)

(* let triangle_isoceles_symbol_off_figureset_symbol sym_geo =  *)
(*   let sym_tri = triangle_symbol_off_figureset_symbol sym_geo in  *)
(*     Triangle_symbol_v.triangle_isoceles_symbol_off_triangle_symbol sym_tri *)
(* ;; idx_cap = 2 *) 

(* let triangle_scalene_symbol_off_figureset_symbol sym_geo =  *)
(*   let sym_tri = triangle_symbol_off_figureset_symbol sym_geo in  *)
(*     Triangle_symbol_v.triangle_scalene_symbol_off_triangle_symbol sym_tri *)
(* ;; idx_cap = 3 *)

(* let coordinate_cartesian_symbol_off_figureset_symbol sym_geo =  *)
(*   let sym_coo = coordinate_symbol_off_figureset_symbol sym_geo in  *)
(*     Coordinate_symbol_v.coordinate_cartesian_symbol_off_coordinate_symbol sym_coo *)
(* ;; idx_cap = 4 *)

(* let coordinate_cylindrical_symbol_off_figureset_symbol sym_geo =  *)
(*   let sym_coo = coordinate_symbol_off_figureset_symbol sym_geo in  *)
(*     Coordinate_symbol_v.coordinate_cylindrical_symbol_off_coordinate_symbol sym_coo *)
(* ;; idx_cap = 5 *)

(* let coordinate_polar_symbol_off_figureset_symbol sym_geo =  *)
(*   let sym_coo = coordinate_symbol_off_figureset_symbol sym_geo in  *)
(*     Coordinate_symbol_v.coordinate_polar_symbol_off_coordinate_symbol sym_coo *)
(* ;; idx_cap = 6 *)

(* let coordinate_spherical_symbol_off_figureset_symbol sym_geo =  *)
(*   let sym_coo = coordinate_symbol_off_figureset_symbol sym_geo in  *)
(*     Coordinate_symbol_v.coordinate_spherical_symbol_off_coordinate_symbol sym_coo *)
(* ;; idx_cap = 7 *)

let tag_cap_l = Item_formula_v.camlparagraph_tag_list_off_item_tag tag_ite;;

test_number 12 (
tag_cap_l
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
=
  [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       Camlparagraph_for_any_comment_symbol_t.Item_title),
    [1; 12; 1; 2; 1; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
         Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_grandson_symbol)),
    [2; 12; 1; 2; 1; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
         Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_grandson_symbol)),
    [3; 12; 1; 2; 1; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
         Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_grandson_symbol)),
    [4; 12; 1; 2; 1; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
         Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_grandson_symbol)),
    [5; 12; 1; 2; 1; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
         Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_grandson_symbol)),
    [6; 12; 1; 2; 1; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
         Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_grandson_symbol)),
    [7; 12; 1; 2; 1; 7; 2])]
);;

let for_ite = Item_formula_v.retrieve tag_ite;;

test_number 13 (
for_ite
=
 Item_formula_t.Item_each_grandson_notleaf_formula 
  (Item_each_grandson_notleaf_formula_t.Item_each_grandson_notleaf_for_symbol_formula
     (Item_each_grandson_notleaf_for_symbol_formula_t.Upgrading_grandson_for_symbol
	tag_cap_l ))
);;

(* 2 Camlparagraph_for_symbol_let_argument_symbol_t.Let_grandson_notleaf_symbol_off_top_symbol *)

let idx_cap = 2;;
let tag_cap = List.nth tag_cap_l (idx_cap-1);;

test_number 14 (
tag_cap
=
  (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
    (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
      (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
        Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_grandson_symbol)),
   [2; 12; 1; 2; 1; 7; 2])
);;

(* let figureset_symbol_of_triangle_isoceles_symbol sym_tis =  *)
(*   let sym_tri = Triangle_symbol_v.triangle_symbol_of_triangle_isoceles_symbol sym_tis in *)
(*     figureset_symbol_of_triangle_symbol sym_tri *)
(* ;; *)

let tag_sec_l = Camlparagraph_formula_v.section_tag_list_off_camlparagraph_tag tag_cap;;

test_number 15 (
tag_sec_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
  [(Section_symbol_t.Section_for_symbol_symbol
     (Section_for_symbol_symbol_t.Section_for_symbol_header_symbol
       (Section_for_symbol_header_symbol_t.Section_for_symbol_header_current_top_symbol
         Section_for_symbol_header_current_top_symbol_t.Let_top_symbol_of_grandson_symbol)),
    [1; 2; 12; 1; 2; 1; 7; 2]);
   (Section_symbol_t.Section_for_symbol_symbol
     (Section_for_symbol_symbol_t.Section_for_symbol_body_symbol
       (Section_for_symbol_body_symbol_t.Section_for_symbol_body_current_son_top_symbol
         Section_for_symbol_body_current_son_top_symbol_t.Upgrade_grandson_symbol)),
    [2; 2; 12; 1; 2; 1; 7; 2]);
   (Section_symbol_t.Section_for_any_symbol
     (Section_for_any_symbol_t.Section_for_any_footer_symbol
       (Section_for_any_footer_symbol_t.Section_for_any_footer_constant_symbol
         Section_for_any_footer_constant_symbol_t.Double_semicolon)),
    [3; 2; 12; 1; 2; 1; 7; 2])]
);; 

(* 1 Section_for_symbol_header_current_top_symbol_t.Let_grandson_notleaf_symbol_off_top_symbol)), *)

let idx_sec = 1;;
let tag_sec = List.nth tag_sec_l (idx_sec-1);;

test_number 16 (
tag_sec 
(* : Section_symbol_t.section_symbol Tag_t.tag *)
=
 (Section_symbol_t.Section_for_symbol_symbol
    (Section_for_symbol_symbol_t.Section_for_symbol_header_symbol
      (Section_for_symbol_header_symbol_t.Section_for_symbol_header_current_top_symbol
        Section_for_symbol_header_current_top_symbol_t.Let_top_symbol_of_grandson_symbol)),
   [1; 2; 12; 1; 2; 1; 7; 2])
);;

(* "let figureset_symbol_of_triangle_isoceles_symbol sym_tis ="  *)

let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec;; 

test_number 17 (
tag_gro_l 
(* : Group_symbol_t.group_symbol Tag_t.tag list *)
 =
  [(Group_symbol_t.Group_for_symbol_symbol
     (Group_for_symbol_symbol_t.Group_for_symbol_header_symbol
       (Group_for_symbol_header_symbol_t.Group_for_symbol_header_current_top_symbol
         Group_for_symbol_header_current_top_symbol_t.Let_top_symbol_of_grandson_symbol_argument_equal)),
    [1; 1; 2; 12; 1; 2; 1; 7; 2])]
);;

let idx_gro = 1;;
let tag_gro = List.nth tag_gro_l (idx_gro-1);;

test_number 18 (
tag_gro 
(* : Group_symbol_t.group_symbol Tag_t.tag *)
=
 (Group_symbol_t.Group_for_symbol_symbol
    (Group_for_symbol_symbol_t.Group_for_symbol_header_symbol
      (Group_for_symbol_header_symbol_t.Group_for_symbol_header_current_top_symbol
        Group_for_symbol_header_current_top_symbol_t.Let_top_symbol_of_grandson_symbol_argument_equal)),
   [1; 1; 2; 12; 1; 2; 1; 7; 2])
);;

(* 1 Group_for_symbol_header_current_top_symbol_t.Let_top_symbol_of_grandson_symbol_argument_equal *)
(* "let figureset_symbol_of_triangle_isoceles_symbol sym_tis ="  *)

let tag_cal_l = Group_formula_v.camlline_tag_list_off_group_tag tag_gro;; 

test_number 19 (
tag_cal_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
  [(Camlline_symbol_t.Camlline_for_any_symbol
     (Camlline_for_any_symbol_t.Camlline_for_any_duo_symbol
       (Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_current_top_symbol
         Camlline_for_any_duo_current_top_symbol_t.Let_et_any_of_ec_any_space_ac_ac_equal)),
    [1; 1; 1; 2; 12; 1; 2; 1; 7; 2])]
);;

let idx_cal = 1;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 20 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
= 
  (Camlline_symbol_t.Camlline_for_any_symbol
    (Camlline_for_any_symbol_t.Camlline_for_any_duo_symbol
      (Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_current_top_symbol
        Camlline_for_any_duo_current_top_symbol_t.Let_et_any_of_ec_any_space_ac_ac_equal)),
   [1; 1; 1; 2; 12; 1; 2; 1; 7; 2])
);;

let soi_cal = Tag_v.sole_index_off_tag tag_cal;;
let sym_cdf = Camlline_for_any_duo_current_top_symbol_t.Let_et_any_of_ec_any_space_ac_ac_equal;;

(* 1 Camlline_duo_current_top_symbol_t.Let_et_any_of_ec_any_space_ac_ac_equal *)

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;

test_number 21 (
tag_ent_l 
(* :  Tag_t.tag list *)
=
  [(
     (Entity_symbol_t.Entity_proper "triangle_isoceles"),
    [1; 1; 1; 1; 2; 12; 1; 2; 1; 7; 2]);
   (
     (Entity_symbol_t.Entity_proper "figureset"),
    [2; 1; 1; 1; 2; 12; 1; 2; 1; 7; 2])]
);;

(* 2 Section_for_symbol_body_current_son_top_symbol_t.Upgrade_grandson_symbol *)
(*   let sym_tri = Triangle_symbol_v.triangle_symbol_of_triangle_isoceles_symbol sym_tis in *)
(*     figureset_symbol_of_triangle_symbol sym_tri *)

let idx_sec = 2;;
let tag_sec = List.nth tag_sec_l (idx_sec-1);;

test_number 22 (
tag_sec 
(* : Section_symbol_t.section_symbol Tag_t.tag *)
=
  (Section_symbol_t.Section_for_symbol_symbol
    (Section_for_symbol_symbol_t.Section_for_symbol_body_symbol
      (Section_for_symbol_body_symbol_t.Section_for_symbol_body_current_son_top_symbol
        Section_for_symbol_body_current_son_top_symbol_t.Upgrade_grandson_symbol)),
   [2; 2; 12; 1; 2; 1; 7; 2])
);;

let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec;; 

test_number 23 (
tag_gro_l 
(* : Group_symbol_t.group_symbol Tag_t.tag list *)
 =
  [(Group_symbol_t.Group_for_symbol_symbol
     (Group_for_symbol_symbol_t.Group_for_symbol_body_symbol
       (Group_for_symbol_body_symbol_t.Group_for_symbol_body_current_son_top_symbol
         Group_for_symbol_body_current_son_top_symbol_t.Upgrade_grandson_symbol)),
    [1; 2; 2; 12; 1; 2; 1; 7; 2])]
);;

(* 1 Group_for_symbol_body_current_son_top_symbol_t.Upgrade_grandson_symbol *)
(*   let sym_tri = Triangle_symbol_v.triangle_symbol_of_triangle_isoceles_symbol sym_tis in *)
(*     figureset_symbol_of_triangle_symbol sym_tri *)

let idx_gro = 1;;
let tag_gro = List.nth tag_gro_l (idx_gro-1);;

test_number 24 (
tag_gro 
(* : Group_symbol_t.group_symbol Tag_t.tag *)
= 
  (Group_symbol_t.Group_for_symbol_symbol
    (Group_for_symbol_symbol_t.Group_for_symbol_body_symbol
      (Group_for_symbol_body_symbol_t.Group_for_symbol_body_current_son_top_symbol
        Group_for_symbol_body_current_son_top_symbol_t.Upgrade_grandson_symbol)),
   [1; 2; 2; 12; 1; 2; 1; 7; 2])
);;

let tag_cal_l = Group_formula_v.camlline_tag_list_off_group_tag tag_gro;; 

test_number 25 (
tag_cal_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
  =
  [(Camlline_symbol_t.Camlline_for_any_symbol
     (Camlline_for_any_symbol_t.Camlline_for_any_duo_symbol
       (Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_current_son_symbol
         Camlline_for_any_duo_current_son_symbol_t.Let_ac_as_equal_es_any_vdot_es_any_of_ec_any_space_ac_ac_in)),
    [1; 1; 2; 2; 12; 1; 2; 1; 7; 2]);
   (Camlline_symbol_t.Camlline_for_any_symbol
     (Camlline_for_any_symbol_t.Camlline_for_any_duo_symbol
       (Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_son_top_symbol
         Camlline_for_any_duo_son_top_symbol_t.Space2_et_any_of_es_any_space_ac_as)),
    [2; 1; 2; 2; 12; 1; 2; 1; 7; 2])]
);;

let idx_cal = 1;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

(* 1 Camlline_for_any_duo_current_son_symbol_t.Let_ac_as_equal_es_any_vdot_es_any_of_ec_any_space_ac_ac_in *)
(*   let sym_tri = Triangle_symbol_v.triangle_symbol_of_triangle_isoceles_symbol sym_tis in *)

test_number 26 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
= 
   (Camlline_symbol_t.Camlline_for_any_symbol
    (Camlline_for_any_symbol_t.Camlline_for_any_duo_symbol
      (Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_current_son_symbol
        Camlline_for_any_duo_current_son_symbol_t.Let_ac_as_equal_es_any_vdot_es_any_of_ec_any_space_ac_ac_in)),
   [1; 1; 2; 2; 12; 1; 2; 1; 7; 2])
);;

let soi_cal = Tag_v.sole_index_off_tag tag_cal;;
let idx_cap = List.hd (Generatorset_symbol_by_sole_index_provider_v.camlparagraph_sole_index_off_sole_index soi_cal);;

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;

test_number 27 (
tag_ent_l 
(* :  Tag_t.tag list *)
=
 [(
     (Entity_symbol_t.Entity_proper "triangle_isoceles"),
    [1; 1; 1; 2; 2; 12; 1; 2; 1; 7; 2]);
   (
     (Entity_symbol_t.Entity_proper "triangle"),
    [2; 1; 1; 2; 2; 12; 1; 2; 1; 7; 2])]
);;

(* 2 Camlline_for_any_duo_son_top_symbol_t.Space2_et_any_of_es_any_space_ac_as *)
(*     figureset_symbol_of_triangle_symbol sym_tri *)

let idx_cal = 2;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 28 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
= 
  (Camlline_symbol_t.Camlline_for_any_symbol
    (Camlline_for_any_symbol_t.Camlline_for_any_duo_symbol
      (Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_son_top_symbol
        Camlline_for_any_duo_son_top_symbol_t.Space2_et_any_of_es_any_space_ac_as)),
   [2; 1; 2; 2; 12; 1; 2; 1; 7; 2])
);;

(*     figureset_symbol_of_triangle_symbol sym_tri *)

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;

test_number 29 (
tag_ent_l 
(* :  Tag_t.tag list *)
=
  [(
     (Entity_symbol_t.Entity_proper "triangle"),
    [1; 2; 1; 2; 2; 12; 1; 2; 1; 7; 2]);
   (
     (Entity_symbol_t.Entity_proper "figureset"),
    [2; 2; 1; 2; 2; 12; 1; 2; 1; 7; 2])]
);;

(* 3 Section_for_any_footer_constant_symbol_t.Double_semicolon *)

let idx_sec = 3;;
let tag_sec = List.nth tag_sec_l (idx_sec-1);;

test_number 30 (
tag_sec 
(* : Section_symbol_t.section_symbol Tag_t.tag *)
=
  (Section_symbol_t.Section_for_any_symbol
    (Section_for_any_symbol_t.Section_for_any_footer_symbol
      (Section_for_any_footer_symbol_t.Section_for_any_footer_constant_symbol
        Section_for_any_footer_constant_symbol_t.Double_semicolon)),
   [3; 2; 12; 1; 2; 1; 7; 2])
);;

let tag_cal_l = Section_formula_v.camlline_tag_list_off_section_tag tag_sec;;
let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec;; 

test_number 31 (
tag_gro_l 
(* : Group_symbol_t.group_symbol Tag_t.tag list *)
 =
  [(Group_symbol_t.Group_for_any_symbol
     (Group_for_any_symbol_t.Group_for_any_footer_symbol
       (Group_for_any_footer_symbol_t.Group_for_any_footer_constant_symbol
         Group_for_any_footer_constant_symbol_t.Double_semicolon)),
    [1; 3; 2; 12; 1; 2; 1; 7; 2])]
);;

(* 1 Group_for_any_footer_constant_symbol_t.Double_semicolon *)

let idx_gro = 1;;
let tag_gro = List.nth tag_gro_l (idx_gro-1);;

test_number 32 (
tag_gro 
(* : Group_symbol_t.group_symbol Tag_t.tag *)
= 
  (Group_symbol_t.Group_for_any_symbol
    (Group_for_any_symbol_t.Group_for_any_footer_symbol
      (Group_for_any_footer_symbol_t.Group_for_any_footer_constant_symbol
        Group_for_any_footer_constant_symbol_t.Double_semicolon)),
   [1; 3; 2; 12; 1; 2; 1; 7; 2])
);;

let tag_cal_l = Group_formula_v.camlline_tag_list_off_group_tag tag_gro;; 

test_number 33 (
tag_cal_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
  =
  [(Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
       Camlline_constant_pervasive_symbol_t.Double_semicolon),
    [1; 1; 3; 2; 12; 1; 2; 1; 7; 2])]
);;

(* 1 Camlline_duo_function_symbol_t.Pipe_Et_symbol_tdot_Es_symbol_space_ass_arrow *)

let idx_cal = 1;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 34 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
= 
 (Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
      Camlline_constant_pervasive_symbol_t.Double_semicolon),
   [1; 1; 3; 2; 12; 1; 2; 1; 7; 2])
);;

let soi_cal = Tag_v.sole_index_off_tag tag_cal;;
let idx_cap = List.hd (Generatorset_symbol_by_sole_index_provider_v.camlparagraph_sole_index_off_sole_index soi_cal);;

(* "  | Figureset_symbol_t.Triangle_symbol sym_tri ->" *)

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;

test_number 35 (
tag_ent_l 
(* :  Tag_t.tag list *)
=
  []
);;

(* 3 Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_grandson_symbol *)

let idx_cap = 7;;
let tag_cap = List.nth tag_cap_l (idx_cap-1);;

test_number 36 (
tag_cap
=
  (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
    (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
      (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
        Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_grandson_symbol)),
   [7; 12; 1; 2; 1; 7; 2])
);;

(* let figureset_symbol_of_coordinate_polar_symbol sym_cop = *)
(*   let sym_coo = Coordinate_symbol_v.coordinate_symbol_of_coordinate_polar_symbol sym_cop in *)
(*     figureset_symbol_of_coordinate_symbol sym_coo *)
(* ;; *)

let tag_cal_l = Camlparagraph_formula_v.camlline_tag_list_off_camlparagraph_tag tag_cap;;
let tag_sec_l = Camlparagraph_formula_v.section_tag_list_off_camlparagraph_tag tag_cap;;

test_number 37 (
tag_sec_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
 [(Section_symbol_t.Section_for_symbol_symbol
     (Section_for_symbol_symbol_t.Section_for_symbol_header_symbol
       (Section_for_symbol_header_symbol_t.Section_for_symbol_header_current_top_symbol
         Section_for_symbol_header_current_top_symbol_t.Let_top_symbol_of_grandson_symbol)),
    [1; 7; 12; 1; 2; 1; 7; 2]);
   (Section_symbol_t.Section_for_symbol_symbol
     (Section_for_symbol_symbol_t.Section_for_symbol_body_symbol
       (Section_for_symbol_body_symbol_t.Section_for_symbol_body_current_son_top_symbol
         Section_for_symbol_body_current_son_top_symbol_t.Upgrade_grandson_symbol)),
    [2; 7; 12; 1; 2; 1; 7; 2]);
   (Section_symbol_t.Section_for_any_symbol
     (Section_for_any_symbol_t.Section_for_any_footer_symbol
       (Section_for_any_footer_symbol_t.Section_for_any_footer_constant_symbol
         Section_for_any_footer_constant_symbol_t.Double_semicolon)),
    [3; 7; 12; 1; 2; 1; 7; 2])]
);; 

let idx_sec = 1;;
let tag_sec = List.nth tag_sec_l (idx_sec-1);;

test_number 38 (
tag_sec 
(* : Section_symbol_t.section_symbol Tag_t.tag *)
=
  (Section_symbol_t.Section_for_symbol_symbol
    (Section_for_symbol_symbol_t.Section_for_symbol_header_symbol
      (Section_for_symbol_header_symbol_t.Section_for_symbol_header_current_top_symbol
        Section_for_symbol_header_current_top_symbol_t.Let_top_symbol_of_grandson_symbol)),
   [1; 7; 12; 1; 2; 1; 7; 2])
);;

let tag_cal_l = Section_formula_v.camlline_tag_list_off_section_tag tag_sec;;
let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec;; 

test_number 39 (
tag_gro_l 
(* : Group_symbol_t.group_symbol Tag_t.tag list *)
 =
  [(Group_symbol_t.Group_for_symbol_symbol
     (Group_for_symbol_symbol_t.Group_for_symbol_header_symbol
       (Group_for_symbol_header_symbol_t.Group_for_symbol_header_current_top_symbol
         Group_for_symbol_header_current_top_symbol_t.Let_top_symbol_of_grandson_symbol_argument_equal)),
    [1; 1; 7; 12; 1; 2; 1; 7; 2])]
);;

let idx_gro = 1;;
let tag_gro = List.nth tag_gro_l (idx_gro-1);;

test_number 40 (
tag_gro 
(* : Group_symbol_t.group_symbol Tag_t.tag *)
=
  (Group_symbol_t.Group_for_symbol_symbol
    (Group_for_symbol_symbol_t.Group_for_symbol_header_symbol
      (Group_for_symbol_header_symbol_t.Group_for_symbol_header_current_top_symbol
        Group_for_symbol_header_current_top_symbol_t.Let_top_symbol_of_grandson_symbol_argument_equal)),
   [1; 1; 7; 12; 1; 2; 1; 7; 2])
);;

let tag_cal_l = Group_formula_v.camlline_tag_list_off_group_tag tag_gro;; 

test_number 41 (
tag_cal_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
  [(Camlline_symbol_t.Camlline_for_any_symbol
     (Camlline_for_any_symbol_t.Camlline_for_any_duo_symbol
       (Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_current_top_symbol
         Camlline_for_any_duo_current_top_symbol_t.Let_et_any_of_ec_any_space_ac_ac_equal)),
    [1; 1; 1; 7; 12; 1; 2; 1; 7; 2])]
);;

let idx_cal = 1;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 42 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
= 
  (Camlline_symbol_t.Camlline_for_any_symbol
    (Camlline_for_any_symbol_t.Camlline_for_any_duo_symbol
      (Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_current_top_symbol
        Camlline_for_any_duo_current_top_symbol_t.Let_et_any_of_ec_any_space_ac_ac_equal)),
   [1; 1; 1; 7; 12; 1; 2; 1; 7; 2])
);;

(* 1 Camlline_for_any_duo_current_top_symbol_t.Let_et_any_of_ec_any_space_ac_ac_equal *)


let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;

test_number 43 (
tag_ent_l 
(* :  Tag_t.tag list *)
=
  [(
     (Entity_symbol_t.Entity_proper "coordinate_spherical"),
    [1; 1; 1; 1; 7; 12; 1; 2; 1; 7; 2]);
   (
     (Entity_symbol_t.Entity_proper "figureset"),
    [2; 1; 1; 1; 7; 12; 1; 2; 1; 7; 2])]
);;

(* 2 Section_for_symbol_body_current_son_top_symbol_t.Upgrade_grandson_symbol *)

let idx_sec = 2;;
let tag_sec = List.nth tag_sec_l (idx_sec-1);;

test_number 44 (
tag_sec 
(* : Section_symbol_t.section_symbol Tag_t.tag *)
=
  (Section_symbol_t.Section_for_symbol_symbol
    (Section_for_symbol_symbol_t.Section_for_symbol_body_symbol
      (Section_for_symbol_body_symbol_t.Section_for_symbol_body_current_son_top_symbol
        Section_for_symbol_body_current_son_top_symbol_t.Upgrade_grandson_symbol)),
   [2; 7; 12; 1; 2; 1; 7; 2])
);;

let tag_cal_l = Section_formula_v.camlline_tag_list_off_section_tag tag_sec;;
let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec;; 

test_number 45 (
tag_gro_l 
(* : Group_symbol_t.group_symbol Tag_t.tag list *)
 =
  [(Group_symbol_t.Group_for_symbol_symbol
     (Group_for_symbol_symbol_t.Group_for_symbol_body_symbol
       (Group_for_symbol_body_symbol_t.Group_for_symbol_body_current_son_top_symbol
         Group_for_symbol_body_current_son_top_symbol_t.Upgrade_grandson_symbol)),
    [1; 2; 7; 12; 1; 2; 1; 7; 2])]
);;

(* 1 Group_for_symbol_body_son_top_symbol_t.Pipe_upgrade_name_notleaf_function *)

let idx_gro = 1;;
let tag_gro = List.nth tag_gro_l (idx_gro-1);;

test_number 46 (
tag_gro 
(* : Group_symbol_t.group_symbol Tag_t.tag *)
= 
  (Group_symbol_t.Group_for_symbol_symbol
    (Group_for_symbol_symbol_t.Group_for_symbol_body_symbol
      (Group_for_symbol_body_symbol_t.Group_for_symbol_body_current_son_top_symbol
        Group_for_symbol_body_current_son_top_symbol_t.Upgrade_grandson_symbol)),
   [1; 2; 7; 12; 1; 2; 1; 7; 2])
);;

(* let sym_coo = Coordinate_symbol_v.coordinate_symbol_of_coordinate_spherical_symbol sym_cos in *)
(*   figureset_symbol_of_coordinate_symbol sym_coo *)

let tag_cal_l = Group_formula_v.camlline_tag_list_off_group_tag tag_gro;; 

test_number 47 (
tag_cal_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
  =
  [(Camlline_symbol_t.Camlline_for_any_symbol
     (Camlline_for_any_symbol_t.Camlline_for_any_duo_symbol
       (Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_current_son_symbol
         Camlline_for_any_duo_current_son_symbol_t.Let_ac_as_equal_es_any_vdot_es_any_of_ec_any_space_ac_ac_in)),
    [1; 1; 2; 7; 12; 1; 2; 1; 7; 2]);
   (Camlline_symbol_t.Camlline_for_any_symbol
     (Camlline_for_any_symbol_t.Camlline_for_any_duo_symbol
       (Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_son_top_symbol
         Camlline_for_any_duo_son_top_symbol_t.Space2_et_any_of_es_any_space_ac_as)),
    [2; 1; 2; 7; 12; 1; 2; 1; 7; 2])]
);;

(* 1 Camlline_for_any_duo_current_son_symbol_t.Let_ac_as_equal_es_any_vdot_es_any_of_ec_any_space_ac_ac_in *)
(* let sym_coo = Coordinate_symbol_v.coordinate_symbol_of_coordinate_spherical_symbol sym_cos in *)

let idx_cal = 1;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 48 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
= 
  (Camlline_symbol_t.Camlline_for_any_symbol
    (Camlline_for_any_symbol_t.Camlline_for_any_duo_symbol
      (Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_current_son_symbol
        Camlline_for_any_duo_current_son_symbol_t.Let_ac_as_equal_es_any_vdot_es_any_of_ec_any_space_ac_ac_in)),
   [1; 1; 2; 7; 12; 1; 2; 1; 7; 2])
);;

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;

test_number 49 (
tag_ent_l 
(* :  Tag_t.tag list *)
=
  [(
     (Entity_symbol_t.Entity_proper "coordinate_spherical"),
    [1; 1; 1; 2; 7; 12; 1; 2; 1; 7; 2]);
   (
     (Entity_symbol_t.Entity_proper "coordinate"),
    [2; 1; 1; 2; 7; 12; 1; 2; 1; 7; 2])]
);;

(* 2 Camlline_for_any_duo_son_top_symbol_t.Space2_et_any_of_es_any_space_ac_as *)
(*   figureset_symbol_of_coordinate_symbol sym_coo *)

let idx_cal = 2;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 50 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
= 
 (Camlline_symbol_t.Camlline_for_any_symbol
    (Camlline_for_any_symbol_t.Camlline_for_any_duo_symbol
      (Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_son_top_symbol
        Camlline_for_any_duo_son_top_symbol_t.Space2_et_any_of_es_any_space_ac_as)),
   [2; 1; 2; 7; 12; 1; 2; 1; 7; 2])
);;

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;

test_number 51 (
tag_ent_l 
(* :  Tag_t.tag list *)
=
  [(
     (Entity_symbol_t.Entity_proper "coordinate"),
    [1; 2; 1; 2; 7; 12; 1; 2; 1; 7; 2]);
   (
     (Entity_symbol_t.Entity_proper "figureset"),
    [2; 2; 1; 2; 7; 12; 1; 2; 1; 7; 2])]
);;

