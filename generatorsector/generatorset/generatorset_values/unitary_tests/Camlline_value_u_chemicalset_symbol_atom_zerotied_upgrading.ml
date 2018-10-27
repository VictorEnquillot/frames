open Make_test_v;;

testing "Camlline_duo_function_symbol_value_v
   Camlline_value_u_chemicalset_symbol_atom_zerotied_upgrading.ml";;

(* toplevel 
   #use "Camlline_value_u_chemicalset_symbol_atom_zerotied_upgrading.ml";;
*)

let nam_cod = "Camlline_value_u_chemicalset_symbol_atom_zerotied_upgrading.ml";;

let fnd_enp = fun e -> Entity_symbol_v.string_off e = "atom_zerotied";;

let sym_dom = Domain_symbol_v.make "chemicalset";;
let soi_dom = [1];;
let gss_dom = Generatorset_symbol_v.generatorset_symbol_of_domain_symbol sym_dom;;
Generatorset_symbol_by_sole_index_register_v.store soi_dom gss_dom;;
let tag_dom = Tag_v.make sym_dom soi_dom;;
let for_dom = Domain_formula_v.retrieve tag_dom;;

let tag_cat = Doublet_list_v.find_if_left 
    Category_symbol_v.is_symbol_off_category_symbol for_dom;; 
let for_cat = Category_formula_v.retrieve tag_cat;;

let tag_enp = Doublet_list_v.find_if_left fnd_enp for_cat;; 
let for_enp = Entity_formula_v.retrieve tag_enp;;

let tag_cof = Doublet_list_v.find_if_left 
    Contentfile_symbol_v.is_contentfile_value_alone_symbol_off_contentfile_symbol for_enp;; 
let for_cof = Contentfile_formula_v.retrieve tag_cof;;

let tag_usf = Doublet_list_v.find_if_left 
    Usagefile_symbol_v.is_implementation_off_usagefile_symbol for_cof;; 
let for_usf = Usagefile_formula_v.retrieve tag_usf;;

let tag_ite = Doublet_list_v.find_if_left 
    Item_symbol_v.is_upgrading for_usf;; 
let for_ite = Item_formula_v.retrieve tag_ite;;

let tag_cap = Doublet_list_v.find_if_left 
    Camlparagraph_symbol_v.is_let_est_of_ess_argument for_ite;;
let for_cap = Camlparagraph_formula_v.retrieve tag_cap;;

let tag_cal = Doublet_list_v.find_if_left 
    Camlline_symbol_v.is_let_est_of_ess_ass_equal for_cap;; 
let sym_cal = Tag_v.entity_off_tag tag_cal;;
let sym_cuc = Camlline_symbol_v.camlline_duo_function_symbol_off_camlline_symbol sym_cal;;
let soi_cal = Tag_v.sole_index_off_tag tag_cal;;
let for_cal = Camlline_formula_v.retrieve tag_cal;;
let val_cal = Camlline_value_v.make tag_cal;;

test_number 1 (
for_ite
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
=
[(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
   (Camlparagraph_comment_symbol_t.Item_title "upgrading"),
  [1; 7; 1; 2; 3; 1; 1]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_est_of_ess_argument)),
  [2; 7; 1; 2; 3; 1; 1]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_est_of_ess_argument)),
  [3; 7; 1; 2; 3; 1; 1]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_est_of_esc_argument)),
  [4; 7; 1; 2; 3; 1; 1]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_est_of_esc_argument)),
  [5; 7; 1; 2; 3; 1; 1]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_est_of_ess_argument)),
  [6; 7; 1; 2; 3; 1; 1]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_est_of_esc_argument)),
  [7; 7; 1; 2; 3; 1; 1]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_est_of_esc_argument)),
  [8; 7; 1; 2; 3; 1; 1]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_est_of_esc_argument)),
  [9; 7; 1; 2; 3; 1; 1]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_est_of_ess_argument)),
  [10; 7; 1; 2; 3; 1; 1])]
);;

test_number 2 (
tag_cap
(* : Camlparagraph_symbol_t.camlparagraph_symbol * Sole_index_t.sole_index *)
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
    (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
      Camlparagraph_endmarked_let_argument_symbol_t.Let_est_of_ess_argument)),
 [2; 7; 1; 2; 3; 1; 1])
);;

test_number 3 (
for_cap
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
[(Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Let_et_any_of_es_any_ac_as_equal),
  [1; 2; 7; 1; 2; 3; 1; 1]);
 (Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Space_Est_tdot_Ess_ass),
  [2; 2; 7; 1; 2; 3; 1; 1]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Double_semicolon),
  [3; 2; 7; 1; 2; 3; 1; 1])]
);;

test_number 4 (
tag_cal
(* : Camlline_symbol_t.camlline_symbol * Sole_index_t.sole_index *)
=
(Camlline_symbol_t.Camlline_duo_symbol
  (Camlline_duo_symbol_t.Camlline_duo_function_symbol
    Camlline_duo_function_symbol_t.Let_et_any_of_es_any_ac_as_equal),
 [1; 2; 7; 1; 2; 3; 1; 1])
);;

test_number 5 (
for_cal
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
[(
   (Entity_symbol_t.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "atom_zerotied_raregas")),
  [1; 1; 2; 7; 1; 2; 3; 1; 1]);
 (
   (Entity_symbol_t.Topentity "atom_zerotied"),
  [2; 1; 2; 7; 1; 2; 3; 1; 1])]
);;

test_number 6 (
val_cal
(* : string *)
=
"let atom_zerotied_symbol_of_atom_zerotied_raregas_symbol sym_a0r = "
);;

test_number 7 (
Camlline_value_v.fullnameoffile "./" tag_cal
=
"./atom_zerotied_symbol_upgrading_let_est_of_ess_argument_let_est_of_ess_ass_equal_v.ml"
);;

(**
Camlline_value_v.write "./" tag_cal;; 
**)
  

