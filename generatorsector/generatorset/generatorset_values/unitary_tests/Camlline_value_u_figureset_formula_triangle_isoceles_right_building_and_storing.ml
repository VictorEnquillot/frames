open Make_test_v;;

testing "Camlline_value_v with
   Camlline_value_u_figureset_formula_triangle_isoceles_right_building_and_storing.ml";;

(* toplevel 
   #use "Camlline_value_u_figureset_formula_triangle_isoceles_right_building_and_storing.ml";;

*)

let nam_cod = "Camlline_value_u_figureset_formula_triangle_making.ml";;

let nam_dos = "figureset";;
let nam_cof = "value_alone";;
let nam_ent = "triangle";;
let nam_cat = "formula";;
let nam_usf = "implementation_for_formula";;

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
(Domainset_symbol_t.Figureset, [4])
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
   (Entity_proper_symbol_t.Entity_proper_with_sons "triangle"),
 [8; 2; 2])
);;

let tag_cof_l = Entity_formula_v.contentfile_tag_list_off_entity_tag tag_ent;;
let sel_cof = (fun c -> Contentfile_symbol_v.name c = nam_cof);;
let tag_cof = Doublet_list_v.find_if_left sel_cof tag_cof_l;;

test_number 5 (
tag_cof
=
(Contentfile_symbol_t.Value_alone, [2; 8; 2; 2])
);;

let tag_usf_l = Contentfile_formula_v.usagefile_tag_list_off_contentfile_tag tag_cof;;
let sel_usf = (fun u -> Usagefile_symbol_v.name u = nam_usf);;
let tag_usf = Doublet_list_v.find_if_left sel_usf tag_usf_l;;

test_number 6 (
tag_usf
  =
  (Usagefile_symbol_t.Usagefile_for_formula_symbol
    Usagefile_for_formula_symbol_t.Implementation_for_formula,
   [1; 2; 8; 2; 2])
);;

let sym_ent = Tag_v.entity_off_tag tag_ent;;
let sym_cat = Tag_v.entity_off_tag tag_cat;;
let sym_dos = Tag_v.entity_off_tag tag_dos;;
let tri_ent = Triplet_v.make sym_ent sym_cat sym_dos;;
let sym_ets_l = Entity_topson_symbol_list_by_entity_tritup_provider_v.provide tri_ent;;

test_number 7 (
sym_ets_l
(*: Entity_symbol_t.entity_symbol list *)
=
[Entity_symbol_t.Entity_proper_symbol
   (Entity_proper_symbol_t.Entity_proper_with_sons "triangle_isoceles");
 Entity_symbol_t.Entity_proper_symbol
   (Entity_proper_symbol_t.Entity_proper_with_sons "triangle_scalene")]
);;

let tag_ite_l = Usagefile_formula_v.item_tag_list_off_usagefile_tag tag_usf;;

(* 1 Item_for_formula_by_group_topsons_symbol_t.Building_and_storing_basic_sons *)

let nam_ite = "building_and_storing_basic_sons";;
let sel_ite = (fun i -> Item_symbol_v.name i = nam_ite);;
let tag_ite = Doublet_list_v.find_if_left sel_ite tag_ite_l;; 

test_number 8 (
tag_ite
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
  (Item_symbol_t.Item_for_formula_symbol
    (Item_for_formula_symbol_t.Item_for_formula_only_top_symbol
      Item_for_formula_only_top_symbol_t.Building_and_storing_basic_sons),
   [3; 1; 2; 8; 2; 2])
);;

let tag_cap_l = Item_formula_v.camlparagraph_tag_list_off_item_tag tag_ite;;

(* 2 Camlparagraph_for_formula_let_argument_symbol_t.Let_make_arguments_for_formula *)

(* let make sym_ccc soi_cal = *)

let idx_cap = 2;;
let tag_cap = List.nth tag_cap_l (idx_cap-1);;

test_number 9 (
tag_cap
=
  (Camlparagraph_symbol_t.Camlparagraph_for_formula_symbol
    (Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_let_symbol
      (Camlparagraph_for_formula_let_symbol_t.Camlparagraph_for_formula_let_argument_symbol
        Camlparagraph_for_formula_let_argument_symbol_t.Let_build_n_store_basic_sons)),
   [2; 3; 1; 2; 8; 2; 2])
);;

