open Make_test_v;;

testing "Camlline_value_v with
   Camlline_value_u_figureset_symbol_figureset_naming.ml";;

(* toplevel 
   #use "Camlline_value_u_figureset_symbol_figureset_naming.ml";;

*)

let nam_cod = "Camlline_value_u_figureset_symbol_figureset_naming.ml";;

let nam_dom = "figure";;
let nam_cof = "value_alone";;
let nam_enp = "figure";;
let nam_cat = "symbol";;
let nam_usf = "implementation_for_symbol";;

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
(Category_symbol_t.Symbol, [7; 2])
);;

let tag_enp_l = Category_formula_v.entity_tag_list_off_category_tag tag_cat;;

test_number 4 (
tag_enp_l 
(* : Entity_proper_tag_t.entity_tag list *)
=
  [(Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "figure"), [1; 7; 2]);
   (Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "triangle"), [2; 7; 2]);
   (Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "triangle_isoceles"), [3; 7; 2]);
   (Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "triangle_scalene"), [4; 7; 2]);
   (Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate"), [5; 7; 2]);
   (Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate_cartesian"), [6; 7; 2]);
   (Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate_cylindrical"), [7; 7; 2]);
   (Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate_polar"), [8; 7; 2]);
   (Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate_spherical"), [9; 7; 2])]
);;

let sel_enp = (fun e -> Entity_symbol_v.string_off e = nam_enp)
let tag_enp = Doublet_list_v.find_if_left sel_enp tag_enp_l;;

test_number 5 (
tag_enp
(* : Entity_symbol_t.entity_proper_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "figure"), [1; 7; 2])
);;

let sym_enp = Tag_v.entity_off_tag tag_enp;;
let sym_cat = Tag_v.entity_off_tag tag_cat;;
let tri_enp = (sym_enp, sym_cat, sym_dom) ;;
let sym_ent_l = Entity_topson_symbol_list_by_entity_proper_tritup_provider_v.provide tri_enp;;

test_number 6 (
 sym_ent_l 
(* : Entity_symbol_t.entity_symbol list *)
=
  [Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "triangle"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Sonnullary "vector"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Sonnullary "point"));
   Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate"))]
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
  (Usagefile_symbol_t.Usagefile_for_symbol_symbol
    Usagefile_for_symbol_symbol_t.Implementation_for_symbol,
   [1; 2; 1; 7; 2])
);;

let tag_ite_l = Usagefile_formula_v.item_tag_list_off_usagefile_tag tag_usf;;
let tag_ite_sl1 = List_v.sublist_of_int_of_int_of_list 0 14 tag_ite_l;;

test_number 9 (
 tag_ite_sl1
(* : Item_symbol_t.item_symbol Tag_t.tag list *)
=
  [(Item_symbol_t.Item_for_any_only_top_symbol
     (Item_for_symbol_only_top_symbol_t.Item_for_symbol_only_top_for_any_symbol
       Item_for_symbol_only_top_for_any_symbol_t.Heading),
    [1; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_for_any_only_top_symbol
     (Item_for_symbol_only_top_symbol_t.Item_for_symbol_only_top_for_any_symbol
       Item_for_symbol_only_top_for_any_symbol_t.Documenting),
    [2; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_by_group_topsons_symbol
     (Item_by_group_topsons_symbol_t.Item_by_group_topsons_for_symbol_symbol
       Item_by_group_topsons_for_symbol_symbol_t.Naming_for_symbol),
    [3; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_by_group_topsons_symbol
     (Item_by_group_topsons_symbol_t.Item_by_group_topsons_for_symbol_symbol
       Item_by_group_topsons_for_symbol_symbol_t.String_offing_for_symbol),
    [4; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_for_any_only_top_symbol
     (Item_for_symbol_only_top_symbol_t.Item_for_symbol_only_top_for_symbol_symbol
       Item_for_symbol_only_top_for_symbol_symbol_t.Longnaming_for_symbol),
    [5; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_for_any_only_top_symbol
     (Item_for_symbol_only_top_symbol_t.Item_for_symbol_only_top_for_symbol_symbol
       Item_for_symbol_only_top_for_symbol_symbol_t.Fullnaming_for_symbol),
    [6; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_topson_notleaf_symbol
     (Item_each_topson_notleaf_symbol_t.Item_each_topson_notleaf_for_symbol_symbol
       Item_for_symbol_each_topson_notleaf_symbol_t.Extracting_topson_for_symbol),
    [7; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_grandson_notleaf_symbol
     (Item_each_grandson_notleaf_symbol_t.Item_each_grandson_notleaf_for_symbol_symbol
       Item_for_symbol_each_grandson_notleaf_symbol_t.Extracting_grandson_for_symbol),
    [8; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_topson_notleaf_symbol
     (Item_each_topson_notleaf_symbol_t.Item_each_topson_notleaf_for_symbol_symbol
       Item_for_symbol_each_topson_notleaf_symbol_t.Querying_topson_notleaf_for_symbol),
    [9; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_grandson_notleaf_symbol
     (Item_each_grandson_notleaf_symbol_t.Item_each_grandson_notleaf_for_symbol_symbol
       Item_for_symbol_each_grandson_notleaf_symbol_t.Querying_grandson_notleaf_for_symbol),
    [10; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_topson_notleaf_symbol
     (Item_each_topson_notleaf_symbol_t.Item_each_topson_notleaf_for_symbol_symbol
       Item_for_symbol_each_topson_notleaf_symbol_t.Upgrading_topson_for_symbol),
    [11; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_grandson_notleaf_symbol
     (Item_each_grandson_notleaf_symbol_t.Item_each_grandson_notleaf_for_symbol_symbol
       Item_for_symbol_each_grandson_notleaf_symbol_t.Upgrading_grandson_for_symbol),
    [12; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_by_group_topsons_symbol
     (Item_by_group_topsons_symbol_t.Item_by_group_topsons_for_symbol_symbol
       Item_by_group_topsons_for_symbol_symbol_t.Making_for_symbol),
    [13; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_for_any_only_top_symbol
     (Item_for_symbol_only_top_symbol_t.Item_for_symbol_only_top_for_any_symbol
       Item_for_symbol_only_top_for_any_symbol_t.Ending),
    [14; 1; 2; 1; 7; 2])]
);;

let nam_ite = "naming_for_symbol";;
let sel_ite = (fun i -> Item_symbol_v.name i = nam_ite);;
let tag_ite = Doublet_list_v.find_if_left sel_ite tag_ite_l;; 

test_number 10 (
tag_ite
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
  (Item_symbol_t.Item_by_group_topsons_symbol
    (Item_by_group_topsons_symbol_t.Item_by_group_topsons_for_symbol_symbol
      Item_by_group_topsons_for_symbol_symbol_t.Naming_for_symbol),
   [3; 1; 2; 1; 7; 2])
);;

let tag_cap_l = Item_formula_v.camlparagraph_tag_list_off_item_tag tag_ite;;

test_number 11 (
tag_cap_l
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
=
  [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       (Camlparagraph_for_any_comment_symbol_t.Item_title "Naming_for_symbol")),
    [1; 3; 1; 2; 1; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_match_symbol
         Camlparagraph_for_symbol_let_match_symbol_t.Let_name_equal_function_for_symbol)),
    [2; 3; 1; 2; 1; 7; 2])]
);;

(* 2 Camlparagraph_for_symbol_let_match_symbol_t.Let_name_equal_function_for_symbol *)

let idx_cap = 2;;
let tag_cap = List.nth tag_cap_l (idx_cap-1);;

test_number 12 (
tag_cap
=
  (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
    (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
      (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_match_symbol
        Camlparagraph_for_symbol_let_match_symbol_t.Let_name_equal_function_for_symbol)),
   [2; 3; 1; 2; 1; 7; 2])
);;

(* let name = function  *)
  (* | Figure_symbol_t.Vector _ -> "vector" *)
  (* | Figure_symbol_t.Point _ -> "point" *)
 
  (* | Figure_symbol_t.Triangle_symbol sym_tri -> *)
  (*     Triangle_symbol_v.name sym_tri *)
  (* | Figure_symbol_t.Coordinate_symbol sym_coo -> *)
  (*     Coordinate_symbol_v.name sym_coo *)
(* ;; *)

let tag_sec_l = Camlparagraph_formula_v.section_tag_list_off_camlparagraph_tag tag_cap;;

test_number 13 (
tag_sec_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
  [(Section_symbol_t.Section_for_symbol_symbol
     (Section_for_symbol_symbol_t.Section_for_symbol_header_symbol
       (Section_for_symbol_header_symbol_t.Section_for_symbol_header_constant_symbol
         Section_for_symbol_header_constant_symbol_t.Let_name_equal_function)),
    [1; 2; 3; 1; 2; 1; 7; 2]);
   (Section_symbol_t.Section_for_symbol_symbol
     (Section_for_symbol_symbol_t.Section_for_symbol_body_symbol
       (Section_for_symbol_body_symbol_t.Section_for_symbol_body_son_top_symbol
         Section_for_symbol_body_son_top_symbol_t.Name_topson_pattern_for_symbol)),
    [2; 2; 3; 1; 2; 1; 7; 2]);
   (Section_symbol_t.Section_for_any_symbol
     (Section_for_any_symbol_t.Section_for_any_footer_symbol
       (Section_for_any_footer_symbol_t.Section_for_any_footer_constant_symbol
         Section_for_any_footer_constant_symbol_t.Double_semicolon)),
    [3; 2; 3; 1; 2; 1; 7; 2])]
);; 

(* 1 Section_for_symbol_header_constant_symbol_t.Let_name_equal_function *)

let idx_sec = 1;;
let tag_sec = List.nth tag_sec_l (idx_sec-1);;

test_number 14 (
tag_sec 
(* : Section_symbol_t.section_symbol Tag_t.tag *)
=
  (Section_symbol_t.Section_for_symbol_symbol
    (Section_for_symbol_symbol_t.Section_for_symbol_header_symbol
      (Section_for_symbol_header_symbol_t.Section_for_symbol_header_constant_symbol
        Section_for_symbol_header_constant_symbol_t.Let_name_equal_function)),
   [1; 2; 3; 1; 2; 1; 7; 2])
);;

(* let name = function *)

let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec;; 

test_number 15 (
tag_gro_l 
(* : Group_symbol_t.group_symbol Tag_t.tag list *)
 =
  [(Group_symbol_t.Group_for_symbol_symbol
     (Group_for_symbol_symbol_t.Group_for_symbol_header_symbol
       (Group_for_symbol_header_symbol_t.Group_for_symbol_header_constant_symbol
         Group_for_symbol_header_constant_symbol_t.Let_name_equal_function)),
    [1; 1; 2; 3; 1; 2; 1; 7; 2])]
);;

let idx_gro = 1;;
let tag_gro = List.nth tag_gro_l (idx_gro-1);;

test_number 16 (
tag_gro 
(* : Group_symbol_t.group_symbol Tag_t.tag *)
=
  (Group_symbol_t.Group_for_symbol_symbol
    (Group_for_symbol_symbol_t.Group_for_symbol_header_symbol
      (Group_for_symbol_header_symbol_t.Group_for_symbol_header_constant_symbol
        Group_for_symbol_header_constant_symbol_t.Let_name_equal_function)),
   [1; 1; 2; 3; 1; 2; 1; 7; 2])
);;

(* 1 Group_for_symbol_header_constant_symbol_t.Let_name_equal_function *)

(* let name = function *)

let tag_cal_l = Group_formula_v.camlline_tag_list_off_group_tag tag_gro;; 

test_number 17 (
tag_cal_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
[(Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_function_symbol
       Camlline_constant_function_symbol_t.Let_name_equal_function),
  [1; 1; 1; 2; 3; 1; 2; 1; 7; 2])]
);;

let str_l = Group_value_v.string_list_off_group_tag tag_gro;;

test_number 18 (
str_l
(* : string list *)
=
["let name = function"]
);;
 
let idx_cal = 1;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 19 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
= 
(Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_function_symbol
      Camlline_constant_function_symbol_t.Let_name_equal_function),
 [1; 1; 1; 2; 3; 1; 2; 1; 7; 2])
);;

(* 1 Camlline_constant_function_symbol_t.Let_name_equal_function *)

(* let name = function *)

let val_cal = Camlline_value_v.retrieve tag_cal;;
let str = Camlline_value_v.string_off val_cal;;

test_number 20 (
str
(* : string list *)
=
"let name = function"
);;
 
let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;

test_number 21 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
  []
);;

(* 2 Section_for_symbol_header_constant_symbol_t.Let_name_equal_function *)

let idx_sec = 2;;
let tag_sec = List.nth tag_sec_l (idx_sec-1);;

test_number 22 (
tag_sec 
(* : Section_symbol_t.section_symbol Tag_t.tag *)
=
(Section_symbol_t.Section_for_symbol_symbol
   (Section_for_symbol_symbol_t.Section_for_symbol_body_symbol
      (Section_for_symbol_body_symbol_t.Section_for_symbol_body_son_top_symbol
         Section_for_symbol_body_son_top_symbol_t.Name_topson_pattern_for_symbol)),
 [2; 2; 3; 1; 2; 1; 7; 2])
);;

(* | Figure_symbol_t.Triangle_symbol sym_tri -> *)
(*     Triangle_symbol_v.name sym_tri *)

(* | Figure_symbol_t.Coordinate_symbol sym_coo -> *)
(*     Coordinate_symbol_v.name sym_coo *)

(* | Figure_symbol_t.Vector _ -> "vector" *)

(* | Figure_symbol_t.Point _ -> "point" *)


let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec;; 

test_number 23 (
tag_gro_l 
(* : Group_symbol_t.group_symbol Tag_t.tag list *)
 =
 [(Group_symbol_t.Group_for_symbol_symbol
     (Group_for_symbol_symbol_t.Group_for_symbol_body_symbol
       (Group_for_symbol_body_symbol_t.Group_for_symbol_body_son_top_symbol
         Group_for_symbol_body_son_top_symbol_t.Pipe_upgrade_name_notleaf_function)),
    [1; 2; 2; 3; 1; 2; 1; 7; 2]);
   (Group_symbol_t.Group_for_symbol_symbol
     (Group_for_symbol_symbol_t.Group_for_symbol_body_symbol
       (Group_for_symbol_body_symbol_t.Group_for_symbol_body_son_top_symbol
         Group_for_symbol_body_son_top_symbol_t.Pipe_upgrade_name_notleaf_function)),
    [2; 2; 2; 3; 1; 2; 1; 7; 2]);
   (Group_symbol_t.Group_for_symbol_symbol
     (Group_for_symbol_symbol_t.Group_for_symbol_body_symbol
       (Group_for_symbol_body_symbol_t.Group_for_symbol_body_son_top_symbol
         Group_for_symbol_body_son_top_symbol_t.Pipe_upgrade_name_ofstring_function)),
    [3; 2; 2; 3; 1; 2; 1; 7; 2]);
   (Group_symbol_t.Group_for_symbol_symbol
     (Group_for_symbol_symbol_t.Group_for_symbol_body_symbol
       (Group_for_symbol_body_symbol_t.Group_for_symbol_body_son_top_symbol
         Group_for_symbol_body_son_top_symbol_t.Pipe_upgrade_name_ofstring_function)),
    [4; 2; 2; 3; 1; 2; 1; 7; 2])]
);;

(* 1 Group_for_symbol_body_son_top_symbol_t.Pipe_upgrade_name_notleaf_function *)

let idx_gro = 1;;
let tag_gro = List.nth tag_gro_l (idx_gro-1);;

test_number 24 (
tag_gro 
(* : Group_symbol_t.group_symbol Tag_t.tag *)
= 
(Group_symbol_t.Group_for_symbol_symbol
   (Group_for_symbol_symbol_t.Group_for_symbol_body_symbol
      (Group_for_symbol_body_symbol_t.Group_for_symbol_body_son_top_symbol
         Group_for_symbol_body_son_top_symbol_t.Pipe_upgrade_name_notleaf_function)),
 [1; 2; 2; 3; 1; 2; 1; 7; 2])
);;

(* | Figure_symbol_t.Triangle_symbol sym_tri -> *)
(*     Triangle_symbol_v.name sym_tri *)

let tag_cal_l = Group_formula_v.camlline_tag_list_off_group_tag tag_gro;; 

test_number 25 (
tag_cal_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
  =
[(Camlline_symbol_t.Camlline_duo_symbol
    (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Pipe_Et_symbol_tdot_Es_symbol_ass_arrow),
  [1; 1; 2; 2; 3; 1; 2; 1; 7; 2]);
 (Camlline_symbol_t.Camlline_duo_symbol
    (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Space2_Es_symbol_vdot_name_sym_as),
    [2; 1; 2; 2; 3; 1; 2; 1; 7; 2])]
);;

(* 1 Camlline_duo_function_symbol_t.Pipe_Et_symbol_tdot_Es_symbol_ass_arrow *)

let idx_cal = 1;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 26 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
= 
  (Camlline_symbol_t.Camlline_duo_symbol
    (Camlline_duo_symbol_t.Camlline_duo_function_symbol
      Camlline_duo_function_symbol_t.Pipe_Et_symbol_tdot_Es_symbol_ass_arrow),
   [1; 1; 2; 2; 3; 1; 2; 1; 7; 2])
);;

(* ["  | Figure_symbol_t.Triangle_symbol sym_tri ->" *)

let sym_cal = Tag_v.entity_off_tag tag_cal;;
let soi_cal = Tag_v.sole_index_off_tag tag_cal;;
let sym_cdf = Camlline_symbol_v.camlline_duo_function_symbol_off_camlline_symbol sym_cal;;
let tag_cdf = Tag_v.make sym_cdf soi_cal;;
let dec_cdf = Camlline_duo_function_tag_v.camlline_duo_function_dectup_off_camlline_duo_function_tag tag_cdf;;

let val_cal = Camlline_value_v.retrieve tag_cal;;
let str = Camlline_value_v.string_off val_cal;;

test_number 27 (
str
(* : string list *)
=
"  | Figure_symbol_t.Triangle_symbol sym_tri ->"
);;
 
let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;

test_number 28 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
  [(
     (Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "triangle")),
    [1; 1; 1; 2; 2; 3; 1; 2; 1; 7; 2]);
   (
     (Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "figure")),
    [2; 1; 1; 2; 2; 3; 1; 2; 1; 7; 2])]
);;

(* 2 Camlline_duo_function_symbol_t.Pipe_Et_symbol_tdot_Es_symbol_ass_arrow *)

let idx_cal = 2;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 29 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
= 
 (Camlline_symbol_t.Camlline_duo_symbol
    (Camlline_duo_symbol_t.Camlline_duo_function_symbol
      Camlline_duo_function_symbol_t.Space2_Es_symbol_vdot_name_sym_as),
   [2; 1; 2; 2; 3; 1; 2; 1; 7; 2])
);;

(*     Triangle_symbol_v.name sym_tri *)

let val_cal = Camlline_value_v.retrieve tag_cal;;
let str = Camlline_value_v.string_off val_cal;;

test_number 30 (
str
(* : string *)
=
"    Triangle_symbol_v.name sym_tri"
);;
 
let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;

test_number 31 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
  [(
     (Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "triangle")),
    [1; 2; 1; 2; 2; 3; 1; 2; 1; 7; 2]);
   (
     (Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "figure")),
    [2; 2; 1; 2; 2; 3; 1; 2; 1; 7; 2])]
);;

let str_l = Group_value_v.string_list_off_group_tag tag_gro;;

test_number 32 (
str_l
(* : string list *)
=
["  | Figure_symbol_t.Triangle_symbol sym_tri ->";
 "    Triangle_symbol_v.name sym_tri"]
);;
 
(* 2 Group_for_symbol_body_son_top_symbol_t.Pipe_upgrade_name_notleaf_function *)

let idx_gro = 2;;
let tag_gro = List.nth tag_gro_l (idx_gro-1);;

test_number 33 (
tag_gro 
(* : Group_symbol_t.group_symbol Tag_t.tag *)
= 
(Group_symbol_t.Group_for_symbol_symbol
   (Group_for_symbol_symbol_t.Group_for_symbol_body_symbol
      (Group_for_symbol_body_symbol_t.Group_for_symbol_body_son_top_symbol
         Group_for_symbol_body_son_top_symbol_t.Pipe_upgrade_name_notleaf_function)),
   [2; 2; 2; 3; 1; 2; 1; 7; 2])
);;

(* | Figure_symbol_t.Coordinate_symbol sym_coo -> *)
(*     Coordinate_symbol_v.name sym_coo *)

let tag_cal_l = Group_formula_v.camlline_tag_list_off_group_tag tag_gro;; 

test_number 34 (
tag_cal_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
  =
  [(Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Pipe_Et_symbol_tdot_Es_symbol_ass_arrow),
    [1; 2; 2; 2; 3; 1; 2; 1; 7; 2]);
   (Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Space2_Es_symbol_vdot_name_sym_as),
    [2; 2; 2; 2; 3; 1; 2; 1; 7; 2])]
);;

