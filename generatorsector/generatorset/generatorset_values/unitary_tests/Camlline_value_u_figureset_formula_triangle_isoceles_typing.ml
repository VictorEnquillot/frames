open Make_test_v;;

testing "Camlline_value_v
   Camlline_value_u_figureset_formula_triangle_isoceles_typing.ml";;

(* toplevel 
   #use "Camlline_value_u_figureset_formula_triangle_isoceles_typing.ml";;

*)

let nam_cod = "Camlline_value_u_figureset_formula_triangle_isoceles_typing.ml";;

let nam_dom = "figure";;
let nam_cat = "formula";;
let nam_ent = "triangle_isoceles";;
let nam_cof = "type_alone";;
let nam_usf = "implementation_for_formula";;
let nam_ite = "typing_for_formula";;

let sym_dom = Domain_symbol_v.make nam_dom "";;
let idx_dom = Domain_symbol_v.list_index_of_domain_symbol sym_dom;;
let soi_dom = Sole_index_v.make idx_dom [];;
let gss_dom = Generatorset_symbol_v.generatorset_symbol_of_domain_symbol sym_dom;;
Generatorset_symbol_by_sole_index_register_v.store soi_dom gss_dom;;
let tag_dom = Tag_v.make sym_dom soi_dom;;

let tag_cat_l = Domain_formula_v.category_tag_list_off_domain_tag tag_dom;;
let sel_cat = (fun c -> Category_symbol_v.name c = nam_cat);;
let tag_cat = Doublet_list_v.find_if_left sel_cat tag_cat_l;;

let tag_ent_l = Category_formula_v.entity_tag_list_off_category_tag tag_cat;;
let sel_ent = (fun e -> Entity_symbol_v.string_off e = nam_ent);;
let tag_ent = Doublet_list_v.find_if_left sel_ent tag_ent_l;;

let tag_cof_l = Entity_formula_v.contentfile_tag_list_off_entity_tag tag_ent;;
let sel_cof = (fun c -> Contentfile_symbol_v.name c = nam_cof);;
let tag_cof = Doublet_list_v.find_if_left sel_cof tag_cof_l;;

let tag_usf_l = Contentfile_formula_v.usagefile_tag_list_off_contentfile_tag tag_cof;;
let sel_usf = (fun u -> Usagefile_symbol_v.name u = nam_usf);;
let tag_usf = Doublet_list_v.find_if_left sel_usf tag_usf_l;;

let tag_ite_l = Usagefile_formula_v.item_tag_list_off_usagefile_tag tag_usf;;
let sel_ite = (fun i -> Item_symbol_v.name i = nam_ite);;
let tag_ite = Doublet_list_v.find_if_left sel_ite tag_ite_l;;

test_number 1 (
tag_ite
(* : Item_symbol_t.item_symbol * Sole_index_t.sole_index *)
=
  (Item_symbol_t.Item_for_formula_symbol
    (Item_for_formula_symbol_t.Item_for_formula_by_group_topsons_symbol
      Item_for_formula_by_group_topsons_symbol_t.Typing_for_formula),
   [2; 1; 1; 9; 2; 2])
);;

let tag_cap_l = Item_formula_v.camlparagraph_tag_list_off_item_tag tag_ite;;

test_number 2 (
tag_cap_l
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
  =
 [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       Camlparagraph_for_any_comment_symbol_t.Item_title),
    [1; 2; 1; 1; 9; 2; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_formula_symbol
     Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_type,
    [2; 2; 1; 1; 9; 2; 2])]
);;

(* Camlparagraph : Type_definition_for_formula *)

let idx_cap = 2;;
let tag_cap = List.nth tag_cap_l (idx_cap-1);;

test_number 3 (
tag_cap
(* : Item_symbol_t.item_symbol * Sole_index_t.sole_index *)
=
  (Camlparagraph_symbol_t.Camlparagraph_for_formula_symbol
    Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_type,
   [2; 2; 1; 1; 9; 2; 2])
);;

let tag_sec_l = Camlparagraph_formula_v.section_tag_list_off_camlparagraph_tag tag_cap;;

test_number 4 (
tag_sec_l
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
=
   [(Section_symbol_t.Section_for_any_symbol
     (Section_for_any_symbol_t.Section_for_any_header_symbol
       (Section_for_any_header_symbol_t.Section_for_any_header_constant_symbol
         Section_for_any_header_constant_symbol_t.Type_et_any_equal)),
    [1; 2; 2; 1; 1; 9; 2; 2]);
   (Section_symbol_t.Section_for_any_symbol
     (Section_for_any_symbol_t.Section_for_any_body_symbol
       (Section_for_any_body_symbol_t.Section_for_any_body_son_symbol
         Section_for_any_body_son_symbol_t.Pipe_topson_any_type_notleaf_constructors)),
    [2; 2; 2; 1; 1; 9; 2; 2]);
   (Section_symbol_t.Section_for_formula_symbol
     (Section_for_formula_symbol_t.Section_for_formula_body_symbol
       (Section_for_formula_body_symbol_t.Section_for_formula_body_son_builder_symbol
         Section_for_formula_body_son_builder_symbol_t.Pipe_topson_formula_type_ofstring_constructors)),
    [3; 2; 2; 1; 1; 9; 2; 2]);
   (Section_symbol_t.Section_for_formula_symbol
     (Section_for_formula_symbol_t.Section_for_formula_body_symbol
       (Section_for_formula_body_symbol_t.Section_for_formula_body_son_builder_symbol
         Section_for_formula_body_son_builder_symbol_t.Pipe_topson_formula_type_bare_constructors)),
    [4; 2; 2; 1; 1; 9; 2; 2]);
   (Section_symbol_t.Section_for_any_symbol
     (Section_for_any_symbol_t.Section_for_any_footer_symbol
       Section_for_any_footer_symbol_t.Double_semicolon),
    [5; 2; 2; 1; 1; 9; 2; 2])]
);;

