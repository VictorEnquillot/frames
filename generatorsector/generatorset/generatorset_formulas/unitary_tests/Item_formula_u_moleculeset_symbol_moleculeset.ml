open Make_test_v;;

testing "Item_formula_v with 
   Item_formula_u_moleculeset_symbol_moleculeset.ml";;

(* toplevel 
   #use "Item_formula_u_moleculeset_symbol_moleculeset.ml";;

*)

let nam_cod = "Item_formula_u_moleculeset_symbol_moleculeset";;
let nam_dos = "moleculeset";;
let nam_cat = "symbol";;
let nam_enp = "moleculeset";;

let sel_cat =
  match nam_cat with
  | "symbol" -> Category_symbol_v.is_symbol_off_category_symbol
  | "formula" -> Category_symbol_v.is_formula_off_category_symbol
  | _ -> failwith ("In category selection nam_cat >"^nam_cat^"< is not defined:"^nam_cod)
;;
 
let sel_enp = (fun e -> Entity_symbol_v.string_off e = nam_enp)

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

(* Typing *)

let sel_ite_typ = Item_symbol_v.is_typing;;
let tag_ite_typ = Doublet_list_v.find_if_left sel_ite_typ for_usf_typ;; 
let for_ite_typ = Item_formula_v.retrieve tag_ite_typ;;

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
(Category_symbol_t.Symbol, [7; 7])
);;

test_number 3 (
tag_enp
(* : Entity_symbol_t.Entity_proper_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Entity_symbol_t.Entity_proper_top_symbol
  (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"),
 [1; 7; 7])
);;

test_number 4 (
tag_cof_typ
=
(Contentfile_symbol_t.Type_alone, [1; 1; 7; 7])
);;

test_number 5 (
tag_usf_typ
  =
(Usagefile_symbol_t.Implementation, [1; 1; 1; 7; 7])
);;

test_number 6 (
 for_usf_typ 
(* : Item_symbol_t.item_symbol Tag_t.tag list *)
=
  [(Item_symbol_t.Item_all_topsons_symbol Item_only_top_symbol_t.Heading,
    [1; 1; 1; 1; 7; 7]);
   (Item_symbol_t.Item_severalparagraph_symbol
     Item_only_top_symbol_t.Documenting,
    [2; 1; 1; 1; 7; 7]);
   (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Typing,
    [3; 1; 1; 1; 7; 7]);
   (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Ending,
    [4; 1; 1; 1; 7; 7])]
);;

test_number 7 (
tag_ite_typ
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Typing,
 [3; 1; 1; 1; 7; 7])
);;

test_number 8 (
for_ite_typ 
(* : Camlparagraph_symbol_t.camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_symbol Tag_t.tag list *)
=
  [(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
     (Camlparagraph_comment_symbol_t.Item_title "typing"),
    [1; 3; 1; 1; 1; 7; 7]);
   (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
     Camlparagraph_endmarked_symbol_t.Type_definition_for_symbol,
    [2; 3; 1; 1; 1; 7; 7])]
);;

(* Value_alone *)

let sel_cof_val = Contentfile_symbol_v.is_value_alone;;
let tag_cof_val = Doublet_list_v.find_if_left sel_cof_val for_enp;;
let for_cof_val = Contentfile_formula_v.retrieve tag_cof_val;;

let sel_usf_val = Usagefile_symbol_v.is_implementation_off_usagefile_symbol;; 
let tag_usf_val = Doublet_list_v.find_if_left sel_usf_val for_cof_val;;
let for_usf_val = Usagefile_formula_v.retrieve tag_usf_val;;

test_number 9 (
tag_cof_val
=
(Contentfile_symbol_t.Value_alone, [2; 1; 7; 7])
);;

test_number 10 (
tag_usf_val
  =
(Usagefile_symbol_t.Implementation, [1; 2; 1; 7; 7])
);;

test_number 11 (
 for_usf_val 
(* : Item_symbol_t.item_symbol Tag_t.tag list *)
=
[(Item_symbol_t.Item_all_topsons_symbol Item_only_top_symbol_t.Heading,
  [1; 1; 2; 1; 7; 7]);
 (Item_symbol_t.Item_severalparagraph_symbol
   Item_only_top_symbol_t.Documenting,
  [2; 1; 2; 1; 7; 7]);
 (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Naming,
  [3; 1; 2; 1; 7; 7]);
 (Item_symbol_t.Item_severalparagraph_symbol
   Item_severalparagraph_symbol_t.Upgrading,
  [4; 1; 2; 1; 7; 7]);
 (Item_symbol_t.Item_severalparagraph_symbol
   Item_severalparagraph_symbol_t.Abbreviating,
  [5; 1; 2; 1; 7; 7]);
 (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Making,
  [6; 1; 2; 1; 7; 7]);
 (Item_symbol_t.Item_severalparagraph_symbol
   Item_severalparagraph_symbol_t.Extracting,
  [7; 1; 2; 1; 7; 7]);
 (Item_symbol_t.Item_severalparagraph_symbol
   Item_severalparagraph_symbol_t.Querying,
  [8; 1; 2; 1; 7; 7]);
 (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Ending,
  [9; 1; 2; 1; 7; 7])]
);;

