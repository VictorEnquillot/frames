open Make_test_v;;

testing "Camlline_value_v with
   Camlline_value_u_figureset_symbol_coordinate_cartesian_abbreviating_topson_ofstring.ml";;

(* toplevel 
   #use "Camlline_value_u_figureset_symbol_coordinate_cartesian_abbreviating_topson_ofstring.ml";;

*)

let nam_cod = "Camlline_value_u_figureset_symbol_coordinate_cartesian_abbreviating_topson_ofstring.ml";;

let nam_dom = "figure";;
let nam_cof = "value_alone";;
let nam_ent = "coordinate_cartesian";;
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

let sym_ent = Tag_v.entity_off_tag tag_ent;;
let sym_cat = Tag_v.entity_off_tag tag_cat;;
let sym_dom = Tag_v.entity_off_tag tag_dom;;
let tri_ent = Triplet_v.make sym_ent sym_cat sym_dom;;
let sym_ets_l = Entity_topson_symbol_list_by_entity_tritup_provider_v.provide tri_ent;;

test_number 1 (
sym_ets_l
(*: Entity_symbol_t.entity_symbol list *)
=
  [Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Ofstring "x:ofstring"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Ofstring "y:ofstring"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Ofstring "z:ofstring"))]
);;

let sym_eto_l = Entity_topson_ofstring_symbol_list_by_entity_tritup_provider_v.provide tri_ent;;

test_number 2 (
sym_eto_l
(*: Entity_symbol_t.entity_symbol list *)
=
  [Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Ofstring "x:ofstring"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Ofstring "y:ofstring"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Ofstring "z:ofstring"))]
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

let nam_ite = "abbreviating_topson_ofstring_for_symbol";;
let sel_ite = (fun i -> Item_symbol_v.name i = nam_ite);;
let tag_ite = Doublet_list_v.find_if_left sel_ite tag_ite_l;; 

test_number 3 (
tag_ite
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
  (Item_symbol_t.Item_for_symbol_symbol
    (Item_for_symbol_symbol_t.Item_for_symbol_each_topson_ofstring_symbol
      Item_for_symbol_each_topson_ofstring_symbol_t.Abbreviating_topson_ofstring_for_symbol),
   [18; 1; 2; 3; 7; 2])
);;

let tag_cap_l = Item_formula_v.camlparagraph_tag_list_off_item_tag tag_ite;;

test_number 4 (
tag_cap_l
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
=
  [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       Camlparagraph_for_any_comment_symbol_t.Item_title),
    [1; 18; 1; 2; 3; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
         Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_topson_ofstring)),
    [2; 18; 1; 2; 3; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
         Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_topson_ofstring)),
    [3; 18; 1; 2; 3; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
         Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_topson_ofstring)),
    [4; 18; 1; 2; 3; 7; 2])]
);;

(* 2 Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_topson_ofstring *)

let idx_cap = 2;;
let tag_cap = List.nth tag_cap_l (idx_cap-1);;

test_number 5 (
tag_cap
=
  (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
    (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
      (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
        Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_topson_ofstring)),
   [2; 18; 1; 2; 3; 7; 2])
);;

let tag_sec_l = Camlparagraph_formula_v.section_tag_list_off_camlparagraph_tag tag_cap;;

test_number 6 (
tag_sec_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
 [(Section_symbol_t.Section_for_symbol_symbol
     (Section_for_symbol_symbol_t.Section_for_symbol_header_symbol
       (Section_for_symbol_header_symbol_t.Section_for_symbol_header_son_top_symbol
         Section_for_symbol_header_son_top_symbol_t.Let_abbreviate_topson_ofstring)),
    [1; 2; 18; 1; 2; 3; 7; 2])]
);; 

let nam_fil = Camlparagraph_value_v.fullnameoffile "./" tag_cap;;

test_number 7 (
nam_fil
(* : string *)
  =
  "./Coordinate_cartesian_symbol_abbreviating_topson_ofstring_for_symbol_let_abbreviate_topson_ofstring_v.ml"
);;

Camlparagraph_value_v.write "./" tag_cap;;

(* 1 Section_for_symbol_header_constant_symbol_t.Let_make_of_topson_ofstring_nam_equal *)

(* *)

let idx_sec = 1;;
let tag_sec = List.nth tag_sec_l (idx_sec-1);;

test_number 8 (
tag_sec 
(* : Section_symbol_t.section_symbol Tag_t.tag *)
=
 (Section_symbol_t.Section_for_symbol_symbol
    (Section_for_symbol_symbol_t.Section_for_symbol_header_symbol
      (Section_for_symbol_header_symbol_t.Section_for_symbol_header_son_top_symbol
        Section_for_symbol_header_son_top_symbol_t.Let_abbreviate_topson_ofstring)),
   [1; 2; 18; 1; 2; 3; 7; 2])
);;

