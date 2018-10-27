open Make_test_v;;

testing "Camlparagraph_formula_v with
   Camlparagraph_formula_u_chemicalset_symbol_cluster.ml";;

(* toplevel 
   #use "Camlparagraph_formula_u_chemicalset_symbol_cluster.ml";;
*)

let sel_cat = Category_symbol_v.is_symbol_off_category_symbol;;
let sel_enp = (fun e -> Entity_symbol_v.string_off e = "cluster")

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
(* : Entity_symbol_t.Entity_proper_symbol * Sole_index_t.sole_index *)
=
(Entity_symbol_t.Entity_proper "cluster", [113; 1; 3])
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
(Contentfile_symbol_t.Type_alone, [1; 113; 1; 3])
);;

test_number 5 (
tag_usf_typ
  =
(Usagefile_symbol_t.Implementation, [1; 1; 113; 1; 3])
);;

test_number 6 (
 for_usf_typ 
(* : Item_symbol_t.item_symbol Tag_t.tag list *)
=
  [(Item_symbol_t.Item_all_topsons_symbol Item_only_top_symbol_t.Heading,
    [1; 1; 1; 113; 1; 3]);
   (Item_symbol_t.Item_severalparagraph_symbol
     Item_only_top_symbol_t.Documenting,
    [2; 1; 1; 113; 1; 3]);
   (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Typing,
    [3; 1; 1; 113; 1; 3]);
   (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Ending,
    [4; 1; 1; 113; 1; 3])]
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

test_number 7 (
tag_ite_typ
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Typing,
 [3; 1; 1; 113; 1; 3])
);;

test_number 8 (
tag_cap_typ_0 
=
(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
  (Camlparagraph_comment_symbol_t.Item_title "typing"),
 [1; 3; 1; 1; 113; 1; 3])
);;

test_number 9 (
tag_cap_typ_1 
=
   (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
     Camlparagraph_endmarked_symbol_t.Type_definition_for_symbol,
    [2; 3; 1; 1; 113; 1; 3])
);;

test_number 10 (
for_ite_typ 
(* : Camlparagraph_symbol_t.camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_symbol Tag_t.tag list *)
=
[tag_cap_typ_0; tag_cap_typ_1] 
);;

test_number 11 (
for_cap_typ_0
= 
[(Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     (Camlline_constant_pervasive_symbol_t.Item_title "typing")),
  [1; 1; 3; 1; 1; 113; 1; 3]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Empty_line),
  [2; 1; 3; 1; 1; 113; 1; 3])]
);;

test_number 12 (
for_cap_typ_1 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
[(Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Type_est_equal),
  [1; 2; 3; 1; 1; 113; 1; 3]);
 (Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Pipe_Ess_bof_b),
  [2; 2; 3; 1; 1; 113; 1; 3]);
 (Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Pipe_Ess_bof_b),
  [3; 2; 3; 1; 1; 113; 1; 3]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Double_semicolon),
  [4; 2; 3; 1; 1; 113; 1; 3])]
);;

(* Value_alone *)

let sel_cof_val = Contentfile_symbol_v.is_value_alone;;
let tag_cof_val = Doublet_list_v.find_if_left sel_cof_val for_enp;;
let for_cof_val = Contentfile_formula_v.retrieve tag_cof_val;;

let sel_usf_val = Usagefile_symbol_v.is_implementation_off_usagefile_symbol;; 
let tag_usf_val = Doublet_list_v.find_if_left sel_usf_val for_cof_val;;
let for_usf_val = Usagefile_formula_v.retrieve tag_usf_val;;

test_number 13 (
tag_cof_val
=
(Contentfile_symbol_t.Value_alone, [2; 113; 1; 3])
);;

test_number 14 (
tag_usf_val
  =
(Usagefile_symbol_t.Implementation, [1; 2; 113; 1; 3])
);;

