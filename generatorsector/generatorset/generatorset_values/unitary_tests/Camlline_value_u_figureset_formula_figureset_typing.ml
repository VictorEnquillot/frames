open Make_test_v;;

testing "Camlline_value_v with
   Camlline_value_u_figureset_formula_figureset_typing.ml";;

(* toplevel 
   #use "Camlline_value_u_figureset_formula_figureset_typing.ml";;

*)

let nam_cod = "Camlline_value_u_figureset_formula_figureset_typing.ml";;

let nam_dom = "figure";;
let nam_cof = "type_alone";;
let nam_ent = "figure";;
let nam_cat = "formula";;
let nam_usf = "implementation_for_formula";;

let sym_dom = Domain_symbol_v.make nam_dom "";;
let idx_dom = Domain_symbol_v.list_index_of_domain_symbol sym_dom;;
let soi_dom = Sole_index_v.make idx_dom [];;
let gss_dom = Generatorset_symbol_v.generatorset_symbol_of_domain_symbol sym_dom;;
Generatorset_symbol_by_sole_index_register_v.store soi_dom gss_dom;;
let tag_dom = Tag_v.make sym_dom soi_dom;;

test_number 1 (
tag_dom
(* : Domain_symbol_t.domain_symbol Tag_t.tag *)
= 
(Domain_symbol_t.Figure, [2])
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

test_number 4 (
tag_ent_l 
(* : Entity_proper_tag_t.entity_tag list *)
=
 [(Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate"),
    [1; 2; 2]);
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate_cartesian"),
    [2; 2; 2]);
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate_cylindrical"),
    [3; 2; 2]);
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate_polar"),
    [4; 2; 2]);
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate_spherical"),
    [5; 2; 2]);
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_one_son "fake"),
    [6; 2; 2]);
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_one_son "fake_son"),
    [7; 2; 2]);
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_one_son "point"),
    [8; 2; 2]);
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "triangle"),
    [9; 2; 2]);
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "triangle_isoceles"),
    [9; 2; 2]);
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "triangle_scalene"),
    [11; 2; 2]);
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_one_son "vector"),
    [12; 2; 2])]
);;

let sel_ent = (fun e -> Entity_symbol_v.string_off e = nam_ent)
let tag_ent = Doublet_list_v.find_if_left sel_ent tag_ent_l;;

test_number 5 (
tag_ent
(* : Entity_symbol_t.entity_proper_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Entity_symbol_t.Entity_proper_symbol
   (Entity_proper_symbol_t.Entity_proper_with_sons "figure"),
 [1; 2; 2])
);;

let tag_cof_l = Entity_formula_v.contentfile_tag_list_off_entity_tag tag_ent;;
let sel_cof = (fun c -> Contentfile_symbol_v.name c = nam_cof);;
let tag_cof = Doublet_list_v.find_if_left sel_cof tag_cof_l;;

test_number 6 (
tag_cof
=
(Contentfile_symbol_t.Type_alone, [1; 1; 2; 2])
);;

let tag_usf_l = Contentfile_formula_v.usagefile_tag_list_off_contentfile_tag tag_cof;;
let sel_usf = (fun u -> Usagefile_symbol_v.name u = nam_usf);;
let tag_usf = Doublet_list_v.find_if_left sel_usf tag_usf_l;;

test_number 7 (
tag_usf
  =
  (Usagefile_symbol_t.Usagefile_for_formula_symbol
    Usagefile_for_formula_symbol_t.Implementation_for_formula,
   [1; 1; 1; 2; 2])
);;

let sym_ent = Tag_v.entity_off_tag tag_ent;;
let sym_cat = Tag_v.entity_off_tag tag_cat;;
let sym_dom = Tag_v.entity_off_tag tag_dom;;
let tri_ent = Triplet_v.make sym_ent sym_cat sym_dom;;
let sym_ets_l = Entity_topson_symbol_list_by_entity_tritup_provider_v.provide tri_ent;;

