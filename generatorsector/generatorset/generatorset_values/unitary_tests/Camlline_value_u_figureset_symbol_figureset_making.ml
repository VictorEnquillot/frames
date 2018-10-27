open Make_test_v;;

testing "Camlline_value_v with
   Camlline_value_u_figureset_symbol_figureset_making.ml";;

(* toplevel 
   #use "Camlline_value_u_figureset_symbol_figureset_making.ml";;

*)

let nam_cod = "Camlline_value_u_figureset_symbol_figureset_making.ml";;

let nam_dom = "figure";;
let nam_cof = "value_alone";;
let nam_ent = "figure";;
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

let tag_ent_l = Category_formula_v.entity_tag_list_off_category_tag tag_cat;;

test_number 4 (
tag_ent_l 
(* : Entity_proper_tag_t.entity_tag list *)
=
  [(Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "figure"), [1; 7; 2]);
   (Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate"), [2; 7; 2]);
   (Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate_cartesian"), [3; 7; 2]);
   (Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate_cylindrical"), [4; 7; 2]);
   (Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate_polar"), [5; 7; 2]);
   (Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate_spherical"), [6; 7; 2]);
   (Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "triangle"), [7; 7; 2]);
   (Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "triangle_isoceles"), [8; 7; 2]);
   (Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "triangle_scalene"), [9; 7; 2])]
);;

let sel_ent = (fun e -> Entity_symbol_v.string_off e = nam_ent)
let tag_ent = Doublet_list_v.find_if_left sel_ent tag_ent_l;;

test_number 5 (
tag_ent
(* : Entity_symbol_t.entity_proper_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "figure"), [1; 7; 2])
);;

let tag_cof_l = Entity_formula_v.contentfile_tag_list_off_entity_tag tag_ent;;
let sel_cof = (fun c -> Contentfile_symbol_v.name c = nam_cof);;
let tag_cof = Doublet_list_v.find_if_left sel_cof tag_cof_l;;

test_number 6 (
tag_cof
=
(Contentfile_symbol_t.Value_alone, [2; 1; 7; 2])
);;

let tag_usf_l = Contentfile_formula_v.usagefile_tag_list_off_contentfile_tag tag_cof;;
let sel_usf = (fun u -> Usagefile_symbol_v.name u = nam_usf);;
let tag_usf = Doublet_list_v.find_if_left sel_usf tag_usf_l;;

test_number 7 (
tag_usf
  =
  (Usagefile_symbol_t.Usagefile_for_symbol_symbol
    Usagefile_for_symbol_symbol_t.Implementation_for_symbol,
   [1; 2; 1; 7; 2])
);;

let tag_ite_l = Usagefile_formula_v.item_tag_list_off_usagefile_tag tag_usf;;
let tag_ite_sl1 = List_v.sublist_of_int_of_int_of_list 0 13 tag_ite_l;;

