open Make_test_v;;

testing "Camlline_value_v with
   Camlline_value_u_figureset_symbol_figureset_querying_topson_notleaf.ml";;

(* toplevel 
   #use "Camlline_value_u_figureset_symbol_figureset_querying_topson_notleaf.ml";;

*)

let nam_cod = "Camlline_value_u_figureset_symbol_figureset_querying_topson_notleaf.ml";;

let nam_dom = "figure";;
let nam_cof = "value_alone";;
let nam_ent = "figure";;
let nam_cat = "symbol";;
let nam_usf = "implementation_for_symbol";;

let sym_dom = Domain_symbol_v.make nam_dom "";;
let idx_dom = Domain_symbol_v.list_index_of_domain_symbol sym_dom;;
let soi_dom = Sole_index_v.make idx_dom [];;

(* Tools_fgnr_v.register_initialize_of_domainset_sole_index soi_dom;;  *)

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
(Category_symbol_t.Symbol, [7; 2])
);;

let tag_ent_l = Category_formula_v.entity_tag_list_off_category_tag tag_cat;;

let sel_ent = (fun e -> Entity_symbol_v.string_off e = nam_ent)
let tag_ent = Doublet_list_v.find_if_left sel_ent tag_ent_l;;

test_number 3 (
tag_ent
(* : Entity_symbol_t.entity_proper_symbol * Tag_t.Sole_index_t.sole_index *)
=
  (Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_sons "figure"),
   [1; 7; 2])
);;

let (sym_cat, soi_cat) = tag_cat;;
let (sym_ent, soi_ent) = tag_ent;;
let tri_ent = (sym_ent, sym_cat, sym_dom);;
let sym_etn_l = Entity_topson_notleaf_symbol_list_by_entity_tritup_provider_v.provide tri_ent;;

test_number 4 (
sym_etn_l
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

let tag_cof_l = Entity_formula_v.contentfile_tag_list_off_entity_tag tag_ent;;
let sel_cof = (fun c -> Contentfile_symbol_v.name c = nam_cof);;
let tag_cof = Doublet_list_v.find_if_left sel_cof tag_cof_l;;

test_number 5 (
tag_cof
=
(Contentfile_symbol_t.Value_alone, [2; 1; 7; 2])
);;

let tag_usf_l = Contentfile_formula_v.usagefile_tag_list_off_contentfile_tag tag_cof;;
let sel_usf = (fun u -> Usagefile_symbol_v.name u = nam_usf);;
let tag_usf = Doublet_list_v.find_if_left sel_usf tag_usf_l;;

test_number 6 (
tag_usf
  =
  (Usagefile_symbol_t.Usagefile_for_symbol_symbol
    Usagefile_for_symbol_symbol_t.Implementation_for_symbol,
   [1; 2; 1; 7; 2])
);;

let tag_ite_l = Usagefile_formula_v.item_tag_list_off_usagefile_tag tag_usf;;

(* 17 Querying_topson_notleaf_for_symbol *)

let nam_ite = "querying_topson_notleaf_for_symbol";;
let sel_ite = (fun i -> Item_symbol_v.name i = nam_ite);;
let tag_ite = Doublet_list_v.find_if_left sel_ite tag_ite_l;; 

test_number 7 (
tag_ite
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
  (Item_symbol_t.Item_for_symbol_symbol
    (Item_for_symbol_symbol_t.Item_for_symbol_each_topson_notleaf_symbol
      Item_for_symbol_each_topson_notleaf_symbol_t.Querying_topson_notleaf_for_symbol),
   [11; 1; 2; 1; 7; 2])
);;

let tag_cap_l = Item_formula_v.camlparagraph_tag_list_off_item_tag tag_ite;;

test_number 8 (
tag_cap_l
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
=
  [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       Camlparagraph_for_any_comment_symbol_t.Item_title),
    [1; 11; 1; 2; 1; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_match_symbol
         Camlparagraph_for_symbol_let_match_symbol_t.Let_is_topson_notleaf_symbol_off_top_symbol)),
    [2; 11; 1; 2; 1; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_match_symbol
         Camlparagraph_for_symbol_let_match_symbol_t.Let_is_topson_notleaf_symbol_off_top_symbol)),
    [3; 11; 1; 2; 1; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_match_symbol
         Camlparagraph_for_symbol_let_match_symbol_t.Let_is_topson_notleaf_symbol_off_top_symbol)),
    [4; 11; 1; 2; 1; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_match_symbol
         Camlparagraph_for_symbol_let_match_symbol_t.Let_is_topson_notleaf_symbol_off_top_symbol)),
    [5; 11; 1; 2; 1; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_match_symbol
         Camlparagraph_for_symbol_let_match_symbol_t.Let_is_topson_notleaf_symbol_off_top_symbol)),
    [6; 11; 1; 2; 1; 7; 2])]
);;

