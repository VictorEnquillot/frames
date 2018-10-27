open Make_test_v;;

testing "Camlline_value_v with
   Camlline_value_u_figureset_formula_triangle_isoceles_building_and_storing.ml";;

(* toplevel 
   #use "Camlline_value_u_figureset_formula_triangle_isoceles_building_and_storing.ml";;

*)

let nam_cod = "Camlline_value_u_figureset_formula_triangle_making.ml";;

let nam_dom = "figure";;
let nam_cof = "value_alone";;
let nam_ent = "triangle_isoceles";;
let nam_cat = "formula";;
let nam_usf = "implementation_for_formula";;

let sym_dom = Domain_symbol_v.make nam_dom "";;
let idx_dom = Domain_symbol_v.list_index_of_domain_symbol sym_dom;;
let soi_dom = Sole_index_v.make idx_dom [];;
let tag_dom = Tag_v.make sym_dom soi_dom;;

test_number 1 (
tag_dom
(* : Domain_symbol_t.domain_symbol Tag_t.tag *)
= 
(Domain_symbol_t.Figureset, [2])
);;

let tag_cat_l = Domain_formula_v.category_tag_list_off_domain_tag tag_dom;;

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
(Category_symbol_t.Formula, [2; 2])
);;

let tag_ent_l = Category_formula_v.entity_tag_list_off_category_tag tag_cat;;

let sel_ent = (fun e -> Entity_symbol_v.string_off e = nam_ent)
let tag_ent = Doublet_list_v.find_if_left sel_ent tag_ent_l;;

test_number 4 (
tag_ent
(* : Entity_symbol_t.entity_proper_symbol * Tag_t.Sole_index_t.sole_index *)
=
 (Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_sons "triangle_isoceles"),
   [9; 2; 2])
);;

let tag_cof_l = Entity_formula_v.contentfile_tag_list_off_entity_tag tag_ent;;
let sel_cof = (fun c -> Contentfile_symbol_v.name c = nam_cof);;
let tag_cof = Doublet_list_v.find_if_left sel_cof tag_cof_l;;

test_number 5 (
tag_cof
=
(Contentfile_symbol_t.Value_alone, [2; 9; 2; 2])
);;

let tag_usf_l = Contentfile_formula_v.usagefile_tag_list_off_contentfile_tag tag_cof;;
let sel_usf = (fun u -> Usagefile_symbol_v.name u = nam_usf);;
let tag_usf = Doublet_list_v.find_if_left sel_usf tag_usf_l;;

test_number 6 (
tag_usf
  =
  (Usagefile_symbol_t.Usagefile_for_formula_symbol
    Usagefile_for_formula_symbol_t.Implementation_for_formula,
   [1; 2; 9; 2; 2])
);;

let sym_ent = Tag_v.entity_off_tag tag_ent;;
let sym_cat = Tag_v.entity_off_tag tag_cat;;
let sym_dom = Tag_v.entity_off_tag tag_dom;;
let tri_ent = Triplet_v.make sym_ent sym_cat sym_dom;;
let sym_ets_l = Entity_topson_symbol_list_by_entity_tritup_provider_v.provide tri_ent;;

test_number 7 (
sym_ets_l
(*: Entity_symbol_t.entity_symbol list *)
=
  [Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "triangle_isoceles_equilateral"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "triangle_isoceles_right"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "triangle_isoceles_acute"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "triangle_isoceles_obtuse"))]
);;

let tag_ite_l = Usagefile_formula_v.item_tag_list_off_usagefile_tag tag_usf;;

(* 1 Item_for_formula_by_group_topsons_symbol_t.Building_and_storing_basic_sons *)

let nam_ite = "building_and_storing_proper_sons";;
let sel_ite = (fun i -> Item_symbol_v.name i = nam_ite);;
let tag_ite = Doublet_list_v.find_if_left sel_ite tag_ite_l;; 

test_number 8 (
tag_ite
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
  (Item_symbol_t.Item_for_formula_symbol
    (Item_for_formula_symbol_t.Item_for_formula_only_top_symbol
      Item_for_formula_only_top_symbol_t.Building_and_storing_proper_sons),
   [3; 1; 2; 9; 2; 2])
);;