let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec;; 

test_number 9 (
tag_gro_l 
(* : Group_symbol_t.group_symbol Tag_t.tag list *)
 =
 [(Group_symbol_t.Group_for_symbol_symbol
     (Group_for_symbol_symbol_t.Group_for_symbol_header_symbol
       (Group_for_symbol_header_symbol_t.Group_for_symbol_header_son_top_symbol
         Group_for_symbol_header_son_top_symbol_t.Let_abbreviate_topson_ofstring)),
    [1; 1; 2; 18; 1; 2; 3; 7; 2])]
);;

(* 1 Group_for_symbol_header_constant_symbol_t.Let_make_of_topson_ofstring_nam_equal *)

let idx_gro = 1;;
let tag_gro = List.nth tag_gro_l (idx_gro-1);;

test_number 10 (
tag_gro 
(* : Group_symbol_t.group_symbol Tag_t.tag *)
=
  (Group_symbol_t.Group_for_symbol_symbol
    (Group_for_symbol_symbol_t.Group_for_symbol_header_symbol
      (Group_for_symbol_header_symbol_t.Group_for_symbol_header_son_top_symbol
        Group_for_symbol_header_son_top_symbol_t.Let_abbreviate_topson_ofstring)),
   [1; 1; 2; 18; 1; 2; 3; 7; 2])
);;

let tag_cal_l = Group_formula_v.camlline_tag_list_off_group_tag tag_gro;; 

test_number 11 (
tag_cal_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
 [(Camlline_symbol_t.Camlline_for_symbol_symbol
     (Camlline_for_symbol_symbol_t.Camlline_for_symbol_duo_symbol
       (Camlline_for_symbol_duo_symbol_t.Camlline_for_symbol_duo_son_top_symbol
         (Camlline_for_symbol_duo_son_top_symbol_t.Camlline_for_symbol_duo_son_top_ofstring_symbol
           Camlline_for_symbol_duo_son_top_ofstring_symbol_t.Let_es_sarg_equal_et_symbol_tdot_es_sarg))),
    [1; 1; 1; 2; 18; 1; 2; 3; 7; 2])]
);;

let str_l = Group_value_v.string_list_off_group_tag tag_gro;;

test_number 12 (
str_l
(* : string list *)
=
  ["let x:ofstring s = Coordinate_cartesian_symbol_t.X:ofstring s;;"]
);;
 
(* 1 Camlline_for_symbol_duo_son_top_ofstring_symbol_t.Let_es_sarg_equal_et_symbol_tdot_es_sarg *)

let idx_cal = 1;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 13 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
  (Camlline_symbol_t.Camlline_for_symbol_symbol
    (Camlline_for_symbol_symbol_t.Camlline_for_symbol_duo_symbol
      (Camlline_for_symbol_duo_symbol_t.Camlline_for_symbol_duo_son_top_symbol
        (Camlline_for_symbol_duo_son_top_symbol_t.Camlline_for_symbol_duo_son_top_ofstring_symbol
          Camlline_for_symbol_duo_son_top_ofstring_symbol_t.Let_es_sarg_equal_et_symbol_tdot_es_sarg))),
   [1; 1; 1; 2; 18; 1; 2; 3; 7; 2])
);;

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;
    
test_number 14 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
  [(Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Ofstring "x:ofstring")),
    [1; 1; 1; 1; 2; 18; 1; 2; 3; 7; 2]);
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate_cartesian"),
    [2; 1; 1; 1; 2; 18; 1; 2; 3; 7; 2])]
);;

let str = Camlline_value_v.string_off_camlline_tag tag_cal;;

test_number 15 (
str
(* : string *)
  =
  "let x:ofstring s = Coordinate_cartesian_symbol_t.X:ofstring s;;"
);;

(* 4 Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_topson_ofstring *)

let idx_cap = 4;;
let tag_cap = List.nth tag_cap_l (idx_cap-1);;

test_number 16 (
tag_cap
=
  (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
    (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
      (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
        Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_topson_ofstring)),
   [4; 18; 1; 2; 3; 7; 2])
);;

let tag_sec_l = Camlparagraph_formula_v.section_tag_list_off_camlparagraph_tag tag_cap;;

test_number 17 (
tag_sec_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
 [(Section_symbol_t.Section_for_symbol_symbol
     (Section_for_symbol_symbol_t.Section_for_symbol_header_symbol
       (Section_for_symbol_header_symbol_t.Section_for_symbol_header_son_top_symbol
         Section_for_symbol_header_son_top_symbol_t.Let_abbreviate_topson_ofstring)),
    [1; 4; 18; 1; 2; 3; 7; 2])]
);; 

let nam_fil = Camlparagraph_value_v.fullnameoffile "./" tag_cap;;