let str_l = Group_value_v.string_list_off_group_tag tag_gro;;

test_number 35 (
str_l
(* : string list *)
=
["  | Figure_symbol_t.Coordinate_symbol sym_coo ->";
 "    Coordinate_symbol_v.name sym_coo"]
);;
 
(* 1 Camlline_duo_function_symbol_t.Pipe_Et_symbol_tdot_Es_symbol_ass_arrow *)

let idx_cal = 1;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 36 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
= 
  (Camlline_symbol_t.Camlline_duo_symbol
    (Camlline_duo_symbol_t.Camlline_duo_function_symbol
      Camlline_duo_function_symbol_t.Pipe_Et_symbol_tdot_Es_symbol_ass_arrow),
   [1; 2; 2; 2; 3; 1; 2; 1; 7; 2])
);;

(* ["  | Figure_symbol_t.Coordinate_symbol sym_coo ->" *)

let val_cal = Camlline_value_v.retrieve tag_cal;;
let str = Camlline_value_v.string_off val_cal;;

test_number 37 (
str
(* : string list *)
=
"  | Figure_symbol_t.Coordinate_symbol sym_coo ->"
);;
 
let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;

test_number 38 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
  [(
     (Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate")),
    [1; 1; 2; 2; 2; 3; 1; 2; 1; 7; 2]);
   (
     (Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "figure")),
    [2; 1; 2; 2; 2; 3; 1; 2; 1; 7; 2])]
);;

