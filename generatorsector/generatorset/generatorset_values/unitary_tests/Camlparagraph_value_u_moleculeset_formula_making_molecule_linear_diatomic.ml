open Make_test_v;;

testing "Camlparagraph_endmarked_type_value_v with
   Camlparagraph_value_u_moleculeset_formula_making_molecule_linear_diatomic.ml";;

(* toplevel 
   #use "Camlparagraph_value_u_moleculeset_formula_making_molecule_linear_diatomic.ml";;

*)

let nam_cod = "Camlparagraph_value_u_moleculeset_formula_making_molecule_linear_diatomic.ml";;

let nam_dom = "moleculeset";;
let nam_enp = "molecule_linear_diatomic";;
let idx_dom = Domain_symbol_v.domainset_index_of_domainset_name nam_dom;;
let soi_dom = Sole_index_v.make idx_dom [];;
let sym_dom = Domain_symbol_v.make nam_dom "";;

let fnd_cat = Category_symbol_v.is_formula_off_category_symbol;;
let fnd_cap = Camlparagraph_symbol_v.is_type_definition_for_formula;;
let fnd_enp = (fun e -> Entity_symbol_v.string_off e = nam_enp)
let fnd_cof = Contentfile_symbol_v.is_type_alone;;
let fnd_usf = Usagefile_symbol_v.is_implementation_off_usagefile_symbol;; 
let fnd_ite = Item_symbol_v.is_making;;

let sym_dom = Domain_symbol_v.make "moleculeset";;
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
let val_cap = Camlparagraph_value_v.make tag_cap;;

test_number 1 (
tag_ite
(* Camlparagraph_symbol_t.camlparagraph_symbol * Sole_index_t.sole_index *)
=
(Item_symbol_t.Item_oneparagraph_symbol Item_oneparagraph_symbol_t.Making,
 [3; 1; 1; 8; 1; 1])
);;

test_number 2 (
for_ite
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
=
[(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
   (Camlparagraph_comment_symbol_t.Item_title "making"),
  [1; 3; 1; 1; 8; 1; 1]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   Camlparagraph_endmarked_symbol_t.Type_definition_for_formula,
  [2; 3; 1; 1; 8; 1; 1])]
);;

test_number 3 (
tag_cap
(* Camlparagraph_symbol_t.camlparagraph_symbol * Sole_index_t.sole_index *)
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  Camlparagraph_endmarked_symbol_t.Type_definition_for_formula,
 [2; 3; 1; 1; 8; 1; 1])
);;

test_number 4 (
for_cap
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
[(Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Type_eft_equal),
  [1; 2; 3; 1; 1; 8; 1; 1]);
 (Camlline_symbol_t.Camlline_datastructure_symbol
   (Camlline_datastructure_symbol_t.Camlline_datastructure_camltype_symbol
     Camlline_datastructure_camltype_symbol_t.Pipe_A_b_datastructure_of_a_b_datastructure),
  [2; 2; 3; 1; 1; 8; 1; 1]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Double_semicolon),
  [3; 2; 3; 1; 1; 8; 1; 1])]
);;

test_number 5 (
val_cap
(* : string list list *)
=
["type molecule_linear_diatomic_formula =";
 "  | Capped_list_fragment_head_mark_grouping_mark of (Fragment_head_mark_t.fragment_head_mark, Grouping_mark_t.grouping_mark) Capped_list_t.capped_list";
 ";;"]
);;

test_number 6 (
Camlparagraph_value_v.fullnameoffile "./" tag_cap
=
"./molecule_linear_diatomic_formula_making_type_definition_for_formula_t.ml"
);;

(*
Camlparagraph_value_v.write "./" tag_cap;;
*)

