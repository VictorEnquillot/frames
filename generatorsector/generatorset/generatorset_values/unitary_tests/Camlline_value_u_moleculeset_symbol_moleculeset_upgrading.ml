open Make_test_v;;

testing "Camlline_duo_function_symbol_value_v
   Camlline_value_u_moleculeset_symbol_moleculeset_upgrading.ml";;

(* toplevel 
   #use "Camlline_value_u_moleculeset_symbol_moleculeset_upgrading.ml";;

*)

let nam_cod = "Camlline_value_u_moleculeset_symbol_moleculeset_upgrading.ml";;
let nam_dom = "moleculeset";;
let nam_cof = "value_alone";;
let nam_ite = "upgrading";;
let nam_enp = "moleculeset";;
let nam_usf = "implementation";;

let sym_dom = Domain_symbol_v.make nam_dom "";;
let idx_dom = Domain_symbol_v.list_index_of_domain_symbol sym_dom;;
let soi_dom = Sole_index_v.make idx_dom [];;
let gss_dom = Generatorset_symbol_v.generatorset_symbol_of_domain_symbol sym_dom;;
Generatorset_symbol_by_sole_index_register_v.store soi_dom gss_dom;;
let tag_dom = Tag_v.make sym_dom soi_dom;;
let for_dom = Domain_formula_v.retrieve tag_dom;;

let sel_cat = Category_symbol_v.is_symbol_off_category_symbol;;
let tag_cat = Doublet_list_v.find_if_left sel_cat for_dom;;
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

let sel_ite = (fun i -> Item_symbol_v.name i = nam_ite);;
let tag_ite = Doublet_list_v.find_if_left sel_ite for_usf;; 
let for_ite = Item_formula_v.retrieve tag_ite;;

let sel_cap = Camlparagraph_symbol_v.is_let_est_of_ess_argument;;
let tag_cap = Doublet_list_v.find_if_left sel_cap for_ite;;
let for_cap = Camlparagraph_formula_v.retrieve tag_cap;;