test_number 8 (
 tag_ite_sl1
(* : Item_symbol_t.item_symbol Tag_t.tag list *)
=
  [(Item_symbol_t.Item_for_any_only_top_symbol
     Item_for_any_only_top_symbol_t.Heading,
    [1; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_for_any_only_top_symbol
     Item_for_any_only_top_symbol_t.Documenting,
    [2; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_for_symbol_symbol
     (Item_for_symbol_symbol_t.Item_for_symbol_by_group_topsons_symbol
       Item_for_symbol_by_group_topsons_symbol_t.Naming_for_symbol),
    [3; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_for_symbol_symbol
     (Item_for_symbol_symbol_t.Item_for_symbol_by_group_topsons_symbol
       Item_for_symbol_by_group_topsons_symbol_t.String_offing_for_symbol),
    [4; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_for_symbol_symbol
     (Item_for_symbol_symbol_t.Item_for_symbol_only_top_symbol
       Item_for_symbol_only_top_symbol_t.Longnaming_for_symbol),
    [5; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_for_symbol_symbol
     (Item_for_symbol_symbol_t.Item_for_symbol_only_top_symbol
       Item_for_symbol_only_top_symbol_t.Fullnaming_for_symbol),
    [6; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_for_symbol_symbol
     (Item_for_symbol_symbol_t.Item_for_symbol_each_topson_notleaf_symbol
       Item_for_symbol_each_topson_notleaf_symbol_t.Extracting_topson_notleaf_for_symbol),
    [7; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_for_symbol_symbol
     (Item_for_symbol_symbol_t.Item_for_symbol_each_grandson_notleaf_symbol
       Item_for_symbol_each_grandson_notleaf_symbol_t.Extracting_grandson_notleaf_for_symbol),
    [8; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_for_symbol_symbol
     (Item_for_symbol_symbol_t.Item_for_symbol_each_topson_bare_symbol
       Item_for_symbol_each_topson_bare_symbol_t.Querying_topson_bare_for_symbol),
    [9; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_for_symbol_symbol
     (Item_for_symbol_symbol_t.Item_for_symbol_each_topson_ofstring_symbol
       Item_for_symbol_each_topson_ofstring_symbol_t.Querying_topson_ofstring_for_symbol),
    [10; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_for_symbol_symbol
     (Item_for_symbol_symbol_t.Item_for_symbol_each_topson_notleaf_symbol
       Item_for_symbol_each_topson_notleaf_symbol_t.Querying_topson_notleaf_for_symbol),
    [11; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_for_symbol_symbol
     (Item_for_symbol_symbol_t.Item_for_symbol_each_grandson_bare_symbol
       Item_for_symbol_each_grandson_bare_symbol_t.Querying_grandson_bare_for_symbol),
    [12; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_for_symbol_symbol
     (Item_for_symbol_symbol_t.Item_for_symbol_each_grandson_ofstring_symbol
       Item_for_symbol_each_grandson_ofstring_symbol_t.Querying_grandson_ofstring_for_symbol),
    [13; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_for_symbol_symbol
     (Item_for_symbol_symbol_t.Item_for_symbol_each_grandson_notleaf_symbol
       Item_for_symbol_each_grandson_notleaf_symbol_t.Querying_grandson_notleaf_for_symbol),
    [14; 1; 2; 1; 7; 2])]
);;

let tag_ite_sl2 = List_v.sublist_of_int_of_int_of_list 14 50 tag_ite_l;;

test_number 9 (
 tag_ite_sl2
(* : Item_symbol_t.item_symbol Tag_t.tag list *)
=
  [(Item_symbol_t.Item_for_symbol_symbol
     (Item_for_symbol_symbol_t.Item_for_symbol_each_topson_notleaf_symbol
       Item_for_symbol_each_topson_notleaf_symbol_t.Upgrading_topson_notleaf_for_symbol),
    [15; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_for_symbol_symbol
     (Item_for_symbol_symbol_t.Item_for_symbol_each_grandson_notleaf_symbol
       Item_for_symbol_each_grandson_notleaf_symbol_t.Upgrading_grandson_notleaf_for_symbol),
    [16; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_for_symbol_symbol
     (Item_for_symbol_symbol_t.Item_for_symbol_each_topson_bare_symbol
       Item_for_symbol_each_topson_bare_symbol_t.Abbreviating_topson_bare_for_symbol),
    [17; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_for_symbol_symbol
     (Item_for_symbol_symbol_t.Item_for_symbol_each_topson_ofstring_symbol
       Item_for_symbol_each_topson_ofstring_symbol_t.Abbreviating_topson_ofstring_for_symbol),
    [18; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_for_symbol_symbol
     (Item_for_symbol_symbol_t.Item_for_symbol_each_grandson_bare_symbol
       Item_for_symbol_each_grandson_bare_symbol_t.Abbreviating_grandson_bare_for_symbol),
    [19; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_for_symbol_symbol
     (Item_for_symbol_symbol_t.Item_for_symbol_each_grandson_ofstring_symbol
       Item_for_symbol_each_grandson_ofstring_symbol_t.Abbreviating_grandson_ofstring_for_symbol),
    [20; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_for_symbol_symbol
     (Item_for_symbol_symbol_t.Item_for_symbol_by_group_topsons_symbol
       Item_for_symbol_by_group_topsons_symbol_t.Making_for_symbol_bare),
    [21; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_for_symbol_symbol
     (Item_for_symbol_symbol_t.Item_for_symbol_by_group_topsons_symbol
       Item_for_symbol_by_group_topsons_symbol_t.Making_for_symbol_ofstring),
    [22; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_for_symbol_symbol
     (Item_for_symbol_symbol_t.Item_for_symbol_by_group_topsons_symbol
       Item_for_symbol_by_group_topsons_symbol_t.Making_for_symbol_notleaf),
    [23; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_for_symbol_symbol
     (Item_for_symbol_symbol_t.Item_for_symbol_by_group_topsons_symbol
       Item_for_symbol_by_group_topsons_symbol_t.Making_for_symbol),
    [24; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_for_any_only_top_symbol
     Item_for_any_only_top_symbol_t.Ending,
    [25; 1; 2; 1; 7; 2])]
);;

let nam_ite = "making_for_symbol";;
let sel_ite = (fun i -> Item_symbol_v.name i = nam_ite);;
let tag_ite = Doublet_list_v.find_if_left sel_ite tag_ite_l;; 

test_number 10 (
tag_ite
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
 (Item_symbol_t.Item_for_symbol_symbol
    (Item_for_symbol_symbol_t.Item_for_symbol_by_group_topsons_symbol
      Item_for_symbol_by_group_topsons_symbol_t.Making_for_symbol),
   [24; 1; 2; 1; 7; 2])
);;

let tag_cap_l = Item_formula_v.camlparagraph_tag_list_off_item_tag tag_ite;;

test_number 11 (
tag_cap_l
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
=
 [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       Camlparagraph_for_any_comment_symbol_t.Item_title),
    [1; 24; 1; 2; 1; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
         Camlparagraph_for_symbol_let_argument_symbol_t.Let_make_nam_s_equal_for_symbol)),
    [2; 24; 1; 2; 1; 7; 2])]
);;

(* 2 Camlparagraph : Let_make_nam_s_equal_for_symbol *)
(* let make nam s = *)

(*     try make_of_topson_bare nam *)
(*     with Failure "Not_a_topson_bare:Figure_symbol_v.ml:make" -> *)
(*     try make_of_topson_ofstring nam s *)
(*     with Failure "Not_a_topson_ofstring:Figure_symbol_v.ml:make" -> *)
(*     try make_of_topson_notleaf nam s *)
(*     with Failure "Not_a_topson_notleaf:Figure_symbol_v.ml:make" -> *)

(*     let _ = *)
(*       Error_messages_v.print_error nam_cod "make" *)
(* 	(Format.sprintf "strings \"%s\" and \"%s\" represent an existing Figureset subtype" nam s) *)
(* 	"it does not exists" *)
(* 	"Check file figure_symbol_v.ml"  *)
(*     failwith "Not_a_valid_figure_symbol:Figure_symbol_v.ml:make"*)
(* ;; *)

let idx_cap = 2;;
let tag_cap = List.nth tag_cap_l (idx_cap-1);;

test_number 12 (
tag_cap
=
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
    (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
      (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
        Camlparagraph_for_symbol_let_argument_symbol_t.Let_make_nam_s_equal_for_symbol)),
   [2; 24; 1; 2; 1; 7; 2])
);;

let tag_sec_l = Camlparagraph_formula_v.section_tag_list_off_camlparagraph_tag tag_cap;;

test_number 13 (
tag_sec_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
  [(Section_symbol_t.Section_for_symbol_symbol
     (Section_for_symbol_symbol_t.Section_for_symbol_header_symbol
       (Section_for_symbol_header_symbol_t.Section_for_symbol_header_constant_symbol
         Section_for_symbol_header_constant_symbol_t.Let_make_nam_s_equal)),
    [1; 2; 24; 1; 2; 1; 7; 2]);
   (Section_symbol_t.Section_for_symbol_symbol
     (Section_for_symbol_symbol_t.Section_for_symbol_body_symbol
       (Section_for_symbol_body_symbol_t.Section_for_symbol_body_son_top_symbol
         Section_for_symbol_body_son_top_symbol_t.Try_make_of_topson_with_failure_arrow)),
    [2; 2; 24; 1; 2; 1; 7; 2]);
   (Section_symbol_t.Section_for_symbol_symbol
     (Section_for_symbol_symbol_t.Section_for_symbol_footer_symbol
       (Section_for_symbol_footer_symbol_t.Section_for_symbol_footer_top_symbol
         Section_for_symbol_footer_top_symbol_t.Let_underscore_print_error_failwith_make)),
    [3; 2; 24; 1; 2; 1; 7; 2])]
);; 

let nam_fil = Camlparagraph_value_v.fullnameoffile "./" tag_cap;;

test_number 14 (
nam_fil
(* : string *)
  =
 "./Figure_symbol_Making_for_symbol_Let_make_nam_s_equal_for_symbol_v.ml"
);;

Camlparagraph_value_v.write "./" tag_cap;;

(* Section_for_symbol_header_constant_symbol_t.Let_make_of_topson_notleaf_nam_s_equal *)

(*let make_of_topson_notleaf nam s = *)
(* *)

let idx_sec = 1;;
let tag_sec = List.nth tag_sec_l (idx_sec-1);;

test_number 15 (
tag_sec 
(* : Section_symbol_t.section_symbol Tag_t.tag *)
=
 (Section_symbol_t.Section_for_symbol_symbol
    (Section_for_symbol_symbol_t.Section_for_symbol_header_symbol
      (Section_for_symbol_header_symbol_t.Section_for_symbol_header_constant_symbol
        Section_for_symbol_header_constant_symbol_t.Let_make_nam_s_equal)),
   [1; 2; 24; 1; 2; 1; 7; 2])
);;

let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec;; 

test_number 16 (
tag_gro_l 
(* : Group_symbol_t.group_symbol Tag_t.tag list *)
 =
  [(Group_symbol_t.Group_for_symbol_symbol
     (Group_for_symbol_symbol_t.Group_for_symbol_header_symbol
       (Group_for_symbol_header_symbol_t.Group_for_symbol_header_constant_symbol
         Group_for_symbol_header_constant_symbol_t.Let_make_nam_s_equal)),
    [1; 1; 2; 24; 1; 2; 1; 7; 2])]
);;

(* Group : Try_make_of_topson_notleaf_with_failure_arrow *)

(*let make_of_topson_notleaf nam s = *)
(* *)

let idx_gro = 1;;
let tag_gro = List.nth tag_gro_l (idx_gro-1);;

test_number 17 (
tag_gro 
(* : Group_symbol_t.group_symbol Tag_t.tag *)
=
  (Group_symbol_t.Group_for_symbol_symbol
    (Group_for_symbol_symbol_t.Group_for_symbol_header_symbol
      (Group_for_symbol_header_symbol_t.Group_for_symbol_header_constant_symbol
        Group_for_symbol_header_constant_symbol_t.Let_make_nam_s_equal)),
   [1; 1; 2; 24; 1; 2; 1; 7; 2])
);;

let tag_cal_l = Group_formula_v.camlline_tag_list_off_group_tag tag_gro;; 

test_number 18 (
tag_cal_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
  [(Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_function_symbol
       Camlline_constant_function_symbol_t.Let_make_nam_s_equal),
    [1; 1; 1; 2; 24; 1; 2; 1; 7; 2])]
);;

let str_l = Group_value_v.string_list_off_group_tag tag_gro;;

test_number 19 (
str_l
(* : string list *)
=
["let make nam s ="]
);;
 
(* Camlline_constant_function_symbol_t.Let_make_of_topson_notleaf_nam_s_equal *)

let idx_cal = 1;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 20 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
  (Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_function_symbol
      Camlline_constant_function_symbol_t.Let_make_nam_s_equal),
   [1; 1; 1; 2; 24; 1; 2; 1; 7; 2])
);;

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;
    
test_number 21 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
  []
);;

(* 2 Section_for_symbol_body_son_top_symbol_t.Try_top_of_topson_with_failure_arrow *)

(*     try make_of_topson_bare nam *)
(*     with Failure "Not_a_topson_bare:Figure_symbol_v.ml:make" -> *)
(*     try make_of_topson_ofstring nam s *)
(*     with Failure "Not_a_topson_ofstring:Figure_symbol_v.ml:make" -> *)
(*     try make_of_topson_notleaf nam s *)
(*     with Failure "Not_a_topson_notleaf:Figure_symbol_v.ml:make" -> *)

let idx_sec = 2;;
let tag_sec = List.nth tag_sec_l (idx_sec-1);;

test_number 22 (
tag_sec 
(* : Section_symbol_t.section_symbol Tag_t.tag *)
=
  (Section_symbol_t.Section_for_symbol_symbol
    (Section_for_symbol_symbol_t.Section_for_symbol_body_symbol
      (Section_for_symbol_body_symbol_t.Section_for_symbol_body_son_top_symbol
        Section_for_symbol_body_son_top_symbol_t.Try_make_of_topson_with_failure_arrow)),
   [2; 2; 24; 1; 2; 1; 7; 2])
);;

let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec;;

test_number 23 (
tag_gro_l 
(* : Group_symbol_t.group_symbol Tag_t.tag list *)
 =
  [(Group_symbol_t.Group_for_symbol_symbol
     (Group_for_symbol_symbol_t.Group_for_symbol_body_symbol
       (Group_for_symbol_body_symbol_t.Group_for_symbol_body_top_symbol
         Group_for_symbol_body_top_symbol_t.Try_make_of_topson_bare_with_failure_arrow)),
    [1; 2; 2; 24; 1; 2; 1; 7; 2]);
   (Group_symbol_t.Group_for_symbol_symbol
     (Group_for_symbol_symbol_t.Group_for_symbol_body_symbol
       (Group_for_symbol_body_symbol_t.Group_for_symbol_body_top_symbol
         Group_for_symbol_body_top_symbol_t.Try_make_of_topson_ofstring_with_failure_arrow)),
    [2; 2; 2; 24; 1; 2; 1; 7; 2]);
   (Group_symbol_t.Group_for_symbol_symbol
     (Group_for_symbol_symbol_t.Group_for_symbol_body_symbol
       (Group_for_symbol_body_symbol_t.Group_for_symbol_body_top_symbol
         Group_for_symbol_body_top_symbol_t.Try_make_of_topson_notleaf_with_failure_arrow)),
    [3; 2; 2; 24; 1; 2; 1; 7; 2])]
);;

(* 1 Group : Try_make_of_topson_bare_with_failure_arrow *)

(*     try make_of_topson_bare nam *)
(*     with Failure "Not_a_topson_bare:Figure_symbol_v.ml:make" -> *)

let idx_gro = 1;;
let tag_gro = List.nth tag_gro_l (idx_gro-1);;

test_number 24 (
tag_gro 
(* : Group_symbol_t.group_symbol Tag_t.tag *)
=
  (Group_symbol_t.Group_for_symbol_symbol
    (Group_for_symbol_symbol_t.Group_for_symbol_body_symbol
      (Group_for_symbol_body_symbol_t.Group_for_symbol_body_top_symbol
        Group_for_symbol_body_top_symbol_t.Try_make_of_topson_bare_with_failure_arrow)),
   [1; 2; 2; 24; 1; 2; 1; 7; 2])
);;

let tag_cal_l = Group_formula_v.camlline_tag_list_off_group_tag tag_gro;;

test_number 25 (
tag_cal_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
  [(Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_function_symbol
       Camlline_constant_function_symbol_t.Space_try_make_of_topson_bare_nam),
    [1; 1; 2; 2; 24; 1; 2; 1; 7; 2]);
   (Camlline_symbol_t.Camlline_for_symbol_symbol
     (Camlline_for_symbol_symbol_t.Camlline_for_symbol_uno_symbol
       (Camlline_for_symbol_uno_symbol_t.Camlline_for_symbol_uno_top_symbol
         Camlline_for_symbol_uno_top_symbol_t.Space_with_failure_not_a_topson_bare_et_symbol_arrow_make)),
    [2; 1; 2; 2; 24; 1; 2; 1; 7; 2])]
);;

let str_l = Group_value_v.string_list_off_group_tag tag_gro;; 

test_number 26 (
str_l
(* : string list *)
=
["  try make_of_topson_bare nam";
 "  with Failure \"Not_a_topson_bare:Figure_symbol_v.ml:make_of_topson_bare\" ->"]
);;

(* 1 Camlline_constant_function_symbol_t.Space_try_make_of_topson_bare_nam *)
(*   try make_of_topson_bare nam *)

let idx_cal = 1;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 27 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
  (Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_function_symbol
      Camlline_constant_function_symbol_t.Space_try_make_of_topson_bare_nam),
   [1; 1; 2; 2; 24; 1; 2; 1; 7; 2])
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
"  try make_of_topson_bare nam"
);;

(* 2 Camlline_for_symbol_uno_top_symbol_t.Space_with_failure_not_a_topson_bare_et_symbol_arrow_make *)

let idx_cal = 2;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 30 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
  (Camlline_symbol_t.Camlline_for_symbol_symbol
    (Camlline_for_symbol_symbol_t.Camlline_for_symbol_uno_symbol
      (Camlline_for_symbol_uno_symbol_t.Camlline_for_symbol_uno_top_symbol
        Camlline_for_symbol_uno_top_symbol_t.Space_with_failure_not_a_topson_bare_et_symbol_arrow_make)),
   [2; 1; 2; 2; 24; 1; 2; 1; 7; 2])
);;

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;
    
test_number 31 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
  [(
     (Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "figure")),
    [1; 2; 1; 2; 2; 24; 1; 2; 1; 7; 2])]
);;

let str = Camlline_value_v.string_off_camlline_tag tag_cal;;

test_number 32 (
str 
(* : string *)
  =
  "  with Failure \"Not_a_topson_bare:Figure_symbol_v.ml:make_of_topson_bare\" ->"
);;

(* 2 Group : Try_make_of_topson_ofstring_with_failure_arrow *)

(*     try make_of_topson_ofstring nam s *)
(*     with Failure "Not_a_topson_ofstring:Figure_symbol_v.ml:make" -> *)

let idx_gro = 2;;
let tag_gro = List.nth tag_gro_l (idx_gro-1);;

test_number 33 (
tag_gro 
(* : Group_symbol_t.group_symbol Tag_t.tag *)
=
  (Group_symbol_t.Group_for_symbol_symbol
    (Group_for_symbol_symbol_t.Group_for_symbol_body_symbol
      (Group_for_symbol_body_symbol_t.Group_for_symbol_body_top_symbol
        Group_for_symbol_body_top_symbol_t.Try_make_of_topson_ofstring_with_failure_arrow)),
   [2; 2; 2; 24; 1; 2; 1; 7; 2])
);;

let tag_cal_l = Group_formula_v.camlline_tag_list_off_group_tag tag_gro;;

test_number 34 (
tag_cal_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
  [(Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_function_symbol
       Camlline_constant_function_symbol_t.Space_try_make_of_topson_ofstring_nam_s),
    [1; 2; 2; 2; 24; 1; 2; 1; 7; 2]);
   (Camlline_symbol_t.Camlline_for_symbol_symbol
     (Camlline_for_symbol_symbol_t.Camlline_for_symbol_uno_symbol
       (Camlline_for_symbol_uno_symbol_t.Camlline_for_symbol_uno_top_symbol
         Camlline_for_symbol_uno_top_symbol_t.Space_with_failure_not_a_topson_ofstring_et_symbol_arrow_make)),
    [2; 2; 2; 2; 24; 1; 2; 1; 7; 2])]
);;

let str_l = Group_value_v.string_list_off_group_tag tag_gro;;

test_number 35 (
str_l
(* : string list *)
=
["  try make_of_topson_ofstring nam s";
 "  with Failure \"Not_a_topson_ofstring:Figure_symbol_v.ml:make_of_topson_ofstring\" ->"]
);;

(* 1 Camlline_constant_function_symbol_t.Space_try_make_of_topson_ofstring_nam_s *)

let idx_cal = 1;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 36 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
 (Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_function_symbol
      Camlline_constant_function_symbol_t.Space_try_make_of_topson_ofstring_nam_s),
   [1; 2; 2; 2; 24; 1; 2; 1; 7; 2])
);;

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;
    
test_number 37 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
  []
);;

let str = Camlline_value_v.string_off_camlline_tag tag_cal;;

test_number 38 (
str
(* : string *)
  =
"  try make_of_topson_ofstring nam s"
);;

(* 2 Camlline_for_symbol_uno_top_symbol_t.Space_with_failure_not_a_topson_ofstring_et_symbol_arrow_make *)

let idx_cal = 2;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 39 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
  (Camlline_symbol_t.Camlline_for_symbol_symbol
    (Camlline_for_symbol_symbol_t.Camlline_for_symbol_uno_symbol
      (Camlline_for_symbol_uno_symbol_t.Camlline_for_symbol_uno_top_symbol
        Camlline_for_symbol_uno_top_symbol_t.Space_with_failure_not_a_topson_ofstring_et_symbol_arrow_make)),
   [2; 2; 2; 2; 24; 1; 2; 1; 7; 2])
);;

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;
    
test_number 40 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
  [(
     (Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "figure")),
    [1; 2; 2; 2; 2; 24; 1; 2; 1; 7; 2])]
);;

let str = Camlline_value_v.string_off_camlline_tag tag_cal;;

test_number 41 (
str 
(* : string *)
  =
  "  with Failure \"Not_a_topson_ofstring:Figure_symbol_v.ml:make_of_topson_ofstring\" ->"
);;

(* 3 Group : Try_make_of_topson_notleaf_with_failure_arrow *)

(*     try make_of_topson_notleaf nam s *)
(*     with Failure "Not_a_topson_notleaf:Figure_symbol_v.ml:make" -> *)

let idx_gro = 3;;
let tag_gro = List.nth tag_gro_l (idx_gro-1);;

test_number 42 (
tag_gro 
(* : Group_symbol_t.group_symbol Tag_t.tag *)
=
  (Group_symbol_t.Group_for_symbol_symbol
    (Group_for_symbol_symbol_t.Group_for_symbol_body_symbol
      (Group_for_symbol_body_symbol_t.Group_for_symbol_body_top_symbol
        Group_for_symbol_body_top_symbol_t.Try_make_of_topson_notleaf_with_failure_arrow)),
   [3; 2; 2; 24; 1; 2; 1; 7; 2])
);;

let tag_cal_l = Group_formula_v.camlline_tag_list_off_group_tag tag_gro;;

test_number 43 (
tag_cal_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
  [(Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_function_symbol
       Camlline_constant_function_symbol_t.Space_try_make_of_topson_notleaf_nam_s),
    [1; 3; 2; 2; 24; 1; 2; 1; 7; 2]);
   (Camlline_symbol_t.Camlline_for_symbol_symbol
     (Camlline_for_symbol_symbol_t.Camlline_for_symbol_uno_symbol
       (Camlline_for_symbol_uno_symbol_t.Camlline_for_symbol_uno_top_symbol
         Camlline_for_symbol_uno_top_symbol_t.Space_with_failure_not_a_topson_notleaf_et_symbol_arrow_make)),
    [2; 3; 2; 2; 24; 1; 2; 1; 7; 2])]
);;

let str_l = Group_value_v.string_list_off_group_tag tag_gro;;

test_number 44 (
str_l
(* : string list *)
=
  ["  try make_of_topson_notleaf nam s";
   "  with Failure \"Not_a_topson_notleaf:Figure_symbol_v.ml:make_of_topson_notleaf\" ->"]
);;

(* 1 Camlline_constant_function_symbol_t.Space_try_make_of_topson_notleaf_nam_s *)

let idx_cal = 1;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 45 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
  (Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_function_symbol
      Camlline_constant_function_symbol_t.Space_try_make_of_topson_notleaf_nam_s),
   [1; 3; 2; 2; 24; 1; 2; 1; 7; 2])
);;

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;
    