let tag_cap_l = Item_formula_v.camlparagraph_tag_list_off_item_tag tag_ite;;

(* 2 Camlparagraph_for_formula_let_argument_symbol_t.Let_build_n_store_basic_sons *)

let idx_cap = 2;;
let tag_cap = List.nth tag_cap_l (idx_cap-1);;

test_number 9 (
tag_cap
=
  (Camlparagraph_symbol_t.Camlparagraph_for_formula_symbol
    (Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_let_symbol
      (Camlparagraph_for_formula_let_symbol_t.Camlparagraph_for_formula_let_argument_symbol
        Camlparagraph_for_formula_let_argument_symbol_t.Let_build_n_store_proper_sons)),
   [2; 3; 1; 2; 9; 2; 2])
);;

let tag_sec_l = Camlparagraph_formula_v.section_tag_list_off_camlparagraph_tag tag_cap;;

test_number 10 (
tag_sec_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
  [(Section_symbol_t.Section_for_formula_symbol
     (Section_for_formula_symbol_t.Section_for_formula_header_symbol
       (Section_for_formula_header_symbol_t.Section_for_formula_header_top_main_symbol
         Section_for_formula_header_top_main_symbol_t.Let_build_n_store_proper_sons)),
    [1; 2; 3; 1; 2; 9; 2; 2]);
   (Section_symbol_t.Section_for_formula_symbol
     (Section_for_formula_symbol_t.Section_for_formula_body_symbol
       (Section_for_formula_body_symbol_t.Section_for_formula_body_top_main_builder_symbol
         Section_for_formula_body_top_main_builder_symbol_t.Builder_node_sole_index_builder_list)),
    [2; 2; 3; 1; 2; 9; 2; 2]);
   (Section_symbol_t.Section_for_formula_symbol
     (Section_for_formula_symbol_t.Section_for_formula_body_symbol
       (Section_for_formula_body_symbol_t.Section_for_formula_body_domainset_builder_symbol
         Section_for_formula_body_domainset_builder_symbol_t.Builder_tag_list)),
    [3; 2; 3; 1; 2; 9; 2; 2]);
   (Section_symbol_t.Section_for_any_symbol
     (Section_for_any_symbol_t.Section_for_any_footer_symbol
       Section_for_any_footer_symbol_t.Double_semicolon),
    [4; 2; 3; 1; 2; 9; 2; 2])]
);; 

(* 1 Section_for_formula_header_top_main_symbol_t.Let_make_arguments_equal_match_with *)

let idx_sec = 1;;
let tag_sec = List.nth tag_sec_l (idx_sec-1);;

test_number 11 (
tag_sec 
(* : Section_symbol_t.section_symbol Tag_t.tag *)
=
  (Section_symbol_t.Section_for_formula_symbol
    (Section_for_formula_symbol_t.Section_for_formula_header_symbol
      (Section_for_formula_header_symbol_t.Section_for_formula_header_top_main_symbol
        Section_for_formula_header_top_main_symbol_t.Let_build_n_store_proper_sons)),
   [1; 2; 3; 1; 2; 9; 2; 2])
);;

let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec;; 

test_number 12 (
tag_gro_l 
(* : Group_symbol_t.group_symbol Tag_t.tag list *)
 =
 [(Group_symbol_t.Group_for_formula_symbol
     (Group_for_formula_symbol_t.Group_for_formula_header_symbol
       (Group_for_formula_header_symbol_t.Group_for_formula_header_top_main_symbol
         Group_for_formula_header_top_main_symbol_t.Let_build_n_store_proper_sons)),
    [1; 1; 2; 3; 1; 2; 9; 2; 2])]
);;

(* 1 Group_for_formula_header_top_main_symbol_t.Let_build_n_store_proper_sons *)

let idx_gro = 1;;
let tag_gro = List.nth tag_gro_l (idx_gro-1);;

test_number 13 (
tag_gro 
(* : Group_symbol_t.group_symbol Tag_t.tag *)
=
  (Group_symbol_t.Group_for_formula_symbol
    (Group_for_formula_symbol_t.Group_for_formula_header_symbol
      (Group_for_formula_header_symbol_t.Group_for_formula_header_top_main_symbol
        Group_for_formula_header_top_main_symbol_t.Let_build_n_store_proper_sons)),
   [1; 1; 2; 3; 1; 2; 9; 2; 2])
);;

