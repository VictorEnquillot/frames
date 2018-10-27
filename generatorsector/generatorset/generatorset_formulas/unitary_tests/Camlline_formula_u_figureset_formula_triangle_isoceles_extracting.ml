open Make_test_v;;

testing "Camlline_formula_v with 
   Camlline_formula_u_figureset_formula_triangle_isoceles_extracting.ml";;

(* toplevel 
   #use "Camlline_formula_u_figureset_formula_triangle_isoceles_extracting.ml";;

*)

let nam_cod = "Camlline_formula_u_figureset_formula_triangle_isoceles_extracting";;

let nam_dos = "figureset";;
let nam_cat = "formula";;
let nam_enp = "triangle_isoceles";;
let nam_cof = "value_alone";;
let nam_ite = "extracting";;
let nam_usf = "implementation";;

let sym_dos = Domainset_symbol_v.make nam_dos;;
let idx_dos = Domainset_symbol_v.list_index_of_domainset_symbol sym_dos;;
let soi_dos = Sole_index_v.make idx_dos [];;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_register_v.store soi_dos gss_dos;;
let tag_dos = Tag_v.make sym_dos soi_dos;;
let for_dos = Domainset_formula_v.retrieve tag_dos;;

let sel_cat = (fun c -> Category_symbol_v.name c = nam_cat);;
let tag_cat = Doublet_list_v.find_if_left sel_cat for_dos;;
let for_cat = Category_formula_v.retrieve tag_cat;;

let sel_enp = (fun e -> Entity_symbol_v.string_off e = nam_enp);;
let tag_enp = Doublet_list_v.find_if_left sel_enp for_cat;;
let for_enp = Entity_formula_v.retrieve tag_enp;;

let sel_cof = (fun c -> Contentfile_symbol_v.name c = nam_cof);;
let tag_cof = Doublet_list_v.find_if_left sel_cof for_enp;;
let for_cof = Contentfile_formula_v.retrieve tag_cof;;

let sel_usf = (fun u -> Usagefile_symbol_v.name u = nam_usf);;
let tag_usf = Doublet_list_v.find_if_left sel_usf for_cof;;
let for_usf = Usagefile_formula_v.retrieve tag_usf;;

let sel_ite = (fun i -> String.lowercase (Item_symbol_v.name i) = nam_ite);;
let tag_ite = Doublet_list_v.find_if_left sel_ite for_usf;; 
let for_ite = Item_formula_v.retrieve tag_ite;;

test_number 1 (
tag_cof
(* : Contentfile_symbol_t.contentfile_symbol * Sole_index_t.sole_index *)
=
  (Contentfile_symbol_t.Value_alone, [2; 3; 7; 5])
);;

test_number 2 (
tag_usf 
(* : Usagefile_symbol_t.usagefile_symbol * Sole_index_t.sole_index *)
=
  (Usagefile_symbol_t.Implementation, [1; 2; 3; 7; 5])
);;

test_number 3 (
 for_usf 
(* : Item_symbol_t.item_symbol Tag_t.tag list *)
=
[(Item_symbol_t.Item_all_topsons_symbol Item_only_top_symbol_t.Heading,
  [1; 1; 2; 3; 7; 5]);
 (Item_symbol_t.Item_severalparagraph_symbol
   Item_only_top_symbol_t.Documenting,
  [2; 1; 2; 3; 7; 5]);
 (Item_symbol_t.Item_severalparagraph_symbol Item_severalparagraph_symbol_t.Extracting,
  [3; 1; 2; 3; 7; 5]);
 (Item_symbol_t.Item_severalparagraph_symbol
   Item_severalparagraph_symbol_t.Upgrading,
  [4; 1; 2; 3; 7; 5]);
 (Item_symbol_t.Item_severalparagraph_symbol
   Item_severalparagraph_symbol_t.Abbreviating,
  [5; 1; 2; 3; 7; 5]);
 (Item_symbol_t.Item_severalparagraph_symbol Item_severalparagraph_symbol_t.Extracting,
  [6; 1; 2; 3; 7; 5]);
 (Item_symbol_t.Item_severalparagraph_symbol
   Item_severalparagraph_symbol_t.Extracting,
  [7; 1; 2; 3; 7; 5]);
 (Item_symbol_t.Item_severalparagraph_symbol
   Item_severalparagraph_symbol_t.Querying,
  [8; 1; 2; 3; 7; 5]);
 (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Ending,
  [9; 1; 2; 3; 7; 5])]
);;

test_number 4 (
tag_ite
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
  (Item_symbol_t.Item_severalparagraph_symbol Item_severalparagraph_symbol_t.Extracting,
   [6; 1; 2; 3; 7; 5])
);;

test_number 5 (
for_ite 
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
 =
  [(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
     (Camlparagraph_comment_symbol_t.Item_title "extracting"),
    [1; 6; 1; 2; 3; 7; 5]);
   (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
     (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
       (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_function_symbol
         Camlparagraph_endmarked_let_function_symbol_t.Let_make_nam_s_equal_for_symbol)),
    [2; 6; 1; 2; 3; 7; 5])]
);;

