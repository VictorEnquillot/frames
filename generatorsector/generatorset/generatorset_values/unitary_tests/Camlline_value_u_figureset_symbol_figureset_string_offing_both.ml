open Make_test_v;;

testing "Camlline_formula_v with
   Camlline_formula_u_figureset_symbol_figureset_both.ml";;

(* toplevel 
   #use "Camlline_formula_u_figureset_symbol_figureset_both.ml";;

*)

let nam_cod = "Camlline_formula_u_figureset_symbol_figureset_both.ml";;

let nam_dom = "figure";;
let nam_cof = "value_alone";;
let nam_ite = "string_offing";;
let nam_ent = "figure";;
let nam_cat = "symbol";;
let nam_usf = "implementation";;

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

let for_dom = Domain_formula_v.retrieve tag_dom;;

test_number 2 (
for_dom
(* : Category_symbol_t.category_symbol Tag_t.tag list *)
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
let tag_cat = Doublet_list_v.find_if_left sel_cat for_dom;;

test_number 3 (
tag_cat
(* : Category_symbol_v.Category_symbol_t.category_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Category_symbol_t.Symbol, [7; 2])
);;

let for_cat = Category_formula_v.retrieve tag_cat;;

test_number 4 (
for_cat 
(* : Entity_symbol_t.entity_proper_symbol Tag_t.tag list *)
=
  Category_formula_t.Category_symbol_formula
   [(Entity_symbol_t.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "figure"),
     [1; 7; 2]);
    (Entity_symbol_t.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_notopsonleaf "triangle"),
     [2; 7; 2]);
    (Entity_symbol_t.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "triangle_isoceles"),
     [3; 7; 2]);
    (Entity_symbol_t.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "triangle_scalene"),
     [4; 7; 2]);
    (Entity_symbol_t.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_notopsonleaf "coordinate"),
     [5; 7; 2]);
    (Entity_symbol_t.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_sometopsonleaf
        "coordinate_cartesian"),
     [6; 7; 2]);
    (Entity_symbol_t.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_sometopsonleaf
        "coordinate_cylindrical"),
     [7; 7; 2]);
    (Entity_symbol_t.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "coordinate_polar"),
     [8; 7; 2]);
    (Entity_symbol_t.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_sometopsonleaf
        "coordinate_spherical"),
     [9; 7; 2])]
);;

let tag_ent_l = Category_formula_v.entity_tag_list_off_category_formula for_cat;;
let sel_ent = (fun e -> Entity_symbol_v.string_off e = nam_ent)
let tag_ent = Doublet_list_v.find_if_left sel_ent tag_ent_l;;

test_number 5 (
tag_ent
(* : Entity_symbol_t.entity_proper_symbol * Tag_t.Sole_index_t.sole_index *)
=
  (
    (Entity_symbol_t.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "figure")),
   [1; 7; 2])
);;

let for_ent = Entity_formula_v.retrieve tag_ent;;

let sel_cof = (fun c -> Contentfile_symbol_v.name c = nam_cof);;
let tag_cof = Doublet_list_v.find_if_left sel_cof for_ent;;

test_number 6 (
tag_cof
=
(Contentfile_symbol_t.Value_alone, [2; 1; 7; 2])
);;

let for_cof = Contentfile_formula_v.retrieve tag_cof;;

let sel_usf = (fun u -> Usagefile_symbol_v.name u = nam_usf);;
let tag_usf = Doublet_list_v.find_if_left sel_usf for_cof;;

test_number 7 (
tag_usf
  =
(Usagefile_symbol_t.Implementation, [1; 2; 1; 7; 2])
);;

let for_usf = Usagefile_formula_v.retrieve tag_usf;;

