open Make_test_v;;

testing "Camlparagraph_formula_v with
   Camlparagraph_formula_u_moleculeset_symbol_molecule_linear_diatomic.ml";;

(* toplevel 
   #use "Camlparagraph_formula_u_moleculeset_symbol_molecule_linear_diatomic.ml";;

*)

let nam_dos = "moleculeset";;
let nam_enp = "molecule_linear_diatomic";;
let nam_cat = "symbol";;

let sel_cat = (fun c -> Category_symbol_v.name c = nam_cat);;
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

(* Type_alone *)

let sel_cof_typ = Contentfile_symbol_v.is_type_alone;;
let tag_cof_typ = Doublet_list_v.find_if_left sel_cof_typ for_enp;;
let for_cof_typ = Contentfile_formula_v.retrieve tag_cof_typ;;

let sel_usf_typ = Usagefile_symbol_v.is_implementation_off_usagefile_symbol;; 
let tag_usf_typ = Doublet_list_v.find_if_left sel_usf_typ for_cof_typ;;
let for_usf_typ = Usagefile_formula_v.retrieve tag_usf_typ;;

test_number 1 (
tag_dos
(* : Domainset_symbol_t.domainset_symbol Tag_t.tag *)
= 
(Domainset_symbol_t.Moleculeset, [7])
);;

test_number 2 (
for_dos
(* : Category_symbol_t.category_symbol Tag_t.tag list *)
 =
[(Category_symbol_t.Any, [1; 7]);
 (Category_symbol_t.Formula, [2; 7]);
 (Category_symbol_t.Mark, [3; 7]);
 (Category_symbol_t.Path, [4; 7]);
 (Category_symbol_t.Property, [5; 7]);
 (Category_symbol_t.Provider, [6; 7]);
 (Category_symbol_t.Symbol, [7; 7]);
 (Category_symbol_t.Tag, [8; 7]);
 (Category_symbol_t.Value, [9; 7]);
 (Category_symbol_t.Empty, [10; 7])]
);;

test_number 3 (
tag_cat
(* : Category_symbol_v.Category_symbol_t.category_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Category_symbol_t.Symbol, [7; 7])
);;

test_number 4 (
for_cat 
(* : Entity_symbol_t.Entity_proper_symbol Tag_t.tag list *)
=
[
 (Entity_symbol_t.Entity_proper_top_symbol (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"), [1; 7; 7]);
 (Entity_symbol_t.Entity_proper "fragment", [2; 7; 7]);
 (Entity_symbol_t.Entity_proper "grouping", [3; 7; 7]);
 (Entity_symbol_t.Entity_proper "molecule", [4; 7; 7]);
 (Entity_symbol_t.Entity_proper "molecule_forked", [5; 7; 7]);
 (Entity_symbol_t.Entity_proper "molecule_linear", [6; 7; 7]);
 (Entity_symbol_t.Entity_proper "molecule_linear_diatomic", [7; 7; 7]);
 (Entity_symbol_t.Entity_proper "molecule_linear_overdiatomic", [8; 7; 7]);
 (Entity_symbol_t.Entity_proper "molecule_polymer", [9; 7; 7])
]
);;

test_number 5 (
tag_enp
(* : Entity_symbol_t.Entity_proper_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Entity_symbol_t.Entity_proper "molecule_linear_diatomic", [7; 7; 7])
);;

test_number 6 (
tag_cof_typ
=
(Contentfile_symbol_t.Type_alone, [1; 7; 7; 7])
);;

test_number 7 (
tag_usf_typ
  =
(Usagefile_symbol_t.Implementation, [1; 1; 7; 7; 7])
);;

test_number 8 (
 for_usf_typ 
(* : Item_symbol_t.item_symbol Tag_t.tag list *)
=
  [(Item_symbol_t.Item_all_topsons_symbol Item_only_top_symbol_t.Heading,
    [1; 1; 1; 7; 7; 7]);
   (Item_symbol_t.Item_severalparagraph_symbol
     Item_only_top_symbol_t.Documenting,
    [2; 1; 1; 7; 7; 7]);
   (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Typing,
    [3; 1; 1; 7; 7; 7]);
   (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Ending,
    [4; 1; 1; 7; 7; 7])]
);;

(* Typing *)

let sel_ite_typ = Item_symbol_v.is_typing;;
let tag_ite_typ = Doublet_list_v.find_if_left sel_ite_typ for_usf_typ;; 
let for_ite_typ = Item_formula_v.retrieve tag_ite_typ;;
let cou_for_ite_typ = List.length for_ite_typ;;
let tag_cap_typ_0 = List.nth for_ite_typ 0;;
let for_cap_typ_0 = Camlparagraph_formula_v.retrieve tag_cap_typ_0;;
let tag_cap_typ_1 = List.nth for_ite_typ 1;;
let for_cap_typ_1 = Camlparagraph_formula_v.retrieve tag_cap_typ_1;;

test_number 9 (
tag_ite_typ
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Typing,
 [3; 1; 1; 7; 7; 7])
);;

test_number 10 (
tag_cap_typ_0 
=
(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
  (Camlparagraph_comment_symbol_t.Item_title "typing"),
 [1; 3; 1; 1; 7; 7; 7])
);;

test_number 11 (
tag_cap_typ_1 
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  Camlparagraph_endmarked_symbol_t.Type_definition_for_symbol,
 [2; 3; 1; 1; 7; 7; 7])
);;

