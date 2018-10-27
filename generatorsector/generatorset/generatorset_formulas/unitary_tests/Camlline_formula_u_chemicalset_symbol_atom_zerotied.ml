open Make_test_v;;

testing "Camlline_formula_v with
   Camlline_formula_u_chemicalset_symbol_atom_zerotied.ml";;

(* toplevel 
   #use "Camlline_formula_u_chemicalset_symbol_atom_zerotied.ml";;
*)

let sel_cat = Category_symbol_v.is_symbol_off_category_symbol;;
let sel_enp = (fun e -> Entity_symbol_v.string_off e = "atom_zerotied")

let sym_dos = Domainset_symbol_v.make "chemicalset";;
let soi_dos = [3];;
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
(Domainset_symbol_t.Chemicalset, [3])
);;

test_number 2 (
tag_cat
(* : Category_symbol_v.Category_symbol_t.category_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Category_symbol_t.Symbol, [1; 3])
);;

test_number 3 (
tag_enp
(* : Entity_symbol_t.Entity_proper_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Entity_symbol_t.Entity_proper "atom_zerotied", [25; 1; 3])
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
(Contentfile_symbol_t.Type_alone, [1; 25; 1; 3])
);;

test_number 5 (
tag_usf_typ
  =
(Usagefile_symbol_t.Implementation, [1; 1; 25; 1; 3])
);;

test_number 6 (
 for_usf_typ 
(* : Item_symbol_t.item_symbol Tag_t.tag list *)
=
  [(Item_symbol_t.Item_all_topsons_symbol Item_only_top_symbol_t.Heading,
    [1; 1; 1; 25; 1; 3]);
   (Item_symbol_t.Item_severalparagraph_symbol
     Item_only_top_symbol_t.Documenting,
    [2; 1; 1; 25; 1; 3]);
   (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Typing,
    [3; 1; 1; 25; 1; 3]);
   (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Ending,
    [4; 1; 1; 25; 1; 3])]
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
 [3; 1; 1; 25; 1; 3])
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
 [1; 3; 1; 1; 25; 1; 3])
);;

test_number 10 (
for_cap_typ_0
= 
[(Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     (Camlline_constant_pervasive_symbol_t.Item_title "typing")),
  [1; 1; 3; 1; 1; 25; 1; 3]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Empty_line),
  [2; 1; 3; 1; 1; 25; 1; 3])]
);;

test_number 11 (
tag_cal_typ_00
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
(Camlline_symbol_t.Camlline_constant_symbol
  (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
    (Camlline_constant_pervasive_symbol_t.Item_title "typing")),
 [1; 1; 3; 1; 1; 25; 1; 3])
);;

test_number 12 (
for_cal_typ_00
(* :  Tag_t.tag list *)
  =
[(Entity_symbol_t.Entity_fictive_symbol
   (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      Entity_fictive_nullary_symbol_t.Empty),
  [1; 1; 1; 3; 1; 1; 25; 1; 3])]
);;

test_number 13 (
tag_cal_typ_01
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
(Camlline_symbol_t.Camlline_constant_symbol
  (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
    Camlline_constant_pervasive_symbol_t.Empty_line),
 [2; 1; 3; 1; 1; 25; 1; 3])
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
    Camlline_uno_camltype_symbol_t.Type_est_equal),
 [1; 2; 3; 1; 1; 25; 1; 3])
);;

test_number 16 (
for_cal_typ_10
(* :  Tag_t.tag list *)
  =
[(
   (Entity_symbol_t.Topentity "atom_zerotied"),
  [1; 1; 2; 3; 1; 1; 25; 1; 3])]
);;

test_number 17 (
tag_cap_typ_1 
=
   (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
     Camlparagraph_endmarked_symbol_t.Type_definition_for_symbol,
    [2; 3; 1; 1; 25; 1; 3])
);;