(* 2 Camlline_duo_function_symbol_t.Pipe_Et_symbol_tdot_Es_symbol_ass_arrow *)

let idx_cal = 2;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 39 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
= 
  (Camlline_symbol_t.Camlline_duo_symbol
    (Camlline_duo_symbol_t.Camlline_duo_function_symbol
      Camlline_duo_function_symbol_t.Space2_Es_symbol_vdot_name_sym_as),
   [2; 2; 2; 2; 3; 1; 2; 1; 7; 2])
);;

(*     Coordinate_symbol_v.name sym_coo *)

let val_cal = Camlline_value_v.retrieve tag_cal;;
let str = Camlline_value_v.string_off val_cal;;

test_number 40 (
str
(* : string *)
=
"    Coordinate_symbol_v.name sym_coo"
);;
 
let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;

test_number 41 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
  [(
     (Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate")),
    [1; 2; 2; 2; 2; 3; 1; 2; 1; 7; 2]);
   (
     (Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "figure")),
    [2; 2; 2; 2; 2; 3; 1; 2; 1; 7; 2])]
);;

(* 3 Group_for_symbol_body_son_top_symbol_t.Pipe_upgrade_name_ofstring_function *)

let idx_gro = 3;;
let tag_gro = List.nth tag_gro_l (idx_gro-1);;

