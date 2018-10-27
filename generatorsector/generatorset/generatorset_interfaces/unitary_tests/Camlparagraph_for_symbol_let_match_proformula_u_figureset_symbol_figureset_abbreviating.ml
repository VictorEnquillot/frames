open Make_test_v;;

testing "Entity_symbol_list_by_camlline_octtup_provider_v with
   Camlparagraph_for_symbol_let_match_proformula_u_figure_symbol_figure_abbreviating.ml";;

(* toplevel 
   #use "Camlparagraph_for_symbol_let_match_proformula_u_figure_symbol_figure_abbreviating.ml";;

*)

let nam_dos = "figure";;
let nam_cat = "symbol";;
let nam_enp = "figure";;
let nam_usf = "implementation";;
let nam_cof = "value_alone";;
let nam_ite = "abbreviating";;

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

(* Value_alone *)

let sym_cof = Contentfile_symbol_v.make nam_cof;;
let gss_cof = Generatorset_symbol_v.generatorset_symbol_of_contentfile_symbol sym_cof;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cof gss_cof;;
let tag_cof = Tag_v.make sym_cof soi_cof;;

let sym_usf = Usagefile_symbol_v.make nam_usf;;
let gss_usf = Generatorset_symbol_v.generatorset_symbol_of_usagefile_symbol sym_usf;;
Generatorset_symbol_by_sole_index_provider_v.store soi_usf gss_usf;;
let tag_usf = Tag_v.make sym_usf soi_usf;;

(* Abbreviating *)

let sym_ite = Item_symbol_v.make nam_ite;;
let gss_ite = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite gss_ite;;
let sex_ite = Tag_v.make sym_ite soi_ite;;

let sym_cap_l = Camlparagraph_symbol_list_by_item_sextup_provider_v.provide sex_ite;;

test_number 1 (
 sym_cap_l 
(* : Camlparagraph_symbol_t.camlparagraph_symbol list *)
  =
  [Camlparagraph_symbol_t.Camlparagraph_for_any_comment_symbol
    (Camlparagraph_for_any_comment_symbol_t.Item_title "abbreviating");
   Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
    (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
      Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather);
   Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
    (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
      Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather);
   Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
    (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
      Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather);
   Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
    (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
      Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather);
   Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
    (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
      Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather);
   Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
    (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
      Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather);
   Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
    (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
      Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather);
   Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
    (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
      Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather);
   Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
    (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
      Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather);
   Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
    (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
      Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather);
   Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
    (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
      Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather);
   Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
    (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
      Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather);
   Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
    (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
      Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather);
   Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
    (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
      Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather);
   Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
    (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
      Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather);
   Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
    (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
      Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather);
   Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
    (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
      Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather);
   Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
    (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
      Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather);
   Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
    (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
      Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather);
   Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
    (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
      Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather);
   Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
    (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
      Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather);
   Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
    (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
      Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather);
   Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
    (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
      Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather);
   Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
    (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
      Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather);
   Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
    (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
      Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather);
   Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
    (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
      Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather);
   Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
    (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
      Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather)]
);;

(* : Camlparagraph : 1 Item_title "abbreviating" *)

let sym_cap = List.nth sym_cap_l (idx_cap-1);;
let gss_cap = Generatorset_symbol_v.generatorset_symbol_of_camlparagraph_symbol sym_cap;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cap gss_cap;;

let sep_cap = Tag_v.make sym_cap soi_cap;;

let pat_sym_ent_l = Entity_current_symbol_uno_by_camlparagraph_septup_provider_v.provide sep_cap;;

let es_dol = Camlparagraph_for_symbol_let_match_proformula_v.doublet_list_for_each_pipe_camlline_in_let_make_function sep_cap (List.nth pat_sym_ent_l 0);;

test_number 2 (
sep_cap
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
  (Camlparagraph_symbol_t.Camlparagraph_for_any_comment_symbol
    (Camlparagraph_for_any_comment_symbol_t.Item_title "abbreviating"),
   [1; 8; 1; 3; 383488616; 7; 4])
);;

test_number 3 (
pat_sym_ent_l
(* : Entity_symbol_t.entity_symbol list list *)
  =
[[Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       Entity_fictive_nullary_symbol_t.Empty)]]
);;

test_number 4 (
es_dol
(* : Entity_symbol_t.entity_symbol list list *)
=
[]
);;

(* : Camlparagraph : 2 Let_abbreviate_ingrandfather *)

let sym_cap = List.nth sym_cap_l (idx_cap-1);;
let gss_cap = Generatorset_symbol_v.generatorset_symbol_of_camlparagraph_symbol sym_cap;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cap gss_cap;;

let sep_cap = Tag_v.make sym_cap soi_cap;;

let pat_sym_ent_l = Entity_current_symbol_uno_by_camlparagraph_septup_provider_v.provide sep_cap;;

let es_dol = Translating_item_symbol_entity_symbol_path_doublet_to_camlparagraph_symbol_ucamlparagraph_symbol_of_entity_symbol_path_of_category_symbol_of_item_severalparagraph_symbol pat_sym_ent sym_cat sym_its =


test_number 5 (
sep_cap
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
    Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather),
 [2; 8; 1; 3; 383488616; 7; 4])
);;

test_number 6 (
pat_sym_ent_l
(* : Entity_symbol_t.entity_symbol list list *)
  =
  [[Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Nonsonnullary
         "triangle_isoceles_equilateral"));
    Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_t.Entity_proper "triangle_isoceles");
    Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_son_symbol
       (Entity_proper_son_symbol_t.Notonlyson "triangle"));
    Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_top_symbol
       (Entity_proper_top_symbol_t.Top_has_notopsonleaf "figure"))]]
);;

test_number 7 (
es_dol
(*  (Entity_symbol_t.entity_symbol list * Camlline_symbol_t.camlline_symbol)
  list *)
=
  [([Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Nonsonnullary
          "triangle_isoceles_equilateral"))],
    Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_function_symbol
       Camlline_uno_function_symbol_t.Pipe_ecstring_arrow_ec))]
);;


(* : Camlparagraph : 10 Let_abbreviate_ingrandfather *)

let sym_cap = List.nth sym_cap_l (idx_cap-1);;
let gss_cap = Generatorset_symbol_v.generatorset_symbol_of_camlparagraph_symbol sym_cap;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cap gss_cap;;

let sep_cap = Tag_v.make sym_cap soi_cap;;

let pat_sym_ent_l = Entity_current_symbol_uno_by_camlparagraph_septup_provider_v.provide sep_cap;;

let es_dol = Camlparagraph_for_symbol_let_match_proformula_v.doublet_list_for_each_pipe_camlline_in_let_make_function sep_cap (List.nth pat_sym_ent_l 0);;

test_number 8 (
sep_cap
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
    Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather),
 [10; 8; 1; 3; 383488616; 7; 4])
);;

test_number 9 (
pat_sym_ent_l
(* : Entity_symbol_t.entity_symbol list list *)
  =
  [[Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Nonsonnullary "vector"));
    Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_son_symbol
       (Entity_proper_son_symbol_t.Notonlyson "vector"));
    Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_top_symbol
       (Entity_proper_top_symbol_t.Top_has_notopsonleaf "figure"))]]
);;

test_number 10 (
es_dol
(* : (Entity_symbol_t.entity_symbol list * Camlline_symbol_t.camlline_symbol)
  list *)
=
  [([Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Nonsonnullary "vector"))],
    Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_function_symbol
       Camlline_uno_function_symbol_t.Pipe_ecstring_arrow_ec))]
);;