let tag_cal_l = Group_formula_v.camlline_tag_list_off_group_tag tag_gro;; 

test_number 14 (
tag_cal_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
  [(Camlline_symbol_t.Camlline_for_any_symbol
     (Camlline_for_any_symbol_t.Camlline_for_any_duo_symbol
       (Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_top_main_symbol
         Camlline_for_any_duo_top_main_symbol_t.Let_build_n_store_sym_at_soi_am_equal)),
    [1; 1; 1; 2; 3; 1; 2; 9; 2; 2])]
);;

let str_l = Group_value_v.string_list_off_group_tag tag_gro;;

test_number 15 (
str_l
(* : string list *)
=
["let build_n_store sym_tis soi_tri ="]
);;

(* Camlline_constant_function_symbol_t.let_name_of_topson_notleaf_equal *)

let idx_cal = 1;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 16 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
  (Camlline_symbol_t.Camlline_for_any_symbol
    (Camlline_for_any_symbol_t.Camlline_for_any_duo_symbol
      (Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_top_main_symbol
        Camlline_for_any_duo_top_main_symbol_t.Let_build_n_store_sym_at_soi_am_equal)),
   [1; 1; 1; 2; 3; 1; 2; 9; 2; 2])
);;

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;
    
test_number 17 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
  [(Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "triangle_isoceles"),
    [1; 1; 1; 1; 2; 3; 1; 2; 9; 2; 2]);
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "triangle"),
    [2; 1; 1; 1; 2; 3; 1; 2; 9; 2; 2])]
);;

let str_l = Section_value_v.string_list_off_section_tag tag_sec;;

test_number 18 (
str_l
=
["let build_n_store sym_tis soi_tri ="]
);;

(* 2 Section_for_formula_body_top_main_builder_symbol_t.Builder_node_sole_index_builder_list *)

let idx_sec = 2;;
let tag_sec = List.nth tag_sec_l (idx_sec-1);;

test_number 19 (
tag_sec 
(* : Section_symbol_t.section_symbol Tag_t.tag *)
=
  (Section_symbol_t.Section_for_formula_symbol
    (Section_for_formula_symbol_t.Section_for_formula_body_symbol
      (Section_for_formula_body_symbol_t.Section_for_formula_body_top_main_builder_symbol
        Section_for_formula_body_top_main_builder_symbol_t.Builder_node_sole_index_builder_list)),
   [2; 2; 3; 1; 2; 9; 2; 2])
);;

let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec;;

test_number 20 (
tag_gro_l 
(* : Group_symbol_t.group_symbol Tag_t.tag list *)
 =
  [(Group_symbol_t.Group_for_formula_symbol
     (Group_for_formula_symbol_t.Group_for_formula_body_symbol
       (Group_for_formula_body_symbol_t.Group_for_formula_body_top_symbol
         (Group_for_formula_body_top_symbol_t.Group_for_formula_body_top_main_symbol
           Group_for_formula_body_top_main_symbol_t.Main_tag_off_top_symbol))),
    [1; 2; 2; 3; 1; 2; 9; 2; 2]);
   (Group_symbol_t.Group_for_formula_symbol
     (Group_for_formula_symbol_t.Group_for_formula_body_symbol
       (Group_for_formula_body_symbol_t.Group_for_formula_body_main_builder_symbol
         Group_for_formula_body_main_builder_symbol_t.Builder_node_symbol_builder_list)),
    [2; 2; 2; 3; 1; 2; 9; 2; 2]);
   (Group_symbol_t.Group_for_formula_symbol
     (Group_for_formula_symbol_t.Group_for_formula_body_symbol
       (Group_for_formula_body_symbol_t.Group_for_formula_body_main_builder_symbol
         Group_for_formula_body_main_builder_symbol_t.Sole_index_builder_list)),
    [3; 2; 2; 3; 1; 2; 9; 2; 2])]
);;

(* 1 Group_for_formula_body_top_main_symbol_t.Main_tag_off_top_symbol *)

let idx_gro = 1;;
let tag_gro = List.nth tag_gro_l (idx_gro-1);;