let tag_sec_l = Camlparagraph_formula_v.section_tag_list_off_camlparagraph_tag tag_cap;;

test_number 10 (
tag_sec_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
  [(Section_symbol_t.Section_for_formula_symbol
     (Section_for_formula_symbol_t.Section_for_formula_header_symbol
       (Section_for_formula_header_symbol_t.Section_for_formula_header_top_main_symbol
         Section_for_formula_header_top_main_symbol_t.Let_build_n_store_arguments_equal)),
    [1; 2; 3; 1; 2; 8; 2; 2]);
   (Section_symbol_t.Section_for_formula_symbol
     (Section_for_formula_symbol_t.Section_for_formula_body_symbol
       (Section_for_formula_body_symbol_t.Section_for_formula_body_top_main_builder_symbol
         Section_for_formula_body_top_main_builder_symbol_t.Builder_node_sole_index_builder_list)),
    [2; 2; 3; 1; 2; 8; 2; 2]);
   (Section_symbol_t.Section_for_formula_symbol
     (Section_for_formula_symbol_t.Section_for_formula_body_symbol
       (Section_for_formula_body_symbol_t.Section_for_formula_body_builder_symbol
         Section_for_formula_body_builder_symbol_t.Tag_builder_basic_list)),
    [3; 2; 3; 1; 2; 8; 2; 2]);
   (Section_symbol_t.Section_for_any_symbol
     (Section_for_any_symbol_t.Section_for_any_footer_symbol
       Section_for_any_footer_symbol_t.Double_semicolon),
    [4; 2; 3; 1; 2; 8; 2; 2])]
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
        Section_for_formula_header_top_main_symbol_t.Let_build_n_store_arguments_equal)),
   [1; 2; 3; 1; 2; 8; 2; 2])
);;

let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec;; 

test_number 12 (
tag_gro_l 
(* : Group_symbol_t.group_symbol Tag_t.tag list *)
 =
  [(Group_symbol_t.Group_for_formula_symbol
     (Group_for_formula_symbol_t.Group_for_formula_header_symbol
       (Group_for_formula_header_symbol_t.Group_for_formula_header_top_main_symbol
         Group_for_formula_header_top_main_symbol_t.Let_build_n_store_arguments_equal)),
    [1; 1; 2; 3; 1; 2; 8; 2; 2])]
);;

(* 1 Group_for_any_header_constant_symbol_t.Type_et_any_equal *)

let idx_gro = 1;;
let tag_gro = List.nth tag_gro_l (idx_gro-1);;

test_number 13 (
tag_gro 
(* : Group_symbol_t.group_symbol Tag_t.tag *)
=
  (Group_symbol_t.Group_for_formula_symbol
    (Group_for_formula_symbol_t.Group_for_formula_header_symbol
      (Group_for_formula_header_symbol_t.Group_for_formula_header_top_main_symbol
        Group_for_formula_header_top_main_symbol_t.Let_build_n_store_arguments_equal)),
   [1; 1; 2; 3; 1; 2; 8; 2; 2])
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
    [1; 1; 1; 2; 3; 1; 2; 8; 2; 2])]
);;

let str_l = Group_value_v.string_list_off_group_tag tag_gro;;

test_number 15 (
str_l
(* : string list *)
=
["let build_n_store sym_tri soi_tri ="]
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
   [1; 1; 1; 2; 3; 1; 2; 8; 2; 2])
);;

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;
    
test_number 17 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
  [(Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "triangle"),
    [1; 1; 1; 1; 2; 3; 1; 2; 8; 2; 2]);
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "triangle"),
    [2; 1; 1; 1; 2; 3; 1; 2; 8; 2; 2])]
);;

(* 2 Section_for_formula_body_top_main_builder_symbol_t.Builder_node_sole_index_builder_list *)

let idx_sec = 2;;
let tag_sec = List.nth tag_sec_l (idx_sec-1);;

test_number 18 (
tag_sec 
(* : Section_symbol_t.section_symbol Tag_t.tag *)
=
  (Section_symbol_t.Section_for_formula_symbol
    (Section_for_formula_symbol_t.Section_for_formula_body_symbol
      (Section_for_formula_body_symbol_t.Section_for_formula_body_top_main_builder_symbol
        Section_for_formula_body_top_main_builder_symbol_t.Builder_node_sole_index_builder_list)),
   [2; 2; 3; 1; 2; 8; 2; 2])
);;