(* 2 Camlparagraph_for_symbol_let_match_symbol_t.Let_is_topson_notleaf *)

let idx_cap = 2;;
let tag_cap = List.nth tag_cap_l (idx_cap-1);;

test_number 9 (
tag_cap
=
 (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
    (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
      (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_match_symbol
        Camlparagraph_for_symbol_let_match_symbol_t.Let_is_topson_notleaf_symbol_off_top_symbol)),
   [2; 11; 1; 2; 1; 7; 2])
);;

let tag_sec_l = Camlparagraph_formula_v.section_tag_list_off_camlparagraph_tag tag_cap;;

test_number 10 (
tag_sec_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
 [(Section_symbol_t.Section_for_symbol_symbol
     (Section_for_symbol_symbol_t.Section_for_symbol_header_symbol
       (Section_for_symbol_header_symbol_t.Section_for_symbol_header_son_top_symbol
         Section_for_symbol_header_son_top_symbol_t.Let_is_topson_notleaf_symbol_off_top_symbol_equal_function)),
    [1; 2; 11; 1; 2; 1; 7; 2]);
   (Section_symbol_t.Section_for_symbol_symbol
     (Section_for_symbol_symbol_t.Section_for_symbol_body_symbol
       (Section_for_symbol_body_symbol_t.Section_for_symbol_body_son_top_symbol
         Section_for_symbol_body_son_top_symbol_t.Is_one_topson_notleaf_off_pattern_for_symbol)),
    [2; 2; 11; 1; 2; 1; 7; 2]);
   (Section_symbol_t.Section_for_any_symbol
     (Section_for_any_symbol_t.Section_for_any_footer_symbol
       Section_for_any_footer_symbol_t.Double_semicolon),
    [3; 2; 11; 1; 2; 1; 7; 2])]
);; 

let nam_fil = Camlparagraph_value_v.fullnameoffile "./" tag_cap;;

test_number 11 (
nam_fil
(* : string *)
  =
 "./Figure_symbol_querying_topson_notleaf_for_symbol_let_is_topson_notleaf_symbol_off_top_symbol_v.ml"
);;

Camlparagraph_value_v.write "./" tag_cap;;

(* 1 Section_for_symbol_header_son_symbol_t.Let_is_topson_notleaf *)

let idx_sec = 1;;
let tag_sec = List.nth tag_sec_l (idx_sec-1);;

test_number 12 (
tag_sec 
(* : Section_symbol_t.section_symbol Tag_t.tag *)
=
  (Section_symbol_t.Section_for_symbol_symbol
    (Section_for_symbol_symbol_t.Section_for_symbol_header_symbol
      (Section_for_symbol_header_symbol_t.Section_for_symbol_header_son_top_symbol
        Section_for_symbol_header_son_top_symbol_t.Let_is_topson_notleaf_symbol_off_top_symbol_equal_function)),
   [1; 2; 11; 1; 2; 1; 7; 2])
);;

let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec;; 

test_number 13 (
tag_gro_l 
(* : Group_symbol_t.group_symbol Tag_t.tag list *)
 =
  [(Group_symbol_t.Group_for_symbol_symbol
     (Group_for_symbol_symbol_t.Group_for_symbol_header_symbol
       (Group_for_symbol_header_symbol_t.Group_for_symbol_header_son_top_symbol
         Group_for_symbol_header_son_top_symbol_t.Let_is_topson_notleaf_symbol_off_top_symbol_equal_function)),
    [1; 1; 2; 11; 1; 2; 1; 7; 2])]
);;

(* 1 Group_for_symbol_header_son_top_symbol_t.Let_is_topson_notleaf_symbol_off_top_symbol_equal_function *)

let idx_gro = 1;;
let tag_gro = List.nth tag_gro_l (idx_gro-1);;

test_number 14 (
tag_gro 
(* : Group_symbol_t.group_symbol Tag_t.tag *)
=
  (Group_symbol_t.Group_for_symbol_symbol
    (Group_for_symbol_symbol_t.Group_for_symbol_header_symbol
      (Group_for_symbol_header_symbol_t.Group_for_symbol_header_son_top_symbol
        Group_for_symbol_header_son_top_symbol_t.Let_is_topson_notleaf_symbol_off_top_symbol_equal_function)),
   [1; 1; 2; 11; 1; 2; 1; 7; 2])
);;