test_number 12 (
for_ite_typ 
(* : Camlparagraph_symbol_t.camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_symbol Tag_t.tag list *)
=
[tag_cap_typ_0; tag_cap_typ_1] 
);;

test_number 13 (
for_cap_typ_0
= 
[(Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     (Camlline_constant_pervasive_symbol_t.Item_title "typing")),
  [1; 1; 3; 1; 1; 7; 7; 7]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Empty_line),
  [2; 1; 3; 1; 1; 7; 7; 7])]
);;

test_number 14 (
for_cap_typ_1 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
[(Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Type_est_equal),
  [1; 2; 3; 1; 1; 7; 7; 7]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Pipe_Esl),
  [2; 2; 3; 1; 1; 7; 7; 7]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Pipe_Esl),
  [3; 2; 3; 1; 1; 7; 7; 7]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Pipe_Esl),
  [4; 2; 3; 1; 1; 7; 7; 7]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Pipe_Esl),
  [5; 2; 3; 1; 1; 7; 7; 7]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Pipe_Esl),
  [6; 2; 3; 1; 1; 7; 7; 7]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Pipe_Esl),
  [7; 2; 3; 1; 1; 7; 7; 7]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Double_semicolon),
  [8; 2; 3; 1; 1; 7; 7; 7])]
);; 