test_number 42 (
tag_gro 
(* : Group_symbol_t.group_symbol Tag_t.tag *)
= 
  (Group_symbol_t.Group_for_symbol_symbol
    (Group_for_symbol_symbol_t.Group_for_symbol_body_symbol
      (Group_for_symbol_body_symbol_t.Group_for_symbol_body_son_top_symbol
        Group_for_symbol_body_son_top_symbol_t.Pipe_upgrade_name_ofstring_function)),
   [3; 2; 2; 3; 1; 2; 1; 7; 2])
);;

(*  | Figure_symbol_t.Vector _ -> "vector" *)

let tag_cal_l = Group_formula_v.camlline_tag_list_off_group_tag tag_gro;; 

test_number 43 (
tag_cal_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
  =
 [(Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Pipe_Et_symbol_tdot_Es_symbol_underscore_arrow_string),
    [1; 3; 2; 2; 3; 1; 2; 1; 7; 2])]
);;

let val_gro = Group_value_v.retrieve tag_gro;;

let str_l = Group_value_v.string_list_off_group_tag tag_gro;;

test_number 44 (
str_l
(* : string list *)
=
["  | Figure_symbol_t.Vector _ -> \"Vector\""]
);;
 
(* 1 Camlline_duo_function_symbol_t.Pipe_Et_symbol_tdot_Es_symbol_ass_arrow *)