test_number 8 (
sym_ets_l
(*: Entity_symbol_t.entity_symbol list *)
=
  [Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate");
   Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_one_son "point");
   Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_sons "triangle");
   Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_one_son "vector");
   Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_one_son "fake")]
);;

let tag_ite_l = Usagefile_formula_v.item_tag_list_off_usagefile_tag tag_usf;;

test_number 9 (
 tag_ite_l
(* : Item_symbol_t.item_symbol Tag_t.tag list *)
=
  [(Item_symbol_t.Item_for_any_only_top_symbol
     Item_for_any_only_top_symbol_t.Heading,
    [1; 1; 1; 1; 2; 2]);
   (Item_symbol_t.Item_for_formula_symbol
     (Item_for_formula_symbol_t.Item_for_formula_by_group_topsons_symbol
       Item_for_formula_by_group_topsons_symbol_t.Typing_for_formula),
    [2; 1; 1; 1; 2; 2]);
   (Item_symbol_t.Item_for_any_only_top_symbol
     Item_for_any_only_top_symbol_t.Ending,
    [3; 1; 1; 1; 2; 2])]
);;

let nam_ite = "typing_for_formula";;
let sel_ite = (fun i -> Item_symbol_v.name i = nam_ite);;
let tag_ite = Doublet_list_v.find_if_left sel_ite tag_ite_l;; 

test_number 10 (
tag_ite
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
  (Item_symbol_t.Item_for_formula_symbol
    (Item_for_formula_symbol_t.Item_for_formula_by_group_topsons_symbol
      Item_for_formula_by_group_topsons_symbol_t.Typing_for_formula),
   [2; 1; 1; 1; 2; 2])
);;

let tag_cap_l = Item_formula_v.camlparagraph_tag_list_off_item_tag tag_ite;;

test_number 11 (
tag_cap_l
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
=
  [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       Camlparagraph_for_any_comment_symbol_t.Item_title),
    [1; 2; 1; 1; 1; 2; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_formula_symbol
     Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_type,
    [2; 2; 1; 1; 1; 2; 2])]
);;

(* 2 Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_type *)

(* type figure_symbol = *)
(* ;; *)

let idx_cap = 2;;
let tag_cap = List.nth tag_cap_l (idx_cap-1);;

test_number 12 (
tag_cap
=
  (Camlparagraph_symbol_t.Camlparagraph_for_formula_symbol
    Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_type,
   [2; 2; 1; 1; 1; 2; 2])
);;

let tag_sec_l = Camlparagraph_formula_v.section_tag_list_off_camlparagraph_tag tag_cap;;

test_number 13 (
tag_sec_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
 [(Section_symbol_t.Section_for_any_symbol
     (Section_for_any_symbol_t.Section_for_any_header_symbol
       (Section_for_any_header_symbol_t.Section_for_any_header_constant_symbol
         Section_for_any_header_constant_symbol_t.Type_et_any_equal)),
    [1; 2; 2; 1; 1; 1; 2; 2]);
   (Section_symbol_t.Section_for_any_symbol
     (Section_for_any_symbol_t.Section_for_any_body_symbol
       (Section_for_any_body_symbol_t.Section_for_any_body_son_symbol
         Section_for_any_body_son_symbol_t.Pipe_topson_any_type_notleaf_constructors)),
    [2; 2; 2; 1; 1; 1; 2; 2]);
   (Section_symbol_t.Section_for_formula_symbol
     (Section_for_formula_symbol_t.Section_for_formula_body_symbol
       (Section_for_formula_body_symbol_t.Section_for_formula_body_son_builder_symbol
         Section_for_formula_body_son_builder_symbol_t.Pipe_topson_formula_type_ofstring_constructors)),
    [3; 2; 2; 1; 1; 1; 2; 2]);
   (Section_symbol_t.Section_for_formula_symbol
     (Section_for_formula_symbol_t.Section_for_formula_body_symbol
       (Section_for_formula_body_symbol_t.Section_for_formula_body_son_builder_symbol
         Section_for_formula_body_son_builder_symbol_t.Pipe_topson_formula_type_bare_constructors)),
    [4; 2; 2; 1; 1; 1; 2; 2]);
   (Section_symbol_t.Section_for_any_symbol
     (Section_for_any_symbol_t.Section_for_any_footer_symbol
       Section_for_any_footer_symbol_t.Double_semicolon),
    [5; 2; 2; 1; 1; 1; 2; 2])]
);; 