test_number 46 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
  []
);;

let str = Camlline_value_v.string_off_camlline_tag tag_cal;;

test_number 47 (
str
(* : string *)
  =
"  try make_of_topson_notleaf nam s"
);;

(* 2 Camlline_for_symbol_uno_top_symbol_t.Space_with_failure_not_a_topson_notleaf_et_symbol_arrow *)

let idx_cal = 2;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 48 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
  (Camlline_symbol_t.Camlline_for_symbol_symbol
    (Camlline_for_symbol_symbol_t.Camlline_for_symbol_uno_symbol
      (Camlline_for_symbol_uno_symbol_t.Camlline_for_symbol_uno_top_symbol
        Camlline_for_symbol_uno_top_symbol_t.Space_with_failure_not_a_topson_notleaf_et_symbol_arrow_make)),
   [2; 3; 2; 2; 24; 1; 2; 1; 7; 2])
);;

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;
    
test_number 49 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
  [(Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "figure"),
    [1; 2; 3; 2; 2; 24; 1; 2; 1; 7; 2])]
);;

let str = Camlline_value_v.string_off_camlline_tag tag_cal;;

test_number 50 (
str 
(* : string *)
  =
  "  with Failure \"Not_a_topson_notleaf:Figure_symbol_v.ml:make_of_topson_notleaf\" ->"
);;


