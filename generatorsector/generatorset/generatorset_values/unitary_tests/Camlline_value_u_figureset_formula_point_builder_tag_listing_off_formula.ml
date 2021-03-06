open Make_test_v;;

testing "Camlline_value_v with
   Camlline_value_u_figureset_formula_point_builder_tag_listing_off_formula.ml";;

(* toplevel 
   #use "Camlline_value_u_figureset_formula_point_builder_tag_listing_off_formula.ml";;

*)

let nam_dom = "figure";;
let nam_cof = "value_alone";;
let nam_ent = "point";;
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
(Domain_symbol_t.Figure, [2])
);;

let tag_cat_l = Domain_formula_v.category_tag_list_off_domain_tag tag_dom;;

let sel_cat = (fun c -> Category_symbol_v.name c = nam_cat);;
let tag_cat = Doublet_list_v.find_if_left sel_cat tag_cat_l;;

test_number 2 (
tag_cat
(* : Category_symbol_v.Category_symbol_t.category_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Category_symbol_t.Formula, [2; 2])
);;

let tag_ent_l = Category_formula_v.entity_tag_list_off_category_tag tag_cat;;

let sel_ent = (fun e -> Entity_symbol_v.string_off e = nam_ent)
let tag_ent = Doublet_list_v.find_if_left sel_ent tag_ent_l;;

test_number 3 (
tag_ent
(* : Entity_symbol_t.entity_proper_symbol * Tag_t.Sole_index_t.sole_index *)
=
 (Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_one_son "point"),
   [7; 2; 2])
);;

let tag_cof_l = Entity_formula_v.contentfile_tag_list_off_entity_tag tag_ent;;
let sel_cof = (fun c -> Contentfile_symbol_v.name c = nam_cof);;
let tag_cof = Doublet_list_v.find_if_left sel_cof tag_cof_l;;

test_number 4 (
tag_cof
=
(Contentfile_symbol_t.Value_alone, [2; 7; 2; 2])
);;

let tag_usf_l = Contentfile_formula_v.usagefile_tag_list_off_contentfile_tag tag_cof;;
let sel_usf = (fun u -> Usagefile_symbol_v.name u = nam_usf);;
let tag_usf = Doublet_list_v.find_if_left sel_usf tag_usf_l;;

test_number 5 (
tag_usf
  =
  (Usagefile_symbol_t.Usagefile_for_formula_symbol
    Usagefile_for_formula_symbol_t.Implementation_for_formula,
   [1; 2; 7; 2; 2])
);;

let sym_ent = Tag_v.entity_off_tag tag_ent;;
let sym_cat = Tag_v.entity_off_tag tag_cat;;
let sym_dom = Tag_v.entity_off_tag tag_dom;;
let tri_ent = Triplet_v.make sym_ent sym_cat sym_dom;;
let sym_ets_l = Entity_topson_symbol_list_by_entity_tritup_provider_v.provide tri_ent;;

test_number 6 (
sym_ets_l
(*: Entity_symbol_t.entity_symbol list *)
=
  [Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Ofstring "point_constructor"))]
);;

let tag_ite_l = Usagefile_formula_v.item_tag_list_off_usagefile_tag tag_usf;;

let nam_ite = "builder_tag_listing_off_formula";;
let sel_ite = (fun i -> Item_symbol_v.name i = nam_ite);;
let tag_ite = Doublet_list_v.find_if_left sel_ite tag_ite_l;; 

test_number 7 (
tag_ite
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
 (Item_symbol_t.Item_for_formula_symbol
    (Item_for_formula_symbol_t.Item_for_formula_by_group_topsons_symbol
      Item_for_formula_by_group_topsons_symbol_t.Builder_tag_listing_off_formula),
   [6; 1; 2; 7; 2; 2])
);;

let tag_cap_l = Item_formula_v.camlparagraph_tag_list_off_item_tag tag_ite;;

(* 2 Camlparagraph_for_formula_let_argument_symbol_t.Let_make_arguments_for_formula *)

(* let make sym_ccc soi_cal = *)

let idx_cap = 2;;
let tag_cap = List.nth tag_cap_l (idx_cap-1);;

test_number 8 (
tag_cap
=
  (Camlparagraph_symbol_t.Camlparagraph_for_formula_symbol
    (Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_let_symbol
      (Camlparagraph_for_formula_let_symbol_t.Camlparagraph_for_formula_let_match_symbol
        Camlparagraph_for_formula_let_match_symbol_t.Let_builder_tag_list_off_top_formula)),
   [2; 6; 1; 2; 7; 2; 2])
);;

let tag_sec_l = Camlparagraph_formula_v.section_tag_list_off_camlparagraph_tag tag_cap;;