(* Abbreviating *)

let sel_ite_abb = Item_symbol_v.is_abbreviating;;
let tag_ite_abb = Doublet_list_v.find_if_left sel_ite_abb for_usf_val;; 
let for_ite_abb = Item_formula_v.retrieve tag_ite_abb;;

let sel_ite_abb = Item_symbol_v.is_abbreviating;;
let tag_ite_abb = Doublet_list_v.find_if_left sel_ite_abb for_usf_val;; 
let for_ite_abb = Item_formula_v.retrieve tag_ite_abb;;
let fnd_cap_lai = Camlparagraph_symbol_v.is_let_abbreviate_ingrandfather;;
let fnd_cap_aib = Camlparagraph_symbol_v.is_let_abbreviate_grandson_basicnullary;;

test_number 12 (
tag_ite_abb
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Item_symbol_t.Item_severalparagraph_symbol Item_severalparagraph_symbol_t.Abbreviating,
 [5; 1; 2; 1; 7; 7])
);;

test_number 13 (
Doublet_list_v.filter_if_left fnd_cap_lai for_ite_abb
(* : (Camlparagraph_symbol_t.camlparagraph_symbol, Sole_index_t.sole_index)
    Doublet_list_t.doublet_list *)
=
[(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather),
  [7; 5; 1; 2; 1; 7; 7]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather),
  [9; 5; 1; 2; 1; 7; 7]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather),
  [10; 5; 1; 2; 1; 7; 7]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather),
  [11; 5; 1; 2; 1; 7; 7]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather),
  [12; 5; 1; 2; 1; 7; 7]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather),
  [13; 5; 1; 2; 1; 7; 7]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather),
  [14; 5; 1; 2; 1; 7; 7]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather),
  [15; 5; 1; 2; 1; 7; 7]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather),
  [16; 5; 1; 2; 1; 7; 7]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather),
  [17; 5; 1; 2; 1; 7; 7]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather),
  [18; 5; 1; 2; 1; 7; 7]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather),
  [19; 5; 1; 2; 1; 7; 7])]
);;

test_number 14 (
Doublet_list_v.filter_if_left fnd_cap_aib for_ite_abb 
(* : (Camlparagraph_symbol_t.camlparagraph_symbol, Sole_index_t.sole_index)
    Doublet_list_t.doublet_list *)
=
[(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_grandson_basicnullary),
  [2; 5; 1; 2; 1; 7; 7]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_grandson_basicnullary),
  [3; 5; 1; 2; 1; 7; 7]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_grandson_basicnullary),
  [4; 5; 1; 2; 1; 7; 7]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_grandson_basicnullary),
  [5; 5; 1; 2; 1; 7; 7]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_grandson_basicnullary),
  [6; 5; 1; 2; 1; 7; 7]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_grandson_basicnullary),
  [8; 5; 1; 2; 1; 7; 7]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_grandson_basicnullary),
  [20; 5; 1; 2; 1; 7; 7]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_grandson_basicnullary),
  [21; 5; 1; 2; 1; 7; 7])]
);;

(* Naming *)

let sel_ite_nam = Item_symbol_v.is_naming;;
let tag_ite_nam = Doublet_list_v.find_if_left sel_ite_nam for_usf_val;; 
let for_ite_nam = Item_formula_v.retrieve tag_ite_nam;;

let sel_ite_nam = Item_symbol_v.is_naming;;
let tag_ite_nam = Doublet_list_v.find_if_left sel_ite_nam for_usf_val;; 
let for_ite_nam = Item_formula_v.retrieve tag_ite_nam;;

test_number 15 (
tag_ite_nam
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Naming,
 [3; 1; 2; 1; 7; 7])
);;

test_number 16 (
for_ite_nam 
(* : Camlparagraph_symbol_t.camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_symbol Tag_t.tag list *)
=
[(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
   (Camlparagraph_comment_symbol_t.Item_title "naming"),
  [1; 3; 1; 2; 1; 7; 7]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_function_symbol
       Camlparagraph_endmarked_let_function_symbol_t.Let_name_equal_function_for_symbol)),
  [2; 3; 1; 2; 1; 7; 7])]
);;

(* Extracting *)

let sel_ite_ext = Item_symbol_v.is_extracting;;
let tag_ite_ext = Doublet_list_v.find_if_left sel_ite_ext for_usf_val;; 
let for_ite_ext = Item_formula_v.retrieve tag_ite_ext;;

let sel_ite_ext = Item_symbol_v.is_extracting;;
let tag_ite_ext = Doublet_list_v.find_if_left sel_ite_ext for_usf_val;; 
let for_ite_ext = Item_formula_v.retrieve tag_ite_ext;;