(* Value_alone -----------------------------------------------------

let sel_cof_val = Contentfile_symbol_v.is_value_alone;;
let tag_cof_val = Doublet_list_v.find_if_left sel_cof_val for_enp;;
let for_cof_val = Contentfile_formula_v.retrieve tag_cof_val;;

let sel_usf_val = Usagefile_symbol_v.is_implementation_off_usagefile_symbol;; 
let tag_usf_val = Doublet_list_v.find_if_left sel_usf_val for_cof_val;;
let for_usf_val = Usagefile_formula_v.retrieve tag_usf_val;;

test_number 15 (
tag_cof_val
=
(Contentfile_symbol_t.Value_alone, [2; 7; 7; 7])
);;

test_number 16 (
tag_usf_val
  =
(Usagefile_symbol_t.Implementation, [1; 2; 7; 7; 7])
);;

test_number 17 (
 for_usf_val 
(* : Item_symbol_t.item_symbol Tag_t.tag list *)
=
[(Item_symbol_t.Item_all_topsons_symbol Item_only_top_symbol_t.Heading,
  [1; 1; 2; 7; 7; 7]);
 (Item_symbol_t.Item_severalparagraph_symbol
   Item_only_top_symbol_t.Documenting,
  [2; 1; 2; 7; 7; 7]);
 (Item_symbol_t.Item_severalparagraph_symbol
   Item_all_topsons_symbol_t.Making,
  [3; 1; 2; 7; 7; 7]);
 (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Naming,
  [4; 1; 2; 7; 7; 7]);
 (Item_symbol_t.Item_severalparagraph_symbol
   Item_severalparagraph_symbol_t.Extracting,
  [5; 1; 2; 7; 7; 7]);
 (Item_symbol_t.Item_severalparagraph_symbol
   Item_severalparagraph_symbol_t.Querying,
  [6; 1; 2; 7; 7; 7]);
 (Item_symbol_t.Item_severalparagraph_symbol
   Item_severalparagraph_symbol_t.Upgrading,
  [7; 1; 2; 7; 7; 7]);
 (Item_symbol_t.Item_severalparagraph_symbol
   Item_severalparagraph_symbol_t.Abbreviating,
  [7; 1; 2; 7; 7; 7]);
 (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Ending,
  [9; 1; 2; 7; 7; 7])]
);;

(* Abbreviating *)

let sel_ite_abb = Item_symbol_v.is_abbreviating;;
let tag_ite_abb = Doublet_list_v.find_if_left sel_ite_abb for_usf_val;; 
let for_ite_abb = Item_formula_v.retrieve tag_ite_abb;;

let sel_ite_abb = Item_symbol_v.is_abbreviating;;
let tag_ite_abb = Doublet_list_v.find_if_left sel_ite_abb for_usf_val;; 
let for_ite_abb = Item_formula_v.retrieve tag_ite_abb;;
let cou_for_ite_abb = List.length for_ite_abb;;
let tag_cap_abb_0 = List.nth for_ite_abb 0;;
let for_cap_abb_0 = Camlparagraph_formula_v.retrieve tag_cap_abb_0;;
let tag_cap_abb_1 = List.nth for_ite_abb 1;;
let for_cap_abb_1 = Camlparagraph_formula_v.retrieve tag_cap_abb_1;;
let tag_cap_abb_45 = List.nth for_ite_abb 45;;
let for_cap_abb_45 = Camlparagraph_formula_v.retrieve tag_cap_abb_45;;

test_number 18 (
tag_ite_abb
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Item_symbol_t.Item_severalparagraph_symbol Item_severalparagraph_symbol_t.Abbreviating,
 [7; 1; 2; 7; 7; 7])
);;

test_number 19 (
tag_cap_abb_0 
=
(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
  (Camlparagraph_comment_symbol_t.Item_title "abbreviating"),
 [1; 7; 1; 2; 7; 7; 7])
);;

test_number 20 (
tag_cap_abb_1 
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
    Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather),
 [2; 7; 1; 2; 7; 7; 7])
);;

test_number 21 (
tag_cap_abb_45
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
    Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather),
 [46; 7; 1; 2; 7; 7; 7])
);;

test_number 22 (
for_cap_abb_0
= 
[(Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     (Camlline_constant_pervasive_symbol_t.Item_title "abbreviating")),
  [1; 1; 7; 1; 2; 7; 7; 7]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Empty_line),
  [2; 1; 7; 1; 2; 7; 7; 7])]
);;

test_number 23 (
for_cap_abb_1
= 
[(Camlline_symbol_t.Camlline_trio_symbol
   Camlline_trio_symbol_t.Let_esl_equal_est_of_ess_space_Ess_vdot_esl,
  [1; 2; 7; 1; 2; 7; 7; 7])]
);;

test_number 24 (
for_cap_abb_45
= 
[(Camlline_symbol_t.Camlline_trio_symbol
   Camlline_trio_symbol_t.Let_esl_equal_est_of_ess_space_Ess_vdot_esl,
  [1; 46; 7; 1; 2; 7; 7; 7])]
);;

(* Naming *)

let sel_ite_nam = Item_symbol_v.is_naming;;
let tag_ite_nam = Doublet_list_v.find_if_left sel_ite_nam for_usf_val;; 
let for_ite_nam = Item_formula_v.retrieve tag_ite_nam;;

