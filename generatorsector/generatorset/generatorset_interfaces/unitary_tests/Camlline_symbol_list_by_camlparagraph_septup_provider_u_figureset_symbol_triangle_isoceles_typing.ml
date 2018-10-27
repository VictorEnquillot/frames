open Make_test_v;;

testing "Camlline_symbol_list_by_camlparagraph_septup_provider_v with
   Camlline_symbol_list_by_camlparagraph_septup_provider_u_figure_symbol_triangle_isoceles_typing.ml";;

(* toplevel 
   #use "Camlline_symbol_list_by_camlparagraph_septup_provider_u_figure_symbol_triangle_isoceles_typing.ml";; 

*)

let nam_dos = "figure";;
let nam_cat = "symbol";;
let nam_usf = "implementation";;
let nam_ent = "triangle_isoceles";;
let nam_cof = "type_alone";;
let nam_ite = "typing";;

let sym_dos = Domain_symbol_v.make nam_dos "";;
let sym_cat = Category_symbol_v.make nam_cat;;

let sym_ent_l = Entity_inconstructortree_symbol_list_by_domain_symbol_provider_v.provide sym_dos;;

let sym_ent = List.find (fun e -> Entity_symbol_v.string_off e = nam_ent) sym_ent_l;;
let sym_cof = Contentfile_symbol_v.make nam_cof;;
let sym_usf = Usagefile_symbol_v.make nam_usf;;
let sym_ite = Item_symbol_v.make nam_ite;;

let sex_ite = (sym_ite, sym_usf, sym_cof, sym_ent, sym_cat, sym_dos);;

test_number 1 (
sex_ite 
(* : Item_symbol_t.item_symbol * Usagefile_symbol_t.usagefile_symbol *
  Contentfile_symbol_t.contentfile_symbol * Entity_symbol_t.entity_symbol *
  Category_symbol_t.category_symbol * Domain_symbol_t.domainset_symbol *)
=
  (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Typing,
   Usagefile_symbol_t.Implementation, Contentfile_symbol_t.Type_alone,
   Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_t.Entity_proper "triangle_isoceles"),
   Category_symbol_t.Symbol, Domain_symbol_t.Figure)
);;

let sep_cap_l = Camlparagraph_symbol_list_by_item_sextup_provider_v.provide sex_ite;;

test_number 2 (
sep_cap_l 
(* : (Camlparagraph_symbol_t.camlparagraph_symbol, Item_symbol_t.item_symbol,
   Usagefile_symbol_t.usagefile_symbol,
   Contentfile_symbol_t.contentfile_symbol, Entity_symbol_t.entity_symbol,
   Category_symbol_t.category_symbol, Domain_symbol_t.domainset_symbol)
  Septuplet_t.septuplet list *)
=
  [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       (Camlparagraph_for_any_comment_symbol_t.Item_title "typing")),
    Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Typing,
    Usagefile_symbol_t.Implementation, Contentfile_symbol_t.Type_alone,
    Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_t.Entity_proper "triangle_isoceles"),
    Category_symbol_t.Symbol, Domain_symbol_t.Figure);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_type,
    Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Typing,
    Usagefile_symbol_t.Implementation, Contentfile_symbol_t.Type_alone,
    Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_t.Entity_proper "triangle_isoceles"),
    Category_symbol_t.Symbol, Domain_symbol_t.Figure)]
);;

(* Camlparagraph : 2 camlparagraph_for_symbol_type *)

let sep_cap = List.nth sep_cap_l (idx_cap-1);;

test_number 3 (
sep_cap
(* : (Camlparagraph_symbol_t.camlparagraph_symbol, Item_symbol_t.item_symbol,
   Usagefile_symbol_t.usagefile_symbol,
   Contentfile_symbol_t.contentfile_symbol, Entity_symbol_t.entity_symbol,
   Category_symbol_t.category_symbol, Domain_symbol_t.domainset_symbol)
  Septuplet_t.septuplet *)
=
  (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
    Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_type,
   Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Typing,
   Usagefile_symbol_t.Implementation, Contentfile_symbol_t.Type_alone,
   Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_t.Entity_proper "triangle_isoceles"),
   Category_symbol_t.Symbol, Domain_symbol_t.Figure)
);;

let sym_cal_l = Camlline_symbol_list_by_camlparagraph_septup_provider_v.provide sep_cap;;

test_number 4 (
sym_cal_l
(* : Camlline_symbol_t.camlline_symbol list *)
=
 [Camlline_symbol_t.Camlline_uno_symbol
    (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
      Camlline_uno_camltype_symbol_t.Type_est_equal);
   Camlline_symbol_t.Camlline_uno_symbol
    (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
      Camlline_uno_camltype_symbol_t.Pipe_Esl);
   Camlline_symbol_t.Camlline_uno_symbol
    (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
      Camlline_uno_camltype_symbol_t.Pipe_Esl);
   Camlline_symbol_t.Camlline_uno_symbol
    (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
      Camlline_uno_camltype_symbol_t.Pipe_Esl);
   Camlline_symbol_t.Camlline_uno_symbol
    (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
      Camlline_uno_camltype_symbol_t.Pipe_Esl);
   Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
      Camlline_constant_pervasive_symbol_t.Double_semicolon)]
);;

