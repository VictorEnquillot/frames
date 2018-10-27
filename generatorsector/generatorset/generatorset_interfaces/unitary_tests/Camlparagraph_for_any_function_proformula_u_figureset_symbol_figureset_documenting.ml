open Make_test_v;;

testing "Entity_symbol_list_by_camlline_octtup_provider_v with
   Camlparagraph_for_any_function_proformula_u_figure_symbol_figure_documenting.ml";;

(* toplevel 
   #use "Camlparagraph_for_any_function_proformula_u_figure_symbol_figure_documenting.ml";;

*)

let nam_dos = "figure";;
let nam_cat = "symbol";;
let nam_ent = "figure";;
let nam_usf = "implementation";;
let nam_cof = "value_alone";;
let nam_ite = "documenting";;

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
  (Item_symbol_t.Item_only_top_symbol Item_only_top_symbol_t.Documenting,
   Usagefile_symbol_t.Implementation, Contentfile_symbol_t.Value_alone,
   Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_notopsonleaf "figure")),
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
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_function_symbol
       Camlparagraph_for_any_function_symbol_t.Let_documentation),
    Item_symbol_t.Item_only_top_symbol Item_only_top_symbol_t.Documenting,
    Usagefile_symbol_t.Implementation, Contentfile_symbol_t.Value_alone,
    Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_top_symbol
       (Entity_proper_top_symbol_t.Top_has_notopsonleaf "figure")),
    Category_symbol_t.Symbol, Domain_symbol_t.Figure);
   (Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_function_symbol
       Camlparagraph_for_any_function_symbol_t.Let_nam_cod),
    Item_symbol_t.Item_only_top_symbol Item_only_top_symbol_t.Documenting,
    Usagefile_symbol_t.Implementation, Contentfile_symbol_t.Value_alone,
    Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_top_symbol
       (Entity_proper_top_symbol_t.Top_has_notopsonleaf "figure")),
    Category_symbol_t.Symbol, Domain_symbol_t.Figure)]
);;

let sep_cap = List.nth sep_cap_l (idx_cap-1);;

test_number 3 (
sep_cap
(* : (Camlparagraph_symbol_t.camlparagraph_symbol, Item_symbol_t.item_symbol,
   Usagefile_symbol_t.usagefile_symbol,
   Contentfile_symbol_t.contentfile_symbol, Entity_symbol_t.entity_symbol,
   Category_symbol_t.category_symbol, Domain_symbol_t.domainset_symbol)
  Septuplet_t.septuplet *)
=
  (Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
    (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_function_symbol
      Camlparagraph_for_any_function_symbol_t.Let_documentation),
   Item_symbol_t.Item_only_top_symbol Item_only_top_symbol_t.Documenting,
   Usagefile_symbol_t.Implementation, Contentfile_symbol_t.Value_alone,
   Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_notopsonleaf "figure")),
   Category_symbol_t.Symbol, Domain_symbol_t.Figure)
);;

let sym_cap = Septuplet_v.left_off_septuplet sep_cap;;
let sym_caf = Camlparagraph_symbol_v.camlparagraph_for_any_function_symbol_off_camlparagraph_symbol sym_cap;;
let sep_caf = Septuplet_v.make_of_left_of_sextuplet sym_caf sex_ite;;
let sym_ent_l_sym_cal_dol = Camlparagraph_for_any_function_proformula_v.make sep_caf;;

test_number 4 (
sym_ent_l_sym_cal_dol
(* : (Entity_symbol_t.entity_symbol list * Camlline_symbol_t.camlline_symbol)
  list *)
=
  [([],
    Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_function_symbol
       Camlline_constant_function_symbol_t.Let_documentation_unit_equal));
   ([],
    Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
       Camlline_constant_pervasive_symbol_t.Bracket_left));
   ([],
    Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_function_symbol
       Camlline_constant_function_symbol_t.Space_double_quote_Needs));
   ([Entity_symbol_t.Entity_proper_symbol
      (Entity_propert.Entity_proper_top_symbol
        (Entity_proper_top_symbol_t.Top_has_notopsonleaf "figure"))],
    Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_function_symbol
       Camlline_uno_function_symbol_t.Space_double_quote_Current));
   ([],
    Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_function_symbol
       Camlline_constant_function_symbol_t.Space_double_quote_Needed));
   ([],
    Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_function_symbol
       Camlline_constant_function_symbol_t.Space_double_quote_What_is_it));
   ([],
    Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_function_symbol
       Camlline_constant_function_symbol_t.Space_double_quote_How_is_it_done));
   ([],
    Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_function_symbol
       Camlline_constant_function_symbol_t.Space_double_quote_Example));
   ([],
    Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
       Camlline_constant_pervasive_symbol_t.Bracket_right));
   ([],
    Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
       Camlline_constant_pervasive_symbol_t.Double_semicolon))]
);;

let sym_cfa = Camlparagraph_symbol_v.camlparagraph_for_any_symbol_off_camlparagraph_symbol sym_cap;;
let sep_cfa = Septuplet_v.make_of_left_of_sextuplet sym_cfa sex_ite;;

test_number 5 (
sym_ent_l_sym_cal_dol = Entity_symbol_list_camlline_symbol_doublet_list_for_camlparagraph_for_any_v.make sep_cfa
);;
