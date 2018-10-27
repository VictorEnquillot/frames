open Make_test_v;;

testing "Camlline_uno_camltype_value_v with
   Camlline_uno_camltype_value_u_chemicalset_symbol_atom_zerotied.ml";;

(* toplevel 
   #use "Camlline_uno_camltype_value_u_chemicalset_symbol_atom_zerotied.ml";;
*)

let nam_cod = "Camlline_uno_camltype_value_u_chemicalset_symbol_atom_zerotied.ml";;

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
    Contentfile_symbol_v.is_type_alone for_enp;; 
let for_cof = Contentfile_formula_v.retrieve tag_cof;;

let tag_usf = Doublet_list_v.find_if_left 
    Usagefile_symbol_v.is_implementation_off_usagefile_symbol for_cof;; 
let for_usf = Usagefile_formula_v.retrieve tag_usf;;

let tag_ite = Doublet_list_v.find_if_left 
    Item_symbol_v.is_typing for_usf;; 
let for_ite = Item_formula_v.retrieve tag_ite;;

let tag_cap = Doublet_list_v.find_if_left 
    Camlparagraph_symbol_v.is_type_definition_for_symbol for_ite;; 
let for_cap = Camlparagraph_formula_v.retrieve tag_cap;;

let tag_cal = Doublet_list_v.find_if_left 
    Camlline_symbol_v.is_camlline_uno_camltype_symbol_off_camlline_symbol for_cap;; 
let sym_cal = Tag_v.entity_off_tag tag_cal;;
let sym_cuc = Camlline_symbol_v.camlline_uno_camltype_symbol_off_camlline_symbol sym_cal;;
let soi_cal = Tag_v.sole_index_off_tag tag_cal;;
let for_cal = Camlline_formula_v.retrieve tag_cal;;

let val_cal = Camlline_value_v.make tag_cal;;

test_number 1 (
tag_cal
(* : Camlline_symbol_t.camlline_symbol * Sole_index_t.sole_index *)
=
  (Camlline_symbol_t.Camlline_uno_symbol
    (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
      Camlline_uno_camltype_symbol_t.Type_est_equal),
   [1; 2; 3; 1; 1; 3; 1; 1])
);;

test_number 2 (
for_ite
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
=
[(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
   (Camlparagraph_comment_symbol_t.Item_title "typing"),
  [1; 3; 1; 1; 3; 1; 1]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   Camlparagraph_endmarked_symbol_t.Type_definition_for_symbol,
  [2; 3; 1; 1; 3; 1; 1])]
);;

test_number 3 (
for_cap
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
=
[(Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Type_est_equal),
  [1; 2; 3; 1; 1; 3; 1; 1]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Pipe_Ess_bof_Ess_tdot_ess),
  [2; 2; 3; 1; 1; 3; 1; 1]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Pipe_Ess_bof_Ess_tdot_ess),
  [3; 2; 3; 1; 1; 3; 1; 1]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Pipe_Ess_bof_Ess_tdot_ess),
  [4; 2; 3; 1; 1; 3; 1; 1]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Pipe_Ess_bof_Ess_tdot_ess),
  [5; 2; 3; 1; 1; 3; 1; 1]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Double_semicolon),
  [6; 2; 3; 1; 1; 3; 1; 1])]
);;

test_number 4 (
for_cal
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
  =
[(
    (Entity_symbol_t.Topentity "atom_zerotied"),
  [1; 1; 2; 3; 1; 1; 3; 1; 1])]
);;

test_number 5 (
val_cal
(* : string *)
=
"type atom_zerotied_symbol ="
);;

test_number 6 (
Camlline_value_v.fullnameoffile "./" tag_cal
=
"./atom_zerotied_symbol_typing_type_definition_for_symbol_type_est_equal_t.ml"
);;
(*
Camlline_value_v.write tag_cal;;
*)

