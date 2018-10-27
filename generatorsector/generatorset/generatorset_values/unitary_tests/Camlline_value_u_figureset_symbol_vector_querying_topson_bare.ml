open Make_test_v;;

testing "Camlline_value_v with
   Camlline_value_u_figureset_symbol_vector_querying_topson_bare.ml";;

(* toplevel 
   #use "Camlline_value_u_figureset_symbol_vector_querying_topson_bare.ml";;

*)

let nam_cod = "Camlline_value_u_figureset_symbol_vector_querying_topson_bare.ml";;

let nam_dom = "figure";;
let nam_cof = "value_alone";;
let nam_ent = "vector";;
let nam_cat = "symbol";;
let nam_usf = "implementation_for_symbol";;

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

let sel_ent = (fun e -> Entity_symbol_v.string_off e = nam_ent)
let tag_ent = Doublet_list_v.find_if_left sel_ent tag_ent_l;;

test_number 1 (
tag_ent
(* : Entity_symbol_t.entity_symbol * Sole_index_t.sole_index *)
=
(Entity_symbol_t.Entity_proper_symbol
  (Entity_proper_symbol_t.Entity_proper_with_one_son "vector"),
 [11; 7; 2])
);;

let tag_cof_l = Entity_formula_v.contentfile_tag_list_off_entity_tag tag_ent;;
let sel_cof = (fun c -> Contentfile_symbol_v.name c = nam_cof);;
let tag_cof = Doublet_list_v.find_if_left sel_cof tag_cof_l;;

let tag_usf_l = Contentfile_formula_v.usagefile_tag_list_off_contentfile_tag tag_cof;;
let sel_usf = (fun u -> Usagefile_symbol_v.name u = nam_usf);;
let tag_usf = Doublet_list_v.find_if_left sel_usf tag_usf_l;;

let tag_ite_l = Usagefile_formula_v.item_tag_list_off_usagefile_tag tag_usf;;
let tag_ite_sl1 = List_v.sublist_of_int_of_int_of_list 0 13 tag_ite_l;;
let tag_ite_sl2 = List_v.sublist_of_int_of_int_of_list 14 50 tag_ite_l;;

let nam_ite = "querying_topson_bare_for_symbol";;
let sel_ite = (fun i -> Item_symbol_v.name i = nam_ite);;
let tag_ite = Doublet_list_v.find_if_left sel_ite tag_ite_l;; 

test_number 2 (
tag_ite
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
   (Item_symbol_t.Item_for_symbol_symbol
    (Item_for_symbol_symbol_t.Item_for_symbol_each_topson_bare_symbol
      Item_for_symbol_each_topson_bare_symbol_t.Querying_topson_bare_for_symbol),
   [9; 1; 2; 11; 7; 2])
);;

let tag_cap_l = Item_formula_v.camlparagraph_tag_list_off_item_tag tag_ite;;

test_number 3 (
tag_cap_l
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
=
  [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       Camlparagraph_for_any_comment_symbol_t.Item_title),
    [1; 9; 1; 2; 11; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_match_symbol
         Camlparagraph_for_symbol_let_match_symbol_t.Let_is_onlyson_bare)),
    [2; 9; 1; 2; 11; 7; 2])]
);;

(* 2 Camlparagraph_for_symbol_let_match_symbol_t.Let_is_onlyson_bare *)

let idx_cap = 2;;
let tag_cap = List.nth tag_cap_l (idx_cap-1);;

test_number 4 (
tag_cap
=
  (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
    (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
      (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_match_symbol
        Camlparagraph_for_symbol_let_match_symbol_t.Let_is_onlyson_bare)),
   [2; 9; 1; 2; 11; 7; 2])
);;

let tag_sec_l = Camlparagraph_formula_v.section_tag_list_off_camlparagraph_tag tag_cap;;