test_number 18 (
nam_fil
(* : string *)
  =
  "./Coordinate_cartesian_symbol_abbreviating_topson_ofstring_for_symbol_let_abbreviate_topson_ofstring_v.ml"
);;

Camlparagraph_value_v.write "./" tag_cap;;

(* 1 Section_for_symbol_header_constant_symbol_t.Let_make_of_topson_ofstring_nam_equal *)

(* *)

let idx_sec = 1;;
let tag_sec = List.nth tag_sec_l (idx_sec-1);;

test_number 19 (
tag_sec 
(* : Section_symbol_t.section_symbol Tag_t.tag *)
=
 (Section_symbol_t.Section_for_symbol_symbol
    (Section_for_symbol_symbol_t.Section_for_symbol_header_symbol
      (Section_for_symbol_header_symbol_t.Section_for_symbol_header_son_top_symbol
        Section_for_symbol_header_son_top_symbol_t.Let_abbreviate_topson_ofstring)),
   [1; 4; 18; 1; 2; 3; 7; 2])
);;

let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec;; 

test_number 20 (
tag_gro_l 
(* : Group_symbol_t.group_symbol Tag_t.tag list *)
 =
 [(Group_symbol_t.Group_for_symbol_symbol
     (Group_for_symbol_symbol_t.Group_for_symbol_header_symbol
       (Group_for_symbol_header_symbol_t.Group_for_symbol_header_son_top_symbol
         Group_for_symbol_header_son_top_symbol_t.Let_abbreviate_topson_ofstring)),
    [1; 1; 4; 18; 1; 2; 3; 7; 2])]
);;

(* 1 Group_for_symbol_header_constant_symbol_t.Let_make_of_topson_ofstring_nam_equal *)

let idx_gro = 1;;
let tag_gro = List.nth tag_gro_l (idx_gro-1);;

test_number 21 (
tag_gro 
(* : Group_symbol_t.group_symbol Tag_t.tag *)
=
  (Group_symbol_t.Group_for_symbol_symbol
    (Group_for_symbol_symbol_t.Group_for_symbol_header_symbol
      (Group_for_symbol_header_symbol_t.Group_for_symbol_header_son_top_symbol
        Group_for_symbol_header_son_top_symbol_t.Let_abbreviate_topson_ofstring)),
   [1; 1; 4; 18; 1; 2; 3; 7; 2])
);;

let tag_cal_l = Group_formula_v.camlline_tag_list_off_group_tag tag_gro;; 

test_number 22 (
tag_cal_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
 [(Camlline_symbol_t.Camlline_for_symbol_symbol
     (Camlline_for_symbol_symbol_t.Camlline_for_symbol_duo_symbol
       (Camlline_for_symbol_duo_symbol_t.Camlline_for_symbol_duo_son_top_symbol
         (Camlline_for_symbol_duo_son_top_symbol_t.Camlline_for_symbol_duo_son_top_ofstring_symbol
           Camlline_for_symbol_duo_son_top_ofstring_symbol_t.Let_es_sarg_equal_et_symbol_tdot_es_sarg))),
    [1; 1; 1; 4; 18; 1; 2; 3; 7; 2])]
);;

let str_l = Group_value_v.string_list_off_group_tag tag_gro;;

test_number 23 (
str_l
(* : string list *)
=
  ["let z:ofstring s = Coordinate_cartesian_symbol_t.Z:ofstring s;;"]
);;
 
(* 1 Camlline_for_symbol_duo_son_top_ofstring_symbol_t.Let_es_sarg_equal_et_symbol_tdot_es_sarg *)

let idx_cal = 1;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 24 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
  (Camlline_symbol_t.Camlline_for_symbol_symbol
    (Camlline_for_symbol_symbol_t.Camlline_for_symbol_duo_symbol
      (Camlline_for_symbol_duo_symbol_t.Camlline_for_symbol_duo_son_top_symbol
        (Camlline_for_symbol_duo_son_top_symbol_t.Camlline_for_symbol_duo_son_top_ofstring_symbol
          Camlline_for_symbol_duo_son_top_ofstring_symbol_t.Let_es_sarg_equal_et_symbol_tdot_es_sarg))),
   [1; 1; 1; 4; 18; 1; 2; 3; 7; 2])
);;

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;
    
test_number 25 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
  [(Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Ofstring "z:ofstring")),
    [1; 1; 1; 1; 4; 18; 1; 2; 3; 7; 2]);
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate_cartesian"),
    [2; 1; 1; 1; 4; 18; 1; 2; 3; 7; 2])]
);;

let str = Camlline_value_v.string_off_camlline_tag tag_cal;;

test_number 26 (
str
(* : string *)
  =
"let z:ofstring s = Coordinate_cartesian_symbol_t.Z:ofstring s;;"
);;