test_number 8 (
 for_usf 
(* : Item_symbol_t.item_symbol Tag_t.tag list *)
=
 [(Item_symbol_t.Item_for_any_only_top_symbol Item_for_symbol_only_top_symbol_t.Heading,
    [1; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_for_any_only_top_symbol Item_for_symbol_only_top_symbol_t.Documenting,
    [2; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_by_group_topsons_symbol Item_by_group_topsons_symbol_t.String_offing,
    [3; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_topson_notleaf_symbol
     Item_each_topson_notleaf_symbol_t.Extracting_topson_for_symbol,
    [4; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_grandson_notleaf_symbol
     Item_each_grandson_notleaf_symbol_t.Extracting_grandson_for_symbol,
    [5; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_topson_notleaf_symbol
     Item_each_topson_notleaf_symbol_t.Querying_topson,
    [6; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_grandson_notleaf_symbol
     Item_each_grandson_notleaf_symbol_t.Querying_grandson,
    [7; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_topson_notleaf_symbol
     Item_each_topson_notleaf_symbol_t.Upgrading_topson,
    [8; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_grandson_notleaf_symbol
     Item_each_grandson_notleaf_symbol_t.Upgrading_grandson,
    [9; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_topson_leaf_symbol
     Item_each_topson_leaf_symbol_t.Abbreviating_topson,
    [10; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_grandson_leaf_symbol
     Item_each_grandson_leaf_symbol_t.Abbreviating_grandson,
    [11; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_by_group_topsons_symbol Item_by_group_topsons_symbol_t.String_offing,
    [12; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_for_any_only_top_symbol Item_for_symbol_only_top_symbol_t.Ending,
    [13; 1; 2; 1; 7; 2])]
);;

let sel_ite = (fun i -> Item_symbol_v.name i = nam_ite);;
let tag_ite = Doublet_list_v.find_if_left sel_ite for_usf;; 

test_number 9 (
tag_ite
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Item_symbol_t.Item_by_group_topsons_symbol Item_by_group_topsons_symbol_t.String_offing,
 [12; 1; 2; 1; 7; 2])
);;

let for_ite = Item_formula_v.retrieve tag_ite;;

test_number 10 (
for_ite
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
=
 [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       (Camlparagraph_for_any_comment_symbol_t.Item_title "string_offing")),
    [1; 12; 1; 2; 1; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
         Camlparagraph_for_symbol_let_argument_symbol_t.Let_make_of_topson_leaf_nam_s_equal_for_symbol)),
    [2; 12; 1; 2; 1; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
         Camlparagraph_for_symbol_let_argument_symbol_t.Let_make_of_topson_notleaf_nam_s_equal_for_symbol)),
    [3; 12; 1; 2; 1; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
         Camlparagraph_for_symbol_let_argument_symbol_t.Let_make_nam_s_equal_for_symbol)),
    [4; 12; 1; 2; 1; 7; 2])]
);;

(* Camlparagraph : Let_make_nam_s_equal_for_symbol *)

(*let make nam s = *)
(* *)
(*    try make_of_topson_leaf nam s *)
(*    with Failure "Not_a_topson_leaf:Figure_symbol_v.ml:make" -> *)
(*    try make_of_topson_notleaf nam s *)
(*    with Failure "Not_a_topson_notleaf:Figure_symbol_v.ml:make" -> *)
(* *)
(*      Error_messages_v.print_fatal_error nam_cod "make" *)
(*        (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Figureset subtype" nam s) *)
(*        "it does not exists" *)
(*        "Check file figure_symbol_v.ml"  *)
(*;; *)

let idx_cap = 4;;
let tag_cap = List.nth for_ite (idx_cap-1);;

test_number 11 (
tag_cap
=
  (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
    (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
      (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
        Camlparagraph_for_symbol_let_argument_symbol_t.Let_make_nam_s_equal_for_symbol)),
   [4; 12; 1; 2; 1; 7; 2])
);;

let soi_cap = Tag_v.sole_index_off_tag tag_cap;;
let sym_cla = Camlparagraph_for_symbol_let_argument_symbol_v.let_make_nam_s_equal_for_symbol;;
let for_cla = Camlparagraph_for_symbol_let_argument_let_make_nam_s_equal_formula_v.make sym_cla soi_cap;; 

test_number 12 (
for_cla
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
  [(Section_symbol_t.Section_for_symbol_symbol
     (Section_for_symbol_symbol_t.Section_for_symbol_header_symbol
       (Section_for_symbol_header_symbol_t.Section_for_symbol_header_constant_symbol
         Section_for_symbol_header_constant_symbol_t.Let_make_nam_s_equal)),
    [1; 4; 12; 1; 2; 1; 7; 2]);
   (Section_symbol_t.Section_for_symbol_symbol
     (Section_for_symbol_symbol_t.Section_for_symbol_body_symbol
       (Section_for_symbol_body_symbol_t.Section_for_symbol_body_top_symbol
         Section_for_symbol_body_top_symbol_t.Try_make_of_topson_with_failure_arrow)),
    [2; 4; 12; 1; 2; 1; 7; 2]);
   (Section_symbol_t.Section_for_symbol_symbol
     (Section_for_symbol_symbol_t.Section_for_symbol_footer_symbol
       (Section_for_symbol_footer_symbol_t.Section_for_symbol_footer_top_symbol
         Section_for_symbol_footer_top_symbol_t.Print_fatal_error_make)),
    [3; 4; 12; 1; 2; 1; 7; 2])]
);; 

(* Section_for_symbol_body_top_symbol_t : Try_make_of_topson_with_failure_arrow *)

(*    try make_of_topson_leaf nam s *)
(*    with Failure "Not_a_topson_leaf:Figure_symbol_v.ml:make" -> *)
(*    try make_of_topson_notleaf nam s *)
(*    with Failure "Not_a_topson_notleaf:Figure_symbol_v.ml:make" -> *)

let idx_sec = 2;;
let tag_sec = List.nth for_cla (idx_sec-1);;

test_number 13 (
tag_sec 
(* : Section_symbol_t.section_symbol Tag_t.tag *)
=
  (Section_symbol_t.Section_for_symbol_symbol
    (Section_for_symbol_symbol_t.Section_for_symbol_body_symbol
      (Section_for_symbol_body_symbol_t.Section_for_symbol_body_top_symbol
        Section_for_symbol_body_top_symbol_t.Try_make_of_topson_with_failure_arrow)),
   [2; 4; 12; 1; 2; 1; 7; 2])
);;

let soi_sec = Tag_v.sole_index_off_tag tag_sec;;
let for_sec = Section_formula_v.retrieve tag_sec;;

test_number 14 (
for_sec
(* : Group_symbol_t.group_symbol Tag_t.tag list *)
 =
  [(Group_symbol_t.Group_for_symbol_symbol
     (Group_for_symbol_symbol_t.Group_for_symbol_body_symbol
       (Group_for_symbol_body_symbol_t.Group_for_symbol_body_top_symbol
         Group_for_symbol_body_top_symbol_t.Try_make_of_topson_leaf_with_failure_arrow)),
    [1; 2; 4; 12; 1; 2; 1; 7; 2]);
   (Group_symbol_t.Group_for_symbol_symbol
     (Group_for_symbol_symbol_t.Group_for_symbol_body_symbol
       (Group_for_symbol_body_symbol_t.Group_for_symbol_body_top_symbol
         Group_for_symbol_body_top_symbol_t.Try_make_of_topson_notleaf_with_failure_arrow)),
    [2; 2; 4; 12; 1; 2; 1; 7; 2])]
);;

let sym_sbt = Section_for_symbol_body_top_symbol_v.try_make_of_topson_with_failure_arrow;;
let for_sbt = Section_for_symbol_body_top_try_make_of_topson_with_failure_arrow_formula_v.make sym_sbt soi_sec;; 

test_number 15 (
for_sbt 
(* : Group_symbol_t.group_symbol Tag_t.tag list *)
 =
for_sec
);;

(* Group : Try_make_of_topson_notleaf_with_failure_arrow *)

(*    try make_of_topson_leaf nam s *)
(*    with Failure "Not_a_topson_leaf:Figure_symbol_v.ml:make" -> *)

let idx_gro = 1;;
let tag_gro = List.nth for_sbt (idx_gro-1);;

test_number 16 (
tag_gro 
(* : Group_symbol_t.group_symbol Tag_t.tag *)
=
  (Group_symbol_t.Group_for_symbol_symbol
    (Group_for_symbol_symbol_t.Group_for_symbol_body_symbol
      (Group_for_symbol_body_symbol_t.Group_for_symbol_body_top_symbol
        Group_for_symbol_body_top_symbol_t.Try_make_of_topson_leaf_with_failure_arrow)),
   [1; 2; 4; 12; 1; 2; 1; 7; 2])
);;

let soi_gro = Tag_v.sole_index_off_tag tag_gro;;
let sym_gbt = Group_for_symbol_body_top_symbol_v.try_make_of_topson_notleaf_with_failure_arrow;;
let for_gbt = Group_for_symbol_body_top_try_make_of_topson_notleaf_with_failure_arrow_formula_v.make sym_gbt soi_gro;; 

test_number 17 (
for_gbt
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
  [(Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Try_et_symbol_of_es_symbol),
    [1; 1; 2; 4; 12; 1; 2; 1; 7; 2]);
   (Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_function_symbol
       (Camlline_uno_function_symbol_t.Camlline_uno_function_symbol_symbol
         Camlline_uno_function_symbol_symbol_t.Lpar_Es_symbol_vdot_make_of_string_of_string_rpar)),
    [2; 1; 2; 4; 12; 1; 2; 1; 7; 2]);
   (Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_function_symbol
       (Camlline_uno_function_symbol_t.Camlline_uno_function_symbol_symbol
         Camlline_uno_function_symbol_symbol_t.With_failure_not_Es_symbol_arrow)),
    [3; 1; 2; 4; 12; 1; 2; 1; 7; 2])]
);;

(* Camlline : Try_et_symbol_of_es_symbol *)

let idx_cal = 1;;
let tag_cal = List.nth for_gbt (idx_cal-1);;

test_number 18 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
  (Camlline_symbol_t.Camlline_duo_symbol
    (Camlline_duo_symbol_t.Camlline_duo_function_symbol
      Camlline_duo_function_symbol_t.Try_et_symbol_of_es_symbol),
   [1; 1; 2; 4; 12; 1; 2; 1; 7; 2])
);;

let soi_cal = Tag_v.sole_index_off_tag tag_cal;;
let sym_cdf = Camlline_duo_function_symbol_v.try_et_symbol_of_es_symbol;;
let for_cdf = Camlline_duo_function_try_et_symbol_of_es_symbol_formula_v.make sym_cdf soi_cal;;
    
test_number 19 (
for_cdf 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
  [(
     (Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "triangle")),
    [1; 1; 1; 2; 4; 12; 1; 2; 1; 7; 2]);
   (
     (Entity_symbol_t.Entity_proper_top_symbol
       (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "figure")),
    [2; 1; 1; 2; 4; 12; 1; 2; 1; 7; 2])]
);;

(* Camlline : Lpar_Es_symbol_vdot_make_of_string_of_string_rpar *)

let idx_cal = 2;;
let tag_cal = List.nth for_gbt (idx_cal-1);;

test_number 20 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
  (Camlline_symbol_t.Camlline_uno_symbol
    (Camlline_uno_symbol_t.Camlline_uno_function_symbol
      (Camlline_uno_function_symbol_t.Camlline_uno_function_symbol_symbol
        Camlline_uno_function_symbol_symbol_t.Lpar_Es_symbol_vdot_make_of_string_of_string_rpar)),
   [2; 1; 2; 4; 12; 1; 2; 1; 7; 2])
);;

let soi_cal = Tag_v.sole_index_off_tag tag_cal;;
let sym_cfs = Camlline_uno_function_symbol_symbol_v.lpar_es_symbol_vdot_make_of_string_of_string_rpar;;
let for_cfs = Camlline_uno_function_symbol_lpar_es_symbol_vdot_make_of_string_of_string_rpar_formula_v.make sym_cfs soi_cal;;
    
test_number 21 (
for_cfs 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
  [(
     (Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "triangle")),
    [1; 2; 1; 2; 4; 12; 1; 2; 1; 7; 2])]
);;

let tag_ent_l = Camlline_uno_function_symbol_lpar_es_symbol_vdot_make_of_string_of_string_rpar_formula_v.make sym_cfs soi_cal;;

test_number 22 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
  [(
     (Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate")),
    [1; 2; 1; 2; 4; 12; 1; 2; 1; 7; 2])]
);;

test_number 23 (
for_cfs 
= 
Camlline_uno_function_symbol_formula_v.make sym_cfs soi_cal
);;

(* Camlline : With_failure_not_Es_symbol_arrow *)

let idx_cal = 3;;
let tag_cal = List.nth for_gbt (idx_cal-1);;

test_number 24 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
  (Camlline_symbol_t.Camlline_uno_symbol
    (Camlline_uno_symbol_t.Camlline_uno_function_symbol
      (Camlline_uno_function_symbol_t.Camlline_uno_function_symbol_symbol
        Camlline_uno_function_symbol_symbol_t.With_failure_not_Es_symbol_arrow)),
   [3; 1; 2; 4; 12; 1; 2; 1; 7; 2])
);;

let soi_cal = Tag_v.sole_index_off_tag tag_cal;;
let sym_cfs = Camlline_uno_function_symbol_symbol_v.with_failure_not_es_symbol_arrow;;

let tag_cfs = Tag_v.make sym_cfs soi_cal;;
let non_cfs = Camlline_uno_function_symbol_tag_v.camlline_uno_function_symbol_dectup_off_camlline_uno_function_symbol_tag tag_cfs;;
  
let for_cfs = Camlline_uno_function_symbol_with_failure_not_es_symbol_arrow_formula_v.make sym_cfs soi_cal;;
    
test_number 25 (
for_cfs 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
  [(
     (Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate")),
    [1; 2; 1; 2; 4; 12; 1; 2; 1; 7; 2])]
);;

let tag_ent_l = Camlline_uno_function_symbol_lpar_es_symbol_vdot_make_of_string_of_string_rpar_formula_v.make sym_cfs soi_cal;;

test_number 26 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
  [(
     (Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate")),
    [1; 2; 1; 2; 4; 12; 1; 2; 1; 7; 2])]
);;

test_number 27 (
for_cfs 
= 
Camlline_uno_function_symbol_formula_v.make sym_cfs soi_cal
);;