(* 1 Section_for_any_header_constant_symbol_t.Type_et_any_equal *)

let idx_sec = 1;;
let tag_sec = List.nth tag_sec_l (idx_sec-1);;

test_number 5 (
tag_sec
(* : Section_tag_t.section_tag *)
  =
  (Section_symbol_t.Section_for_any_symbol
    (Section_for_any_symbol_t.Section_for_any_header_symbol
      (Section_for_any_header_symbol_t.Section_for_any_header_constant_symbol
        Section_for_any_header_constant_symbol_t.Type_et_any_equal)),
   [1; 2; 2; 1; 1; 9; 2; 2])
);;

let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec;;

(* Group *)

let idx_gro = 1;;
let tag_gro = List.nth tag_gro_l (idx_gro-1);;

test_number 6 (
tag_gro
(* : Section_tag_t.section_tag *)
  =
  (Group_symbol_t.Group_for_any_symbol
    (Group_for_any_symbol_t.Group_for_any_header_symbol
      (Group_for_any_header_symbol_t.Group_for_any_header_constant_symbol
        Group_for_any_header_constant_symbol_t.Type_et_any_equal)),
   [1; 1; 2; 2; 1; 1; 9; 2; 2])
);;


let tag_cal_l = Group_formula_v.camlline_tag_list_off_group_tag tag_gro;;

(* Camlline *)


let idx_cal = 1;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 7 (
tag_cal
=
  (Camlline_symbol_t.Camlline_for_any_symbol
    (Camlline_for_any_symbol_t.Camlline_for_any_uno_symbol
      (Camlline_for_any_uno_symbol_t.Camlline_for_any_uno_camltype_symbol
        (Camlline_for_any_uno_camltype_symbol_t.Camlline_for_any_uno_camltype_top_symbol
          Camlline_for_any_uno_camltype_top_symbol_t.Type_et_any_equal))),
   [1; 1; 1; 2; 2; 1; 1; 9; 2; 2])
);;

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;

test_number 8 (
tag_ent_l
=
 [(Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "triangle_isoceles"),
    [1; 1; 1; 1; 2; 2; 1; 1; 9; 2; 2])]
);;

let nam_fil = Camlline_value_v.fullnameoffile "./" tag_cal;;

test_number 9 (
nam_fil
=
  "./Triangle_isoceles_formula_typing_for_formula_camlparagraph_for_formula_type_type_et_any_equal_t.ml"
);;

let str = Camlline_value_v.string_off_camlline_tag tag_cal;;

test_number 10 (
str 
(* : string *)
  = 
"type triangle_isoceles_formula ="
);;

(* 2 Section_for_any_body_son_symbol_t.Pipe_topson_any_type_notleaf_constructors *)

let idx_sec = 2;;
let tag_sec = List.nth tag_sec_l (idx_sec-1);;

test_number 11 (
tag_sec
(* : Section_tag_t.section_tag *)
  =
   (Section_symbol_t.Section_for_any_symbol
    (Section_for_any_symbol_t.Section_for_any_body_symbol
      (Section_for_any_body_symbol_t.Section_for_any_body_son_symbol
        Section_for_any_body_son_symbol_t.Pipe_topson_any_type_notleaf_constructors)),
   [2; 2; 2; 1; 1; 9; 2; 2])
);;

let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec;;

test_number 12 (
tag_gro_l = []
);;

(* 3 Section_for_any_body_son_symbol_t.Pipe_topson_any_type_notleaf_constructors *)

let idx_sec = 3;;
let tag_sec = List.nth tag_sec_l (idx_sec-1);;

test_number 13 (
tag_sec
(* : Section_tag_t.section_tag *)
  =
 (Section_symbol_t.Section_for_formula_symbol
    (Section_for_formula_symbol_t.Section_for_formula_body_symbol
      (Section_for_formula_body_symbol_t.Section_for_formula_body_son_builder_symbol
        Section_for_formula_body_son_builder_symbol_t.Pipe_topson_formula_type_ofstring_constructors)),
   [3; 2; 2; 1; 1; 9; 2; 2])
);;

let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec;;

test_number 14 (
tag_gro_l = []
);;

(* 4 Section_for_any_body_son_symbol_t.Pipe_topson_any_type_notleaf_constructors *)

let idx_sec = 4;;
let tag_sec = List.nth tag_sec_l (idx_sec-1);;