test_number 18 (
for_cap_typ_1 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
[(Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Type_est_equal),
  [1; 2; 3; 1; 1; 25; 1; 3]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Pipe_Ess_bof_Ess_tdot_ess),
  [2; 2; 3; 1; 1; 25; 1; 3]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Pipe_Ess_bof_Ess_tdot_ess),
  [3; 2; 3; 1; 1; 25; 1; 3]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Pipe_Ess_bof_Ess_tdot_ess),
  [4; 2; 3; 1; 1; 25; 1; 3]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Pipe_Ess_bof_Ess_tdot_ess),
  [5; 2; 3; 1; 1; 25; 1; 3]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Double_semicolon),
  [6; 2; 3; 1; 1; 25; 1; 3])]
);; 

test_number 19 (
tag_cal_typ_11
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
(Camlline_symbol_t.Camlline_uno_symbol
  (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
    Camlline_uno_camltype_symbol_t.Pipe_Ess_bof_Ess_tdot_ess),
 [2; 2; 3; 1; 1; 25; 1; 3])
);;

test_number 20 (
for_cal_typ_11
(* :  Tag_t.tag list *)
  =
[(
   (Entity_symbol_t.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "atom_zerotied_anion")),
  [1; 2; 2; 3; 1; 1; 25; 1; 3])]
);;

(* Value_alone *)

let sel_cof_val = Contentfile_symbol_v.is_value_alone;;
let tag_cof_val = Doublet_list_v.find_if_left sel_cof_val for_enp;;
let for_cof_val = Contentfile_formula_v.retrieve tag_cof_val;;

let sel_usf_val = Usagefile_symbol_v.is_implementation_off_usagefile_symbol;; 
let tag_usf_val = Doublet_list_v.find_if_left sel_usf_val for_cof_val;;
let for_usf_val = Usagefile_formula_v.retrieve tag_usf_val;;

test_number 21 (
tag_cof_val
=
(Contentfile_symbol_t.Value_alone, [2; 25; 1; 3])
);;

test_number 22 (
tag_usf_val
  =
(Usagefile_symbol_t.Implementation, [1; 2; 25; 1; 3])
);;

test_number 23 (
 for_usf_val 
(* : Item_symbol_t.item_symbol Tag_t.tag list *)
=
[(Item_symbol_t.Item_all_topsons_symbol Item_only_top_symbol_t.Heading,
  [1; 1; 2; 25; 1; 3]);
 (Item_symbol_t.Item_severalparagraph_symbol
   Item_only_top_symbol_t.Documenting,
  [2; 1; 2; 25; 1; 3]);
 (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Naming,
  [3; 1; 2; 25; 1; 3]);
 (Item_symbol_t.Item_severalparagraph_symbol
   Item_severalparagraph_symbol_t.Upgrading,
  [4; 1; 2; 25; 1; 3]);
 (Item_symbol_t.Item_severalparagraph_symbol
   Item_severalparagraph_symbol_t.Abbreviating,
  [5; 1; 2; 25; 1; 3]);
 (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Making,
  [6; 1; 2; 25; 1; 3]);
 (Item_symbol_t.Item_severalparagraph_symbol
   Item_severalparagraph_symbol_t.Extracting,
  [7; 1; 2; 25; 1; 3]);
 (Item_symbol_t.Item_severalparagraph_symbol
   Item_severalparagraph_symbol_t.Querying,
  [8; 1; 2; 25; 1; 3]);
 (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Ending,
  [9; 1; 2; 25; 1; 3])]
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
let tag_cap_abb_29 = List.nth for_ite_abb 29;;
let for_cap_abb_29 = Camlparagraph_formula_v.retrieve tag_cap_abb_29;;

test_number 24 (
tag_ite_abb
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Item_symbol_t.Item_severalparagraph_symbol Item_severalparagraph_symbol_t.Abbreviating,
 [5; 1; 2; 25; 1; 3])
);;

test_number 25 (
tag_cap_abb_0 
=
(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
  (Camlparagraph_comment_symbol_t.Item_title "abbreviating"),
 [1; 5; 1; 2; 25; 1; 3])
);;

test_number 26 (
tag_cap_abb_1 
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
    Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather),
 [2; 5; 1; 2; 25; 1; 3])
);;

test_number 27 (
tag_cap_abb_29
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
    Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather),
 [30; 5; 1; 2; 25; 1; 3])
);;

