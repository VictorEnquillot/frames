open Make_test_v;;

testing "item_extracting_symbol_value_implementation_value_u_2.ml";;

(* toplevel 
   #use "Item_value_u_chemicalset_symbol_atom_zerotied_extracting.ml";;
*)

let nam_cod = "Item_value_u_chemicalset_symbol_atom_zerotied_extracting.ml";;

let fnd_cat = Category_symbol_v.is_symbol_off_category_symbol;;
let fnd_enp = (fun e -> Entity_symbol_v.string_off e = "atom_zerotied_anion_minusone")
let fnd_cof = Contentfile_symbol_v.is_contentfile_value_alone_symbol_off_contentfile_symbol;;
let fnd_usf = Usagefile_symbol_v.is_implementation_off_usagefile_symbol;; 
let fnd_ite = Item_symbol_v.is_extracting;;

let sym_dom = Domain_symbol_v.make "chemicalset";;
let soi_dom = [1];;
let gss_dom = Generatorset_symbol_v.generatorset_symbol_of_domain_symbol sym_dom;;
Generatorset_symbol_by_sole_index_register_v.store_force soi_dom gss_dom;;
let tag_dom = Tag_v.make sym_dom soi_dom;;
let for_dom = Domain_formula_v.retrieve tag_dom;;

let tag_cat = Doublet_list_v.find_if_left fnd_cat for_dom;;
let for_cat = Category_formula_v.retrieve tag_cat;;

let tag_enp = Doublet_list_v.find_if_left fnd_enp for_cat;;
let for_enp = Entity_formula_v.retrieve tag_enp;;

let tag_cof = Doublet_list_v.find_if_left fnd_cof for_enp;;
let for_cof = Contentfile_formula_v.retrieve tag_cof;;

let tag_usf = Doublet_list_v.find_if_left fnd_usf for_cof;;
let for_usf = Usagefile_formula_v.retrieve tag_usf;;

let tag_ite = Doublet_list_v.find_if_left fnd_ite for_usf;; 
let for_ite = Item_formula_v.retrieve tag_ite;;

let val_ite = Item_value_v.make tag_ite;;

test_number 1 (
tag_ite
(* : Item_symbol_t.item_symbol * Tag_t.Sid_t.sole_index *)
=
(Item_symbol_t.Item_extracting, [5; 1; 2; 6; 1; 1])
);;

test_number 2 (
for_ite
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
=
[(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
   (Camlparagraph_comment_symbol_t.Item_title "extracting"),
  [1; 5; 1; 2; 6; 1; 1])]
);;

test_number 3 (
Item_value_v.fullnameoffile "./" tag_ite
=
"./atom_zerotied_anion_minusone_symbol_extracting_v.ml"
);;

Item_value_v.write "./" tag_ite;;