test_number 21 (
tag_gro 
(* : Group_symbol_t.group_symbol Tag_t.tag *)
=
  (Group_symbol_t.Group_for_formula_symbol
    (Group_for_formula_symbol_t.Group_for_formula_body_symbol
      (Group_for_formula_body_symbol_t.Group_for_formula_body_top_symbol
        (Group_for_formula_body_top_symbol_t.Group_for_formula_body_top_main_symbol
          Group_for_formula_body_top_main_symbol_t.Main_tag_off_top_symbol))),
   [1; 2; 2; 3; 1; 2; 9; 2; 2])
);;

let tag_cal_l = Group_formula_v.camlline_tag_list_off_group_tag tag_gro;;

test_number 22 (
tag_cal_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
  [(Camlline_symbol_t.Camlline_for_formula_symbol
     (Camlline_for_formula_symbol_t.Camlline_for_formula_duo_symbol
       (Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_top_main_symbol
         Camlline_for_formula_duo_top_main_symbol_t.Let_sym_am_equal_em_symbol_vdot_em_symbol_of_et_symbol_sym_at_in)),
    [1; 1; 2; 2; 3; 1; 2; 9; 2; 2]);
   (Camlline_symbol_t.Camlline_for_formula_symbol
     (Camlline_for_formula_symbol_t.Camlline_for_formula_uno_symbol
       (Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_main_symbol
         Camlline_for_formula_uno_main_symbol_t.Let_tag_am_equal_tag_vdot_make_sym_am_soi_am_in)),
    [2; 1; 2; 2; 3; 1; 2; 9; 2; 2])]
);;

(* 1 Camlline_for_formula_duo_top_main_symbol_t.Let_sym_am_equal_em_symbol_vdot_em_symbol_of_et_symbol_sym_at_in *)

let idx_cal = 1;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 23 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
 (Camlline_symbol_t.Camlline_for_formula_symbol
    (Camlline_for_formula_symbol_t.Camlline_for_formula_duo_symbol
      (Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_top_main_symbol
        Camlline_for_formula_duo_top_main_symbol_t.Let_sym_am_equal_em_symbol_vdot_em_symbol_of_et_symbol_sym_at_in)),
   [1; 1; 2; 2; 3; 1; 2; 9; 2; 2])
);;

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;
    
test_number 24 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
 [(Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "triangle_isoceles"),
    [1; 1; 1; 2; 2; 3; 1; 2; 9; 2; 2]);
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "triangle"),
    [2; 1; 1; 2; 2; 3; 1; 2; 9; 2; 2])]
);;

let str = Camlline_value_v.string_off_camlline_tag tag_cal;;

test_number 25 (
str 
(* : string *)
  =
 "  let sym_tri = Triangle_symbol_v.triangle_symbol_of_triangle_isoceles_symbol sym_tis in"
);;

(* 2 Camlline_for_formula_duo_son_top_symbol_t.Et_formula_tdot_es_formula *)

let idx_cal = 2;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 26 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
  (Camlline_symbol_t.Camlline_for_formula_symbol
    (Camlline_for_formula_symbol_t.Camlline_for_formula_uno_symbol
      (Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_main_symbol
        Camlline_for_formula_uno_main_symbol_t.Let_tag_am_equal_tag_vdot_make_sym_am_soi_am_in)),
   [2; 1; 2; 2; 3; 1; 2; 9; 2; 2])
);;

let (sym_cal, soi_cal) = tag_cal;;
let sym_cum = Camlline_symbol_v.camlline_for_formula_uno_main_symbol_off_camlline_symbol sym_cal;;
let tag_cum = Tag_v.make sym_cum soi_cal;;
let dec_cum = 
    Camlline_for_formula_uno_main_tag_v.camlline_for_formula_uno_main_dectup_off_camlline_for_formula_uno_main_tag 
      tag_cum;;
let sym_ent_mai = Tools_fgnr_v.entity_main_symbol_of_camlline_dectup dec_cum;;

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;
    
test_number 27 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
  [(Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "triangle"),
    [1; 2; 1; 2; 2; 3; 1; 2; 9; 2; 2])]
);;

let str = Camlline_value_v.string_off_camlline_tag tag_cal;;

