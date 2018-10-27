open Make_test_v;;

testing "Entity_current_symbol_uno_by_camlparagraph_septup_provider_v with
   Entity_current_symbol_uno_by_camlparagraph_septup_provider_u_musicset_formula_musicset_making.ml";;

(* toplevel 
   #use "Entity_current_symbol_uno_by_camlparagraph_septup_provider_u_musicset_formula_musicset_making.ml";; 

*)

let nam_dos = "musicset";;
let nam_cat = "formula";;
let nam_usf = "implementation";;
let nam_cof = "value_alone";;
let nam_ite = "making";;

let nam_enp = "musicset";;
let sym_enp = Entity_symbol_v.top_has_notopsonleaf nam_enp;;

let sym_dos = Domain_symbol_v.make nam_dos "";;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos gss_dos;;
let sym_dos = Tag_v.make sym_dos;;

let sym_cat = Category_symbol_v.make nam_cat;;
let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat gss_cat;;
let tag_cat = Tag_v.make sym_cat soi_cat;;

let gss_enp = Generatorset_symbol_v.generatorset_symbol_of_entity_proper_symbol sym_enp;;
Generatorset_symbol_by_sole_index_provider_v.store soi_enp gss_enp;;
let tag_enp = Tag_v.make sym_enp soi_enp;;

let sym_cof = Contentfile_symbol_v.make nam_cof;;
let gss_cof = Generatorset_symbol_v.generatorset_symbol_of_contentfile_symbol sym_cof;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cof gss_cof;;
let tag_cof = Tag_v.make sym_cof soi_cof;;

let sym_usf = Usagefile_symbol_v.make nam_usf;;
let gss_usf = Generatorset_symbol_v.generatorset_symbol_of_usagefile_symbol sym_usf;;
Generatorset_symbol_by_sole_index_provider_v.store soi_usf gss_usf;;
let tag_usf = Tag_v.make sym_usf soi_usf;;

let sym_ite = Item_symbol_v.make nam_ite;;
let gss_ite = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite gss_ite;;
let sex_ite = Tag_v.make sym_ite soi_ite;;

test_number 1 ( 
sex_ite
(* : Item_symbol_t.item_symbol Tag_t.tag *)
  =
  (Item_symbol_t.Item_oneparagraph_symbol Item_oneparagraph_symbol_t.Making,
   [3; 1; 3; 156330205; 2; 7])
);;

let sym_cap_l = Camlparagraph_symbol_list_by_item_sextup_provider_v.provide sex_ite;;

test_number 2 ( 
sym_cap_l
(*  : Camlparagraph_symbol_t.camlparagraph_symbol list *)
  =
  [Camlparagraph_symbol_t.Camlparagraph_for_any_comment_symbol
    (Camlparagraph_for_any_comment_symbol_t.Item_title "making");
   Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
    (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
      (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_match_symbol
        Camlparagraph_endmarked_let_match_symbol_t.Let_make_tag_equal))]
);;

(* Camlparagraph : 1 Item_title "making" *)

let sym_cap = List.nth sym_cap_l (idx_cap-1);;
let gss_cap = Generatorset_symbol_v.generatorset_symbol_of_camlparagraph_symbol sym_cap;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cap gss_cap;;

let sep_cap = Tag_v.make sym_cap soi_cap;;

let pat_sym_ent_l = Entity_current_symbol_uno_by_camlparagraph_septup_provider_v.provide sep_cap;;

test_number 3 ( 
sep_cap 
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
  (Camlparagraph_symbol_t.Camlparagraph_for_any_comment_symbol
    (Camlparagraph_for_any_comment_symbol_t.Item_title "making"),
   [1; 3; 1; 3; 156330205; 2; 7])
);;

test_number 4 ( 
pat_sym_ent_l 
(* : Entity_symbol_t.entity_symbol list list *)
=
  [[Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       Entity_fictive_nullary_symbol_t.Empty)]]
);;

(* Camlparagraph : 2 Type_definition_for_formula *)

let sym_cap = List.nth sym_cap_l (idx_cap-1);;
let gss_cap = Generatorset_symbol_v.generatorset_symbol_of_camlparagraph_symbol sym_cap;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cap gss_cap;;

let sep_cap = Tag_v.make sym_cap soi_cap;;

let pat_sym_ent_l = Entity_current_symbol_uno_by_camlparagraph_septup_provider_v.provide sep_cap;;

test_number 5 ( 
sep_cap 
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
  (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
    (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
      (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_match_symbol
        Camlparagraph_endmarked_let_match_symbol_t.Let_make_tag_equal)),
   [2; 3; 1; 3; 156330205; 2; 7])
);;

test_number 6 ( 
pat_sym_ent_l 
(* : Entity_symbol_t.entity_symbol list list *)
= 
[[Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "mp3_file"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "musicset"))];
 [Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "id3_tag"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "musicset"))];
 [Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "mp3_header"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "musicset"))];
 [Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "mp3_header_field"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "musicset"))];
 [Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "elementary_stream"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "musicset"))]]
);;