let tag_cal_l = Group_formula_v.camlline_tag_list_off_group_tag tag_gro;; 

test_number 15 (
tag_cal_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
   [(Camlline_symbol_t.Camlline_for_any_symbol
     (Camlline_for_any_symbol_t.Camlline_for_any_duo_symbol
       (Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_son_top_notleaf_symbol
         Camlline_for_any_duo_son_top_notleaf_symbol_t.Let_is_es_any_off_et_any_equal_function)),
    [1; 1; 1; 2; 11; 1; 2; 1; 7; 2])]
);;

let str_l = Group_value_v.string_list_off_group_tag tag_gro;;

test_number 16 (
str_l
(* : string list *)
=
  ["let is_coordinate_symbol_off_figure_symbol = function"]
);;
 
(* Camlline_constant_function_symbol_t.Let_name_of_topson_notleaf_equal *)

let idx_cal = 1;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 17 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
   (Camlline_symbol_t.Camlline_for_any_symbol
    (Camlline_for_any_symbol_t.Camlline_for_any_duo_symbol
      (Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_son_top_notleaf_symbol
        Camlline_for_any_duo_son_top_notleaf_symbol_t.Let_is_es_any_off_et_any_equal_function)),
   [1; 1; 1; 2; 11; 1; 2; 1; 7; 2])
);;

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;
    
test_number 18 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
  [(Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate"),
    [1; 1; 1; 1; 2; 11; 1; 2; 1; 7; 2]);
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "figure"),
    [2; 1; 1; 1; 2; 11; 1; 2; 1; 7; 2])]
);;

(* 2 Section_for_symbol_body_son_top_symbol_t.Is_one_topson_notleaf_off_pattern_for_symbol *)

let idx_sec = 2;;
let tag_sec = List.nth tag_sec_l (idx_sec-1);;

test_number 19 (
tag_sec 
(* : Section_symbol_t.section_symbol Tag_t.tag *)
=
  (Section_symbol_t.Section_for_symbol_symbol
    (Section_for_symbol_symbol_t.Section_for_symbol_body_symbol
      (Section_for_symbol_body_symbol_t.Section_for_symbol_body_son_top_symbol
        Section_for_symbol_body_son_top_symbol_t.Is_one_topson_notleaf_off_pattern_for_symbol)),
   [2; 2; 11; 1; 2; 1; 7; 2])

);;

let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec;;

test_number 20 (
tag_gro_l 
(* : Group_symbol_t.group_symbol Tag_t.tag list *)
 =
 [(Group_symbol_t.Group_for_symbol_symbol
     (Group_for_symbol_symbol_t.Group_for_symbol_body_symbol
       (Group_for_symbol_body_symbol_t.Group_for_symbol_body_son_top_symbol
         Group_for_symbol_body_son_top_symbol_t.Pipe_is_topson_notleaf_symbol_off_top_symbol)),
    [1; 2; 2; 11; 1; 2; 1; 7; 2])]
);;

(* 1 Group_for_symbol_body_son_top_symbol_t.Pipe_is_topson_notleaf_symbol_off_top_symbol *)

let idx_gro = 1;;
let tag_gro = List.nth tag_gro_l (idx_gro-1);;

test_number 21 (
tag_gro 
(* : Group_symbol_t.group_symbol Tag_t.tag *)
=
  (Group_symbol_t.Group_for_symbol_symbol
    (Group_for_symbol_symbol_t.Group_for_symbol_body_symbol
      (Group_for_symbol_body_symbol_t.Group_for_symbol_body_son_top_symbol
        Group_for_symbol_body_son_top_symbol_t.Pipe_is_topson_notleaf_symbol_off_top_symbol)),
   [1; 2; 2; 11; 1; 2; 1; 7; 2])
);;

let tag_cal_l = Group_formula_v.camlline_tag_list_off_group_tag tag_gro;;

test_number 22 (
tag_cal_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
 [(Camlline_symbol_t.Camlline_for_any_symbol
     (Camlline_for_any_symbol_t.Camlline_for_any_duo_symbol
       (Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_son_top_notleaf_symbol
         Camlline_for_any_duo_son_top_notleaf_symbol_t.Pipe_et_any_tdot_es_any_underscore_arrow_true)),
    [1; 1; 2; 2; 11; 1; 2; 1; 7; 2]);
   (Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_function_symbol
       Camlline_constant_function_symbol_t.Pipe_underscore_arrow_false),
    [2; 1; 2; 2; 11; 1; 2; 1; 7; 2])]
);;

