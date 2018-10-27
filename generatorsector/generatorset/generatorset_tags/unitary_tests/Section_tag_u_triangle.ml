open Make_test_v;;

testing "Section_tag_v with
   Section_tag_u_triangle.ml";;

(* toplevel 
   #use "Section_tag_u_triangle.ml";;

*)

let nam_dos = "figureset";;
let nam_cat = "tag";;
let nam_usf = "implementation";;
let nam_cof = "value_alone";;
let nam_ent = "triangle";;

let sym_dos = Domainset_symbol_v.make nam_dos "";;
let idx_dos = Domainset_symbol_v.list_index_of_domainset_symbol sym_dos;;
let soi_dos = Sole_index_v.make idx_dos [];;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_register_v.store soi_dos gss_dos;;
let tag_dos = Tag_v.make sym_dos soi_dos;;

let sym_cat = Category_symbol_v.make nam_cat;;
let idx_cat = Category_symbol_v.list_index_of_category_symbol sym_cat;;
let soi_cat = Sole_index_v.make idx_cat soi_dos;;
let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_register_v.store soi_cat gss_cat;;
let tag_cat = Tag_v.make sym_cat soi_cat;;

let sym_ent = Entity_symbol_v.make "currententity" nam_ent;;
let idx_ent = 2;;
let soi_ent = Sole_index_v.make idx_ent soi_cat;;
let gss_ent = Generatorset_symbol_v.generatorset_symbol_of_entity_symbol sym_ent;;
Generatorset_symbol_by_sole_index_register_v.store soi_ent gss_ent;;
let tag_ent = Tag_v.make sym_ent soi_ent;;

test_number 1 (
tag_ent 
(* : Entity_symbol_t.entity_symbol Tag_t.tag *)
=
  (Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Currententity "triangle"),
   [2; 8; 4])
);;

let sym_cof = Contentfile_symbol_v.make nam_cof;;
let idx_cof = Contentfile_symbol_v.list_index_of_contentfile_symbol sym_cof;;
let soi_cof = Sole_index_v.make idx_cof soi_ent;;
let gss_cof = Generatorset_symbol_v.generatorset_symbol_of_contentfile_symbol sym_cof;;
Generatorset_symbol_by_sole_index_register_v.store soi_cof gss_cof;;
let tag_cof = Tag_v.make sym_cof soi_cof;;

let sym_usf = Usagefile_symbol_v.make nam_usf;;
let idx_usf = Usagefile_symbol_v.list_index_of_usagefile_symbol sym_usf;;
let soi_usf = Sole_index_v.make idx_usf soi_cof;;
let gss_usf = Generatorset_symbol_v.generatorset_symbol_of_usagefile_symbol sym_usf;;
Generatorset_symbol_by_sole_index_register_v.store soi_usf gss_usf;;
let tag_usf = Tag_v.make sym_usf soi_usf;;

test_number 2 (
tag_usf
(* : Usagefile_symbol_t.usagefile_symbol Tag_t.tag *)
=
(Usagefile_symbol_t.Implementation, [1; 3; 2; 8; 4])
);;

let nam_ite = "making";;
let sym_ite = Item_symbol_v.make nam_ite;;
let idx_ite = Item_symbol_v.list_index_of_item_symbol sym_ite;;
let soi_ite = Sole_index_v.make idx_ite soi_usf;;
let gss_ite = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite;;
Generatorset_symbol_by_sole_index_register_v.store soi_ite gss_ite;;

let tag_ite = Tag_v.make sym_ite soi_ite;;

test_number 3 (
tag_ite
(* Item_symbol_t.item_symbol Tag_t.tag *)
  =
  (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Making,
   [22; 1; 3; 2; 8; 4])
);;

let sym_cap = Camlparagraph_symbol_v.let_make_nam_s_equal_for_symbol;;
let idx_cap = Camlparagraph_symbol_v.list_index_of_camlparagraph_symbol sym_cap;;
let soi_cap = Sole_index_v.make idx_cap soi_ite;;
let gss_cap = Generatorset_symbol_v.generatorset_symbol_of_camlparagraph_symbol sym_cap;;
Generatorset_symbol_by_sole_index_register_v.store soi_cap gss_cap;;
let tag_cap = Tag_v.make sym_cap soi_cap;;

test_number 4 (
tag_cap 
(* : Camlparagraph_for_symbol_let_argument_symbol_t.camlparagraph_for_symbol_let_argument_symbol
  Tag_t.tag *)
=
  (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
    (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
      (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
        Camlparagraph_for_symbol_let_argument_symbol_t.Let_make_nam_s_equal_for_symbol)),
   [28; 22; 1; 3; 2; 8; 4])
);;

let sym_sec = Section_symbol_v.try_make_of_topson_with_failure_arrow;;
let idx_sec = 88;;
let soi_sec = Sole_index_v.make idx_sec soi_cap;;
let gss_sec = Generatorset_symbol_v.generatorset_symbol_of_section_symbol sym_sec;;
Generatorset_symbol_by_sole_index_register_v.store soi_sec gss_sec;;
let tag_sec = Tag_v.make sym_sec soi_sec;;

test_number 5 (
tag_sec 
(* : Section_symbol_t.section_symbol Tag_t.tag *)
=
  (Section_symbol_t.Section_for_symbol_symbol
    (Section_for_symbol_symbol_t.Section_for_symbol_body_symbol
      (Section_for_symbol_body_symbol_t.Section_for_symbol_body_top_symbol
        Section_for_symbol_body_top_symbol_t.Try_make_of_topson_with_failure_arrow)),
   [88; 28; 22; 1; 3; 2; 8; 4])
);;

let oct_sec = Section_tag_v.section_octtup_off_section_tag tag_sec;;

test_number 6 (
 oct_sec 
(* : Section_symbol_t.section_symbol *
  Camlparagraph_symbol_t.camlparagraph_symbol * Item_symbol_t.item_symbol *
  Usagefile_symbol_t.usagefile_symbol *
  Contentfile_symbol_t.contentfile_symbol * Entity_symbol_t.entity_symbol *
  Category_symbol_t.category_symbol * Domainset_symbol_t.domainset_symbol *)
=
(Section_symbol_t.Section_for_symbol_symbol
   (Section_for_symbol_symbol_t.Section_for_symbol_body_symbol
      (Section_for_symbol_body_symbol_t.Section_for_symbol_body_top_symbol
         Section_for_symbol_body_top_symbol_t.Try_make_of_topson_with_failure_arrow)),
 Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
   (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
      (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
        Camlparagraph_for_symbol_let_argument_symbol_t.Let_make_nam_s_equal_for_symbol)),
 Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Making,
 Usagefile_symbol_t.Implementation, 
 Contentfile_symbol_t.Value_alone,
 Entity_symbol_t.Entity_proper_symbol
   (Entity_proper_symbol_t.Currententity "triangle"),
 Category_symbol_t.Tag, 
 Domainset_symbol_t.Figureset)
);;