test_number 28 (
for_cap_abb_0
= 
[(Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     (Camlline_constant_pervasive_symbol_t.Item_title "abbreviating")),
  [1; 1; 5; 1; 2; 25; 1; 3]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Empty_line),
  [2; 1; 5; 1; 2; 25; 1; 3])]
);;

test_number 29 (
for_cap_abb_1
= 
[(Camlline_symbol_t.Camlline_trio_symbol
   Camlline_trio_symbol_t.Let_esl_equal_est_of_ess_space_Ess_vdot_esl,
  [1; 2; 5; 1; 2; 25; 1; 3])]
);;

test_number 30 (
for_cap_abb_29
=
[(Camlline_symbol_t.Camlline_trio_symbol
   Camlline_trio_symbol_t.Let_esl_equal_est_of_ess_space_Ess_vdot_esl,
  [1; 30; 5; 1; 2; 25; 1; 3])]
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

test_number 31 (
tag_ite_mak
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Making,
 [6; 1; 2; 25; 1; 3])
);;

test_number 32 (
for_ite_mak 
(* : Camlparagraph_symbol_t.camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_symbol Tag_t.tag list *)
=
[(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
   (Camlparagraph_comment_symbol_t.Item_title "making"),
  [1; 6; 1; 2; 25; 1; 3]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_function_symbol
       Camlparagraph_endmarked_let_argument_function_symbol_t.Let_make_argument_equal_function_for_symbol)),
  [2; 6; 1; 2; 25; 1; 3])]
);;

test_number 33 (
tag_cap_mak_0 
=
(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
  (Camlparagraph_comment_symbol_t.Item_title "making"),
 [1; 6; 1; 2; 25; 1; 3])
);;

test_number 34 (
tag_cap_mak_1 
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
    (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_function_symbol
      Camlparagraph_endmarked_let_argument_function_symbol_t.Let_make_argument_equal_function_for_symbol)),
 [2; 6; 1; 2; 25; 1; 3])
);;

test_number 35 (
for_cap_mak_0
= 
[(Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     (Camlline_constant_pervasive_symbol_t.Item_title "making")),
  [1; 1; 6; 1; 2; 25; 1; 3]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Empty_line),
  [2; 1; 6; 1; 2; 25; 1; 3])]
);;

test_number 36 (
List_v.sublist_of_int_of_int_of_list 0 5 for_cap_mak_1
= 
[(Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_function_symbol
     Camlline_constant_function_symbol_t.Let_make_argument_equal_function),
  [1; 2; 6; 1; 2; 25; 1; 3]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_function_symbol
     Camlline_uno_function_symbol_t.Pipe_ecstring_arrow_ec),
  [2; 2; 6; 1; 2; 25; 1; 3]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_function_symbol
     Camlline_uno_function_symbol_t.Pipe_ecstring_arrow_ec),
  [3; 2; 6; 1; 2; 25; 1; 3]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_function_symbol
     Camlline_uno_function_symbol_t.Pipe_ecstring_arrow_ec),
  [4; 2; 6; 1; 2; 25; 1; 3]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_function_symbol
     Camlline_uno_function_symbol_t.Pipe_ecstring_arrow_ec),
  [5; 2; 6; 1; 2; 25; 1; 3]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_function_symbol
     Camlline_uno_function_symbol_t.Pipe_ecstring_arrow_ec),
  [6; 2; 6; 1; 2; 25; 1; 3])]
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

test_number 37 (
tag_ite_nam
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Naming,
 [3; 1; 2; 25; 1; 3])
);;

test_number 38 (
for_ite_nam 
(* : Camlparagraph_symbol_t.camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_symbol Tag_t.tag list *)
=
[(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
   (Camlparagraph_comment_symbol_t.Item_title "naming"),
  [1; 3; 1; 2; 25; 1; 3]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_function_symbol
       Camlparagraph_endmarked_let_function_symbol_t.Let_name_equal_function_for_symbol)),
  [2; 3; 1; 2; 25; 1; 3])]
);;