(* Camlparagraph : 2 Let_make_nam_s_equal_for_symbol *)

let idx_cap = 2;;
let tag_cap = List.nth for_ite (idx_cap-1);;
let for_cap = Camlparagraph_formula_v.retrieve tag_cap;;

test_number 6 (
tag_cap
(* :  Camlparagraph_symbol_t.camlparagraph_symbol * Sole_index_t.sole_index *)
=
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
    (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
      (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_function_symbol
        Camlparagraph_endmarked_let_function_symbol_t.Let_make_nam_s_equal_for_symbol)),
   [2; 6; 1; 2; 3; 7; 5])
);;

test_number 7 (
for_cap
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
[(Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_function_symbol
     Camlline_constant_function_symbol_t.Let_make_nam_s_equal),
  [1; 2; 6; 1; 2; 3; 7; 5]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_function_symbol
     Camlline_constant_function_symbol_t.Match_capitalize_nam_with),
  [2; 2; 6; 1; 2; 3; 7; 5]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_function_symbol
     Camlline_uno_function_symbol_t.Pipe_ecstring_arrow_ec),
  [3; 2; 6; 1; 2; 3; 7; 5]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_function_symbol
     Camlline_uno_function_symbol_t.Pipe_ecstring_arrow_ec),
  [4; 2; 6; 1; 2; 3; 7; 5]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_function_symbol
     Camlline_uno_function_symbol_t.Pipe_ecstring_arrow_ec),
  [5; 2; 6; 1; 2; 3; 7; 5]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_function_symbol
     Camlline_uno_function_symbol_t.Pipe_ecstring_arrow_ec),
  [6; 2; 6; 1; 2; 3; 7; 5]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_function_symbol
     Camlline_constant_function_symbol_t.Pipe_underscore_arrow),
  [7; 2; 6; 1; 2; 3; 7; 5]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_function_symbol
     Camlline_uno_function_symbol_t.Failwith_not_Ess),
  [8; 2; 6; 1; 2; 3; 7; 5]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Double_semicolon),
  [9; 2; 6; 1; 2; 3; 7; 5])]
);;

(* Camlline : 1 Let_make_nam_s_equal *)

let idx_cal = 1;;
let tag_cal = List.nth for_cap (idx_cal-1);;
let for_cal = Camlline_formula_v.retrieve tag_cal;;

test_number 8 (
tag_cal
(* : Camlline_symbol_t.camlline_symbol * Sole_index_t.sole_index *)
=
  (Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_function_symbol
      Camlline_constant_function_symbol_t.Let_make_nam_s_equal),
   [1; 2; 6; 1; 2; 3; 7; 5])
);;

test_number 9 (
for_cal
(* :  Tag_t.tag list *)
=
[]
);;

(* Camlline : 2 Match_capitalize_nam_with *)

let idx_cal = 2;;
let tag_cal = List.nth for_cap (idx_cal-1);;
let for_cal = Camlline_formula_v.retrieve tag_cal;;

test_number 10 (
tag_cal
(* : Camlline_symbol_t.camlline_symbol * Sole_index_t.sole_index *)
=
  (Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_function_symbol
      Camlline_constant_function_symbol_t.Match_capitalize_nam_with),
   [2; 2; 6; 1; 2; 3; 7; 5])
);;

test_number 11 (
for_cal
(* :  Tag_t.tag list *)
=
  []
);;

(* Camlline : 3 Pipe_ecstring_arrow_ec *)

let idx_cal = 3;;
let tag_cal = List.nth for_cap (idx_cal-1);;
let for_cal = Camlline_formula_v.retrieve tag_cal;;

test_number 12 (
tag_cal
(* : Camlline_symbol_t.camlline_symbol * Sole_index_t.sole_index *)
=  
(Camlline_symbol_t.Camlline_uno_symbol
    (Camlline_uno_symbol_t.Camlline_uno_function_symbol
      Camlline_uno_function_symbol_t.Pipe_ecstring_arrow_ec),
   [3; 2; 6; 1; 2; 3; 7; 5])
);;

test_number 13 (
for_cal
(* :  Tag_t.tag list *)
=
  [(Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Sonnullary
         "triangle_isoceles_equilateral")),
    [1; 3; 2; 6; 1; 2; 3; 7; 5])]
);;

(* Camlline : 6 Space_print_fatal_error_make_of_string_of_string *)

let idx_cal = 6;;
let tag_cal = List.nth for_cap (idx_cal-1);;
let for_cal = Camlline_formula_v.retrieve tag_cal;;

test_number 14 (
tag_cal
(* : Camlline_symbol_t.camlline_symbol * Sole_index_t.sole_index *)
=
  (Camlline_symbol_t.Camlline_uno_symbol
    (Camlline_uno_symbol_t.Camlline_uno_function_symbol
      Camlline_uno_function_symbol_t.Pipe_ecstring_arrow_ec),
   [6; 2; 6; 1; 2; 3; 7; 5])
);;

test_number 15 (
for_cal
(* :  Tag_t.tag list *)
=
  [(Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Sonnullary "triangle_isoceles_obtuse")),
    [1; 6; 2; 6; 1; 2; 3; 7; 5])]
);;