test_number 28 (
str 
(* : string *)
  =
"  let tag_tri = Tag_v.make sym_tri soi_tri in"
);;

let str_l = Group_value_v.string_list_off_group_tag tag_gro;; 

test_number 29 (
str_l
(* : string list *)
=
  ["  let sym_tri = Triangle_symbol_v.triangle_symbol_of_triangle_isoceles_symbol sym_tis in";
   "  let tag_tri = Tag_v.make sym_tri soi_tri in"]
);;

(* 2 Group_for_formula_body_top_main_builder_symbol_t.Builder_node_sole_index_builder_list *)

let idx_gro = 2;;
let tag_gro = List.nth tag_gro_l (idx_gro-1);;

test_number 30 (
tag_gro 
(* : Group_symbol_t.group_symbol Tag_t.tag *)
=
 (Group_symbol_t.Group_for_formula_symbol
    (Group_for_formula_symbol_t.Group_for_formula_body_symbol
      (Group_for_formula_body_symbol_t.Group_for_formula_body_main_builder_symbol
        Group_for_formula_body_main_builder_symbol_t.Builder_node_symbol_builder_list)),
   [2; 2; 2; 3; 1; 2; 9; 2; 2])
);;

let tag_cal_l = Group_formula_v.camlline_tag_list_off_group_tag tag_gro;;

test_number 31 (
tag_cal_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
 [(Camlline_symbol_t.Camlline_for_formula_symbol
     (Camlline_for_formula_symbol_t.Camlline_for_formula_duo_symbol
       (Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_main_builder_symbol
         Camlline_for_formula_duo_main_builder_symbol_t.Let_sym_ab_l_equal_eb_symbol_list_by_em_tag_provider_vdot_provide_tag_am_in)),
    [1; 2; 2; 2; 3; 1; 2; 9; 2; 2])]
);;

(* 1 Camlline_for_formula_duo_main_builder_symbol_t.Let_sym_ab_l_equal_eb_symbol_list_by_em_tag_provider_vdot_provide_tag_am_in *)

let idx_cal = 1;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 32 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
  (Camlline_symbol_t.Camlline_for_formula_symbol
    (Camlline_for_formula_symbol_t.Camlline_for_formula_duo_symbol
      (Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_main_builder_symbol
        Camlline_for_formula_duo_main_builder_symbol_t.Let_sym_ab_l_equal_eb_symbol_list_by_em_tag_provider_vdot_provide_tag_am_in)),
   [1; 2; 2; 2; 3; 1; 2; 9; 2; 2])
);;

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;
    
test_number 33 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
 [(Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "triangle"),
    [1; 1; 2; 2; 2; 3; 1; 2; 9; 2; 2]);
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_one_son "point"),
    [2; 1; 2; 2; 2; 3; 1; 2; 9; 2; 2])]
);;

let str = Camlline_value_v.string_off_camlline_tag tag_cal;;

test_number 34 (
str
(* : string *)
  =
 "  let sym_poi_l = Point_symbol_list_by_triangle_tag_provider_v.provide tag_tri in"
);;

let str_l = Group_value_v.string_list_off_group_tag tag_gro;;

test_number 35 (
str_l
(* : string list *)
=
["  let sym_poi_l = Point_symbol_list_by_triangle_tag_provider_v.provide tag_tri in"]
);;

let str_l = Section_value_v.string_list_off_section_tag tag_sec;;

test_number 36 (
str_l 
(* : string list*)
  =
  ["  let sym_tri = Triangle_symbol_v.triangle_symbol_of_triangle_isoceles_symbol sym_tis in";
   "  let tag_tri = Tag_v.make sym_tri soi_tri in";
   "  let sym_poi_l = Point_symbol_list_by_triangle_tag_provider_v.provide tag_tri in";
   "  let soi_poi_l =";
   "    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index";
   "    1 (List.length sym_poi_l) soi_tri in"]
);;

(* 3 Section_for_formula_body_builder_symbol_t.Tag_builder_basic_list *)

let idx_sec = 3;;
let tag_sec = List.nth tag_sec_l (idx_sec-1);;