let sel_ite_nam = Item_symbol_v.is_naming;;
let tag_ite_nam = Doublet_list_v.find_if_left sel_ite_nam for_usf_val;; 
let for_ite_nam = Item_formula_v.retrieve tag_ite_nam;;

let cou_for_ite_nam = List.length for_ite_nam;;
let tag_cap_nam_0 = List.nth for_ite_nam 0;;
let for_cap_nam_0 = Camlparagraph_formula_v.retrieve tag_cap_nam_0;;
let tag_cap_nam_1 = List.nth for_ite_nam 1;;
let for_cap_nam_1 = Camlparagraph_formula_v.retrieve tag_cap_nam_1;;

test_number 25 (
tag_ite_nam
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Naming,
 [4; 1; 2; 7; 7; 7])
);;

test_number 26 (
for_ite_nam 
(* : Camlparagraph_symbol_t.camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_symbol Tag_t.tag list *)
=
[(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
   (Camlparagraph_comment_symbol_t.Item_title "naming"),
  [1; 4; 1; 2; 7; 7; 7]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_function_symbol
       Camlparagraph_endmarked_let_function_symbol_t.Let_name_equal_function_for_symbol)),
  [2; 4; 1; 2; 7; 7; 7])]
);;

test_number 27 (
tag_cap_nam_0 
=
(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
  (Camlparagraph_comment_symbol_t.Item_title "naming"),
 [1; 4; 1; 2; 7; 7; 7])
);;

test_number 28 (
tag_cap_nam_1 
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
    (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_function_symbol
      Camlparagraph_endmarked_let_function_symbol_t.Let_name_equal_function_for_symbol)),
 [2; 4; 1; 2; 7; 7; 7])
);;

test_number 29 (
for_cap_nam_0
= 
[(Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     (Camlline_constant_pervasive_symbol_t.Item_title "naming")),
  [1; 1; 4; 1; 2; 7; 7; 7]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Empty_line),
  [2; 1; 4; 1; 2; 7; 7; 7])]
);;

test_number 30 (
for_cap_nam_1
= 
[(Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_function_symbol
     Camlline_constant_function_symbol_t.Let_name_equal_function),
  [1; 2; 4; 1; 2; 7; 7; 7]);
 (Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Pipe_Est_tdot_Ess_space_ass_arrow),
  [2; 2; 4; 1; 2; 7; 7; 7]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_function_symbol
     Camlline_uno_function_symbol_t.Eas_vdot_name_aas),
  [3; 2; 4; 1; 2; 7; 7; 7]);
 (Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Pipe_Est_tdot_Ess_space_ass_arrow),
  [4; 2; 4; 1; 2; 7; 7; 7]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_function_symbol
     Camlline_uno_function_symbol_t.Eas_vdot_name_aas),
  [5; 2; 4; 1; 2; 7; 7; 7]);
 (Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Pipe_Est_tdot_Ess_space_ass_arrow),
  [6; 2; 4; 1; 2; 7; 7; 7]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_function_symbol
     Camlline_uno_function_symbol_t.Eas_vdot_name_aas),
  [7; 2; 4; 1; 2; 7; 7; 7]);
 (Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Pipe_Est_tdot_Ess_space_ass_arrow),
  [7; 2; 4; 1; 2; 7; 7; 7]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_function_symbol
     Camlline_uno_function_symbol_t.Eas_vdot_name_aas),
  [9; 2; 4; 1; 2; 7; 7; 7]);
 (Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Pipe_Est_tdot_Ess_space_ass_arrow),
  [10; 2; 4; 1; 2; 7; 7; 7]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_function_symbol
     Camlline_uno_function_symbol_t.Eas_vdot_name_aas),
  [11; 2; 4; 1; 2; 7; 7; 7]);
 (Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Pipe_Est_tdot_Esl_arrow_string),
  [12; 2; 4; 1; 2; 7; 7; 7]);
 (Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Pipe_Est_tdot_Esl_arrow_string),
  [13; 2; 4; 1; 2; 7; 7; 7]);
 (Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Pipe_Est_tdot_Esl_arrow_string),
  [14; 2; 4; 1; 2; 7; 7; 7]);
 (Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Pipe_Est_tdot_Ess_space_ass_arrow),
  [15; 2; 4; 1; 2; 7; 7; 7]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_function_symbol
     Camlline_uno_function_symbol_t.Eas_vdot_name_aas),
  [16; 2; 4; 1; 2; 7; 7; 7]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Double_semicolon),
  [17; 2; 4; 1; 2; 7; 7; 7])]
);;