test_number 15 (
tag_sec
(* : Section_tag_t.section_tag *)
  =
 (Section_symbol_t.Section_for_formula_symbol
    (Section_for_formula_symbol_t.Section_for_formula_body_symbol
      (Section_for_formula_body_symbol_t.Section_for_formula_body_son_builder_symbol
        Section_for_formula_body_son_builder_symbol_t.Pipe_topson_formula_type_bare_constructors)),
   [4; 2; 2; 1; 1; 9; 2; 2])
);;

let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec;;

test_number 16 (
tag_gro_l
(* : Group_tag_t.group_tag list *)
=
  [(Group_symbol_t.Group_for_formula_symbol
     (Group_for_formula_symbol_t.Group_for_formula_body_symbol
       (Group_for_formula_body_symbol_t.Group_for_formula_body_son_symbol
         (Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_builder_symbol
           Group_for_formula_body_son_builder_symbol_t.Pipe_topson_formula_type_bare_one_constructor))),
    [1; 4; 2; 2; 1; 1; 9; 2; 2]);
   (Group_symbol_t.Group_for_formula_symbol
     (Group_for_formula_symbol_t.Group_for_formula_body_symbol
       (Group_for_formula_body_symbol_t.Group_for_formula_body_son_symbol
         (Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_builder_symbol
           Group_for_formula_body_son_builder_symbol_t.Pipe_topson_formula_type_bare_one_constructor))),
    [2; 4; 2; 2; 1; 1; 9; 2; 2]);
   (Group_symbol_t.Group_for_formula_symbol
     (Group_for_formula_symbol_t.Group_for_formula_body_symbol
       (Group_for_formula_body_symbol_t.Group_for_formula_body_son_symbol
         (Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_builder_symbol
           Group_for_formula_body_son_builder_symbol_t.Pipe_topson_formula_type_bare_one_constructor))),
    [3; 4; 2; 2; 1; 1; 9; 2; 2]);
   (Group_symbol_t.Group_for_formula_symbol
     (Group_for_formula_symbol_t.Group_for_formula_body_symbol
       (Group_for_formula_body_symbol_t.Group_for_formula_body_son_symbol
         (Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_builder_symbol
           Group_for_formula_body_son_builder_symbol_t.Pipe_topson_formula_type_bare_one_constructor))),
    [4; 4; 2; 2; 1; 1; 9; 2; 2])]
);;

(* 1 Group *)

let idx_gro = 1;;
let tag_gro = List.nth tag_gro_l (idx_gro-1);;

test_number 17 (
tag_gro
(* : Section_tag_t.section_tag *)
  =
 (Group_symbol_t.Group_for_formula_symbol
    (Group_for_formula_symbol_t.Group_for_formula_body_symbol
      (Group_for_formula_body_symbol_t.Group_for_formula_body_son_symbol
        (Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_builder_symbol
          Group_for_formula_body_son_builder_symbol_t.Pipe_topson_formula_type_bare_one_constructor))),
   [1; 4; 2; 2; 1; 1; 9; 2; 2])
);;

let tag_cal_l = Group_formula_v.camlline_tag_list_off_group_tag tag_gro;;

(* 1 Camlline *)

let idx_cal = 1;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 18 (
tag_cal
=
  (Camlline_symbol_t.Camlline_for_formula_symbol
    (Camlline_for_formula_symbol_t.Camlline_for_formula_duo_symbol
      (Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_son_builder_symbol
        Camlline_for_formula_duo_son_builder_symbol_t.Pipe_es_constructor_of_eb_tag_tdot_eb_tag_list)),
   [1; 1; 4; 2; 2; 1; 1; 9; 2; 2])
);;

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;

test_number 19 (
tag_ent_l
=
  [(Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Bare "triangle_isoceles_equilateral")),
    [1; 1; 1; 4; 2; 2; 1; 1; 9; 2; 2]);
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_one_son "point"),
    [2; 1; 1; 4; 2; 2; 1; 1; 9; 2; 2])]
);;

let nam_fil = Camlline_value_v.fullnameoffile "./" tag_cal;;

test_number 20 (
nam_fil
=
  "./Triangle_isoceles_formula_typing_for_formula_camlparagraph_for_formula_type_pipe_es_constructor_of_eb_tag_tdot_eb_tag_list_t.ml"
);;

let str = Camlline_value_v.string_off_camlline_tag tag_cal;;

test_number 21 (
str 
(* : string *)
  = 
 "  | Triangle_isoceles_equilateral of Point_tag_t.point_tag list"
);;

let str_l = Item_value_v.string_list_off_item_tag tag_ite;;

test_number 22 (
 str_l 
(* : string list *)
=
["(** {6 Typing_for_formula} *)"; 
 "type triangle_isoceles_formula =";
 "  | Triangle_isoceles_equilateral of Point_tag_t.point_tag list";
 "  | Triangle_isoceles_right of Point_tag_t.point_tag list";
 "  | Triangle_isoceles_acute of Point_tag_t.point_tag list";
 "  | Triangle_isoceles_obtuse of Point_tag_t.point_tag list"; 
 ";;"]
);;