test_number 37 (
tag_sec 
(* : Section_symbol_t.section_symbol Tag_t.tag *)
=
  (Section_symbol_t.Section_for_formula_symbol
    (Section_for_formula_symbol_t.Section_for_formula_body_symbol
      (Section_for_formula_body_symbol_t.Section_for_formula_body_domainset_builder_symbol
        Section_for_formula_body_domainset_builder_symbol_t.Builder_tag_list)),
   [3; 2; 3; 1; 2; 9; 2; 2])
);;

let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec;;

test_number 38 (
tag_gro_l 
(* : Group_symbol_t.group_symbol Tag_t.tag list *)
 =
  [(Group_symbol_t.Group_for_formula_symbol
     (Group_for_formula_symbol_t.Group_for_formula_body_symbol
       (Group_for_formula_body_symbol_t.Group_for_formula_body_domainset_builder_symbol
         Group_for_formula_body_domainset_builder_symbol_t.Domain_symbol_list)),
    [1; 3; 2; 3; 1; 2; 9; 2; 2]);
   (Group_symbol_t.Group_for_formula_symbol
     (Group_for_formula_symbol_t.Group_for_formula_body_symbol
       (Group_for_formula_body_symbol_t.Group_for_formula_body_builder_alone_symbol
         Group_for_formula_body_builder_alone_symbol_t.Store_builder_tag_list)),
    [2; 3; 2; 3; 1; 2; 9; 2; 2]);
   (Group_symbol_t.Group_for_formula_symbol
     (Group_for_formula_symbol_t.Group_for_formula_body_symbol
       (Group_for_formula_body_symbol_t.Group_for_formula_body_builder_alone_symbol
         Group_for_formula_body_builder_alone_symbol_t.Make_builder_tag_list)),
    [3; 3; 2; 3; 1; 2; 9; 2; 2])]
);;

(* 4 Section_for_formula_body_son_top_builder_symbol_t.Builder_tag_list_topson_pattern_bare_for_formula *)

let idx_sec = 4;;
let tag_sec = List.nth tag_sec_l (idx_sec-1);;

test_number 39 (
tag_sec 
(* : Section_symbol_t.section_symbol Tag_t.tag *)
=
  (Section_symbol_t.Section_for_any_symbol
    (Section_for_any_symbol_t.Section_for_any_footer_symbol
      Section_for_any_footer_symbol_t.Double_semicolon),
   [4; 2; 3; 1; 2; 9; 2; 2])
);;

let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec;;

test_number 40 (
tag_gro_l 
(* : Group_symbol_t.group_symbol Tag_t.tag list *)
 =
  [(Group_symbol_t.Group_for_any_symbol
     (Group_for_any_symbol_t.Group_for_any_footer_symbol
       Group_for_any_footer_symbol_t.Double_semicolon),
    [1; 4; 2; 3; 1; 2; 9; 2; 2])]
);;

let str_l = Camlparagraph_value_v.string_list_off_camlparagraph_tag tag_cap;;

test_number 41 (
 str_l 
(* : string list *)
=
  ["let build_n_store sym_tis soi_tri =";
   "  let sym_tri = Triangle_symbol_v.triangle_symbol_of_triangle_isoceles_symbol sym_tis in";
   "  let tag_tri = Tag_v.make sym_tri soi_tri in";
   "  let sym_poi_l = Point_symbol_list_by_triangle_tag_provider_v.provide tag_tri in";
   "  let soi_poi_l =";
   "    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index";
   "    1 (List.length sym_poi_l) soi_tri in";
   "  let dss_of_sym = Figure_symbol_v.figure_symbol_of_point_symbol in";
   "  let dss_poi_l = List.map dss_of_sym sym_poi_l in";
   "  List.iter2 Figure_symbol_by_sole_index_register_v.store soi_poi_l dss_poi_l;";
   "  List.map2 Tag_v.make sym_poi_l soi_poi_l"; 
   ";;"]
);;

let val_cap = Camlparagraph_value_v.retrieve tag_cap;;

let nam_fil = Camlparagraph_value_v.fullnameoffile "./" tag_cap;;

test_number 42 (
nam_fil
(* : string *)
  =
 "./Triangle_isoceles_formula_building_and_storing_proper_sons_let_build_n_store_proper_sons_v.ml"
);;

Camlparagraph_value_v.write "./" tag_cap;;