test_number 5 (
tag_sec_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
 [(Section_symbol_t.Section_for_symbol_symbol
     (Section_for_symbol_symbol_t.Section_for_symbol_header_symbol
       (Section_for_symbol_header_symbol_t.Section_for_symbol_header_son_symbol
         Section_for_symbol_header_son_symbol_t.Let_is_topson_bare)),
    [1; 2; 9; 1; 2; 11; 7; 2]);
   (Section_symbol_t.Section_for_symbol_symbol
     (Section_for_symbol_symbol_t.Section_for_symbol_body_symbol
       (Section_for_symbol_body_symbol_t.Section_for_symbol_body_son_top_symbol
         Section_for_symbol_body_son_top_symbol_t.Is_onlyson_bare_off_pattern_for_symbol)),
    [2; 2; 9; 1; 2; 11; 7; 2]);
   (Section_symbol_t.Section_for_any_symbol
     (Section_for_any_symbol_t.Section_for_any_footer_symbol
       Section_for_any_footer_symbol_t.Double_semicolon),
    [3; 2; 9; 1; 2; 11; 7; 2])]
);; 

let nam_fil = Camlparagraph_value_v.fullnameoffile "./" tag_cap;;

test_number 6 (
nam_fil
(* : string *)
  =
 "./Vector_symbol_querying_topson_bare_for_symbol_let_is_onlyson_bare_v.ml"
);;

Camlparagraph_value_v.write "./" tag_cap;;

(* 1 Section_for_symbol_header_son_symbol_t.Let_is_topson_bare *)

let idx_sec = 1;;
let tag_sec = List.nth tag_sec_l (idx_sec-1);;

test_number 7 (
tag_sec 
(* : Section_symbol_t.section_symbol Tag_t.tag *)
=
  (Section_symbol_t.Section_for_symbol_symbol
    (Section_for_symbol_symbol_t.Section_for_symbol_header_symbol
      (Section_for_symbol_header_symbol_t.Section_for_symbol_header_son_symbol
        Section_for_symbol_header_son_symbol_t.Let_is_topson_bare)),
   [1; 2; 9; 1; 2; 11; 7; 2])
);;

let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec;; 

test_number 8 (
tag_gro_l 
(* : Group_symbol_t.group_symbol Tag_t.tag list *)
 =
   [(Group_symbol_t.Group_for_symbol_symbol
     (Group_for_symbol_symbol_t.Group_for_symbol_header_symbol
       (Group_for_symbol_header_symbol_t.Group_for_symbol_header_son_symbol
         Group_for_symbol_header_son_symbol_t.Let_is_topson_bare)),
    [1; 1; 2; 9; 1; 2; 11; 7; 2])]
);;

(* Group : Try_name_of_topson_notleaf_with_failure_arrow *)

(*let name_of_topson_notleaf nam s = *)
(* *)

let idx_gro = 1;;
let tag_gro = List.nth tag_gro_l (idx_gro-1);;

test_number 9 (
tag_gro 
(* : Group_symbol_t.group_symbol Tag_t.tag *)
=
  (Group_symbol_t.Group_for_symbol_symbol
    (Group_for_symbol_symbol_t.Group_for_symbol_header_symbol
      (Group_for_symbol_header_symbol_t.Group_for_symbol_header_son_symbol
        Group_for_symbol_header_son_symbol_t.Let_is_topson_bare)),
   [1; 1; 2; 9; 1; 2; 11; 7; 2])
);;

let tag_cal_l = Group_formula_v.camlline_tag_list_off_group_tag tag_gro;; 

test_number 10 (
tag_cal_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
  [(Camlline_symbol_t.Camlline_for_any_symbol
     (Camlline_for_any_symbol_t.Camlline_for_any_uno_symbol
       (Camlline_for_any_uno_symbol_t.Camlline_for_any_uno_son_symbol
         Camlline_for_any_uno_son_symbol_t.Let_is_es_equal_function)),
    [1; 1; 1; 2; 9; 1; 2; 11; 7; 2])]
);;

let str_l = Group_value_v.string_list_off_group_tag tag_gro;;

test_number 11 (
str_l
(* : string list *)
=
["let is_vector_constructor = function"]
);;
 
(* Camlline_constant_function_symbol_t.Let_name_of_topson_notleaf_equal *)

let idx_cal = 1;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 12 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
 (Camlline_symbol_t.Camlline_for_any_symbol
    (Camlline_for_any_symbol_t.Camlline_for_any_uno_symbol
      (Camlline_for_any_uno_symbol_t.Camlline_for_any_uno_son_symbol
        Camlline_for_any_uno_son_symbol_t.Let_is_es_equal_function)),
   [1; 1; 1; 2; 9; 1; 2; 11; 7; 2])
);;

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;
    