(* 1 Section_for_any_header_constant_symbol_t.Type_et_any_equal *)

let idx_sec = 1;;
let tag_sec = List.nth tag_sec_l (idx_sec-1);;

test_number 14 (
tag_sec 
(* : Section_symbol_t.section_symbol Tag_t.tag *)
=
  (Section_symbol_t.Section_for_any_symbol
    (Section_for_any_symbol_t.Section_for_any_header_symbol
      (Section_for_any_header_symbol_t.Section_for_any_header_constant_symbol
        Section_for_any_header_constant_symbol_t.Type_et_any_equal)),
   [1; 2; 2; 1; 1; 1; 2; 2])
);;

let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec;; 

test_number 15 (
tag_gro_l 
(* : Group_symbol_t.group_symbol Tag_t.tag list *)
 =
 [(Group_symbol_t.Group_for_any_symbol
     (Group_for_any_symbol_t.Group_for_any_header_symbol
       (Group_for_any_header_symbol_t.Group_for_any_header_constant_symbol
         Group_for_any_header_constant_symbol_t.Type_et_any_equal)),
    [1; 1; 2; 2; 1; 1; 1; 2; 2])]
);;

(* 1 Group_for_any_header_constant_symbol_t.Type_et_any_equal *)

let idx_gro = 1;;
let tag_gro = List.nth tag_gro_l (idx_gro-1);;

test_number 16 (
tag_gro 
(* : Group_symbol_t.group_symbol Tag_t.tag *)
=
  (Group_symbol_t.Group_for_any_symbol
    (Group_for_any_symbol_t.Group_for_any_header_symbol
      (Group_for_any_header_symbol_t.Group_for_any_header_constant_symbol
        Group_for_any_header_constant_symbol_t.Type_et_any_equal)),
   [1; 1; 2; 2; 1; 1; 1; 2; 2])
);;

let tag_cal_l = Group_formula_v.camlline_tag_list_off_group_tag tag_gro;; 

test_number 17 (
tag_cal_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
  [(Camlline_symbol_t.Camlline_for_any_symbol
     (Camlline_for_any_symbol_t.Camlline_for_any_uno_symbol
       (Camlline_for_any_uno_symbol_t.Camlline_for_any_uno_camltype_symbol
         (Camlline_for_any_uno_camltype_symbol_t.Camlline_for_any_uno_camltype_top_symbol
           Camlline_for_any_uno_camltype_top_symbol_t.Type_et_any_equal))),
    [1; 1; 1; 2; 2; 1; 1; 1; 2; 2])]
);;

let str_l = Group_value_v.string_list_off_group_tag tag_gro;;

test_number 18 (
str_l
(* : string list *)
=
["type figure_formula ="]
);;
 
(* Camlline_constant_function_symbol_t.let_name_of_topson_notleaf_equal *)

let idx_cal = 1;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 19 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
  (Camlline_symbol_t.Camlline_for_any_symbol
    (Camlline_for_any_symbol_t.Camlline_for_any_uno_symbol
      (Camlline_for_any_uno_symbol_t.Camlline_for_any_uno_camltype_symbol
        (Camlline_for_any_uno_camltype_symbol_t.Camlline_for_any_uno_camltype_top_symbol
          Camlline_for_any_uno_camltype_top_symbol_t.Type_et_any_equal))),
   [1; 1; 1; 2; 2; 1; 1; 1; 2; 2])
);;

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;
    
test_number 20 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
  [(Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "figure"),
    [1; 1; 1; 1; 2; 2; 1; 1; 1; 2; 2])]
);;