test_number 9 (
tag_sec_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
  [(Section_symbol_t.Section_for_formula_symbol
     (Section_for_formula_symbol_t.Section_for_formula_header_symbol
       (Section_for_formula_header_symbol_t.Section_for_formula_header_top_builder_symbol
         Section_for_formula_header_top_builder_symbol_t.Let_builder_tag_list_off_top_formula)),
    [1; 2; 6; 1; 2; 7; 2; 2]);
   (Section_symbol_t.Section_for_formula_symbol
     (Section_for_formula_symbol_t.Section_for_formula_body_symbol
       (Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_builder_symbol
         Section_for_formula_body_son_top_builder_symbol_t.Builder_tag_list_topson_pattern_notleaf_for_formula)),
    [2; 2; 6; 1; 2; 7; 2; 2]);
   (Section_symbol_t.Section_for_formula_symbol
     (Section_for_formula_symbol_t.Section_for_formula_body_symbol
       (Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_builder_symbol
         Section_for_formula_body_son_top_builder_symbol_t.Builder_tag_list_topson_pattern_ofstring_for_formula)),
    [3; 2; 6; 1; 2; 7; 2; 2]);
   (Section_symbol_t.Section_for_formula_symbol
     (Section_for_formula_symbol_t.Section_for_formula_body_symbol
       (Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_builder_symbol
         Section_for_formula_body_son_top_builder_symbol_t.Builder_tag_list_topson_pattern_bare_for_formula)),
    [4; 2; 6; 1; 2; 7; 2; 2]);
   (Section_symbol_t.Section_for_any_symbol
     (Section_for_any_symbol_t.Section_for_any_footer_symbol
       Section_for_any_footer_symbol_t.Double_semicolon),
    [5; 2; 6; 1; 2; 7; 2; 2])]
);; 

(* 1 Section_for_formula_header_top_builder_symbol_t.Let_builder_tag_list_off_top_formula *)

let idx_sec = 1;;
let tag_sec = List.nth tag_sec_l (idx_sec-1);;

test_number 10 (
tag_sec 
(* : Section_symbol_t.section_symbol Tag_t.tag *)
=
  (Section_symbol_t.Section_for_formula_symbol
    (Section_for_formula_symbol_t.Section_for_formula_header_symbol
      (Section_for_formula_header_symbol_t.Section_for_formula_header_top_builder_symbol
        Section_for_formula_header_top_builder_symbol_t.Let_builder_tag_list_off_top_formula)),
   [1; 2; 6; 1; 2; 7; 2; 2])
);;

let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec;; 

test_number 11 (
tag_gro_l 
(* : Group_symbol_t.group_symbol Tag_t.tag list *)
 =
  [(Group_symbol_t.Group_for_formula_symbol
     (Group_for_formula_symbol_t.Group_for_formula_header_symbol
       (Group_for_formula_header_symbol_t.Group_for_formula_header_top_builder_symbol
         Group_for_formula_header_top_builder_symbol_t.Let_builder_tag_list_off_top_formula)),
    [1; 1; 2; 6; 1; 2; 7; 2; 2])]
);;

(* 1 Group_for_formula_header_top_builder_symbol_t.Let_builder_tag_list_off_top_formula *)

let idx_gro = 1;;
let tag_gro = List.nth tag_gro_l (idx_gro-1);;

test_number 12 (
tag_gro 
(* : Group_symbol_t.group_symbol Tag_t.tag *)
=
 (Group_symbol_t.Group_for_formula_symbol
    (Group_for_formula_symbol_t.Group_for_formula_header_symbol
      (Group_for_formula_header_symbol_t.Group_for_formula_header_top_builder_symbol
        Group_for_formula_header_top_builder_symbol_t.Let_builder_tag_list_off_top_formula)),
   [1; 1; 2; 6; 1; 2; 7; 2; 2])
);;


let tag_cal_l = Group_formula_v.camlline_tag_list_off_group_tag tag_gro;; 

test_number 13 (
tag_cal_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
  [(Camlline_symbol_t.Camlline_for_formula_symbol
     (Camlline_for_formula_symbol_t.Camlline_for_formula_duo_symbol
       (Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_top_builder_symbol
         Camlline_for_formula_duo_top_builder_symbol_t.Let_eb_tag_list_off_et_formula_equal_function)),
    [1; 1; 1; 2; 6; 1; 2; 7; 2; 2])]
);;

(* Camlline_constant_function_symbol_t.let_name_of_topson_notleaf_equal *)