test_number 17 (
tag_ite_ext
(* : Item_symbol_t.item_symbol * Sole_index_t.sole_index *)
=
(Item_symbol_t.Item_severalparagraph_symbol
  Item_severalparagraph_symbol_t.Extracting,
 [7; 1; 2; 1; 7; 7])
);;

test_number 18 (
for_ite_ext
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
=
[(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
   (Camlparagraph_comment_symbol_t.Item_title "extracting"),
  [1; 7; 1; 2; 1; 7; 7]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_function_symbol
       Camlparagraph_endmarked_let_function_symbol_t.Let_ess_off_est_function)),
  [2; 7; 1; 2; 1; 7; 7]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_function_symbol
       Camlparagraph_endmarked_let_function_symbol_t.Let_ess_off_est_function)),
  [3; 7; 1; 2; 1; 7; 7]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_function_symbol
       Camlparagraph_endmarked_let_function_symbol_t.Let_ess_off_est_function)),
  [4; 7; 1; 2; 1; 7; 7]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_esc_off_est_argument)),
  [5; 7; 1; 2; 1; 7; 7]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_esc_off_est_argument)),
  [6; 7; 1; 2; 1; 7; 7]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_esc_off_est_argument)),
  [7; 7; 1; 2; 1; 7; 7]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_esc_off_est_argument)),
  [8; 7; 1; 2; 1; 7; 7]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_esc_off_est_argument)),
  [9; 7; 1; 2; 1; 7; 7])]
);;

(* Extracting *)

let sel_ite_ext = Item_symbol_v.is_extracting;;
let tag_ite_ext = Doublet_list_v.find_if_left sel_ite_ext for_usf_val;; 
let for_ite_ext = Item_formula_v.retrieve tag_ite_ext;;

let sel_ite_ext = Item_symbol_v.is_extracting;;
let tag_ite_ext = Doublet_list_v.find_if_left sel_ite_ext for_usf_val;; 
let for_ite_ext = Item_formula_v.retrieve tag_ite_ext;;

test_number 19 (
tag_ite_ext
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Item_symbol_t.Item_severalparagraph_symbol Item_severalparagraph_symbol_t.Extracting,
 [7; 1; 2; 1; 7; 7])
);;

test_number 20 (
for_ite_ext
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
=
[(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
   (Camlparagraph_comment_symbol_t.Item_title "extracting"),
  [1; 7; 1; 2; 1; 7; 7]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_function_symbol
       Camlparagraph_endmarked_let_function_symbol_t.Let_ess_off_est_function)),
  [2; 7; 1; 2; 1; 7; 7]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_function_symbol
       Camlparagraph_endmarked_let_function_symbol_t.Let_ess_off_est_function)),
  [3; 7; 1; 2; 1; 7; 7]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_function_symbol
       Camlparagraph_endmarked_let_function_symbol_t.Let_ess_off_est_function)),
  [4; 7; 1; 2; 1; 7; 7]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_esc_off_est_argument)),
  [5; 7; 1; 2; 1; 7; 7]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_esc_off_est_argument)),
  [6; 7; 1; 2; 1; 7; 7]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_esc_off_est_argument)),
  [7; 7; 1; 2; 1; 7; 7]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_esc_off_est_argument)),
  [8; 7; 1; 2; 1; 7; 7]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_esc_off_est_argument)),
  [9; 7; 1; 2; 1; 7; 7])]
);;

(* Upgrading *)

let sel_ite_upg = Item_symbol_v.is_upgrading;;
let tag_ite_upg = Doublet_list_v.find_if_left sel_ite_upg for_usf_val;; 
let for_ite_upg = Item_formula_v.retrieve tag_ite_upg;;

let sel_ite_upg = Item_symbol_v.is_upgrading;;
let tag_ite_upg = Doublet_list_v.find_if_left sel_ite_upg for_usf_val;; 
let for_ite_upg = Item_formula_v.retrieve tag_ite_upg;;

test_number 21 (
tag_ite_upg
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Item_symbol_t.Item_severalparagraph_symbol
  Item_severalparagraph_symbol_t.Upgrading,
 [4; 1; 2; 1; 7; 7])
);;

test_number 22 (
for_ite_upg
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
=
[(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
   (Camlparagraph_comment_symbol_t.Item_title "upgrading"),
  [1; 4; 1; 2; 1; 7; 7]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_est_of_ess_argument)),
  [2; 4; 1; 2; 1; 7; 7]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_est_of_ess_argument)),
  [3; 4; 1; 2; 1; 7; 7]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_est_of_ess_argument)),
  [4; 4; 1; 2; 1; 7; 7]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_est_of_esc_argument)),
  [5; 4; 1; 2; 1; 7; 7]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_est_of_esc_argument)),
  [6; 4; 1; 2; 1; 7; 7]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_est_of_esc_argument)),
  [7; 4; 1; 2; 1; 7; 7]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_est_of_esc_argument)),
  [8; 4; 1; 2; 1; 7; 7]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_est_of_esc_argument)),
  [9; 4; 1; 2; 1; 7; 7])]
);;