test_number 1 (
for_ite
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
=
  [(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
     (Camlparagraph_comment_symbol_t.Item_title "upgrading"),
    [1; 4; 1; 2; 1; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
     (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
       (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
         Camlparagraph_endmarked_let_argument_symbol_t.Let_est_of_ess_argument)),
    [2; 4; 1; 2; 1; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
     (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
       (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
         Camlparagraph_endmarked_let_argument_symbol_t.Let_est_of_esc_argument)),
    [3; 4; 1; 2; 1; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
     (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
       (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
         Camlparagraph_endmarked_let_argument_symbol_t.Let_est_of_esc_argument)),
    [4; 4; 1; 2; 1; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
     (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
       (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
         Camlparagraph_endmarked_let_argument_symbol_t.Let_est_of_ess_argument)),
    [5; 4; 1; 2; 1; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
     (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
       (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
         Camlparagraph_endmarked_let_argument_symbol_t.Let_est_of_ess_argument)),
    [6; 4; 1; 2; 1; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
     (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
       (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
         Camlparagraph_endmarked_let_argument_symbol_t.Let_est_of_ess_argument)),
    [7; 4; 1; 2; 1; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
     (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
       (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
         Camlparagraph_endmarked_let_argument_symbol_t.Let_est_of_esc_argument)),
    [8; 4; 1; 2; 1; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
     (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
       (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
         Camlparagraph_endmarked_let_argument_symbol_t.Let_est_of_esc_argument)),
    [9; 4; 1; 2; 1; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
     (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
       (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
         Camlparagraph_endmarked_let_argument_symbol_t.Let_est_of_esc_argument)),
    [10; 4; 1; 2; 1; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
     (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
       (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
         Camlparagraph_endmarked_let_argument_symbol_t.Let_est_of_esc_argument)),
    [11; 4; 1; 2; 1; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
     (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
       (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
         Camlparagraph_endmarked_let_argument_symbol_t.Let_est_of_esc_argument)),
    [12; 4; 1; 2; 1; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
     (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
       (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
         Camlparagraph_endmarked_let_argument_symbol_t.Let_est_of_esc_argument)),
    [13; 4; 1; 2; 1; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
     (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
       (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
         Camlparagraph_endmarked_let_argument_symbol_t.Let_est_of_esc_argument)),
    [14; 4; 1; 2; 1; 7; 2])]
);;

test_number 2 (
tag_cap
(* : Camlparagraph_symbol_t.camlparagraph_symbol * Sole_index_t.sole_index *)
=
  (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
    (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
      (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
        Camlparagraph_endmarked_let_argument_symbol_t.Let_est_of_ess_argument)),
   [2; 4; 1; 2; 1; 7; 2])
);;

test_number 3 (
for_cap
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
  [(Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Let_et_any_of_es_any_ac_as_equal),
    [1; 2; 4; 1; 2; 1; 7; 2]);
   (Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Space_Est_tdot_Ess_ass),
    [2; 2; 4; 1; 2; 1; 7; 2]);
   (Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
       Camlline_constant_pervasive_symbol_t.Double_semicolon),
    [3; 2; 4; 1; 2; 1; 7; 2])]
);;

(* Camlline : Let_et_any_of_es_any_ac_as_equal *)

let sel_cal = Camlline_symbol_v.is_let_est_of_ess_ass_equal;;
let tag_cal = Doublet_list_v.find_if_left sel_cal for_cap;;
let for_cal = Camlline_formula_v.retrieve tag_cal;;

let val_cal = Camlline_value_v.make tag_cal;;

test_number 4 (
tag_cal
(* : Camlline_symbol_t.camlline_symbol * Sole_index_t.sole_index *)
=
  (Camlline_symbol_t.Camlline_duo_symbol
    (Camlline_duo_symbol_t.Camlline_duo_function_symbol
      Camlline_duo_function_symbol_t.Let_et_any_of_es_any_ac_as_equal),
   [1; 2; 4; 1; 2; 1; 7; 2])
);;

test_number 5 (
for_cal
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
  [(
     (Entity_symbol_t.Entity_proper_son_symbol
       (Entity_proper_son_symbol_t.Notonlyson "triangle")),
    [1; 1; 2; 4; 1; 2; 1; 7; 2]);
   (
     (Entity_symbol_t.Entity_proper_top_symbol
       (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset")),
    [2; 1; 2; 4; 1; 2; 1; 7; 2])]
);;

test_number 6 (
val_cal
(* : string *)
=
"let moleculeset_symbol_of_triangle_symbol sym_tre = "
);;

test_number 7 (
Camlline_value_v.fullnameoffile "./" tag_cal
=
"./moleculeset_symbol_upgrading_let_est_of_ess_argument_let_est_of_ess_ass_equal_v.ml"
);;

(* Camlline : Space_Est_tdot_Ess_ass *)

let sel_cal = Camlline_symbol_v.is_est_tdot_ess_ass;;
let tag_cal = Doublet_list_v.find_if_left sel_cal for_cap;;
let for_cal = Camlline_formula_v.retrieve tag_cal;;

let val_cal = Camlline_value_v.make tag_cal;;

test_number 8 (
tag_cal
(* : Camlline_symbol_t.camlline_symbol * Sole_index_t.sole_index *)
=
  (Camlline_symbol_t.Camlline_duo_symbol
    (Camlline_duo_symbol_t.Camlline_duo_function_symbol
      Camlline_duo_function_symbol_t.Space_Est_tdot_Ess_ass),
   [2; 2; 4; 1; 2; 1; 7; 2])
);;

test_number 9 (
for_cal
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
  [(
     (Entity_symbol_t.Entity_proper_son_symbol
       (Entity_proper_son_symbol_t.Notonlyson "triangle")),
    [1; 2; 2; 4; 1; 2; 1; 7; 2]);
   (
     (Entity_symbol_t.Entity_proper_top_symbol
       (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset")),
    [2; 2; 2; 4; 1; 2; 1; 7; 2])]
);;

test_number 10 (
val_cal
(* : string *)
=
"  Moleculeset_symbol_t.Triangle_symbol sym_tre"
);;

test_number 11 (
Camlline_value_v.fullnameoffile "./" tag_cal
=
"./moleculeset_symbol_upgrading_let_est_of_ess_argument_est_tdot_ess_ass_v.ml"
);;

(**

Camlline_value_v.write tag_cal;; 

**)
  

