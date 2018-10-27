open Make_test_v;;

testing "Camlline_formula_v with
   Camlline_formula_u_moleculeset_formula_molecule_linear_diatomic_making.ml";;

(* toplevel 
   #use "Camlline_formula_u_moleculeset_formula_molecule_linear_diatomic_making.ml";;

*)

let nam_dos = "moleculeset";;
let nam_cat = "formula";;
let nam_enp = "molecule_linear_diatomic";;
let nam_ite = "making";;

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
(Domainset_symbol_t.Moleculeset, [7])
);;

test_number 2 (
tag_cat
(* : Category_symbol_v.Category_symbol_t.category_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Category_symbol_t.Formula, [2; 7])
);;

test_number 3 (
tag_enp
(* : Entity_symbol_t.Entity_proper_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Entity_symbol_t.Entity_proper "molecule_linear_diatomic", [8; 2; 7])
);;

(* Value_alone *)

let sel_cof_val = Contentfile_symbol_v.is_value_alone;;
let tag_cof_val = Doublet_list_v.find_if_left sel_cof_val for_enp;;
let for_cof_val = Contentfile_formula_v.retrieve tag_cof_val;;

let sel_usf_val = Usagefile_symbol_v.is_implementation_off_usagefile_symbol;; 
let tag_usf_val = Doublet_list_v.find_if_left sel_usf_val for_cof_val;;
let for_usf_val = Usagefile_formula_v.retrieve tag_usf_val;;

test_number 4 (
tag_cof_val
=
(Contentfile_symbol_t.Value_alone, [2; 8; 2; 7])
);;

test_number 5 (
tag_usf_val
  =
(Usagefile_symbol_t.Implementation, [1; 2; 8; 2; 7])
);;

test_number 6 (
 for_usf_val 
(* : Item_symbol_t.item_symbol Tag_t.tag list *)
=
[(Item_symbol_t.Item_all_topsons_symbol Item_only_top_symbol_t.Heading,
  [1; 1; 2; 8; 2; 7]);
 (Item_symbol_t.Item_all_topsons_symbol
   Item_all_topsons_symbol_t.Retrieving,
  [2; 1; 2; 8; 2; 7]);
 (Item_symbol_t.Item_severalparagraph_symbol
   Item_severalparagraph_symbol_t.Constrained_making,
  [3; 1; 2; 8; 2; 7]);
 (Item_symbol_t.Item_severalparagraph_symbol
   Item_severalparagraph_symbol_t.Upgrading,
  [4; 1; 2; 8; 2; 7]);
 (Item_symbol_t.Item_severalparagraph_symbol
   Item_only_top_symbol_t.Documenting,
  [5; 1; 2; 8; 2; 7]);
 (Item_symbol_t.Item_severalparagraph_symbol
   Item_severalparagraph_symbol_t.Abbreviating,
  [6; 1; 2; 8; 2; 7]);
 (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Making,
  [7; 1; 2; 8; 2; 7]);
 (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Ending,
  [8; 1; 2; 8; 2; 7])]
);;

(* Making *)

let sel_ite_mak = Item_symbol_v.is_making;;
let tag_ite_mak = Doublet_list_v.find_if_left sel_ite_mak for_usf_val;; 
let for_ite_mak = Item_formula_v.retrieve tag_ite_mak;;

let sel_ite_mak = Item_symbol_v.is_making;;
let tag_ite_mak = Doublet_list_v.find_if_left sel_ite_mak for_usf_val;; 
let for_ite_mak = Item_formula_v.retrieve tag_ite_mak;;

let cou_for_ite_mak = List.length for_ite_mak;;
let tag_cap_mak_0 = List.nth for_ite_mak 0;;
let for_cap_mak_0 = Camlparagraph_formula_v.retrieve tag_cap_mak_0;;
let tag_cap_mak_1 = List.nth for_ite_mak 1;;
let for_cap_mak_1 = Camlparagraph_formula_v.retrieve tag_cap_mak_1;;

test_number 7 (
tag_ite_mak
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Making,
 [6; 1; 2; 8; 2; 7])
);;

test_number 8 (
for_ite_mak 
(* : Camlparagraph_symbol_t.camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_symbol Tag_t.tag list *)
=
[(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
   (Camlparagraph_comment_symbol_t.Item_title "making"),
  [1; 6; 1; 2; 8; 2; 7]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_function_symbol
       Camlparagraph_endmarked_let_argument_function_symbol_t.Let_make_argument_equal_function_for_symbol)),
  [2; 6; 1; 2; 8; 2; 7])]
);;

test_number 9 (
tag_cap_mak_0 
=
(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
  (Camlparagraph_comment_symbol_t.Item_title "making"),
 [1; 6; 1; 2; 8; 2; 7])
);;

test_number 10 (
tag_cap_mak_1 
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
    (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_function_symbol
      Camlparagraph_endmarked_let_argument_function_symbol_t.Let_make_argument_equal_function_for_symbol)),
 [2; 6; 1; 2; 8; 2; 7])
);;

test_number 11 (
for_cap_mak_0
= 
[(Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     (Camlline_constant_pervasive_symbol_t.Item_title "making")),
  [1; 1; 6; 1; 2; 8; 2; 7]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Empty_line),
  [2; 1; 6; 1; 2; 8; 2; 7])]
);;

test_number 12 (
List_v.sublist_of_int_of_int_of_list 0 5 for_cap_mak_1
= 
[(Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_function_symbol
     Camlline_constant_function_symbol_t.Let_make_argument_equal_function),
  [1; 2; 6; 1; 2; 8; 2; 7]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_function_symbol
     Camlline_uno_function_symbol_t.Pipe_ecstring_arrow_ec),
  [2; 2; 6; 1; 2; 8; 2; 7]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_function_symbol
     Camlline_uno_function_symbol_t.Pipe_ecstring_arrow_ec),
  [3; 2; 6; 1; 2; 8; 2; 7]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_function_symbol
     Camlline_uno_function_symbol_t.Pipe_ecstring_arrow_ec),
  [4; 2; 6; 1; 2; 8; 2; 7]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_function_symbol
     Camlline_uno_function_symbol_t.Pipe_ecstring_arrow_ec),
  [5; 2; 6; 1; 2; 8; 2; 7]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_function_symbol
     Camlline_uno_function_symbol_t.Pipe_ecstring_arrow_ec),
  [6; 2; 6; 1; 2; 8; 2; 7])]
);;