(* Extracting *)

let sel_ite_ext = Item_symbol_v.is_extracting;;
let tag_ite_ext = Doublet_list_v.find_if_left sel_ite_ext for_usf_val;; 
let for_ite_ext = Item_formula_v.retrieve tag_ite_ext;;

let sel_ite_ext = Item_symbol_v.is_extracting;;
let tag_ite_ext = Doublet_list_v.find_if_left sel_ite_ext for_usf_val;; 
let for_ite_ext = Item_formula_v.retrieve tag_ite_ext;;

let cou_for_ite_ext = List.length for_ite_ext;;
let tag_cap_ext_0 = List.nth for_ite_ext 0;;
let for_cap_ext_0 = Camlparagraph_formula_v.retrieve tag_cap_ext_0;;
let tag_cap_ext_1 = List.nth for_ite_ext 1;;
let for_cap_ext_1 = Camlparagraph_formula_v.retrieve tag_cap_ext_1;;
let tag_cap_ext_19 = List.nth for_ite_ext 19;;
let for_cap_ext_19 = Camlparagraph_formula_v.retrieve tag_cap_ext_19;;

test_number 31 (
tag_ite_ext
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Item_symbol_t.Item_severalparagraph_symbol Item_severalparagraph_symbol_t.Extracting,
 [5; 1; 2; 7; 7; 7])
);;

(* Extracting *)

let sel_ite_ext = Item_symbol_v.is_extracting;;
let tag_ite_ext = Doublet_list_v.find_if_left sel_ite_ext for_usf_val;; 
let for_ite_ext = Item_formula_v.retrieve tag_ite_ext;;

let sel_ite_ext = Item_symbol_v.is_extracting;;
let tag_ite_ext = Doublet_list_v.find_if_left sel_ite_ext for_usf_val;; 
let for_ite_ext = Item_formula_v.retrieve tag_ite_ext;;

test_number 32 (
tag_ite_ext
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Item_symbol_t.Item_severalparagraph_symbol Item_severalparagraph_symbol_t.Extracting,
 [5; 1; 2; 7; 7; 7])
);;

test_number 33 (
tag_cap_ext_0 
=
(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
  (Camlparagraph_comment_symbol_t.Item_title "extracting"),
 [1; 5; 1; 2; 7; 7; 7])
);;

test_number 34 (
tag_cap_ext_1 
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
    (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_function_symbol
      Camlparagraph_endmarked_let_function_symbol_t.Let_ess_off_est_function)),
 [2; 5; 1; 2; 7; 7; 7])
);;

test_number 35 (
tag_cap_ext_19
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
    (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_function_symbol
      Camlparagraph_endmarked_let_function_symbol_t.Let_ess_off_est_function)),
 [20; 5; 1; 2; 7; 7; 7])
);;

test_number 36 (
for_cap_ext_0
= 
[(Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     (Camlline_constant_pervasive_symbol_t.Item_title "extracting")),
  [1; 1; 5; 1; 2; 7; 7; 7]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Empty_line),
  [2; 1; 5; 1; 2; 7; 7; 7])]
);;

test_number 37 (
for_cap_ext_1
= 
[(Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Let_ess_off_est_equal_function),
  [1; 2; 5; 1; 2; 7; 7; 7]);
 (Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Pipe_Est_tdot_Ess_space_ass_arrow_ass),
  [2; 2; 5; 1; 2; 7; 7; 7]);
 (Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Pipe_print_fatal_error_ess_off_est_4_lines),
  [3; 2; 5; 1; 2; 7; 7; 7]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Double_semicolon),
  [4; 2; 5; 1; 2; 7; 7; 7])]
);;