let idx_cal = 1;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 14 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
  (Camlline_symbol_t.Camlline_for_formula_symbol
    (Camlline_for_formula_symbol_t.Camlline_for_formula_duo_symbol
      (Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_top_builder_symbol
        Camlline_for_formula_duo_top_builder_symbol_t.Let_eb_tag_list_off_et_formula_equal_function)),
   [1; 1; 1; 2; 6; 1; 2; 7; 2; 2])
);;

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;
    
test_number 15 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
  [(Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_one_son "point"),
    [1; 1; 1; 1; 2; 6; 1; 2; 7; 2; 2]);
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate"),
    [2; 1; 1; 1; 2; 6; 1; 2; 7; 2; 2])]
);;

let str_l = Group_value_v.string_list_off_group_tag tag_gro;;

test_number 16 (
str_l
(* : string list *)
=
  ["let coordinate_tag_list_off_point_formula = function"]
);;

(* 2 Section_for_formula_body_son_top_builder_symbol_t.Builder_tag_list_topson_pattern_notleaf_for_formula *)

let idx_sec = 2;;
let tag_sec = List.nth tag_sec_l (idx_sec-1);;

test_number 17 (
tag_sec 
(* : Section_symbol_t.section_symbol Tag_t.tag *)
=
   (Section_symbol_t.Section_for_formula_symbol
    (Section_for_formula_symbol_t.Section_for_formula_body_symbol
      (Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_builder_symbol
        Section_for_formula_body_son_top_builder_symbol_t.Builder_tag_list_topson_pattern_notleaf_for_formula)),
   [2; 2; 6; 1; 2; 7; 2; 2])
);;

let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec;;

test_number 18 (
tag_gro_l 
(* : Group_symbol_t.group_symbol Tag_t.tag list *)
 =
 []
);;

(* 3 Section_for_formula_body_son_builder_symbol_t.Pipe_topson_formula_type_ofstring_constructors *)

(* section_for_formula_body_son_top_builder : builder_tag_list_topson_pattern_ofstring_for_formula *)
(* group_for_formula_body_son_top_builder : builder_tag_list_topson_pattern_ofstring_for_formula *)
  (* | Top_formula_t.Son (s, tag_bui_l) -> tag_bui_l *)
  (* | ... repeat *)


let idx_sec = 3;;
let tag_sec = List.nth tag_sec_l (idx_sec-1);;

test_number 19 (
tag_sec 
(* : Section_symbol_t.section_symbol Tag_t.tag *)
=
  (Section_symbol_t.Section_for_formula_symbol
    (Section_for_formula_symbol_t.Section_for_formula_body_symbol
      (Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_builder_symbol
        Section_for_formula_body_son_top_builder_symbol_t.Builder_tag_list_topson_pattern_ofstring_for_formula)),
   [3; 2; 6; 1; 2; 7; 2; 2])
);;

let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec;;

test_number 20 (
tag_gro_l 
(* : Group_symbol_t.group_symbol Tag_t.tag list *)
 =
   [(Group_symbol_t.Group_for_formula_symbol
     (Group_for_formula_symbol_t.Group_for_formula_body_symbol
       (Group_for_formula_body_symbol_t.Group_for_formula_body_son_symbol
         (Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_top_builder_symbol
           Group_for_formula_body_son_top_builder_symbol_t.Builder_tag_list_topson_pattern_ofstring_for_formula))),
    [1; 3; 2; 6; 1; 2; 7; 2; 2])]
);;

(* 4 Section_for_formula_body_son_top_builder_symbol_t.Builder_tag_list_topson_pattern_bare_for_formula *)

(* section_for_formula_body_son_top_builder : builder_tag_list_topson_pattern_bare_for_formula *)
(* group_for_formula_body_son_top_builder : builder_tag_list_topson_pattern_bare_for_formula *)
  (* | Top_formula_t.Son tag_bui_l -> tag_bui_l *)
  (* | ... repeat *)

let idx_sec = 4;;
let tag_sec = List.nth tag_sec_l (idx_sec-1);;

test_number 21 (
tag_sec 
(* : Section_symbol_t.section_symbol Tag_t.tag *)
=
  (Section_symbol_t.Section_for_formula_symbol
    (Section_for_formula_symbol_t.Section_for_formula_body_symbol
      (Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_builder_symbol
        Section_for_formula_body_son_top_builder_symbol_t.Builder_tag_list_topson_pattern_bare_for_formula)),
   [4; 2; 6; 1; 2; 7; 2; 2])
);;

let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec;;

test_number 22 (
tag_gro_l 
(* : Group_symbol_t.group_symbol Tag_t.tag list *)
 =
  []
);;

(* Camlparagraph *)

let str_l = Camlparagraph_value_v.string_list_off_camlparagraph_tag tag_cap;;