(* 3 Section_for_symbol_footer_top_symbol_t.Let_underscore_print_error_failwith_make *)

(*     let _ = *)
(*       Error_messages_v.print_error nam_cod "make" *)
(* 	(Format.sprintf "strings \"%s\" and \"%s\" represent an existing Figureset subtype" nam s) *)
(* 	"it does not exists" *)
(* 	"Check file figure_symbol_v.ml"  *)
(*     failwith "Not_a_valid_figure_symbol:Figure_symbol_v.ml:make" *)
(* ;; *)

let idx_sec = 3;;
let tag_sec = List.nth tag_sec_l (idx_sec-1);;

test_number 51 (
tag_sec 
(* : Section_symbol_t.section_symbol Tag_t.tag *)
=
  (Section_symbol_t.Section_for_symbol_symbol
    (Section_for_symbol_symbol_t.Section_for_symbol_footer_symbol
      (Section_for_symbol_footer_symbol_t.Section_for_symbol_footer_top_symbol
        Section_for_symbol_footer_top_symbol_t.Let_underscore_print_error_failwith_make)),
   [3; 2; 24; 1; 2; 1; 7; 2])
);;

let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec;;

test_number 52 (
tag_gro_l 
(* : Group_symbol_t.group_symbol Tag_t.tag list *)
 =
  [(Group_symbol_t.Group_for_symbol_symbol
     (Group_for_symbol_symbol_t.Group_for_symbol_footer_symbol
       (Group_for_symbol_footer_symbol_t.Group_for_symbol_footer_top_symbol
         Group_for_symbol_footer_top_symbol_t.Let_underscore_print_error_failwith_make)),
    [1; 3; 2; 24; 1; 2; 1; 7; 2])]
);;