(* 2 Section_for_formula_body_son_symbol_t.Pipe_topson_symbol_type_notleaf_constructors *)

let idx_sec = 2;;
let tag_sec = List.nth tag_sec_l (idx_sec-1);;

test_number 21 (
tag_sec 
(* : Section_symbol_t.section_symbol Tag_t.tag *)
=
  (Section_symbol_t.Section_for_any_symbol
    (Section_for_any_symbol_t.Section_for_any_body_symbol
      (Section_for_any_body_symbol_t.Section_for_any_body_son_symbol
        Section_for_any_body_son_symbol_t.Pipe_topson_any_type_notleaf_constructors)),
   [2; 2; 2; 1; 1; 1; 2; 2])
);;

let str_l = Section_value_v.string_list_off_section_tag tag_sec;;

test_number 22 (
str_l 
(* : string list*)
 =
  ["  | Coordinate_formula of Coordinate_formula_t.coordinate_formula";
   "  | Point_formula of Point_formula_t.point_formula";
   "  | Triangle_formula of Triangle_formula_t.triangle_formula";
   "  | Vector_formula of Vector_formula_t.vector_formula";
   "  | Fake_formula of Fake_formula_t.fake_formula"]
);;

let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec;;

test_number 23 (
tag_gro_l 
(* : Group_symbol_t.group_symbol Tag_t.tag list *)
 =
  [(Group_symbol_t.Group_for_any_symbol
     (Group_for_any_symbol_t.Group_for_any_body_symbol
       (Group_for_any_body_symbol_t.Group_for_any_body_son_symbol
         Group_for_any_body_son_symbol_t.Pipe_topson_any_type_notleaf_one_constructor)),
    [1; 2; 2; 2; 1; 1; 1; 2; 2]);
   (Group_symbol_t.Group_for_any_symbol
     (Group_for_any_symbol_t.Group_for_any_body_symbol
       (Group_for_any_body_symbol_t.Group_for_any_body_son_symbol
         Group_for_any_body_son_symbol_t.Pipe_topson_any_type_notleaf_one_constructor)),
    [2; 2; 2; 2; 1; 1; 1; 2; 2]);
   (Group_symbol_t.Group_for_any_symbol
     (Group_for_any_symbol_t.Group_for_any_body_symbol
       (Group_for_any_body_symbol_t.Group_for_any_body_son_symbol
         Group_for_any_body_son_symbol_t.Pipe_topson_any_type_notleaf_one_constructor)),
    [3; 2; 2; 2; 1; 1; 1; 2; 2]);
   (Group_symbol_t.Group_for_any_symbol
     (Group_for_any_symbol_t.Group_for_any_body_symbol
       (Group_for_any_body_symbol_t.Group_for_any_body_son_symbol
         Group_for_any_body_son_symbol_t.Pipe_topson_any_type_notleaf_one_constructor)),
    [4; 2; 2; 2; 1; 1; 1; 2; 2]);
   (Group_symbol_t.Group_for_any_symbol
     (Group_for_any_symbol_t.Group_for_any_body_symbol
       (Group_for_any_body_symbol_t.Group_for_any_body_son_symbol
         Group_for_any_body_son_symbol_t.Pipe_topson_any_type_notleaf_one_constructor)),
    [5; 2; 2; 2; 1; 1; 1; 2; 2])]
);;

(* 1 Group_for_any_body_son_symbol_t.Pipe_topson_any_type_notleaf_one_constructor *)

let idx_gro = 1;;
let tag_gro = List.nth tag_gro_l (idx_gro-1);;

test_number 24 (
tag_gro 
(* : Group_symbol_t.group_symbol Tag_t.tag *)
=
  (Group_symbol_t.Group_for_any_symbol
    (Group_for_any_symbol_t.Group_for_any_body_symbol
      (Group_for_any_body_symbol_t.Group_for_any_body_son_symbol
        Group_for_any_body_son_symbol_t.Pipe_topson_any_type_notleaf_one_constructor)),
   [1; 2; 2; 2; 1; 1; 1; 2; 2])
);;