let str_l = Group_value_v.string_list_off_group_tag tag_gro;; 

test_number 23 (
str_l
(* : string list *)
=
["  | Figure_symbol_t.Coordinate_symbol _ -> true"; 
 "  | _ -> false"]
);;

(* 1 Camlline_for_any_duo_son_top_notleaf_symbol_t.Pipe_et_any_tdot_es_arrow_true *)

let idx_cal = 1;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 24 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
  (Camlline_symbol_t.Camlline_for_any_symbol
    (Camlline_for_any_symbol_t.Camlline_for_any_duo_symbol
      (Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_son_top_notleaf_symbol
        Camlline_for_any_duo_son_top_notleaf_symbol_t.Pipe_et_any_tdot_es_any_underscore_arrow_true)),
   [1; 1; 2; 2; 11; 1; 2; 1; 7; 2])
);;

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;
    
test_number 25 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
= 
    [(Entity_symbol_t.Entity_proper_symbol
	(Entity_proper_symbol_t.Entity_proper_with_sons "coordinate"),
      [1; 1; 1; 2; 2; 11; 1; 2; 1; 7; 2]);
     (Entity_symbol_t.Entity_proper_symbol
	(Entity_proper_symbol_t.Entity_proper_with_sons "figure"),
      [2; 1; 1; 2; 2; 11; 1; 2; 1; 7; 2])]
   );;

let str = Camlline_value_v.string_off_camlline_tag tag_cal;;

test_number 26 (
str 
(* : string *)
  =
"  | Figure_symbol_t.Coordinate_symbol _ -> true"
);;

(* 2 Camlline_constant_function_symbol_t.Pipe_underscore_arrow_false *)

let idx_cal = 2;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 27 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
  (Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_function_symbol
      Camlline_constant_function_symbol_t.Pipe_underscore_arrow_false),
   [2; 1; 2; 2; 11; 1; 2; 1; 7; 2])
);;

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;
    
test_number 28 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
  []
);;

let str = Camlline_value_v.string_off_camlline_tag tag_cal;;

test_number 29 (
str 
(* : string *)
  =
  "  | _ -> false"
);;

(* 3 Camlparagraph_for_symbol_let_match_symbol_t.Let_is_topson_notleaf *)

let idx_cap = 3;;
let tag_cap = List.nth tag_cap_l (idx_cap-1);;

test_number 30 (
tag_cap
=
  (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
    (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
      (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_match_symbol
        Camlparagraph_for_symbol_let_match_symbol_t.Let_is_topson_notleaf_symbol_off_top_symbol)),
   [3; 11; 1; 2; 1; 7; 2])
);;

let tag_sec_l = Camlparagraph_formula_v.section_tag_list_off_camlparagraph_tag tag_cap;;

test_number 31 (
tag_sec_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
  [(Section_symbol_t.Section_for_symbol_symbol
     (Section_for_symbol_symbol_t.Section_for_symbol_header_symbol
       (Section_for_symbol_header_symbol_t.Section_for_symbol_header_son_top_symbol
         Section_for_symbol_header_son_top_symbol_t.Let_is_topson_notleaf_symbol_off_top_symbol_equal_function)),
    [1; 3; 11; 1; 2; 1; 7; 2]);
   (Section_symbol_t.Section_for_symbol_symbol
     (Section_for_symbol_symbol_t.Section_for_symbol_body_symbol
       (Section_for_symbol_body_symbol_t.Section_for_symbol_body_son_top_symbol
         Section_for_symbol_body_son_top_symbol_t.Is_one_topson_notleaf_off_pattern_for_symbol)),
    [2; 3; 11; 1; 2; 1; 7; 2]);
   (Section_symbol_t.Section_for_any_symbol
     (Section_for_any_symbol_t.Section_for_any_footer_symbol
       Section_for_any_footer_symbol_t.Double_semicolon),
    [3; 3; 11; 1; 2; 1; 7; 2])]
);; 

let nam_fil = Camlparagraph_value_v.fullnameoffile "./" tag_cap;;

test_number 32 (
nam_fil
(* : string *)
  =
 "./Figure_symbol_querying_topson_notleaf_for_symbol_let_is_topson_notleaf_symbol_off_top_symbol_v.ml"
);;

