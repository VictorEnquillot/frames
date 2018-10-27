open Make_test_v;;

testing "Camlline_uno_camltype_interface_v with
   Camlline_uno_camltype_interface_u_figure_symbol_figure.ml";;

(* toplevel 
   #use "Camlline_uno_camltype_interface_u_figure_symbol_figure.ml";;

*)

let nam_dos = "figure";;
let nam_cat = "symbol";;
let nam_enp = "figure";;
let nam_usf = "implementation";;

let sym_enp = Entity_symbol_v.top_has_notopsonleaf nam_enp;;

let sym_dos = Domain_symbol_v.make nam_dos "";;

let sym_cat = Category_symbol_v.make nam_cat;;

(* Value_alone *)

let nam_cof = "value_alone";;

let sym_cof = Contentfile_symbol_v.make nam_cof;;
let sym_usf = Usagefile_symbol_v.make nam_usf;;

(* Making *)

let nam_ite = "making";;
let sym_ite = Item_symbol_v.make nam_ite;;
let nam_cap = 

let sym_enp_l = Camlline_uno_camltype_interface_v.make dec_cuc soi_cal;;

test_number 1 (
tag_ite_mak 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
  (Item_symbol_t.Item_oneparagraph_symbol Item_oneparagraph_symbol_t.Making,
   [3; 1; 3; 383488616; 7; 4])
);;

test_number 2 (
 sym_cap_l_mak 
(* : Camlline_symbol_t.camlline_symbol list *)
=
  [Camlline_symbol_t.Camlline_comment_symbol
    (Camlline_comment_symbol_t.Item_title "making");
   Camlline_symbol_t.Camlline_endmarked_symbol
    (Camlline_endmarked_symbol_t.Camlline_endmarked_let_symbol
      (Camlline_endmarked_let_symbol_t.Camlline_endmarked_let_function_symbol
        Camlline_endmarked_let_function_symbol_t.Let_make_nam_s_equal_function_for_symbol))]
);;

(* Naming *)

let sym_ite = Item_symbol_v.make "naming";;
let gss_ite = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite gss_ite;;

let tag_ite_nam = Tag_v.make sym_ite soi_ite;;
let sym_cap_l_nam = Camlline_uno_camltype_interface_v.provide tag_ite_nam;;

test_number 3 (
tag_ite_nam 
(* : Item_symbol_t.item_symbol Tag_t.tag *)
=
  (Item_symbol_t.Item_oneparagraph_symbol Item_oneparagraph_symbol_t.Naming,
   [4; 1; 3; 383488616; 7; 4])
);;

test_number 4 (
sym_cap_l_nam
(* : Camlline_symbol_t.camlline_symbol list *)
=
  [Camlline_symbol_t.Camlline_comment_symbol
    (Camlline_comment_symbol_t.Item_title "naming");
   Camlline_symbol_t.Camlline_endmarked_symbol
    (Camlline_endmarked_symbol_t.Camlline_endmarked_let_symbol
      (Camlline_endmarked_let_symbol_t.Camlline_endmarked_let_function_symbol
        Camlline_endmarked_let_function_symbol_t.Let_name_equal_function_for_symbol))]
);;

(* Extracting *)

let nam_ite = "extracting";;

let sym_ite = Item_symbol_v.make nam_ite;;
let gss_ite = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite gss_ite;;

let tag_ite_ext = Tag_v.make sym_ite soi_ite;;
let sym_cap_l_ext = Camlline_uno_camltype_interface_v.provide tag_ite_ext;;

test_number 5 (
tag_ite_ext 
(* : Item_symbol_t.item_symbol Tag_t.tag *)
=
  (Item_symbol_t.Item_severalparagraph_symbol
    Item_severalparagraph_symbol_t.Extracting,
   [13; 1; 3; 383488616; 7; 4])
);;