test_number 38 (
for_cap_ext_19
= 
[(Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Let_ess_off_est_equal_function),
  [1; 20; 5; 1; 2; 7; 7; 7]);
 (Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Pipe_Est_tdot_Ess_space_ass_arrow_ass),
  [2; 20; 5; 1; 2; 7; 7; 7]);
 (Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Pipe_print_fatal_error_ess_off_est_4_lines),
  [3; 20; 5; 1; 2; 7; 7; 7]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Double_semicolon),
  [4; 20; 5; 1; 2; 7; 7; 7])]
);;

(* Upgrading *)

let sel_ite_upg = Item_symbol_v.is_upgrading;;
let tag_ite_upg = Doublet_list_v.find_if_left sel_ite_upg for_usf_val;; 
let for_ite_upg = Item_formula_v.retrieve tag_ite_upg;;

let sel_ite_upg = Item_symbol_v.is_upgrading;;
let tag_ite_upg = Doublet_list_v.find_if_left sel_ite_upg for_usf_val;; 
let for_ite_upg = Item_formula_v.retrieve tag_ite_upg;;

let cou_for_ite_upg = List.length for_ite_upg;;
let tag_cap_upg_0 = List.nth for_ite_upg 0;;
let for_cap_upg_0 = Camlparagraph_formula_v.retrieve tag_cap_upg_0;;
let tag_cap_upg_1 = List.nth for_ite_upg 1;;
let for_cap_upg_1 = Camlparagraph_formula_v.retrieve tag_cap_upg_1;;
let tag_cap_upg_19 = List.nth for_ite_upg 19;;
let for_cap_upg_19 = Camlparagraph_formula_v.retrieve tag_cap_upg_19;;

test_number 39 (
tag_ite_upg
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Item_symbol_t.Item_severalparagraph_symbol Item_severalparagraph_symbol_t.Upgrading,
 [7; 1; 2; 7; 7; 7])
);;

test_number 40 (
tag_cap_upg_0 
=
(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
  (Camlparagraph_comment_symbol_t.Item_title "upgrading"),
 [1; 7; 1; 2; 7; 7; 7])
);;

test_number 41 (
tag_cap_upg_1 
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
    (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
      Camlparagraph_endmarked_let_argument_symbol_t.Let_est_of_ess_argument)),
 [2; 7; 1; 2; 7; 7; 7])
);;

test_number 42 (
tag_cap_upg_19
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
    (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
      Camlparagraph_endmarked_let_argument_symbol_t.Let_est_of_ess_argument)),
 [20; 7; 1; 2; 7; 7; 7])
);;

test_number 43 (
for_cap_upg_0
= 
[(Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     (Camlline_constant_pervasive_symbol_t.Item_title "upgrading")),
  [1; 1; 7; 1; 2; 7; 7; 7]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Empty_line),
  [2; 1; 7; 1; 2; 7; 7; 7])]
);;

test_number 44 (
for_cap_upg_1
= 
[(Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Let_et_any_of_es_any_space_ac_as_equal),
  [1; 2; 7; 1; 2; 7; 7; 7]);
 (Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Space_Est_tdot_Ess_space_ass),
  [2; 2; 7; 1; 2; 7; 7; 7]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Double_semicolon),
  [3; 2; 7; 1; 2; 7; 7; 7])]
);;

test_number 45 (
for_cap_upg_19
= 
[(Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Let_et_any_of_es_any_space_ac_as_equal),
  [1; 20; 7; 1; 2; 7; 7; 7]);
 (Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Space_Est_tdot_Ess_space_ass),
  [2; 20; 7; 1; 2; 7; 7; 7]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Double_semicolon),
  [3; 20; 7; 1; 2; 7; 7; 7])]
);;

--------------------------------- *)