Camlparagraph_value_v.write "./" tag_cap;;

(* 1 Section_for_symbol_header_son_symbol_t.Let_is_topson_notleaf *)

let idx_sec = 1;;
let tag_sec = List.nth tag_sec_l (idx_sec-1);;

test_number 33 (
tag_sec 
(* : Section_symbol_t.section_symbol Tag_t.tag *)
=
  (Section_symbol_t.Section_for_symbol_symbol
    (Section_for_symbol_symbol_t.Section_for_symbol_header_symbol
      (Section_for_symbol_header_symbol_t.Section_for_symbol_header_son_top_symbol
        Section_for_symbol_header_son_top_symbol_t.Let_is_topson_notleaf_symbol_off_top_symbol_equal_function)),
   [1; 3; 11; 1; 2; 1; 7; 2])
);;

let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec;; 

test_number 34 (
tag_gro_l 
(* : Group_symbol_t.group_symbol Tag_t.tag list *)
 =
  [(Group_symbol_t.Group_for_symbol_symbol
     (Group_for_symbol_symbol_t.Group_for_symbol_header_symbol
       (Group_for_symbol_header_symbol_t.Group_for_symbol_header_son_top_symbol
         Group_for_symbol_header_son_top_symbol_t.Let_is_topson_notleaf_symbol_off_top_symbol_equal_function)),
    [1; 1; 3; 11; 1; 2; 1; 7; 2])]
);;

(* 1 Group_for_symbol_header_son_top_symbol_t.Let_is_topson_notleaf_symbol_off_top_symbol_equal_function *)

let idx_gro = 1;;
let tag_gro = List.nth tag_gro_l (idx_gro-1);;

test_number 35 (
tag_gro 
(* : Group_symbol_t.group_symbol Tag_t.tag *)
=
  (Group_symbol_t.Group_for_symbol_symbol
    (Group_for_symbol_symbol_t.Group_for_symbol_header_symbol
      (Group_for_symbol_header_symbol_t.Group_for_symbol_header_son_top_symbol
        Group_for_symbol_header_son_top_symbol_t.Let_is_topson_notleaf_symbol_off_top_symbol_equal_function)),
   [1; 1; 3; 11; 1; 2; 1; 7; 2])
);;

let tag_cal_l = Group_formula_v.camlline_tag_list_off_group_tag tag_gro;; 

test_number 36 (
tag_cal_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
  [(Camlline_symbol_t.Camlline_for_any_symbol
     (Camlline_for_any_symbol_t.Camlline_for_any_duo_symbol
       (Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_son_top_notleaf_symbol
         Camlline_for_any_duo_son_top_notleaf_symbol_t.Let_is_es_any_off_et_any_equal_function)),
    [1; 1; 1; 3; 11; 1; 2; 1; 7; 2])]
);;

let str_l = Group_value_v.string_list_off_group_tag tag_gro;;

test_number 37 (
str_l
(* : string list *)
=
  ["let is_point_symbol_off_figure_symbol = function"]
);;
 
(* 1 Camlline_for_any_duo_son_top_notleaf_symbol_t.Let_is_es_any_off_et_any_equal_function *)

let idx_cal = 1;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 38 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
  (Camlline_symbol_t.Camlline_for_any_symbol
    (Camlline_for_any_symbol_t.Camlline_for_any_duo_symbol
      (Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_son_top_notleaf_symbol
        Camlline_for_any_duo_son_top_notleaf_symbol_t.Let_is_es_any_off_et_any_equal_function)),
   [1; 1; 1; 3; 11; 1; 2; 1; 7; 2])
);;

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;
    
test_number 39 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
  [(Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_one_son "point"),
    [1; 1; 1; 1; 3; 11; 1; 2; 1; 7; 2]);
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "figure"),
    [2; 1; 1; 1; 3; 11; 1; 2; 1; 7; 2])]
);;

(* 2 Section_for_symbol_body_son_top_symbol_t.Is_one_topson_notleaf_off_pattern_for_symbol *)

let idx_sec = 2;;
let tag_sec = List.nth tag_sec_l (idx_sec-1);;

test_number 40 (
tag_sec 
(* : Section_symbol_t.section_symbol Tag_t.tag *)
=
  (Section_symbol_t.Section_for_symbol_symbol
    (Section_for_symbol_symbol_t.Section_for_symbol_body_symbol
      (Section_for_symbol_body_symbol_t.Section_for_symbol_body_son_top_symbol
        Section_for_symbol_body_son_top_symbol_t.Is_one_topson_notleaf_off_pattern_for_symbol)),
   [2; 3; 11; 1; 2; 1; 7; 2])

);;