test_number 6 (
sym_cap_l_ext 
(* : Entity_symbol_t.entity_symbol list list *)
=
[Camlline_symbol_t.Camlline_comment_symbol
  (Camlline_comment_symbol_t.Item_title "extracting");
 Camlline_symbol_t.Camlline_endmarked_symbol
  (Camlline_endmarked_symbol_t.Camlline_endmarked_let_symbol
    (Camlline_endmarked_let_symbol_t.Camlline_endmarked_let_function_symbol
      Camlline_endmarked_let_function_symbol_t.Let_ess_off_est_function));
 Camlline_symbol_t.Camlline_endmarked_symbol
  (Camlline_endmarked_symbol_t.Camlline_endmarked_let_symbol
    (Camlline_endmarked_let_symbol_t.Camlline_endmarked_let_argument_symbol
      Camlline_endmarked_let_argument_symbol_t.Let_grandson_notleaf_symbol_off_top_symbol));
 Camlline_symbol_t.Camlline_endmarked_symbol
  (Camlline_endmarked_symbol_t.Camlline_endmarked_let_symbol
    (Camlline_endmarked_let_symbol_t.Camlline_endmarked_let_argument_symbol
      Camlline_endmarked_let_argument_symbol_t.Let_grandson_notleaf_symbol_off_top_symbol));
 Camlline_symbol_t.Camlline_endmarked_symbol
  (Camlline_endmarked_symbol_t.Camlline_endmarked_let_symbol
    (Camlline_endmarked_let_symbol_t.Camlline_endmarked_let_function_symbol
      Camlline_endmarked_let_function_symbol_t.Let_ess_off_est_function));
 Camlline_symbol_t.Camlline_endmarked_symbol
  (Camlline_endmarked_symbol_t.Camlline_endmarked_let_symbol
    (Camlline_endmarked_let_symbol_t.Camlline_endmarked_let_function_symbol
      Camlline_endmarked_let_function_symbol_t.Let_ess_off_est_function));
 Camlline_symbol_t.Camlline_endmarked_symbol
  (Camlline_endmarked_symbol_t.Camlline_endmarked_let_symbol
    (Camlline_endmarked_let_symbol_t.Camlline_endmarked_let_function_symbol
      Camlline_endmarked_let_function_symbol_t.Let_ess_off_est_function));
 Camlline_symbol_t.Camlline_endmarked_symbol
  (Camlline_endmarked_symbol_t.Camlline_endmarked_let_symbol
    (Camlline_endmarked_let_symbol_t.Camlline_endmarked_let_argument_symbol
      Camlline_endmarked_let_argument_symbol_t.Let_grandson_notleaf_symbol_off_top_symbol));
 Camlline_symbol_t.Camlline_endmarked_symbol
  (Camlline_endmarked_symbol_t.Camlline_endmarked_let_symbol
    (Camlline_endmarked_let_symbol_t.Camlline_endmarked_let_argument_symbol
      Camlline_endmarked_let_argument_symbol_t.Let_grandson_notleaf_symbol_off_top_symbol));
 Camlline_symbol_t.Camlline_endmarked_symbol
  (Camlline_endmarked_symbol_t.Camlline_endmarked_let_symbol
    (Camlline_endmarked_let_symbol_t.Camlline_endmarked_let_argument_symbol
      Camlline_endmarked_let_argument_symbol_t.Let_grandson_notleaf_symbol_off_top_symbol));
 Camlline_symbol_t.Camlline_endmarked_symbol
  (Camlline_endmarked_symbol_t.Camlline_endmarked_let_symbol
    (Camlline_endmarked_let_symbol_t.Camlline_endmarked_let_argument_symbol
      Camlline_endmarked_let_argument_symbol_t.Let_grandson_notleaf_symbol_off_top_symbol));
 Camlline_symbol_t.Camlline_endmarked_symbol
  (Camlline_endmarked_symbol_t.Camlline_endmarked_let_symbol
    (Camlline_endmarked_let_symbol_t.Camlline_endmarked_let_argument_symbol
      Camlline_endmarked_let_argument_symbol_t.Let_grandson_notleaf_symbol_off_top_symbol));
 Camlline_symbol_t.Camlline_endmarked_symbol
  (Camlline_endmarked_symbol_t.Camlline_endmarked_let_symbol
    (Camlline_endmarked_let_symbol_t.Camlline_endmarked_let_argument_symbol
      Camlline_endmarked_let_argument_symbol_t.Let_grandson_notleaf_symbol_off_top_symbol));
 Camlline_symbol_t.Camlline_endmarked_symbol
  (Camlline_endmarked_symbol_t.Camlline_endmarked_let_symbol
    (Camlline_endmarked_let_symbol_t.Camlline_endmarked_let_argument_symbol
      Camlline_endmarked_let_argument_symbol_t.Let_grandson_notleaf_symbol_off_top_symbol))]
);;

