open Make_test_v;;

testing "Camlline_value_v with
   Camlline_value_u_chemicalset_tag_atom_zerotied_anion_minusone_upgrading.ml"

(* toplevel 
   #use "Camlline_value_u_chemicalset_tag_atom_zerotied_anion_minusone_upgrading.ml";;
*)

let fnd_cat = Category_symbol_v.is_tag_off_category_symbol;;
let fnd_enp = (fun e -> Entity_symbol_v.string_off e = "atom_zerotied_anion_minusone")
let fnd_cof = Contentfile_symbol_v.is_contentfile_value_alone_symbol_off_contentfile_symbol;;
let fnd_usf = Usagefile_symbol_v.is_implementation_off_usagefile_symbol;; 
let fnd_ite = Item_symbol_v.is_upgrading;;
let fnd_cap = Camlparagraph_symbol_v.is_item_title;;
let fnd_cal = Camlline_symbol_v.is_item_title;;

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

let tag_cap = Doublet_list_v.find_if_left fnd_cap for_ite;; 
let for_cap = Camlparagraph_formula_v.retrieve tag_cap;;

let tag_cal = Doublet_list_v.find_if_left fnd_cal for_cap;;
let sym_cal = Tag_v.entity_off_tag tag_cal;;

let soi_cal = Tag_v.sole_index_off_tag tag_cal;;
let for_cal = Camlline_formula_v.retrieve tag_cal;;
let val_cal = Camlline_value_v.make tag_cal;;

test_number 1 (
for_ite
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
=
[(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
   (Camlparagraph_comment_symbol_t.Item_title "upgrading"),
  [1; 7; 1; 2; 6; 2; 1])]
);;

test_number 2 (
tag_cap
(* : Camlparagraph_symbol_t.camlparagraph_symbol * Sole_index_t.sole_index *)
=
(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
  (Camlparagraph_comment_symbol_t.Item_title "upgrading"),
 [1; 7; 1; 2; 6; 2; 1])
);;

test_number 3 (
for_cap
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
[(Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     (Camlline_constant_pervasive_symbol_t.Item_title "upgrading")),
  [1; 1; 7; 1; 2; 6; 2; 1]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Empty_line),
  [2; 1; 7; 1; 2; 6; 2; 1])]
);;

test_number 4 (
tag_cal
(* : Camlline_symbol_t.camlline_symbol * Sole_index_t.sole_index *)
=
(Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
      (Camlline_constant_pervasive_symbol_t.Item_title "upgrading")),
   [1; 1; 7; 1; 2; 6; 2; 1])
);;

test_number 5 (
for_cal
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
[(Entity_symbol_t.Entity_fictive_symbol
   (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
     Entity_fictive_nullary_symbol_t.Empty),
  [1; 1; 1; 7; 1; 2; 6; 2; 1])]
);;

test_number 6 (
val_cal
(* : string *)
=
"(** {6 Upgrading} *)"
);;

test_number 7 (
Camlline_value_v.fullnameoffile "./" tag_cal
=
"./atom_zerotied_anion_minusone_tag_upgrading_item_title_item_title_v.ml"
);;

(**
Camlline_value_v.write tag_cal;; 
**)
  