let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec;;

test_number 41 (
tag_gro_l 
(* : Group_symbol_t.group_symbol Tag_t.tag list *)
 =
   [(Group_symbol_t.Group_for_symbol_symbol
     (Group_for_symbol_symbol_t.Group_for_symbol_body_symbol
       (Group_for_symbol_body_symbol_t.Group_for_symbol_body_son_top_symbol
         Group_for_symbol_body_son_top_symbol_t.Pipe_is_topson_notleaf_symbol_off_top_symbol)),
    [1; 2; 3; 11; 1; 2; 1; 7; 2])]
);;

(* 1 Group_for_symbol_body_son_top_symbol_t.Pipe_is_topson_notleaf_symbol_off_top_symbol *)

let idx_gro = 1;;
let tag_gro = List.nth tag_gro_l (idx_gro-1);;

test_number 42 (
tag_gro 
(* : Group_symbol_t.group_symbol Tag_t.tag *)
=
  (Group_symbol_t.Group_for_symbol_symbol
    (Group_for_symbol_symbol_t.Group_for_symbol_body_symbol
      (Group_for_symbol_body_symbol_t.Group_for_symbol_body_son_top_symbol
        Group_for_symbol_body_son_top_symbol_t.Pipe_is_topson_notleaf_symbol_off_top_symbol)),
   [1; 2; 3; 11; 1; 2; 1; 7; 2])
);;

let tag_cal_l = Group_formula_v.camlline_tag_list_off_group_tag tag_gro;;

test_number 43 (
tag_cal_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
 [(Camlline_symbol_t.Camlline_for_any_symbol
     (Camlline_for_any_symbol_t.Camlline_for_any_duo_symbol
       (Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_son_top_notleaf_symbol
         Camlline_for_any_duo_son_top_notleaf_symbol_t.Pipe_et_any_tdot_es_any_underscore_arrow_true)),
    [1; 1; 2; 3; 11; 1; 2; 1; 7; 2]);
   (Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_function_symbol
       Camlline_constant_function_symbol_t.Pipe_underscore_arrow_false),
    [2; 1; 2; 3; 11; 1; 2; 1; 7; 2])]
);;

let str_l = Group_value_v.string_list_off_group_tag tag_gro;; 

test_number 44 (
str_l
(* : string list *)
=
["  | Figure_symbol_t.Point_symbol _ -> true"; 
 "  | _ -> false"]
);;

(* 1 Camlline_for_any_duo_son_top_notleaf_symbol_t.Pipe_et_any_tdot_es_arrow_true *)

let idx_cal = 1;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 45 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
 (Camlline_symbol_t.Camlline_for_any_symbol
    (Camlline_for_any_symbol_t.Camlline_for_any_duo_symbol
      (Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_son_top_notleaf_symbol
        Camlline_for_any_duo_son_top_notleaf_symbol_t.Pipe_et_any_tdot_es_any_underscore_arrow_true)),
   [1; 1; 2; 3; 11; 1; 2; 1; 7; 2])
);;

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;
    
test_number 46 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
  [(Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_one_son "point"),
    [1; 1; 1; 2; 3; 11; 1; 2; 1; 7; 2]);
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "figure"),
    [2; 1; 1; 2; 3; 11; 1; 2; 1; 7; 2])]
);;

let str = Camlline_value_v.string_off_camlline_tag tag_cal;;

test_number 47 (
str 
(* : string *)
  =
 "  | Figure_symbol_t.Point_symbol _ -> true"
);;

(* 2 Camlline_constant_function_symbol_t.Pipe_underscore_arrow_false *)

let idx_cal = 2;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 48 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
  (Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_function_symbol
      Camlline_constant_function_symbol_t.Pipe_underscore_arrow_false),
   [2; 1; 2; 3; 11; 1; 2; 1; 7; 2])
);;

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;
    
test_number 49 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
  []
);;

let str = Camlline_value_v.string_off_camlline_tag tag_cal;;

test_number 50 (
str 
(* : string *)
  =
  "  | _ -> false"
);;

let str_l = Usagefile_value_v.string_list_off_usagefile_tag tag_usf;;

let nam_fil = Usagefile_value_v.fullnameoffile "./" tag_usf;;

test_number 51 (
nam_fil
(* : string *)
  =
"./Figure_symbol_v.ml"
);;

Usagefile_value_v.write "./" tag_usf;;