(* Upgrading *)

let nam_ite = "upgrading_grandson";;

let sym_ite = Item_symbol_v.make nam_ite;;
let gss_ite = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite gss_ite;;

let tag_ite_upg = Tag_v.make sym_ite soi_ite;;
let sym_cap_l_upg = Camlline_uno_camltype_interface_v.provide tag_ite_upg;;

test_number 7 (
tag_ite_upg 
(* : Item_symbol_t.item_symbol Tag_t.tag *)
=
(Item_symbol_t.Item_severalparagraph_symbol
  Item_severalparagraph_symbol_t.Upgrading,
 [19; 1; 3; 383488616; 7; 4])
);;

test_number 8 (
sym_cap_l_upg 
(* : Camlline_symbol_t.camlline_symbol list *)
=
  [Camlline_symbol_t.Camlline_comment_symbol
    (Camlline_comment_symbol_t.Item_title "upgrading_grandson");
   Camlline_symbol_t.Camlline_endmarked_symbol
    (Camlline_endmarked_symbol_t.Camlline_endmarked_let_symbol
      (Camlline_endmarked_let_symbol_t.Camlline_endmarked_let_argument_symbol
        Camlline_endmarked_let_argument_symbol_t.Let_top_symbol_of_topson_notleaf_symbol));
   Camlline_symbol_t.Camlline_endmarked_symbol
    (Camlline_endmarked_symbol_t.Camlline_endmarked_let_symbol
      (Camlline_endmarked_let_symbol_t.Camlline_endmarked_let_argument_symbol
        Camlline_endmarked_let_argument_symbol_t.Let_top_symbol_of_grandson_notleaf_symbol));
   Camlline_symbol_t.Camlline_endmarked_symbol
    (Camlline_endmarked_symbol_t.Camlline_endmarked_let_symbol
      (Camlline_endmarked_let_symbol_t.Camlline_endmarked_let_argument_symbol
        Camlline_endmarked_let_argument_symbol_t.Let_top_symbol_of_grandson_notleaf_symbol));
   Camlline_symbol_t.Camlline_endmarked_symbol
    (Camlline_endmarked_symbol_t.Camlline_endmarked_let_symbol
      (Camlline_endmarked_let_symbol_t.Camlline_endmarked_let_argument_symbol
        Camlline_endmarked_let_argument_symbol_t.Let_top_symbol_of_topson_notleaf_symbol));
   Camlline_symbol_t.Camlline_endmarked_symbol
    (Camlline_endmarked_symbol_t.Camlline_endmarked_let_symbol
      (Camlline_endmarked_let_symbol_t.Camlline_endmarked_let_argument_symbol
        Camlline_endmarked_let_argument_symbol_t.Let_top_symbol_of_topson_notleaf_symbol));
   Camlline_symbol_t.Camlline_endmarked_symbol
    (Camlline_endmarked_symbol_t.Camlline_endmarked_let_symbol
      (Camlline_endmarked_let_symbol_t.Camlline_endmarked_let_argument_symbol
        Camlline_endmarked_let_argument_symbol_t.Let_top_symbol_of_topson_notleaf_symbol));
   Camlline_symbol_t.Camlline_endmarked_symbol
    (Camlline_endmarked_symbol_t.Camlline_endmarked_let_symbol
      (Camlline_endmarked_let_symbol_t.Camlline_endmarked_let_argument_symbol
        Camlline_endmarked_let_argument_symbol_t.Let_top_symbol_of_grandson_notleaf_symbol));
   Camlline_symbol_t.Camlline_endmarked_symbol
    (Camlline_endmarked_symbol_t.Camlline_endmarked_let_symbol
      (Camlline_endmarked_let_symbol_t.Camlline_endmarked_let_argument_symbol
        Camlline_endmarked_let_argument_symbol_t.Let_top_symbol_of_grandson_notleaf_symbol));
   Camlline_symbol_t.Camlline_endmarked_symbol
    (Camlline_endmarked_symbol_t.Camlline_endmarked_let_symbol
      (Camlline_endmarked_let_symbol_t.Camlline_endmarked_let_argument_symbol
        Camlline_endmarked_let_argument_symbol_t.Let_top_symbol_of_grandson_notleaf_symbol));
   Camlline_symbol_t.Camlline_endmarked_symbol
    (Camlline_endmarked_symbol_t.Camlline_endmarked_let_symbol
      (Camlline_endmarked_let_symbol_t.Camlline_endmarked_let_argument_symbol
        Camlline_endmarked_let_argument_symbol_t.Let_top_symbol_of_grandson_notleaf_symbol));
   Camlline_symbol_t.Camlline_endmarked_symbol
    (Camlline_endmarked_symbol_t.Camlline_endmarked_let_symbol
      (Camlline_endmarked_let_symbol_t.Camlline_endmarked_let_argument_symbol
        Camlline_endmarked_let_argument_symbol_t.Let_top_symbol_of_grandson_notleaf_symbol));
   Camlline_symbol_t.Camlline_endmarked_symbol
    (Camlline_endmarked_symbol_t.Camlline_endmarked_let_symbol
      (Camlline_endmarked_let_symbol_t.Camlline_endmarked_let_argument_symbol
        Camlline_endmarked_let_argument_symbol_t.Let_top_symbol_of_grandson_notleaf_symbol));
   Camlline_symbol_t.Camlline_endmarked_symbol
    (Camlline_endmarked_symbol_t.Camlline_endmarked_let_symbol
      (Camlline_endmarked_let_symbol_t.Camlline_endmarked_let_argument_symbol
        Camlline_endmarked_let_argument_symbol_t.Let_top_symbol_of_grandson_notleaf_symbol))]
);;