let tag_cal_l = Group_formula_v.camlline_tag_list_off_group_tag tag_gro;;

test_number 25 (
tag_cal_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
  [(Camlline_symbol_t.Camlline_for_any_symbol
     (Camlline_for_any_symbol_t.Camlline_for_any_uno_symbol
       (Camlline_for_any_uno_symbol_t.Camlline_for_any_uno_camltype_symbol
         (Camlline_for_any_uno_camltype_symbol_t.Camlline_for_any_uno_camltype_son_notleaf_symbol
           Camlline_for_any_uno_camltype_son_notleaf_symbol_t.Pipe_es_any_constructor_of_es_any_tdot_es_any))),
    [1; 1; 2; 2; 2; 1; 1; 1; 2; 2])]
);;

let str_l = Group_value_v.string_list_off_group_tag tag_gro;; 

test_number 26 (
str_l
(* : string list *)
=
  ["  | Coordinate_formula of Coordinate_formula_t.coordinate_formula"]
);;

(* 1 Camlline_for_any_uno_camltype_son_notleaf_symbol_t.Pipe_es_any_of_es_any_tdot_es_any *)

let idx_cal = 1;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 27 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
  (Camlline_symbol_t.Camlline_for_any_symbol
    (Camlline_for_any_symbol_t.Camlline_for_any_uno_symbol
      (Camlline_for_any_uno_symbol_t.Camlline_for_any_uno_camltype_symbol
        (Camlline_for_any_uno_camltype_symbol_t.Camlline_for_any_uno_camltype_son_notleaf_symbol
          Camlline_for_any_uno_camltype_son_notleaf_symbol_t.Pipe_es_any_constructor_of_es_any_tdot_es_any))),
   [1; 1; 2; 2; 2; 1; 1; 1; 2; 2])
);;

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;
    
test_number 28 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
  [(Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate"),
    [1; 1; 1; 2; 2; 2; 1; 1; 1; 2; 2])]
);;

let str = Camlline_value_v.string_off_camlline_tag tag_cal;;

test_number 29 (
str 
(* : string *)
  =
"  | Coordinate_formula of Coordinate_formula_t.coordinate_formula"
);;

(* 2 Group_for_any_body_son_symbol_t.Pipe_topson_any_type_notleaf_one_constructor *)

let idx_gro = 2;;
let tag_gro = List.nth tag_gro_l (idx_gro-1);;

test_number 30 (
tag_gro 
(* : Group_symbol_t.group_symbol Tag_t.tag *)
=
  (Group_symbol_t.Group_for_any_symbol
    (Group_for_any_symbol_t.Group_for_any_body_symbol
      (Group_for_any_body_symbol_t.Group_for_any_body_son_symbol
        Group_for_any_body_son_symbol_t.Pipe_topson_any_type_notleaf_one_constructor)),
   [2; 2; 2; 2; 1; 1; 1; 2; 2])
);;

let tag_cal_l = Group_formula_v.camlline_tag_list_off_group_tag tag_gro;;

test_number 31 (
tag_cal_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
  [(Camlline_symbol_t.Camlline_for_any_symbol
     (Camlline_for_any_symbol_t.Camlline_for_any_uno_symbol
       (Camlline_for_any_uno_symbol_t.Camlline_for_any_uno_camltype_symbol
         (Camlline_for_any_uno_camltype_symbol_t.Camlline_for_any_uno_camltype_son_notleaf_symbol
           Camlline_for_any_uno_camltype_son_notleaf_symbol_t.Pipe_es_any_constructor_of_es_any_tdot_es_any))),
    [1; 2; 2; 2; 2; 1; 1; 1; 2; 2])]
);;

let str_l = Group_value_v.string_list_off_group_tag tag_gro;;

test_number 32 (
str_l
(* : string list *)
=
  ["  | Point_formula of Point_formula_t.point_formula"]
);;

