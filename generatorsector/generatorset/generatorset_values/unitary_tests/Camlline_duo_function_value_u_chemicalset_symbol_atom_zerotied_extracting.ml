open Make_test_v;;

testing "Camlline_duo_function_value_v with
   Camlline_duo_function_value_u_chemicalset_symbol_atom_zerotied_extracting.ml";;

(* toplevel 
   #use "Camlline_duo_function_value_u_chemicalset_symbol_atom_zerotied_extracting.ml";;
*)

let nam_cod = "Camlline_duo_function_value_u_chemicalset_symbol_atom_zerotied_extracting.ml";;

let sym_dom = Domain_symbol_v.make "chemicalset";;
let soi_dom = [1];;
let gss_dom = Generatorset_symbol_v.generatorset_symbol_of_domain_symbol sym_dom;;
Generatorset_symbol_by_sole_index_register_v.store soi_dom gss_dom;;
let tag_dom = Tag_v.make sym_dom soi_dom;;
let for_dom = Domain_formula_v.retrieve tag_dom;;

let tag_cat = Doublet_list_v.find_if_left 
    Category_symbol_v.is_symbol_off_category_symbol for_dom;; 
let for_cat = Category_formula_v.retrieve tag_cat;;

let tag_enp = Doublet_list_v.find_if_left (fun e -> Entity_symbol_v.string_off e = "atom_zerotied") for_cat;;
let for_enp = Entity_formula_v.retrieve tag_enp;;

let tag_cof = Doublet_list_v.find_if_left 
    Contentfile_symbol_v.is_contentfile_value_alone_symbol_off_contentfile_symbol for_enp;; 
let for_cof = Contentfile_formula_v.retrieve tag_cof;;

let tag_usf = Doublet_list_v.find_if_left 
    Usagefile_symbol_v.is_implementation_off_usagefile_symbol for_cof;; 
let for_usf = Usagefile_formula_v.retrieve tag_usf;;

let tag_ite = Doublet_list_v.find_if_left 
    Item_symbol_v.is_extracting for_usf;; 
let for_ite = Item_formula_v.retrieve tag_ite;;

let tag_cap = Doublet_list_v.find_if_left 
    Camlparagraph_symbol_v.is_let_ess_off_est_function for_ite;;
let for_cap = Camlparagraph_formula_v.retrieve tag_cap;;

let tag_cal = Doublet_list_v.find_if_left 
    Camlline_symbol_v.is_let_ess_off_est_equal_function for_cap;; 
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
   (Camlparagraph_comment_symbol_t.Item_title "extracting"),
  [1; 5; 1; 2; 3; 1; 1]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_function_symbol
       Camlparagraph_endmarked_let_function_symbol_t.Let_ess_off_est_function)),
  [2; 5; 1; 2; 3; 1; 1]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_function_symbol
       Camlparagraph_endmarked_let_function_symbol_t.Let_ess_off_est_function)),
  [3; 5; 1; 2; 3; 1; 1]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_esc_off_est_argument)),
  [4; 5; 1; 2; 3; 1; 1]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_esc_off_est_argument)),
  [5; 5; 1; 2; 3; 1; 1]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_function_symbol
       Camlparagraph_endmarked_let_function_symbol_t.Let_ess_off_est_function)),
  [6; 5; 1; 2; 3; 1; 1]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_esc_off_est_argument)),
  [7; 5; 1; 2; 3; 1; 1]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_esc_off_est_argument)),
  [8; 5; 1; 2; 3; 1; 1]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_esc_off_est_argument)),
  [9; 5; 1; 2; 3; 1; 1]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_function_symbol
       Camlparagraph_endmarked_let_function_symbol_t.Let_ess_off_est_function)),
  [10; 5; 1; 2; 3; 1; 1])]
);;

test_number 2 (
tag_cap
(* : Camlparagraph_symbol_t.camlparagraph_symbol * Sole_index_t.sole_index *)
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
    (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_function_symbol
      Camlparagraph_endmarked_let_function_symbol_t.Let_ess_off_est_function)),
 [2; 5; 1; 2; 3; 1; 1])
);;

test_number 3 (
for_cap
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
[(Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Let_ess_off_est_equal_function),
  [1; 2; 5; 1; 2; 3; 1; 1]);
 (Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Pipe_Est_tdot_Ess_ass_arrow_ass),
  [2; 2; 5; 1; 2; 3; 1; 1]);
 (Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Pipe_print_fatal_error_ess_off_est_4_lines),
  [3; 2; 5; 1; 2; 3; 1; 1]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Double_semicolon),
  [4; 2; 5; 1; 2; 3; 1; 1])]
);;

test_number 4 (
tag_cal
(* : Camlline_symbol_t.camlline_symbol * Sole_index_t.sole_index *)
=
  (Camlline_symbol_t.Camlline_duo_symbol
    (Camlline_duo_symbol_t.Camlline_duo_function_symbol
      Camlline_duo_function_symbol_t.Let_ess_off_est_equal_function),
   [1; 2; 5; 1; 2; 3; 1; 1])
);;

test_number 5 (
for_cal
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
[(
   (Entity_symbol_t.Sonentity "atom_zerotied_raregas"),
  [1; 1; 2; 5; 1; 2; 3; 1; 1]);
 (
   (Entity_symbol_t.Topentity "atom_zerotied"),
  [2; 1; 2; 5; 1; 2; 3; 1; 1])]
);;

test_number 6 (
val_cal
(* : string *)
=
"let atom_zerotied_raregas_symbol_off_atom_zerotied_symbol = function"
);;

(***************
test_number 7 (
Camlline_value_v.fullnameoffile tag_cal
=
"./atom_zerotied_symbol_extracting_let_ess_off_est_function_let_ess_off_est_equal_function_v.ml"
);;

Camlline_value_v.write tag_cal;; 
*******)
  

