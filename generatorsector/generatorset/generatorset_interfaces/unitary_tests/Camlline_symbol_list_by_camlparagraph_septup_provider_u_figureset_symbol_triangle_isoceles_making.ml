open Make_test_v;;

testing "Camlline_symbol_list_by_camlparagraph_septup_provider_v with
   Camlline_symbol_list_by_camlparagraph_septup_provider_u_figure_symbol_triangle_isoceles_making.ml";;

(* toplevel 
   #use "Camlline_symbol_list_by_camlparagraph_septup_provider_u_figure_symbol_triangle_isoceles_making.ml";; 

*)

let nam_dos = "figure";;
let nam_cat = "symbol";;
let nam_usf = "implementation";;
let nam_enp = "triangle_isoceles";;
let sym_enp = Entity_symbol_v.top_has_sometopsonleaf nam_enp;;
let nam_cof = "value_alone";;
let nam_ite = "making";;

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
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Making,
 [23; 1; 3; 698516742; 7; 4])
);;

let tag_cap_l = Camlparagraph_symbol_list_by_item_sextup_provider_v.provide sex_ite;;

test_number 2 (
tag_cap_l
(*  : Camlparagraph_symbol_t.camlparagraph_symbol list *)
  =
[(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
    (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       (Camlparagraph_for_any_comment_symbol_t.Item_title "making")),
  [1; 23; 1; 3; 698516742; 7; 4]);
 (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
    (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
          Camlparagraph_for_symbol_let_argument_symbol_t.Let_make_nam_s_equal_for_symbol)),
  [2; 23; 1; 3; 698516742; 7; 4])]
);;

(* Camlparagraph : 2 camlparagraph_for_symbol_type *)

let sep_cap = List.nth tag_cap_l (idx_cap-1);;
let sym_cal_l = Camlline_symbol_list_by_camlparagraph_septup_provider_v.provide sep_cap;;

test_number 3 (
sep_cap
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
  (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
    (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
      (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
        Camlparagraph_for_symbol_let_argument_symbol_t.Let_make_nam_s_equal_for_symbol)),
   [2; 23; 1; 3; 698516742; 7; 4])
);;

test_number 4 (
sym_cal_l
(* : Entity_symbol_t.entity_symbol list list *) 
=
  [Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_function_symbol
      Camlline_constant_function_symbol_t.Let_make_equal_function);
   Camlline_symbol_t.Camlline_uno_symbol
    (Camlline_uno_symbol_t.Camlline_uno_function_symbol
      Camlline_uno_function_symbol_t.Pipe_ecstring_arrow_ec);
   Camlline_symbol_t.Camlline_uno_symbol
    (Camlline_uno_symbol_t.Camlline_uno_function_symbol
      Camlline_uno_function_symbol_t.Pipe_ecstring_arrow_ec);
   Camlline_symbol_t.Camlline_uno_symbol
    (Camlline_uno_symbol_t.Camlline_uno_function_symbol
      Camlline_uno_function_symbol_t.Pipe_ecstring_arrow_ec);
   Camlline_symbol_t.Camlline_uno_symbol
    (Camlline_uno_symbol_t.Camlline_uno_function_symbol
      Camlline_uno_function_symbol_t.Pipe_ecstring_arrow_ec);
   Camlline_symbol_t.Camlline_uno_symbol
    (Camlline_uno_symbol_t.Camlline_uno_function_symbol
      Camlline_uno_function_symbol_t.Print_fatal_error_make_of_string_of_string);
   Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
      Camlline_constant_pervasive_symbol_t.Double_semicolon)]
);;