test_number 39 (
tag_cap_nam_0 
=
(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
  (Camlparagraph_comment_symbol_t.Item_title "naming"),
 [1; 3; 1; 2; 25; 1; 3])
);;

test_number 40 (
tag_cap_nam_1 
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
    (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_function_symbol
      Camlparagraph_endmarked_let_function_symbol_t.Let_name_equal_function_for_symbol)),
 [2; 3; 1; 2; 25; 1; 3])
);;

test_number 41 (
for_cap_nam_0
= 
[(Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     (Camlline_constant_pervasive_symbol_t.Item_title "naming")),
  [1; 1; 3; 1; 2; 25; 1; 3]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Empty_line),
  [2; 1; 3; 1; 2; 25; 1; 3])]
);;

test_number 42 (
for_cap_nam_1
= 
[(Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_function_symbol
     Camlline_constant_function_symbol_t.Let_name_equal_function),
  [1; 2; 3; 1; 2; 25; 1; 3]);
 (Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Pipe_Est_tdot_Ess_space_ass_arrow),
  [2; 2; 3; 1; 2; 25; 1; 3]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_function_symbol
     Camlline_uno_function_symbol_t.Eas_vdot_name_aas),
  [3; 2; 3; 1; 2; 25; 1; 3]);
 (Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Pipe_Est_tdot_Ess_space_ass_arrow),
  [4; 2; 3; 1; 2; 25; 1; 3]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_function_symbol
     Camlline_uno_function_symbol_t.Eas_vdot_name_aas),
  [5; 2; 3; 1; 2; 25; 1; 3]);
 (Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Pipe_Est_tdot_Ess_space_ass_arrow),
  [6; 2; 3; 1; 2; 25; 1; 3]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_function_symbol
     Camlline_uno_function_symbol_t.Eas_vdot_name_aas),
  [7; 2; 3; 1; 2; 25; 1; 3]);
 (Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Pipe_Est_tdot_Ess_space_ass_arrow),
  [8; 2; 3; 1; 2; 25; 1; 3]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_function_symbol
     Camlline_uno_function_symbol_t.Eas_vdot_name_aas),
  [9; 2; 3; 1; 2; 25; 1; 3]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Double_semicolon),
  [10; 2; 3; 1; 2; 25; 1; 3])]
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
let tag_cap_ext_9 = List.nth for_ite_ext 9;;
let for_cap_ext_9 = Camlparagraph_formula_v.retrieve tag_cap_ext_9;;

test_number 43 (
tag_ite_ext
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Item_symbol_t.Item_severalparagraph_symbol Item_severalparagraph_symbol_t.Extracting,
 [7; 1; 2; 25; 1; 3])
);;

(* Querying *)

let sel_ite_que = Item_symbol_v.is_querying;;
let tag_ite_que = Doublet_list_v.find_if_left sel_ite_que for_usf_val;; 
let for_ite_que = Item_formula_v.retrieve tag_ite_que;;

let sel_ite_que = Item_symbol_v.is_querying;;
let tag_ite_que = Doublet_list_v.find_if_left sel_ite_que for_usf_val;; 
let for_ite_que = Item_formula_v.retrieve tag_ite_que;;

let cou_for_ite_que = List.length for_ite_que;;
let tag_cap_que_0 = List.nth for_ite_que 0;;
let for_cap_que_0 = Camlparagraph_formula_v.retrieve tag_cap_que_0;;
let tag_cap_que_1 = List.nth for_ite_que 1;;
let for_cap_que_1 = Camlparagraph_formula_v.retrieve tag_cap_que_1;;
let tag_cap_que_9 = List.nth for_ite_que 9;;
let for_cap_que_9 = Camlparagraph_formula_v.retrieve tag_cap_que_9;;

test_number 44 (
tag_ite_que
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Item_symbol_t.Item_severalparagraph_symbol Item_severalparagraph_symbol_t.Querying,
 [8; 1; 2; 25; 1; 3])
);;

test_number 45 (
tag_cap_que_0 
=
(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
  (Camlparagraph_comment_symbol_t.Item_title "querying"),
 [1; 8; 1; 2; 25; 1; 3])
);;

