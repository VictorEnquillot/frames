open Make_test_v;;

testing "Camlline_value_v
   Camlline_value_u_figureset_tag_triangle_isoceles_typing.ml";;

(* toplevel 
   #use "Camlline_value_u_figureset_tag_triangle_isoceles_typing.ml";;

*)

let nam_cod = "Camlline_value_u_figureset_tag_triangle_isoceles_typing.ml";;
let nam_dom = "figure";;
let nam_cat = "tag";;
let nam_ent = "triangle_isoceles";;
let nam_cof = "type_alone";;
let nam_usf = "implementation";;
let nam_ite = "typing";;

let sym_dom = Domain_symbol_v.make nam_dom "";;
let idx_dom = Domain_symbol_v.list_index_of_domain_symbol sym_dom;;
let soi_dom = Sole_index_v.make idx_dom [];;
let gss_dom = Generatorset_symbol_v.generatorset_symbol_of_domain_symbol sym_dom;;
Generatorset_symbol_by_sole_index_register_v.store soi_dom gss_dom;;
let tag_dom = Tag_v.make sym_dom soi_dom;;
let for_dom = Domain_formula_v.retrieve tag_dom;;

let sel_cat = (fun c -> Category_symbol_v.name c = nam_cat);;
let tag_cat = Doublet_list_v.find_if_left sel_cat for_dom;;

test_number 1 (
tag_cat 
(* : Category_symbol_t.category_symbol * Sole_index_t.sole_index *)
=
(Category_symbol_t.Tag, [8; 2])
);;


let for_cat = Category_formula_v.retrieve tag_cat;;

let tag_ent_l = Category_formula_v.entity_tag_list_off_category_formula for_cat;;
let sel_ent = (fun e -> Entity_symbol_v.string_off e = nam_ent)
let tag_ent = Doublet_list_v.find_if_left sel_ent tag_ent_l;;

let for_ent = Entity_formula_v.retrieve tag_ent;;

let sel_cof = (fun c -> Contentfile_symbol_v.name c = nam_cof);;
let tag_cof = Doublet_list_v.find_if_left sel_cof for_ent;;
let for_cof = Contentfile_formula_v.retrieve tag_cof;;

let sel_usf = (fun u -> Usagefile_symbol_v.name u = nam_usf);;
let tag_usf = Doublet_list_v.find_if_left sel_usf for_cof;;
let for_usf = Usagefile_formula_v.retrieve tag_usf;;

let sel_ite = (fun i -> Item_symbol_v.name i = nam_ite);;
let tag_ite = Doublet_list_v.find_if_left sel_ite for_usf;; 

test_number 2 (
tag_ite
(* : Item_symbol_t.item_symbol * Sole_index_t.sole_index *)
=
(Item_symbol_t.Item_by_group_topsons_symbol Item_by_group_topsons_symbol_t.Typing,
 [3; 1; 1; 3; 8; 2])
);;

let for_ite = Item_formula_v.retrieve tag_ite;;

test_number 3 (
for_ite
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
=
  [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       (Camlparagraph_for_any_comment_symbol_t.Item_title "typing")),
    [1; 3; 1; 1; 3; 8; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_tag_symbol
     Camlparagraph_for_tag_symbol_t.Camlparagraph_for_tag_type,
    [2; 3; 1; 1; 3; 8; 2])]
);;

let sym_enc_tag_cap_dol = Entity_current_symbol_camlparagraph_tag_doublet_list_by_item_tag_provider_v.provide tag_ite;;

test_number 4 (
 sym_enc_tag_cap_dol
(* (Entity_symbol_t.entity_symbol, Camlparagraph_tag_t.camlparagraph_tag)
  Doublet_list_t.doublet_list *)
=
  [(Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       Entity_fictive_nullary_symbol_t.Empty),
   
    (Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
      (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
        (Camlparagraph_for_any_comment_symbol_t.Item_title "typing")),
     [1; 3; 1; 1; 3; 8; 2]));
   (
     (Entity_symbol_t.Entity_proper_top_symbol
       (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "triangle_isoceles")),
    (Camlparagraph_symbol_t.Camlparagraph_for_tag_symbol
      Camlparagraph_for_tag_symbol_t.Camlparagraph_for_tag_type,
     [2; 3; 1; 1; 3; 8; 2]))]
);;

(* Camlparagraph : Camlparagraph_for_tag_type *)

let idx_cap = 2;;
let tag_cap = List.nth for_ite (idx_cap-1);;

test_number 5 (
tag_cap
(* : Item_symbol_t.item_symbol * Sole_index_t.sole_index *)
=
(Camlparagraph_symbol_t.Camlparagraph_for_tag_symbol
   Camlparagraph_for_tag_symbol_t.Camlparagraph_for_tag_type,
 [2; 3; 1; 1; 3; 8; 2])
);;

let sym_enc = Entity_current_symbol_uno_by_camlparagraph_tag_provider_v.provide tag_cap;;

test_number 6 (
sym_enc 
(* : Entity_symbol_t.entity_symbol *)
=
  Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "triangle_isoceles"))
);;

let for_cap = Camlparagraph_formula_v.retrieve tag_cap;;

test_number 7 (
for_cap
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
=
[(Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Type_ett_equal_Est_tdot_est_tag),
  [1; 2; 3; 1; 1; 3; 8; 2]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Double_semicolon),
  [2; 2; 3; 1; 1; 3; 8; 2])]
);;

(* Camlline : 2 Type_ett_equal_Est_tdot_est_tag *)

let idx_cal = 1;;
let tag_cal = List.nth for_cap (idx_cal-1);;

test_number 8 (
tag_cal
=
(Camlline_symbol_t.Camlline_uno_symbol
  (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
    Camlline_uno_camltype_symbol_t.Type_ett_equal_Est_tdot_est_tag),
 [1; 2; 3; 1; 1; 3; 8; 2])
);;

let for_cal = Camlline_formula_v.retrieve tag_cal;;

test_number 9 (
for_cal
  =
[(
    (Entity_symbol_t.Entity_proper_top_symbol
       (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "triangle_isoceles")),
  [1; 1; 2; 3; 1; 1; 3; 8; 2])]
);;

let nam_fil = Camlline_value_v.fullnameoffile "./" tag_cal;;

test_number 10 (
nam_fil
=
"./Triangle_isoceles_tag_typing_camlparagraph_for_tag_type_type_ett_equal_est_tdot_est_tag_t.ml"
);;

let val_cal = Camlline_value_v.make tag_cal;;

test_number 11 (
val_cal 
(* : Camlline_value_t.camlline_value *)
=
"type triangle_isoceles_tag = Triangle_isoceles_symbol_t.triangle_isoceles_symbol Tag_t.tag"
);;