(* 1 Camlline_for_any_uno_camltype_son_notleaf_symbol_t.Pipe_es_any_of_es_any_tdot_es_any *)

let idx_cal = 1;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 33 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
  (Camlline_symbol_t.Camlline_for_any_symbol
    (Camlline_for_any_symbol_t.Camlline_for_any_uno_symbol
      (Camlline_for_any_uno_symbol_t.Camlline_for_any_uno_camltype_symbol
        (Camlline_for_any_uno_camltype_symbol_t.Camlline_for_any_uno_camltype_son_notleaf_symbol
          Camlline_for_any_uno_camltype_son_notleaf_symbol_t.Pipe_es_any_constructor_of_es_any_tdot_es_any))),
   [1; 2; 2; 2; 2; 1; 1; 1; 2; 2])
);;

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;
    
test_number 34 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
  [(Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_one_son "point"),
    [1; 1; 2; 2; 2; 2; 1; 1; 1; 2; 2])]
);;

let str = Camlline_value_v.string_off_camlline_tag tag_cal;;

test_number 35 (
str
(* : string *)
  =
"  | Point_formula of Point_formula_t.point_formula"
);;

(* 3 Section_for_formula_body_son_builder_symbol_t.Pipe_topson_formula_type_ofstring_constructors *)

let idx_sec = 3;;
let tag_sec = List.nth tag_sec_l (idx_sec-1);;

test_number 36 (
tag_sec 
(* : Section_symbol_t.section_symbol Tag_t.tag *)
=
  (Section_symbol_t.Section_for_formula_symbol
    (Section_for_formula_symbol_t.Section_for_formula_body_symbol
      (Section_for_formula_body_symbol_t.Section_for_formula_body_son_builder_symbol
        Section_for_formula_body_son_builder_symbol_t.Pipe_topson_formula_type_ofstring_constructors)),
   [3; 2; 2; 1; 1; 1; 2; 2])
);;

let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec;;

test_number 37 (
tag_gro_l 
(* : Group_symbol_t.group_symbol Tag_t.tag list *)
 =
  []
);;

(* 4 Section_for_formula_body_son_builder_symbol_t.Pipe_topson_formula_type_bare_constructors *)

let idx_sec = 4;;
let tag_sec = List.nth tag_sec_l (idx_sec-1);;

test_number 38 (
tag_sec 
(* : Section_symbol_t.section_symbol Tag_t.tag *)
=
  (Section_symbol_t.Section_for_formula_symbol
    (Section_for_formula_symbol_t.Section_for_formula_body_symbol
      (Section_for_formula_body_symbol_t.Section_for_formula_body_son_builder_symbol
        Section_for_formula_body_son_builder_symbol_t.Pipe_topson_formula_type_bare_constructors)),
   [4; 2; 2; 1; 1; 1; 2; 2])
);;

let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec;;

test_number 39 (
tag_gro_l 
(* : Group_symbol_t.group_symbol Tag_t.tag list *)
 =
  []
);;

let str_l = Camlparagraph_value_v.string_list_off_camlparagraph_tag tag_cap;;

test_number 40 (
 str_l 
(* : string list *)
=
  ["type figure_formula =";
   "  | Coordinate_formula of Coordinate_formula_t.coordinate_formula";
   "  | Point_formula of Point_formula_t.point_formula";
   "  | Triangle_formula of Triangle_formula_t.triangle_formula";
   "  | Vector_formula of Vector_formula_t.vector_formula";
   "  | Fake_formula of Fake_formula_t.fake_formula";
   ";;"]
);;

let val_cap = Camlparagraph_value_v.retrieve tag_cap;;

let nam_fil = Camlparagraph_value_v.fullnameoffile "./" tag_cap;;

test_number 41 (
nam_fil
(* : string *)
  =
 "./Figure_formula_typing_for_formula_camlparagraph_for_formula_type_t.ml"
);;

Camlparagraph_value_v.write "./" tag_cap;;