(* 1 Group_for_symbol_footer_top_symbol_t.Let_underscore_print_error_failwith_make *)

(* let _ = *)
(* Error_messages_v.print_error nam_cod "make" *)
(*   (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Figureset subtype" nam s) *)
(*   "it does not exists" *)
(*   "Check file figure_symbol_v.ml"  *)
(* in *)
(* failwith "Not_a_valid_geometry_symbol:Figure_symbol_v:make" *)
(* ;; *)

let idx_gro = 1;;
let tag_gro = List.nth tag_gro_l (idx_gro-1);;

test_number 53 (
tag_gro 
(* : Group_symbol_t.group_symbol Tag_t.tag *)
=
  (Group_symbol_t.Group_for_symbol_symbol
    (Group_for_symbol_symbol_t.Group_for_symbol_footer_symbol
      (Group_for_symbol_footer_symbol_t.Group_for_symbol_footer_top_symbol
        Group_for_symbol_footer_top_symbol_t.Let_underscore_print_error_failwith_make)),
   [1; 3; 2; 24; 1; 2; 1; 7; 2])
);;

let tag_cal_l = Group_formula_v.camlline_tag_list_off_group_tag tag_gro;;

test_number 54 (
tag_cal_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
  [(Camlline_symbol_t.Camlline_for_symbol_symbol
     (Camlline_for_symbol_symbol_t.Camlline_for_symbol_uno_symbol
       (Camlline_for_symbol_uno_symbol_t.Camlline_for_symbol_uno_top_symbol
         Camlline_for_symbol_uno_top_symbol_t.Space_let_underscore_print_error_make_et_of_string_of_string)),
    [1; 1; 3; 2; 24; 1; 2; 1; 7; 2]);
   (Camlline_symbol_t.Camlline_for_symbol_symbol
     (Camlline_for_symbol_symbol_t.Camlline_for_symbol_uno_symbol
       (Camlline_for_symbol_uno_symbol_t.Camlline_for_symbol_uno_top_symbol
         Camlline_for_symbol_uno_top_symbol_t.Space2_failwith_not_a_et_symbol_make)),
    [2; 1; 3; 2; 24; 1; 2; 1; 7; 2]);
   (Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
       Camlline_constant_pervasive_symbol_t.Double_semicolon),
    [3; 1; 3; 2; 24; 1; 2; 1; 7; 2])]
);;

let str_l = Group_value_v.string_list_off_group_tag tag_gro;; 

test_number 55 (
str_l
(* : string list *)
=
  ["   let _ =\n      Error_messages_v.print_error nam_cod \"make\"\n      (Format.sprintf \"strings \\\"%s\\\" and \\\"%s\\\" represent an existing Figureset subtype\" nam s)\n      \"it does not exists\"\n      \"Check file figure_symbol_v.ml\"\n    in";
   "    failwith \"Not_a_valid_figure_symbol:Figure_symbol_v.ml:make\"";
   ";;"]
);;

(* 1 Camlline_constant_function_symbol_t.Space_try_make_of_topson_leaf_nam_s *)
(*   try make_of_topson_leaf nam s  *)

let idx_cal = 1;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 56 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
  (Camlline_symbol_t.Camlline_for_symbol_symbol
    (Camlline_for_symbol_symbol_t.Camlline_for_symbol_uno_symbol
      (Camlline_for_symbol_uno_symbol_t.Camlline_for_symbol_uno_top_symbol
        Camlline_for_symbol_uno_top_symbol_t.Space_let_underscore_print_error_make_et_of_string_of_string)),
   [1; 1; 3; 2; 24; 1; 2; 1; 7; 2])
);;

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;
    