(* Type_alone *)

let nam_cof = "type_alone";;

let sym_cof = Contentfile_symbol_v.make nam_cof;;
let gss_cof = Generatorset_symbol_v.generatorset_symbol_of_contentfile_symbol sym_cof;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cof gss_cof;;
let tag_cof = Tag_v.make sym_cof soi_cof;;

let sym_usf = Usagefile_symbol_v.make nam_usf;;
let gss_usf = Generatorset_symbol_v.generatorset_symbol_of_usagefile_symbol sym_usf;;
Generatorset_symbol_by_sole_index_provider_v.store soi_usf gss_usf;;
let tag_usf = Tag_v.make sym_usf soi_usf;;

(* Typing *)

let nam_ite = "typing";;

let sym_ite = Item_symbol_v.make nam_ite;;
let gss_ite = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite gss_ite;;

let tag_ite_typ = Tag_v.make sym_ite soi_ite;;
let sym_cap_l_typ = Camlline_uno_camltype_interface_v.provide tag_ite_typ;;

test_number 9 (
tag_ite_typ 
(* : Item_symbol_t.item_symbol Tag_t.tag *)
=
(Item_symbol_t.Item_oneparagraph_symbol Item_oneparagraph_symbol_t.Typing,
 [7; 1; 1; 383488616; 7; 4])
);;

test_number 10 (
sym_cap_l_typ
(* : Camlline_symbol_t.camlline_symbol list *)
=
[Camlline_symbol_t.Camlline_comment_symbol
  (Camlline_comment_symbol_t.Item_title "typing");
 Camlline_symbol_t.Camlline_endmarked_symbol
  Camlline_endmarked_symbol_t.camlparagraph_for_symbol_type]
);;