test_number 13 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
  [(Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Bare "vector_constructor")),
    [1; 1; 1; 1; 2; 9; 1; 2; 11; 7; 2])]
);;

(* 2 Section_for_symbol_body_son_top_symbol_t.Is_one_topson_bare_off_pattern_for_symbol *)

let idx_sec = 2;;
let tag_sec = List.nth tag_sec_l (idx_sec-1);;

test_number 14 (
tag_sec 
(* : Section_symbol_t.section_symbol Tag_t.tag *)
=
  (Section_symbol_t.Section_for_symbol_symbol
    (Section_for_symbol_symbol_t.Section_for_symbol_body_symbol
      (Section_for_symbol_body_symbol_t.Section_for_symbol_body_son_top_symbol
        Section_for_symbol_body_son_top_symbol_t.Is_onlyson_bare_off_pattern_for_symbol)),
   [2; 2; 9; 1; 2; 11; 7; 2])
);;

let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec;;

test_number 15 (
tag_gro_l 
(* : Group_symbol_t.group_symbol Tag_t.tag list *)
 =
   [(Group_symbol_t.Group_for_symbol_symbol
     (Group_for_symbol_symbol_t.Group_for_symbol_body_symbol
       (Group_for_symbol_body_symbol_t.Group_for_symbol_body_son_top_symbol
         Group_for_symbol_body_son_top_symbol_t.Pipe_is_onlyson_bare_symbol_off_top_symbol)),
    [1; 2; 2; 9; 1; 2; 11; 7; 2])]
);;

(* 1 Group_for_symbol_body_son_top_symbol_t.Pipe_is_onlyson_bare_symbol_off_top_symbol *)

let idx_gro = 1;;
let tag_gro = List.nth tag_gro_l (idx_gro-1);;

test_number 16 (
tag_gro 
(* : Group_symbol_t.group_symbol Tag_t.tag *)
=
  (Group_symbol_t.Group_for_symbol_symbol
    (Group_for_symbol_symbol_t.Group_for_symbol_body_symbol
      (Group_for_symbol_body_symbol_t.Group_for_symbol_body_son_top_symbol
        Group_for_symbol_body_son_top_symbol_t.Pipe_is_onlyson_bare_symbol_off_top_symbol)),
   [1; 2; 2; 9; 1; 2; 11; 7; 2])
);;

let tag_cal_l = Group_formula_v.camlline_tag_list_off_group_tag tag_gro;;

test_number 17 (
tag_cal_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
  [(Camlline_symbol_t.Camlline_for_any_symbol
     (Camlline_for_any_symbol_t.Camlline_for_any_duo_symbol
       (Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_son_top_bare_symbol
         Camlline_for_any_duo_son_top_bare_symbol_t.Pipe_et_any_tdot_es_arrow_true)),
    [1; 1; 2; 2; 9; 1; 2; 11; 7; 2])]
);;

let str_l = Group_value_v.string_list_off_group_tag tag_gro;; 

test_number 18 (
str_l
(* : string list *)
=
["  | Vector_symbol_t.Vector_constructor -> true"]
);;

(* 1 Camlline_for_any_duo_son_top_bare_symbol_t.Pipe_et_any_tdot_es_arrow_true *)

let idx_cal = 1;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 19 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
 (Camlline_symbol_t.Camlline_for_any_symbol
    (Camlline_for_any_symbol_t.Camlline_for_any_duo_symbol
      (Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_son_top_bare_symbol
        Camlline_for_any_duo_son_top_bare_symbol_t.Pipe_et_any_tdot_es_arrow_true)),
   [1; 1; 2; 2; 9; 1; 2; 11; 7; 2])
);;

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;
    
test_number 20 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
  [(Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Bare "vector_constructor")),
    [1; 1; 1; 2; 2; 9; 1; 2; 11; 7; 2]);
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_one_son "vector"),
    [2; 1; 1; 2; 2; 9; 1; 2; 11; 7; 2])]
);;

let str = Camlline_value_v.string_off_camlline_tag tag_cal;;

test_number 21 (
str 
(* : string *)
  =
"  | Vector_symbol_t.Vector_constructor -> true"
);;