test_number 57 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
 [(
     (Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "figure")),
    [1; 1; 1; 3; 2; 24; 1; 2; 1; 7; 2])]
);;

let str = Camlline_value_v.string_off_camlline_tag tag_cal;;

test_number 58 (
str 
(* : string *)
  =
 "   let _ =\n      Error_messages_v.print_error nam_cod \"make\"\n      (Format.sprintf \"strings \\\"%s\\\" and \\\"%s\\\" represent an existing Figureset subtype\" nam s)\n      \"it does not exists\"\n      \"Check file figure_symbol_v.ml\"\n    in"
);;

(* 2 Camlline_for_symbol_uno_top_symbol_t.Space_with_failure_not_a_topson_leaf_et_symbol_arrow *)

let idx_cal = 2;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 59 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
 (Camlline_symbol_t.Camlline_for_symbol_symbol
    (Camlline_for_symbol_symbol_t.Camlline_for_symbol_uno_symbol
      (Camlline_for_symbol_uno_symbol_t.Camlline_for_symbol_uno_top_symbol
        Camlline_for_symbol_uno_top_symbol_t.Space2_failwith_not_a_et_symbol_make)),
   [2; 1; 3; 2; 24; 1; 2; 1; 7; 2])
);;

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;
    
test_number 60 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
  [(
     (Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "figure")),
    [1; 2; 1; 3; 2; 24; 1; 2; 1; 7; 2])]
);;

let str = Camlline_value_v.string_off_camlline_tag tag_cal;;

test_number 61 (
str 
(* : string *)
  =
 "    failwith \"Not_a_valid_figure_symbol:Figure_symbol_v.ml:make\""
);;

(*3 *)

let idx_cal = 3;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 62 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
  (Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
      Camlline_constant_pervasive_symbol_t.Double_semicolon),
   [3; 1; 3; 2; 24; 1; 2; 1; 7; 2])
);;

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;
    
test_number 63 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
  []
);;

let str = Camlline_value_v.string_off_camlline_tag tag_cal;;

test_number 64 (
str
(* : string *)
  =
";;"
);;