let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec;;

test_number 19 (
tag_gro_l 
(* : Group_symbol_t.group_symbol Tag_t.tag list *)
 =
  [(Group_symbol_t.Group_for_formula_symbol
     (Group_for_formula_symbol_t.Group_for_formula_body_symbol
       (Group_for_formula_body_symbol_t.Group_for_formula_body_top_symbol
         (Group_for_formula_body_top_symbol_t.Group_for_formula_body_top_main_symbol
           Group_for_formula_body_top_main_symbol_t.Main_tag_off_top_symbol))),
    [1; 2; 2; 3; 1; 2; 8; 2; 2]);
   (Group_symbol_t.Group_for_formula_symbol
     (Group_for_formula_symbol_t.Group_for_formula_body_symbol
       (Group_for_formula_body_symbol_t.Group_for_formula_body_top_symbol
         (Group_for_formula_body_top_symbol_t.Group_for_formula_body_top_main_builder_symbol
           Group_for_formula_body_top_main_builder_symbol_t.Builder_node_sole_index_builder_list))),
    [2; 2; 2; 3; 1; 2; 8; 2; 2])]
);;

(* 1 Group_for_formula_body_top_main_symbol_t.Main_tag_off_top_symbol *)
  (* let tag_top = Tag_v.make sym_top soi_mai in *)
  (* let sex_top = Top_tag_v.top_sextup_off_top_tag tag_top in *)

let idx_gro = 1;;
let tag_gro = List.nth tag_gro_l (idx_gro-1);;

test_number 20 (
tag_gro 
(* : Group_symbol_t.group_symbol Tag_t.tag *)
=
  (Group_symbol_t.Group_for_formula_symbol
    (Group_for_formula_symbol_t.Group_for_formula_body_symbol
      (Group_for_formula_body_symbol_t.Group_for_formula_body_top_symbol
        (Group_for_formula_body_top_symbol_t.Group_for_formula_body_top_main_symbol
          Group_for_formula_body_top_main_symbol_t.Main_tag_off_top_symbol))),
   [1; 2; 2; 3; 1; 2; 8; 2; 2])
);;

let tag_cal_l = Group_formula_v.camlline_tag_list_off_group_tag tag_gro;;

test_number 21 (
tag_cal_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
  [(Camlline_symbol_t.Camlline_for_formula_symbol
     (Camlline_for_formula_symbol_t.Camlline_for_formula_duo_symbol
       (Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_top_main_symbol
         Camlline_for_formula_duo_top_main_symbol_t.Let_sym_am_equal_em_symbol_vdot_em_symbol_of_et_symbol_sym_at_in)),
    [1; 1; 2; 2; 3; 1; 2; 8; 2; 2]);
   (Camlline_symbol_t.Camlline_for_formula_symbol
     (Camlline_for_formula_symbol_t.Camlline_for_formula_uno_symbol
       (Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_top_symbol
         Camlline_for_formula_uno_top_symbol_t.Let_tup_at_equal_et_tag_vdot_et_tuple_off_et_tag_tag_at_in)),
    [2; 1; 2; 2; 3; 1; 2; 8; 2; 2])]
);;

(* 1 Camlline_for_formula_duo_top_main_symbol_t.Let_sym_am_equal_em_symbol_vdot_em_symbol_of_et_symbol_sym_at_in *)

let idx_cal = 1;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 22 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
 (Camlline_symbol_t.Camlline_for_formula_symbol
    (Camlline_for_formula_symbol_t.Camlline_for_formula_duo_symbol
      (Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_top_main_symbol
        Camlline_for_formula_duo_top_main_symbol_t.Let_sym_am_equal_em_symbol_vdot_em_symbol_of_et_symbol_sym_at_in)),
   [1; 1; 2; 2; 3; 1; 2; 8; 2; 2])
);;

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;
    
test_number 23 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
  [(Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "triangle"),
    [1; 1; 1; 2; 2; 3; 1; 2; 8; 2; 2]);
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "triangle"),
    [2; 1; 1; 2; 2; 3; 1; 2; 8; 2; 2])]
);;

