open Make_test_v;;

testing "Camlline_formula_v with
   Camlline_formula_u_moleculeset_formula_molecule_linear_diatomic_typing.ml";;

(* toplevel 
   #use "Camlline_formula_u_moleculeset_formula_molecule_linear_diatomic_typing.ml";;

*)

let nam_dos = "moleculeset";;
let nam_cat = "formula";;
let nam_enp = "molecule_linear_diatomic";;
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

(* Type_alone *)

let sel_cof_typ = Contentfile_symbol_v.is_type_alone;;
let tag_cof_typ = Doublet_list_v.find_if_left sel_cof_typ for_enp;;
let for_cof_typ = Contentfile_formula_v.retrieve tag_cof_typ;;

let sel_usf_typ = Usagefile_symbol_v.is_implementation_off_usagefile_symbol;; 
let tag_usf_typ = Doublet_list_v.find_if_left sel_usf_typ for_cof_typ;;
let for_usf_typ = Usagefile_formula_v.retrieve tag_usf_typ;;

test_number 4 (
tag_cof_typ
=
(Contentfile_symbol_t.Type_alone, [1; 8; 2; 7])
);;

test_number 5 (
tag_usf_typ
  =
(Usagefile_symbol_t.Implementation, [1; 1; 8; 2; 7])
);;

test_number 6 (
 for_usf_typ 
(* : Item_symbol_t.item_symbol Tag_t.tag list *)
=
  [(Item_symbol_t.Item_all_topsons_symbol Item_only_top_symbol_t.Heading,
    [1; 1; 1; 8; 2; 7]);
   (Item_symbol_t.Item_severalparagraph_symbol
     Item_only_top_symbol_t.Documenting,
    [2; 1; 1; 8; 2; 7]);
   (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Typing,
    [3; 1; 1; 8; 2; 7]);
   (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Ending,
    [4; 1; 1; 8; 2; 7])]
);;

(* Typing *)

let sel_ite_typ = Item_symbol_v.is_typing;;
let tag_ite_typ = Doublet_list_v.find_if_left sel_ite_typ for_usf_typ;; 
let for_ite_typ = Item_formula_v.retrieve tag_ite_typ;;
let cou_for_ite_typ = List.length for_ite_typ;;

let tag_cap_typ_0 = List.nth for_ite_typ 0;;
let for_cap_typ_0 = Camlparagraph_formula_v.retrieve tag_cap_typ_0;;

let tag_cal_typ_00 = List.nth for_cap_typ_0 0;;
let tag_cal_typ_01 = List.nth for_cap_typ_0 1;;

let for_cal_typ_00 = Camlline_formula_v.retrieve tag_cal_typ_00;;
let for_cal_typ_01 = Camlline_formula_v.retrieve tag_cal_typ_01;;

let tag_cap_typ_1 = List.nth for_ite_typ 1;;
let for_cap_typ_1 = Camlparagraph_formula_v.retrieve tag_cap_typ_1;;

let tag_cal_typ_10 = List.nth for_cap_typ_1 0;;
let tag_cal_typ_11 = List.nth for_cap_typ_1 1;;

let for_cal_typ_10 = Camlline_formula_v.retrieve tag_cal_typ_10;;
let for_cal_typ_11 = Camlline_formula_v.retrieve tag_cal_typ_11;;

test_number 7 (
tag_ite_typ
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Typing,
 [3; 1; 1; 8; 2; 7])
);;

test_number 8 (
for_ite_typ 
(* : Camlparagraph_symbol_t.camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_symbol Tag_t.tag list *)
=
[tag_cap_typ_0; tag_cap_typ_1] 
);;

test_number 9 (
tag_cap_typ_0 
=
(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
  (Camlparagraph_comment_symbol_t.Item_title "typing"),
 [1; 3; 1; 1; 8; 2; 7])
);;

test_number 10 (
for_cap_typ_0
= 
[(Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     (Camlline_constant_pervasive_symbol_t.Item_title "typing")),
  [1; 1; 3; 1; 1; 8; 2; 7]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Empty_line),
  [2; 1; 3; 1; 1; 8; 2; 7])]
);;

test_number 11 (
tag_cal_typ_00
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
(Camlline_symbol_t.Camlline_constant_symbol
  (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
    (Camlline_constant_pervasive_symbol_t.Item_title "typing")),
 [1; 1; 3; 1; 1; 8; 2; 7])
);;

test_number 12 (
for_cal_typ_00
(* :  Tag_t.tag list *)
  =
[(Entity_symbol_t.Entity_fictive_symbol
   (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      Entity_fictive_nullary_symbol_t.Empty),
  [1; 1; 1; 3; 1; 1; 8; 2; 7])]
);;

test_number 13 (
tag_cal_typ_01
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
(Camlline_symbol_t.Camlline_constant_symbol
  (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
    Camlline_constant_pervasive_symbol_t.Empty_line),
 [2; 1; 3; 1; 1; 8; 2; 7])
);;

test_number 14 (
for_cal_typ_01
(* :  Tag_t.tag list *)
  =
[]
);;

test_number 15 (
tag_cal_typ_10
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
(Camlline_symbol_t.Camlline_uno_symbol
  (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
    Camlline_uno_camltype_symbol_t.Type_eft_equal),
 [1; 2; 3; 1; 1; 8; 2; 7])
);;

test_number 16 (
for_cal_typ_10
(* :  Tag_t.tag list *)
  =
[(
   (Entity_symbol_t.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "molecule_linear_diatomic")),
  [1; 1; 2; 3; 1; 1; 8; 2; 7])]
);;

test_number 17 (
tag_cap_typ_1 
=
   (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
     Camlparagraph_endmarked_symbol_t.Type_definition_for_formula,
    [2; 3; 1; 1; 8; 2; 7])
);;

test_number 18 (
for_cap_typ_1 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
[(Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Type_eft_equal),
  [1; 2; 3; 1; 1; 8; 2; 7]);
 (Camlline_symbol_t.Camlline_datastructure_symbol
   (Camlline_datastructure_symbol_t.Camlline_datastructure_camltype_symbol
     Camlline_datastructure_camltype_symbol_t.Pipe_A_b_datastructure_of_a_b_datastructure),
  [2; 2; 3; 1; 1; 8; 2; 7]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Double_semicolon),
  [3; 2; 3; 1; 1; 8; 2; 7])]
);; 

test_number 19 (
tag_cal_typ_11
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
(Camlline_symbol_t.Camlline_datastructure_symbol
  (Camlline_datastructure_symbol_t.Camlline_datastructure_camltype_symbol
    Camlline_datastructure_camltype_symbol_t.Pipe_A_b_datastructure_of_a_b_datastructure),
 [2; 2; 3; 1; 1; 8; 2; 7])
);;

test_number 20 (
for_cal_typ_11
(* :  Tag_t.tag list *)
  =
[(Entity_symbol_t.Entity_external_symbol
   (Entity_external_symbol_t.Entity_external_datastructure_symbol
     (Entity_external_datastructure_symbol_t.Capped_list
       "fragment_head:tag grouping:tag")),
  [1; 2; 2; 3; 1; 1; 8; 2; 7]);
 (
   (Entity_symbol_t.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_sometopsonleaf
       "molecule_linear_diatomic")),
  [2; 2; 2; 3; 1; 1; 8; 2; 7])]
);;