test_number 23 (
 str_l 
(* : string list *)
=
  ["let coordinate_tag_list_off_point_formula = function";
   "  | Point_formula_t.Point_constructor (s, tag_coo_l) -> tag_coo_l";
   ";;"]
);;

let val_cap = Camlparagraph_value_v.retrieve tag_cap;;

let nam_fil = Camlparagraph_value_v.fullnameoffile "./" tag_cap;;

test_number 24 (
nam_fil
(* : string *)
  =
"./Point_formula_builder_tag_listing_off_formula_let_builder_tag_list_off_top_formula_v.ml"
);;

Camlparagraph_value_v.write "./" tag_cap;;

let val_ite = Item_value_v.retrieve tag_ite;;

let nam_fil = Item_value_v.fullnameoffile "./" tag_ite;;

test_number 25 (
nam_fil
(* : string *)
  =
"./Point_formula_builder_tag_listing_off_formula_v.ml"
);;

Item_value_v.write "./" tag_ite;;

let str_l = Item_value_v.string_list_off_item_tag tag_ite;;

test_number 26 (
str_l 
(* string list : *)
  = 
["(** {6 Builder_tag_listing_off_formula} *)";
 "let coordinate_tag_list_off_point_formula = function";
 "  | Point_formula_t.Point_constructor (s, tag_coo_l) -> tag_coo_l"; 
 ";;"]
 );; 

(* Usagefile *)

let str_l = Usagefile_value_v.string_list_off_usagefile_tag tag_usf;;
let cut_l = List_v.cut_off_last_element_off_list str_l;;

test_number 27 (
 cut_l 
(* : string list *)
=
  ["(** {3 Point_formula_v} *)";
   "(** {6 Symbolizing_for_formula} *)";
   "let symbol_of_formula = function";
   "  | Point_formula_t.Point_constructor (s, _ ) ->";
   "  Point_formula_t.point_constructor_formula s";
   ";;";
   "(** {6 Building_and_storing_proper_sons} *)";
   "let build_n_store sym_poi soi_poi =";
   "  let tag_poi = Tag_v.make sym_poi soi_poi in";
   "  let tup_poi = Point_tag_v.point_tuple_off_point_tag tag_poi in";
   "  let sym_coo_l = Point_interface_v.make_of_tuple tup_poi in";
   "  let soi_coo_l =";
   "    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index";
   "    1 (List.length sym_coo_l) soi_poi in";
   "  let dss_of_sym = Figure_symbol_v.figure_symbol_of_coordinate_symbol in";
   "  List.iter2 Figure_symbol_by_sole_index_register_v.store soi_coo_l dss_coo_l;";
   "  List.map2 Tag_v.make sym_coo_l soi_coo_l";
   ";;";
   "(** {6 Making_for_formula} *)";
   "let make sym_poi soi_poi =";
   "  match sym_poi with";
   "  | Point_symbol_t.Point_constructor s ->";
   "      let tag_coo_l = build_n_store sym_poi soi_poi in";
   "        Point_formula_t.Point_constructor (s, tag_coo_l)";
   ";;";
   "(** {6 Retrieving_for_formula} *)";
   "let retrieve tag_poi =";
   "  let soi_poi = Tag_v.sole_index_off_tag tag_poi in";
   "  let sym_poi = Point_tag_v.symbol_off_tag tag_poi in";
   "  make sym_poi soi_poi";
   ";;";
   "(** {6 Builder_tag_listing_off_formula} *)";
   "let coordinate_tag_list_off_point_formula = function";
   "  | Point_formula_t.Point_constructor (s, tag_coo_l) -> tag_coo_l";
   ";;";
   "(** {6 Builder_tag_listing_off_tag} *)";
   "let coordinate_tag_list_off_point_tag tag_poi =";
   "  let for_poi = retrieve tag_poi in";
   "  coordinate_tag_list_off_point_formula for_poi";
   ";;";
   "(** {6 Data_tag_listing_off_formula} *)";
   "let float_tag_list_off_point_formula for_poi =";
   "  | Point_formula_t.Point_constructor (s, tag_flo_l) -> tag_flo_l";
   ";;";
   "(** {6 Data_tag_listing_off_tag} *)";
   "let float_tag_list_off_point_tag tag_poi =";
   "  let for_poi = retrieve tag_poi in";
   "  float_tag_list_off_point_formula for_poi";
   ";;"]
);;

let val_usf = Usagefile_value_v.retrieve tag_usf;;

let nam_fil = Usagefile_value_v.fullnameoffile "./" tag_usf;;

test_number 28 (
nam_fil
(* : string *)
  =
"./Point_formula_v.ml"
);;

Usagefile_value_v.write "./" tag_usf;;