let str = Camlline_value_v.string_off_camlline_tag tag_cal;;

test_number 24 (
str 
(* : string *)
  =
 "  let tag_tri = Tag_v.make sym_tri soi_tri in"
);;

(* 2 Camlline_for_formula_duo_son_top_symbol_t.Et_formula_tdot_es_formula *)

let idx_cal = 2;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 25 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
  (Camlline_symbol_t.Camlline_for_formula_symbol
    (Camlline_for_formula_symbol_t.Camlline_for_formula_uno_symbol
      (Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_top_symbol
        Camlline_for_formula_uno_top_symbol_t.Let_tup_at_equal_et_tag_vdot_et_tuple_off_et_tag_tag_at_in)),
   [2; 1; 2; 2; 3; 1; 2; 8; 2; 2])
);;

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;
    
test_number 26 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
  [(Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "triangle"),
    [1; 2; 1; 2; 2; 3; 1; 2; 8; 2; 2])]
);;

let str = Camlline_value_v.string_off_camlline_tag tag_cal;;

test_number 27 (
str 
(* : string *)
  =
   "  let sex_tri = Triangle_tag_v.triangle_sextup_off_triangle_tag tag_tri in"
);;

let str_l = Group_value_v.string_list_off_group_tag tag_gro;; 

test_number 28 (
str_l
(* : string list *)
=
["  let tag_tri = Tag_v.make sym_tri soi_tri in";
 "  let sex_tri = Triangle_tag_v.triangle_sextup_off_triangle_tag tag_tri in"]
);;

(* 2 Group_for_formula_body_top_main_builder_symbol_t.Builder_node_sole_index_builder_list *)

let idx_gro = 2;;
let tag_gro = List.nth tag_gro_l (idx_gro-1);;

test_number 29 (
tag_gro 
(* : Group_symbol_t.group_symbol Tag_t.tag *)
=
  (Group_symbol_t.Group_for_formula_symbol
    (Group_for_formula_symbol_t.Group_for_formula_body_symbol
      (Group_for_formula_body_symbol_t.Group_for_formula_body_top_symbol
        (Group_for_formula_body_top_symbol_t.Group_for_formula_body_top_main_builder_symbol
          Group_for_formula_body_top_main_builder_symbol_t.Builder_node_sole_index_builder_list))),
   [2; 2; 2; 3; 1; 2; 8; 2; 2])
);;

let tag_cal_l = Group_formula_v.camlline_tag_list_off_group_tag tag_gro;;

test_number 30 (
tag_cal_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
   [(Camlline_symbol_t.Camlline_for_formula_symbol
     (Camlline_for_formula_symbol_t.Camlline_for_formula_duo_symbol
       (Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_top_builder_symbol
         Camlline_for_formula_duo_main_builder_symbol_t.Let_sym_ab_l_equal_eb_symbol_list_by_em_tag_provider_vdot_provide_tag_am_in)),
    [1; 2; 2; 2; 3; 1; 2; 8; 2; 2]);
   (Camlline_symbol_t.Camlline_for_formula_symbol
     (Camlline_for_formula_symbol_t.Camlline_for_formula_uno_symbol
       (Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_builder_symbol
         Camlline_for_formula_uno_builder_symbol_t.Let_soi_ab_l_equal)),
    [2; 2; 2; 2; 3; 1; 2; 8; 2; 2]);
   (Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_function_symbol
       Camlline_constant_function_symbol_t.Sole_index_vdot_son_sole_index_list_of_int_of_length_of_sole_index),
    [3; 2; 2; 2; 3; 1; 2; 8; 2; 2]);
   (Camlline_symbol_t.Camlline_for_formula_symbol
     (Camlline_for_formula_symbol_t.Camlline_for_formula_duo_symbol
       (Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_main_builder_symbol
         Camlline_for_formula_duo_main_builder_symbol_t.One_lpar_list_dot_length_sym_ab_l_rpar_soi_am_in)),
    [4; 2; 2; 2; 3; 1; 2; 8; 2; 2])]
);;

(* 1 Camlline_for_formula_duo_main_builder_symbol_t.Let_sym_ab_l_equal_eb_symbol_list_by_em_tag_provider_vdot_provide_tag_am_in *)