let idx_cal = 1;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 45 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
= 
   (Camlline_symbol_t.Camlline_duo_symbol
    (Camlline_duo_symbol_t.Camlline_duo_function_symbol
      Camlline_duo_function_symbol_t.Pipe_Et_symbol_tdot_Es_symbol_underscore_arrow_string),
   [1; 3; 2; 2; 3; 1; 2; 1; 7; 2])
);;

(* ["  | Figure_symbol_t.Coordinate_symbol sym_coo ->" *)

let val_cal = Camlline_value_v.retrieve tag_cal;;
let str = Camlline_value_v.string_off val_cal;;

test_number 46 (
str
(* : string *)
=
"  | Figure_symbol_t.Vector _ -> \"Vector\""
);;
 
let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;

test_number 47 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
  [(Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Sonnullary "vector")),
    [1; 1; 3; 2; 2; 3; 1; 2; 1; 7; 2]);
   (
     (Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "figure")),
    [2; 1; 3; 2; 2; 3; 1; 2; 1; 7; 2])]
);;

(* 4 Group_for_symbol_body_son_top_symbol_t.Pipe_upgrade_name_ofstring_function *)

let idx_gro = 4;;
let tag_gro = List.nth tag_gro_l (idx_gro-1);;

test_number 48 (
tag_gro 
(* : Group_symbol_t.group_symbol Tag_t.tag *)
= 
 (Group_symbol_t.Group_for_symbol_symbol
    (Group_for_symbol_symbol_t.Group_for_symbol_body_symbol
      (Group_for_symbol_body_symbol_t.Group_for_symbol_body_son_top_symbol
        Group_for_symbol_body_son_top_symbol_t.Pipe_upgrade_name_ofstring_function)),
   [4; 2; 2; 3; 1; 2; 1; 7; 2])
);;