test_number 15 (
 for_usf_val 
(* : Item_symbol_t.item_symbol Tag_t.tag list *)
=
[(Item_symbol_t.Item_all_topsons_symbol Item_only_top_symbol_t.Heading,
  [1; 1; 2; 113; 1; 3]);
 (Item_symbol_t.Item_severalparagraph_symbol
   Item_only_top_symbol_t.Documenting,
  [2; 1; 2; 113; 1; 3]);
 (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Naming,
  [3; 1; 2; 113; 1; 3]);
 (Item_symbol_t.Item_severalparagraph_symbol
   Item_severalparagraph_symbol_t.Upgrading,
  [4; 1; 2; 113; 1; 3]);
 (Item_symbol_t.Item_severalparagraph_symbol
   Item_severalparagraph_symbol_t.Abbreviating,
  [5; 1; 2; 113; 1; 3]);
 (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Making,
  [6; 1; 2; 113; 1; 3]);
 (Item_symbol_t.Item_severalparagraph_symbol
   Item_severalparagraph_symbol_t.Extracting,
  [7; 1; 2; 113; 1; 3]);
 (Item_symbol_t.Item_severalparagraph_symbol
   Item_severalparagraph_symbol_t.Querying,
  [8; 1; 2; 113; 1; 3]);
 (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Ending,
  [9; 1; 2; 113; 1; 3])]
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
let tag_cap_abb_2 = List.nth for_ite_abb 2;;
let for_cap_abb_2 = Camlparagraph_formula_v.retrieve tag_cap_abb_2;;

test_number 16 (
tag_ite_abb
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Item_symbol_t.Item_severalparagraph_symbol Item_severalparagraph_symbol_t.Abbreviating,
 [5; 1; 2; 113; 1; 3])
);;

test_number 17 (
tag_cap_abb_0 
=
(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
  (Camlparagraph_comment_symbol_t.Item_title "abbreviating"),
 [1; 5; 1; 2; 113; 1; 3])
);;

test_number 18 (
tag_cap_abb_1 
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
    Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_infather),
 [2; 5; 1; 2; 113; 1; 3])
);;

test_number 19 (
tag_cap_abb_2
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
    Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_infather),
 [3; 5; 1; 2; 113; 1; 3])
);;

test_number 20 (
for_cap_abb_0
= 
[(Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     (Camlline_constant_pervasive_symbol_t.Item_title "abbreviating")),
  [1; 1; 5; 1; 2; 113; 1; 3]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Empty_line),
  [2; 1; 5; 1; 2; 113; 1; 3])]
);;

test_number 21 (
for_cap_abb_1
= 
[(Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Let_ess_arg_equal_Est_tdot_Ess_space_arg),
  [1; 2; 5; 1; 2; 113; 1; 3])]
);;

test_number 22 (
for_cap_abb_2
=
[(Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Let_ess_arg_equal_Est_tdot_Ess_space_arg),
  [1; 3; 5; 1; 2; 113; 1; 3])]
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

test_number 23 (
tag_ite_mak
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Making,
 [6; 1; 2; 113; 1; 3])
);;

test_number 24 (
for_ite_mak 
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
=
[(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
   (Camlparagraph_comment_symbol_t.Item_title "making"),
  [1; 6; 1; 2; 113; 1; 3]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_function_symbol
       Camlparagraph_endmarked_let_argument_function_symbol_t.Let_make_argument_equal_function_for_symbol)),
  [2; 6; 1; 2; 113; 1; 3])]
);;

test_number 25 (
tag_cap_mak_0 
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
  (Camlparagraph_comment_symbol_t.Item_title "making"),
 [1; 6; 1; 2; 113; 1; 3])
);;

test_number 26 (
tag_cap_mak_1 
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
    (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_function_symbol
      Camlparagraph_endmarked_let_argument_function_symbol_t.Let_make_argument_equal_function_for_symbol)),
 [2; 6; 1; 2; 113; 1; 3])
);;

test_number 27 (
for_cap_mak_0
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
= 
[(Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     (Camlline_constant_pervasive_symbol_t.Item_title "making")),
  [1; 1; 6; 1; 2; 113; 1; 3]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Empty_line),
  [2; 1; 6; 1; 2; 113; 1; 3])]
);;