let idx_cal = 1;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 31 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
  (Camlline_symbol_t.Camlline_for_formula_symbol
    (Camlline_for_formula_symbol_t.Camlline_for_formula_duo_symbol
      (Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_top_builder_symbol
        Camlline_for_formula_duo_main_builder_symbol_t.Let_sym_ab_l_equal_eb_symbol_list_by_em_tag_provider_vdot_provide_tag_am_in)),
   [1; 2; 2; 2; 3; 1; 2; 8; 2; 2])
);;

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;
    
test_number 32 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
 [(Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "triangle"),
    [1; 1; 2; 2; 2; 3; 1; 2; 8; 2; 2]);
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_one_son "point"),
    [2; 1; 2; 2; 2; 3; 1; 2; 8; 2; 2])]
);;

let str = Camlline_value_v.string_off_camlline_tag tag_cal;;

test_number 33 (
str
(* : string *)
  =
"  let sym_poi_l = Triangle_interface_v.make sex_tri in"
);;

(* 2 Camlline_for_formula_uno_builder_symbol_t.Let_soi_ab_l_equal *)

let idx_cal = 2;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 34 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
  (Camlline_symbol_t.Camlline_for_formula_symbol
    (Camlline_for_formula_symbol_t.Camlline_for_formula_uno_symbol
      (Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_builder_symbol
        Camlline_for_formula_uno_builder_symbol_t.Let_soi_ab_l_equal)),
   [2; 2; 2; 2; 3; 1; 2; 8; 2; 2])
);;

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;
    
test_number 35 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
  [(Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_one_son "point"),
    [1; 2; 2; 2; 2; 3; 1; 2; 8; 2; 2])]
);;

let str = Camlline_value_v.string_off_camlline_tag tag_cal;;

test_number 36 (
str
(* : string *)
  =
"  let soi_poi_l ="
);;

(* 3 Camlline_for_formula_uno_son_symbol_t.Sole_index_vdot_es_sole_index_list_of_int_of_length_of_sole_index *)

let idx_cal = 3;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 37 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
 (Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_function_symbol
      Camlline_constant_function_symbol_t.Sole_index_vdot_son_sole_index_list_of_int_of_length_of_sole_index),
   [3; 2; 2; 2; 3; 1; 2; 8; 2; 2])
);;

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;
    
test_number 38 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
 []
);;

let str = Camlline_value_v.string_off_camlline_tag tag_cal;;

test_number 39 (
str
(* : string *)
  =
"  Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index"
);;

(* 4 Camlline_for_formula_duo_main_builder_symbol_t.One_lpar_list_dot_length_sym_ab_l_rpar_soi_am_in *)

let idx_cal = 4;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 40 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
  (Camlline_symbol_t.Camlline_for_formula_symbol
    (Camlline_for_formula_symbol_t.Camlline_for_formula_duo_symbol
      (Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_main_builder_symbol
        Camlline_for_formula_duo_main_builder_symbol_t.One_lpar_list_dot_length_sym_ab_l_rpar_soi_am_in)),
   [4; 2; 2; 2; 3; 1; 2; 8; 2; 2])
);;

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;
    
test_number 41 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
  [(Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "triangle"),
    [1; 4; 2; 2; 2; 3; 1; 2; 8; 2; 2]);
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_one_son "point"),
    [2; 4; 2; 2; 2; 3; 1; 2; 8; 2; 2])]
);;

let str = Camlline_value_v.string_off_camlline_tag tag_cal;;

test_number 42 (
str
(* : string *)
  =
"    1 (List.length sym_poi_l) soi_tri in"
);;

let str_l = Group_value_v.string_list_off_group_tag tag_gro;;

test_number 43 (
str_l
(* : string list *)
=
["  let sym_poi_l = Triangle_interface_v.make sex_tri in";
 "  let soi_poi_l =";
 "  Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index";
 "    1 (List.length sym_poi_l) soi_tri in"]
);;

let str_l = Section_value_v.string_list_off_section_tag tag_sec;;

test_number 44 (
str_l 
(* : string list*)
 =
 ["  let tag_tri = Tag_v.make sym_tri soi_tri in";
   "  let sex_tri = Triangle_tag_v.triangle_sextup_off_triangle_tag tag_tri in";
   "  let sym_poi_l = Triangle_interface_v.make sex_tri in";
   "  let soi_poi_l =";
   "  Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index";
   "    1 (List.length sym_poi_l) soi_tri in"]
);;

