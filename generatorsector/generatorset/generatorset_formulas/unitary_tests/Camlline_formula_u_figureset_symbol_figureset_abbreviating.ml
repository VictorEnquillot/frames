open Make_test_v;;

testing "Camlline_formula_v with 
   Camlline_formula_u_figureset_symbol_figureset_abbreviating.ml";;

(* toplevel 
   #use "Camlline_formula_u_figureset_symbol_figureset_abbreviating.ml";;

*)

let nam_cod = "Camlline_formula_u_figureset_symbol_figureset_abbreviating";;

let nam_dos = "figureset";;
let nam_cat = "symbol";;
let nam_enp = "figureset";;

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

(* Value_alone *)

let sel_cof = Contentfile_symbol_v.is_value_alone;;
let tag_cof = Doublet_list_v.find_if_left sel_cof for_enp;;
let for_cof = Contentfile_formula_v.retrieve tag_cof;;

let sel_usf = Usagefile_symbol_v.is_implementation_off_usagefile_symbol;; 
let tag_usf = Doublet_list_v.find_if_left sel_usf for_cof;;
let for_usf = Usagefile_formula_v.retrieve tag_usf;;

test_number 1 (
tag_cof
=
(Contentfile_symbol_t.Value_alone, [2; 1; 7; 5])
);;

test_number 2 (
tag_usf
  =
(Usagefile_symbol_t.Implementation, [1; 2; 1; 7; 5])
);;

test_number 3 (
 for_usf 
(* : Item_symbol_t.item_symbol Tag_t.tag list *)
=
[(Item_symbol_t.Item_all_topsons_symbol Item_only_top_symbol_t.Heading,
  [1; 1; 2; 1; 7; 5]);
 (Item_symbol_t.Item_severalparagraph_symbol
   Item_only_top_symbol_t.Documenting,
  [2; 1; 2; 1; 7; 5]);
 (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Naming,
  [3; 1; 2; 1; 7; 5]);
 (Item_symbol_t.Item_severalparagraph_symbol
   Item_severalparagraph_symbol_t.Upgrading,
  [4; 1; 2; 1; 7; 5]);
 (Item_symbol_t.Item_severalparagraph_symbol
   Item_severalparagraph_symbol_t.Abbreviating,
  [5; 1; 2; 1; 7; 5]);
 (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Making,
  [6; 1; 2; 1; 7; 5]);
 (Item_symbol_t.Item_severalparagraph_symbol
   Item_severalparagraph_symbol_t.Extracting,
  [7; 1; 2; 1; 7; 5]);
 (Item_symbol_t.Item_severalparagraph_symbol
   Item_severalparagraph_symbol_t.Querying,
  [8; 1; 2; 1; 7; 5]);
 (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Ending,
  [9; 1; 2; 1; 7; 5])]
);;

(* Item : Abbreviating *)

let sel_ite = Item_symbol_v.is_abbreviating;;
let tag_ite = Doublet_list_v.find_if_left sel_ite for_usf;; 
let for_ite = Item_formula_v.retrieve tag_ite;;

let sel_ite = Item_symbol_v.is_abbreviating;;
let tag_ite = Doublet_list_v.find_if_left sel_ite for_usf;; 
let for_ite = Item_formula_v.retrieve tag_ite;;

test_number 4 (
tag_ite
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Item_symbol_t.Item_severalparagraph_symbol Item_severalparagraph_symbol_t.Abbreviating,
 [5; 1; 2; 1; 7; 5])
);;

test_number 5 (
List_v.sublist_of_int_of_int_of_list 0 10 for_ite 
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
 =
[(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
   (Camlparagraph_comment_symbol_t.Item_title "abbreviating"),
  [1; 5; 1; 2; 1; 7; 5]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather),
  [2; 5; 1; 2; 1; 7; 5]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather),
  [3; 5; 1; 2; 1; 7; 5]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather),
  [4; 5; 1; 2; 1; 7; 5]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather),
  [5; 5; 1; 2; 1; 7; 5]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather),
  [6; 5; 1; 2; 1; 7; 5]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather),
  [7; 5; 1; 2; 1; 7; 5]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather),
  [8; 5; 1; 2; 1; 7; 5]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather),
  [9; 5; 1; 2; 1; 7; 5]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather),
  [10; 5; 1; 2; 1; 7; 5]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather),
  [11; 5; 1; 2; 1; 7; 5])]
);;

(* Camlparagraph : Let_abbreviate_ingrandfather *)

let sel_cap = Camlparagraph_symbol_v.is_let_abbreviate_ingrandfather;;
let tag_cap = Doublet_list_v.find_if_left sel_cap for_ite;;
let for_cap = Camlparagraph_formula_v.retrieve tag_cap;;

test_number 6 (
tag_cap
(* :  Camlparagraph_symbol_t.camlparagraph_symbol * Sole_index_t.sole_index *)
=
  (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
    (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
      Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather),
   [2; 5; 1; 2; 1; 7; 5])
);;

test_number 7 (
for_cap
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
  [(Camlline_symbol_t.Camlline_trio_symbol
     Camlline_trio_symbol_t.Let_esl_equal_est_of_ess_space_Ess_vdot_esl,
    [1; 2; 5; 1; 2; 1; 7; 5])]
);;

(* Camlparagraph : Let_esl_equal_est_of_ess_space_Ess_vdot_esl *)

let sel_cal = Camlline_symbol_v.is_let_esl_equal_est_of_ess_space_ess_vdot_esl;;
let tag_cal = Doublet_list_v.find_if_left sel_cal for_cap;;
let for_cal = Camlline_formula_v.retrieve tag_cal;;

test_number 8 (
tag_cal
(* : Camlline_symbol_t.camlline_symbol * Sole_index_t.sole_index *)
=
  (Camlline_symbol_t.Camlline_trio_symbol
    Camlline_trio_symbol_t.Let_esl_equal_est_of_ess_space_Ess_vdot_esl,
   [1; 2; 5; 1; 2; 1; 7; 5])
);;

test_number 9 (
for_cal
(* :  Tag_t.tag list *)
=
[(Entity_symbol_t.Entity_fictive_symbol
   (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
     (Entity_fictive_nullary_symbol_t.Bare
       "triangle_isoceles_equilateral")),
  [1; 1; 2; 5; 1; 2; 1; 7; 5]);
 (
   (Entity_symbol_t.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "triangle")),
  [2; 1; 2; 5; 1; 2; 1; 7; 5]);
 (
   (Entity_symbol_t.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "figureset")),
  [3; 1; 2; 5; 1; 2; 1; 7; 5])]
);;
