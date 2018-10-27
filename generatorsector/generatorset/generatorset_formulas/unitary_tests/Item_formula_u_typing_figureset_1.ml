open Make_test_v;;

testing "Item_formula_u_typing_figureset_1.ml";;

(* toplevel 
   #use "Item_formula_u_typing_figureset_1.ml";;
*)

let fnd_cat = Category_symbol_v.is_symbol_off_category_symbol;;
let fnd_enp = (fun e -> Entity_symbol_v.string_off e = "figureset")
let fnd_cof = Contentfile_symbol_v.is_type_alone;;
let fnd_usf = Usagefile_symbol_v.is_implementation_off_usagefile_symbol;; 
let fnd_ite = Item_symbol_v.is_typing;;

let sym_dos = Domainset_symbol_v.make "figureset";;
let soi_dos = [2];;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_register_v.store_force soi_dos gss_dos;;
let tag_dos = Tag_v.make sym_dos soi_dos;;
let for_dos = Domainset_formula_v.retrieve tag_dos;;

let tag_cat = Doublet_list_v.find_if_left fnd_cat for_dos;;
let for_cat = Category_formula_v.retrieve tag_cat;;

let tag_enp = Doublet_list_v.find_if_left fnd_enp for_cat;;
let for_enp = Entity_proper_formula_u_chemicalset_symbol_atom_zerotied.retrieve tag_enp;;

let tag_cof = Doublet_list_v.find_if_left fnd_cof for_enp;;
let for_cof = Contentfile_formula_v.retrieve tag_cof;;

let tag_usf = Doublet_list_v.find_if_left fnd_usf for_cof;;
let for_usf = Usagefile_formula_v.retrieve tag_usf;;

let tag_ite = Doublet_list_v.find_if_left fnd_ite for_usf;; 
let for_ite = Item_formula_v.retrieve tag_ite;;

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
(Category_symbol_t.Symbol, [1; 2])
);;

test_number 3 (
tag_enp
(* : Entity_symbol_t.Entity_proper_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Entity_symbol_t.Topentity "figureset", [1; 1; 2])
);;

test_number 4 (
tag_cof
=
(Contentfile_symbol_t.Type_alone, [1; 1; 1; 2])
);;

test_number 5 (
tag_usf
  =
(Usagefile_symbol_t.Implementation, [1; 1; 1; 1; 2])
);;

test_number 6 (
tag_ite
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Typing,
 [3; 1; 1; 1; 1; 2])
);;

test_number 7 (
 for_usf 
(* : Item_symbol_t.item_symbol Tag_t.tag list *)
=
  [(Item_symbol_t.Item_all_topsons_symbol Item_only_top_symbol_t.Heading,
    [1; 1; 1; 1; 1; 2]);
   (Item_symbol_t.Item_severalparagraph_symbol
     Item_only_top_symbol_t.Documenting,
    [2; 1; 1; 1; 1; 2]);
   (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Typing,
    [3; 1; 1; 1; 1; 2]);
   (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Ending,
    [4; 1; 1; 1; 1; 2])]
);;

test_number 8 (
for_ite 
(* : Camlparagraph_symbol_t.camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_symbol Tag_t.tag list *)
=
  [(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
     (Camlparagraph_comment_symbol_t.Item_title "typing"),
    [1; 3; 1; 1; 1; 1; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
     Camlparagraph_endmarked_symbol_t.Type_definition_for_symbol,
    [2; 3; 1; 1; 1; 1; 2])]
);;