test_number 46 (
tag_cap_que_1 
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
    (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_function_symbol
      Camlparagraph_endmarked_let_function_symbol_t.Let_is_ess_off_est_function)),
 [2; 8; 1; 2; 25; 1; 3])
);;

test_number 47 (
tag_cap_que_9
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
    (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_function_symbol
      Camlparagraph_endmarked_let_function_symbol_t.Let_is_ess_off_est_function)),
 [10; 8; 1; 2; 25; 1; 3])
);;

test_number 48 (
for_cap_que_0
= 
[(Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     (Camlline_constant_pervasive_symbol_t.Item_title "querying")),
  [1; 1; 8; 1; 2; 25; 1; 3]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Empty_line),
  [2; 1; 8; 1; 2; 25; 1; 3])]
);;

test_number 49 (
for_cap_que_1
= 
[(Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Let_is_eas_off_eat_equal_function),
  [1; 2; 8; 1; 2; 25; 1; 3]);
 (Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Pipe_Est_tdot_Ess_arrow_true),
  [2; 2; 8; 1; 2; 25; 1; 3]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_function_symbol
     Camlline_constant_function_symbol_t.Pipe_arrow_false),
  [3; 2; 8; 1; 2; 25; 1; 3]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Double_semicolon),
  [4; 2; 8; 1; 2; 25; 1; 3])]
);;

test_number 50 (
for_cap_que_9
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
[(Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Let_is_eas_off_eat_equal_function),
  [1; 10; 8; 1; 2; 25; 1; 3]);
 (Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Pipe_Est_tdot_Ess_arrow_true),
  [2; 10; 8; 1; 2; 25; 1; 3]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_function_symbol
     Camlline_constant_function_symbol_t.Pipe_arrow_false),
  [3; 10; 8; 1; 2; 25; 1; 3]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Double_semicolon),
  [4; 10; 8; 1; 2; 25; 1; 3])]
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
let tag_cap_upg_9 = List.nth for_ite_upg 9;;
let for_cap_upg_9 = Camlparagraph_formula_v.retrieve tag_cap_upg_9;;

test_number 51 (
tag_ite_upg
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Item_symbol_t.Item_severalparagraph_symbol Item_severalparagraph_symbol_t.Upgrading,
 [4; 1; 2; 25; 1; 3])
);;

test_number 52 (
tag_cap_upg_0 
=
(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
  (Camlparagraph_comment_symbol_t.Item_title "upgrading"),
 [1; 4; 1; 2; 25; 1; 3])
);;

test_number 53 (
tag_cap_upg_1 
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
    (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
      Camlparagraph_endmarked_let_argument_symbol_t.Let_est_of_ess_argument)),
 [2; 4; 1; 2; 25; 1; 3])
);;

test_number 54 (
tag_cap_upg_9
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
    (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
      Camlparagraph_endmarked_let_argument_symbol_t.Let_est_of_ess_argument)),
 [10; 4; 1; 2; 25; 1; 3])
);;

test_number 55 (
for_cap_upg_0
= 
[(Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     (Camlline_constant_pervasive_symbol_t.Item_title "upgrading")),
  [1; 1; 4; 1; 2; 25; 1; 3]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Empty_line),
  [2; 1; 4; 1; 2; 25; 1; 3])]
);;

test_number 56 (
for_cap_upg_1
= 
[(Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Let_et_any_of_es_any_space_ac_as_equal),
  [1; 2; 4; 1; 2; 25; 1; 3]);
 (Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Space_Est_tdot_Ess_space_ass),
  [2; 2; 4; 1; 2; 25; 1; 3]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Double_semicolon),
  [3; 2; 4; 1; 2; 25; 1; 3])]
);;

test_number 57 (
for_cap_upg_9
= 
[(Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Let_et_any_of_es_any_space_ac_as_equal),
  [1; 10; 4; 1; 2; 25; 1; 3]);
 (Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Space_Est_tdot_Ess_space_ass),
  [2; 10; 4; 1; 2; 25; 1; 3]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Double_semicolon),
  [3; 10; 4; 1; 2; 25; 1; 3])]
);;

