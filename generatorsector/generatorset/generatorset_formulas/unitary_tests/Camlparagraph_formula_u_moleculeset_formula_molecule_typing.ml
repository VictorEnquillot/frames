open Make_test_v;;

testing "Camlparagraph_formula_v with
   Camlparagraph_formula_u_moleculeset_formula_molecule_typing.ml";;

(* toplevel 
   #use "Camlparagraph_formula_u_moleculeset_formula_molecule_typing.ml";;

*)

let nam_dos = "moleculeset";;
let nam_enp = "molecule";;
let nam_cat = "formula";;
let nam_ite = "typing";;

let sel_cat =
  match nam_cat with
  | "symbol" -> Category_symbol_v.is_symbol_off_category_symbol
  | "formula" -> Category_symbol_v.is_formula_off_category_symbol
  | _ -> failwith ("nam_cat >"^nam_cat^"< is not defined")
;;
let sel_enp = (fun e -> Entity_symbol_v.string_off e = nam_enp);;

let sym_dos = Domainset_symbol_v.make nam_dos;;
let idx_dos = Domainset_symbol_v.list_index_of_domainset_symbol sym_dos;;
let soi_dos = Sole_index_v.make idx_dos [];;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_register_v.store_force soi_dos gss_dos;;

let tag_dos = Tag_v.make sym_dos soi_dos;;
let for_dos = Domainset_formula_v.retrieve tag_dos;;

let tag_cat = Doublet_list_v.find_if_left sel_cat for_dos;;
let for_cat = Category_formula_v.retrieve tag_cat;;

let tag_enp = Doublet_list_v.find_if_left sel_enp for_cat;;
let for_enp = Entity_formula_v.retrieve tag_enp;;

test_number 1 (
tag_dos
(* : Domainset_symbol_t.domainset_symbol Tag_t.tag *)
= 
(Domainset_symbol_t.Moleculeset, [3])
);;

test_number 2 (
for_dos
(* : Category_symbol_t.category_symbol Tag_t.tag list *)
 =
[(Category_symbol_t.Formula, [1; 3]); 
 (Category_symbol_t.Mark, [2; 3]);
 (Category_symbol_t.Symbol, [3; 3]);
 (Category_symbol_t.Tag, [4; 3]);
 (Category_symbol_t.Value, [5; 3])]
);;

test_number 3 (
tag_cat
(* : Category_symbol_v.Category_symbol_t.category_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Category_symbol_t.Formula, [1; 3])
);;

test_number 4 (
for_cat 
(* : Entity_symbol_t.Entity_proper_symbol Tag_t.tag list *)
=
  [(Entity_symbol_t.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"),
    [1; 1; 3]);
   (Entity_symbol_t.Entity_proper "grouping", [2; 1; 3]);
   (Entity_symbol_t.Entity_proper "grouping_fromid", [3; 1; 3]);
   (Entity_symbol_t.Entity_proper "molecule", [4; 1; 3]);
   (Entity_symbol_t.Entity_proper "molecule_forked", [5; 1; 3]);
   (Entity_symbol_t.Entity_proper "molecule_forked_fromid", [6; 1; 3]);
   (Entity_symbol_t.Entity_proper "molecule_linear", [7; 1; 3]);
   (Entity_symbol_t.Entity_proper "molecule_linear_diatomic",
    [8; 1; 3]);
   (Entity_symbol_t.Entity_proper "molecule_linear_overdiatomic",
    [9; 1; 3]);
   (Entity_symbol_t.Entity_proper "molecule_polymer", [10; 1; 3]);
   (Entity_symbol_t.Entity_proper "polypeptide_fromid", [11; 1; 3]);
   (Entity_symbol_t.Entity_proper "molecule_polymer_fromid",
    [12; 1; 3])]
);;

test_number 5 (
tag_enp
(* : Entity_symbol_t.Entity_proper_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Entity_symbol_t.Entity_proper "molecule", [4; 1; 3])
);;

(* Type_alone *)

let sel_cof = Contentfile_symbol_v.is_type_alone;;
let tag_cof = Doublet_list_v.find_if_left sel_cof for_enp;;
let for_cof = Contentfile_formula_v.retrieve tag_cof;;

let sel_usf = Usagefile_symbol_v.is_implementation_off_usagefile_symbol;; 
let tag_usf = Doublet_list_v.find_if_left sel_usf for_cof;;
let for_usf = Usagefile_formula_v.retrieve tag_usf;;

test_number 6 (
tag_cof
=
(Contentfile_symbol_t.Type_alone, [1; 4; 1; 3])
);;

test_number 7 (
tag_usf
  =
(Usagefile_symbol_t.Implementation, [1; 1; 4; 1; 3])
);;

test_number 8 (
 for_usf 
(* : Item_symbol_t.item_symbol Tag_t.tag list *)
=
  [(Item_symbol_t.Item_all_topsons_symbol Item_only_top_symbol_t.Heading,
    [1; 1; 1; 4; 1; 3]);
   (Item_symbol_t.Item_severalparagraph_symbol
     Item_only_top_symbol_t.Documenting,
    [2; 1; 1; 4; 1; 3]);
   (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Typing,
    [3; 1; 1; 4; 1; 3]);
   (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Ending,
    [4; 1; 1; 4; 1; 3])]
);;

(* Typing *)

let sel_ite = Item_symbol_v.is_typing;;
let tag_ite = Doublet_list_v.find_if_left sel_ite for_usf;; 
let for_ite = Item_formula_v.retrieve tag_ite;;

let cou_for_ite = List.length for_ite;;

let tag_cap_0 = List.nth for_ite 0;;
let for_cap_0 = Camlparagraph_formula_v.retrieve tag_cap_0;;
let tag_cap_1 = List.nth for_ite 1;;
let for_cap_1 = Camlparagraph_formula_v.retrieve tag_cap_1;;

test_number 9 (
tag_ite
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Typing,
 [3; 1; 1; 4; 1; 3])
);;

test_number 10 (
tag_cap_0 
=
(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
  (Camlparagraph_comment_symbol_t.Item_title "typing"),
 [1; 3; 1; 1; 4; 1; 3])
);;

test_number 11 (
tag_cap_1 
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  Camlparagraph_endmarked_symbol_t.Type_definition_for_formula,
 [2; 3; 1; 1; 4; 1; 3])
);;

test_number 12 (
for_ite 
(* : Camlparagraph_symbol_t.camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_symbol Tag_t.tag list *)
=
[tag_cap_0; tag_cap_1] 
);;

test_number 13 (
for_cap_0
= 
[(Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     (Camlline_constant_pervasive_symbol_t.Item_title "typing")),
  [1; 1; 3; 1; 1; 4; 1; 3]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Empty_line),
  [2; 1; 3; 1; 1; 4; 1; 3])]
);;

test_number 14 (
for_cap_1 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
[(Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Type_eft_equal),
  [1; 2; 3; 1; 1; 4; 1; 3]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Pipe_Efs_bof_Efs_tdot_efs),
  [2; 2; 3; 1; 1; 4; 1; 3]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Pipe_Efs_bof_Efs_tdot_efs),
  [3; 2; 3; 1; 1; 4; 1; 3]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Pipe_Efs_bof_Efs_tdot_efs),
  [4; 2; 3; 1; 1; 4; 1; 3]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Double_semicolon),
  [5; 2; 3; 1; 1; 4; 1; 3])]
);; 