(* 3 Section_for_formula_body_builder_symbol_t.Tag_builder_basic_list *)

let idx_sec = 3;;
let tag_sec = List.nth tag_sec_l (idx_sec-1);;

test_number 45 (
tag_sec 
(* : Section_symbol_t.section_symbol Tag_t.tag *)
=
  (Section_symbol_t.Section_for_formula_symbol
    (Section_for_formula_symbol_t.Section_for_formula_body_symbol
      (Section_for_formula_body_symbol_t.Section_for_formula_body_builder_symbol
        Section_for_formula_body_builder_symbol_t.Tag_builder_basic_list)),
   [3; 2; 3; 1; 2; 8; 2; 2])
);;

let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec;;

test_number 46 (
tag_gro_l 
(* : Group_symbol_t.group_symbol Tag_t.tag list *)
 =
  [(Group_symbol_t.Group_for_formula_symbol
     (Group_for_formula_symbol_t.Group_for_formula_body_symbol
       (Group_for_formula_body_symbol_t.Group_for_formula_body_builder_symbol
         (Group_for_formula_body_builder_symbol_t.Group_for_formula_body_builder_alone_symbol
           Group_for_formula_body_builder_alone_symbol_t.Generatorset_symbol_of_builder_symbol))),
    [1; 3; 2; 3; 1; 2; 8; 2; 2]);
   (Group_symbol_t.Group_for_formula_symbol
     (Group_for_formula_symbol_t.Group_for_formula_body_symbol
       (Group_for_formula_body_symbol_t.Group_for_formula_body_builder_symbol
         (Group_for_formula_body_builder_symbol_t.Group_for_formula_body_builder_alone_symbol
           Group_for_formula_body_builder_alone_symbol_t.Tag_builder_list))),
    [2; 3; 2; 3; 1; 2; 8; 2; 2])]
);;

(* 4 Section_for_formula_body_son_top_builder_symbol_t.Builder_tag_list_topson_pattern_bare_for_formula *)

let idx_sec = 4;;
let tag_sec = List.nth tag_sec_l (idx_sec-1);;

test_number 47 (
tag_sec 
(* : Section_symbol_t.section_symbol Tag_t.tag *)
=
  (Section_symbol_t.Section_for_any_symbol
    (Section_for_any_symbol_t.Section_for_any_footer_symbol
      Section_for_any_footer_symbol_t.Double_semicolon),
   [4; 2; 3; 1; 2; 8; 2; 2])
);;

let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec;;

test_number 48 (
tag_gro_l 
(* : Group_symbol_t.group_symbol Tag_t.tag list *)
 =
  [(Group_symbol_t.Group_for_any_symbol
     (Group_for_any_symbol_t.Group_for_any_footer_symbol
       Group_for_any_footer_symbol_t.Double_semicolon),
    [1; 4; 2; 3; 1; 2; 8; 2; 2])]
);;

let str_l = Camlparagraph_value_v.string_list_off_camlparagraph_tag tag_cap;;

test_number 49 (
 str_l 
(* : string list *)
=
  ["let build_n_store sym_tri soi_tri =";
   "  let tag_tri = Tag_v.make sym_tri soi_tri in";
   "  let sex_tri = Triangle_tag_v.triangle_sextup_off_triangle_tag tag_tri in";
   "  let sym_poi_l = Triangle_interface_v.make sex_tri in";
   "  let soi_poi_l =";
   "  Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index";
   "    1 (List.length sym_poi_l) soi_tri in";
   "  let gss_of_sym = Generatorset_symbol_v.generatorset_symbol_of_point_symbol in";
   "  Tools_fgnr_v.store_builder_gss_datastructure_gss_of_sym sym_poi_l soi_poi_l";
   "  List.map2 Tag_v.make sym_poi_l soi_poi_l";
   ";;"]
);;

let val_cap = Camlparagraph_value_v.retrieve tag_cap;;

let nam_fil = Camlparagraph_value_v.fullnameoffile "./" tag_cap;;

test_number 50 (
nam_fil
(* : string *)
  =
  "./Triangle_formula_building_and_storing_basic_sons_let_build_n_store_basic_sons_v.ml"
);;

Camlparagraph_value_v.write "./" tag_cap;;