(*  | Figure_symbol_t.Vector _ -> "vector" *)

let tag_cal_l = Group_formula_v.camlline_tag_list_off_group_tag tag_gro;; 

test_number 49 (
tag_cal_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
  =
  [(Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Pipe_Et_symbol_tdot_Es_symbol_underscore_arrow_string),
    [1; 4; 2; 2; 3; 1; 2; 1; 7; 2])]
);;

let val_gro = Group_value_v.retrieve tag_gro;;

let str_l = Group_value_v.string_list_off_group_tag tag_gro;;

test_number 50 (
str_l
(* : string list *)
=
 ["  | Figure_symbol_t.Point _ -> \"Point\""]
);;
 
(* 1 Camlline_duo_function_symbol_t.Pipe_Et_symbol_tdot_Es_symbol_ass_arrow *)

let idx_cal = 1;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 51 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
= 
 (Camlline_symbol_t.Camlline_duo_symbol
    (Camlline_duo_symbol_t.Camlline_duo_function_symbol
      Camlline_duo_function_symbol_t.Pipe_Et_symbol_tdot_Es_symbol_underscore_arrow_string),
   [1; 4; 2; 2; 3; 1; 2; 1; 7; 2])
);;

let val_cal = Camlline_value_v.retrieve tag_cal;;
let str = Camlline_value_v.string_off val_cal;;

test_number 52 (
str
(* : string *)
=
"  | Figure_symbol_t.Point _ -> \"Point\""
);;
 
let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;

test_number 53 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
  [(Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Sonnullary "point")),
    [1; 1; 4; 2; 2; 3; 1; 2; 1; 7; 2]);
   (
     (Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "figure")),
    [2; 1; 4; 2; 2; 3; 1; 2; 1; 7; 2])]
);;

(* Write Camlparagraph *)

let nam_fil = Camlparagraph_value_v.fullnameoffile "./" tag_cap;;

test_number 54 (
nam_fil
(* : string *)
  =  
"./Figure_symbol_Naming_for_symbol_let_name_equal_function_for_symbol_v.ml"
);;

Camlparagraph_value_v.write "./" tag_cap;;

