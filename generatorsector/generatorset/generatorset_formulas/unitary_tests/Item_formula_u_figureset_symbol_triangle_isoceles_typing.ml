open Make_test_v;;

testing "Item_formula_v with 
   Item_formula_u_figureset_symbol_triangle_isoceles_typing.ml";;

(* toplevel 
   #use "Item_formula_u_figureset_symbol_triangle_isoceles_typing.ml";;

*)

let nam_cod = "Item_formula_u_figureset_symbol_triangle_isoceles_typing";;

let nam_dos = "figureset";;
let nam_cat = "symbol";;
let nam_ent = "triangle_isoceles";;
let nam_cof = "type_alone";;
let nam_ite = "typing";;
let nam_usf = "implementation";;

let sym_dos = Domainset_symbol_v.make nam_dos;;
let idx_dos = Domainset_symbol_v.list_index_of_domainset_symbol sym_dos;;
let soi_dos = Sole_index_v.make idx_dos [];;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_register_v.store soi_dos gss_dos;;
let tag_dos = Tag_v.make sym_dos soi_dos;;
let for_dos = Domainset_formula_v.retrieve tag_dos;;

let sel_cat = (fun c -> Category_symbol_v.name c = nam_cat);;
let tag_cat = Doublet_list_v.find_if_left sel_cat for_dos;;

test_number 1 (
tag_dos
(* : Domainset_symbol_t.domainset_symbol Tag_t.tag *)
= 
(Domainset_symbol_t.Figureset, [2])
);;

test_number 2 (
tag_cat
(* : Category_symbol_v.Category_symbol_t.category_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Category_symbol_t.Symbol, [7; 2])
);;

let for_cat = Category_formula_v.retrieve tag_cat;;

let tag_ent_l = Category_formula_v.entity_tag_list_off_category_formula for_cat;;
let sel_ent = (fun e -> Entity_symbol_v.string_off e = nam_ent)
let tag_ent = Doublet_list_v.find_if_left sel_ent tag_ent_l;;

test_number 3 (
tag_ent
(* : Entity_symbol_t.Entity_proper_symbol * Tag_t.Sole_index_t.sole_index *)
=
  (
    (Entity_symbol_t.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "triangle_isoceles")),
   [3; 7; 2])
);;

let for_ent = Entity_formula_v.retrieve tag_ent;;

let sel_cof = (fun c -> Contentfile_symbol_v.name c = nam_cof);;
let tag_cof = Doublet_list_v.find_if_left sel_cof for_ent;;
let for_cof = Contentfile_formula_v.retrieve tag_cof;;

test_number 4 (
tag_cof
=
(Contentfile_symbol_t.Type_alone, [1; 3; 7; 2])
);;

let sel_usf = (fun u -> Usagefile_symbol_v.name u = nam_usf);;
let tag_usf = Doublet_list_v.find_if_left sel_usf for_cof;;

test_number 5 (
tag_usf
  =
(Usagefile_symbol_t.Implementation, [1; 1; 3; 7; 2])
);;

let for_usf = Usagefile_formula_v.retrieve tag_usf;;

test_number 6 (
 for_usf 
(* : Item_symbol_t.item_symbol Tag_t.tag list *)
=
  [(Item_symbol_t.Item_only_top_symbol Item_only_top_symbol_t.Heading,
    [1; 1; 1; 3; 7; 2]);
   (Item_symbol_t.Item_only_top_symbol Item_only_top_symbol_t.Documenting,
    [2; 1; 1; 3; 7; 2]);
   (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Typing,
    [3; 1; 1; 3; 7; 2]);
   (Item_symbol_t.Item_only_top_symbol Item_only_top_symbol_t.Ending,
    [4; 1; 1; 3; 7; 2])]
);;

let sel_ite = (fun i -> Item_symbol_v.name i = nam_ite);;
let tag_ite = Doublet_list_v.find_if_left sel_ite for_usf;; 

test_number 7 (
tag_ite
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Typing,
 [3; 1; 1; 3; 7; 2])
);;

let for_ite = Item_formula_v.retrieve tag_ite;;

test_number 8 (
for_ite 
(* : Camlparagraph_symbol_t.camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_symbol Tag_t.tag list *)
=
  [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       (Camlparagraph_for_any_comment_symbol_t.Item_title "typing")),
    [1; 3; 1; 1; 3; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_type,
    [2; 3; 1; 1; 3; 7; 2])]
);;