test_number 28 (
List_v.sublist_of_int_of_int_of_list 0 5 for_cap_mak_1
= 
[(Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_function_symbol
     Camlline_constant_function_symbol_t.Let_make_argument_equal_function),
  [1; 2; 6; 1; 2; 113; 1; 3]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_function_symbol
     Camlline_uno_function_symbol_t.Pipe_ecstring_arrow_ec_space_sarg),
  [2; 2; 6; 1; 2; 113; 1; 3]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_function_symbol
     Camlline_uno_function_symbol_t.Pipe_ecstring_arrow_ec_space_sarg),
  [3; 2; 6; 1; 2; 113; 1; 3]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_function_symbol
     Camlline_constant_function_symbol_t.Pipe_print_fatal_error_make_4_lines),
  [4; 2; 6; 1; 2; 113; 1; 3]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Double_semicolon),
  [5; 2; 6; 1; 2; 113; 1; 3])]
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

test_number 29 (
tag_ite_nam
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Naming,
 [3; 1; 2; 113; 1; 3])
);;

test_number 30 (
for_ite_nam 
(* : Camlparagraph_symbol_t.camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_symbol Tag_t.tag list *)
=
[(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
   (Camlparagraph_comment_symbol_t.Item_title "naming"),
  [1; 3; 1; 2; 113; 1; 3]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_function_symbol
       Camlparagraph_endmarked_let_function_symbol_t.Let_name_equal_function_for_symbol)),
  [2; 3; 1; 2; 113; 1; 3])]
);;

test_number 31 (
tag_cap_nam_0 
=
(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
  (Camlparagraph_comment_symbol_t.Item_title "naming"),
 [1; 3; 1; 2; 113; 1; 3])
);;

test_number 32 (
tag_cap_nam_1 
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
    (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_function_symbol
      Camlparagraph_endmarked_let_function_symbol_t.Let_name_equal_function_for_symbol)),
 [2; 3; 1; 2; 113; 1; 3])
);;

test_number 33 (
for_cap_nam_0
= 
[(Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     (Camlline_constant_pervasive_symbol_t.Item_title "naming")),
  [1; 1; 3; 1; 2; 113; 1; 3]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Empty_line),
  [2; 1; 3; 1; 2; 113; 1; 3])]
);;

test_number 34 (
for_cap_nam_1
= 
[(Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_function_symbol
     Camlline_constant_function_symbol_t.Let_name_equal_function),
  [1; 2; 3; 1; 2; 113; 1; 3]);
 (Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Pipe_Est_tdot_Ess_underscore_arrow_string),
  [2; 2; 3; 1; 2; 113; 1; 3]);
 (Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Pipe_Est_tdot_Ess_underscore_arrow_string),
  [3; 2; 3; 1; 2; 113; 1; 3]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Double_semicolon),
  [4; 2; 3; 1; 2; 113; 1; 3])]
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

test_number 35 (
tag_ite_ext
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Item_symbol_t.Item_severalparagraph_symbol
  Item_severalparagraph_symbol_t.Extracting,
 [7; 1; 2; 113; 1; 3])
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

test_number 36 (
tag_ite_que
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Item_symbol_t.Item_severalparagraph_symbol Item_severalparagraph_symbol_t.Querying,
 [8; 1; 2; 113; 1; 3])
);;

test_number 37 (
tag_cap_que_0 
=
(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
  (Camlparagraph_comment_symbol_t.Item_title "querying"),
 [1; 8; 1; 2; 113; 1; 3])
);;

test_number 38 (
for_cap_que_0
= 
[(Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     (Camlline_constant_pervasive_symbol_t.Item_title "querying")),
  [1; 1; 8; 1; 2; 113; 1; 3]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Empty_line),
  [2; 1; 8; 1; 2; 113; 1; 3])]
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

test_number 39 (
tag_ite_upg
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Item_symbol_t.Item_severalparagraph_symbol Item_severalparagraph_symbol_t.Upgrading,
 [4; 1; 2; 113; 1; 3])
);;

test_number 40 (
tag_cap_upg_0 
=
(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
  (Camlparagraph_comment_symbol_t.Item_title "upgrading"),
 [1; 4; 1; 2; 113; 1; 3])
);;

test_number 41 (
for_cap_upg_0
= 
[(Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     (Camlline_constant_pervasive_symbol_t.Item_title "upgrading")),
  [1; 1; 4; 1; 2; 113; 1; 3]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Empty_line),
  [2; 1; 4; 1; 2; 113; 1; 3])]
);;

