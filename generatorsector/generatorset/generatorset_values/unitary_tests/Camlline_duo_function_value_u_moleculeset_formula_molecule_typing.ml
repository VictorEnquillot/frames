open Make_test_v;;

testing "Camlline_duo_function_symbol_value with 
   Camlline_duo_function_value_u_moleculeset_formula_molecule_typing.ml"

(* toplevel 
   #use "Camlline_duo_function_value_u_moleculeset_formula_molecule_typing.ml";;

*)

let nam_cod = "Camlline_duo_function_value_u_moleculeset_formula_molecule_typing.ml";;

let nam_dom = "moleculeset";;
let nam_enp = "molecule";;
let idx_dom = Domain_symbol_v.domainset_index_of_domainset_name nam_dom;;
let soi_dom = Sole_index_v.make idx_dom [];;
let sym_dom = Domain_symbol_v.make nam_dom "";;

let fnd_cat = Category_symbol_v.is_formula_off_category_symbol;;
let fnd_enp = (fun e -> Entity_symbol_v.string_off e = nam_enp)
let fnd_cof = Contentfile_symbol_v.is_type_alone;;
let fnd_usf = Usagefile_symbol_v.is_implementation_off_usagefile_symbol;; 
let fnd_ite = Item_symbol_v.is_typing;;
let fnd_cap = Camlparagraph_symbol_v.is_type_definition_for_formula;;
let fnd_cal_typ = Camlline_symbol_v.is_type_eft_equal;;
let fnd_cal_pip = Camlline_symbol_v.is_pipe_ess_bof_mfs_tdot_efs;;

let gss_dom = Generatorset_symbol_v.generatorset_symbol_of_domain_symbol sym_dom;;
Generatorset_symbol_by_sole_index_register_v.store soi_dom gss_dom;;
let tag_dom = Tag_v.make sym_dom soi_dom;;
let for_dom = Domain_formula_v.retrieve tag_dom;;

let tag_cat = Doublet_list_v.find_if_left fnd_cat for_dom;; 
let for_cat = Category_formula_v.retrieve tag_cat;;

let tag_enp = Doublet_list_v.find_if_left fnd_enp for_cat;;
let for_enp = Entity_formula_v.retrieve tag_enp;;

let tag_cof = Doublet_list_v.find_if_left fnd_cof for_enp;;
let for_cof = Contentfile_formula_v.retrieve tag_cof;;

let tag_usf = Doublet_list_v.find_if_left fnd_usf for_cof;;
let for_usf = Usagefile_formula_v.retrieve tag_usf;;

let tag_ite = Doublet_list_v.find_if_left fnd_ite for_usf;;
let for_ite = Item_formula_v.retrieve tag_ite;;

let tag_cap = Doublet_list_v.find_if_left fnd_cap for_ite;;
let for_cap = Camlparagraph_formula_v.retrieve tag_cap;;

let tag_cal_typ = Doublet_list_v.find_if_left fnd_cal_typ for_cap;;
let sym_cal_typ = Tag_v.entity_off_tag tag_cal_typ;;
let sym_cuc_typ = Camlline_symbol_v.camlline_uno_camltype_symbol_off_camlline_symbol sym_cal_typ;;
let soi_cal_typ = Tag_v.sole_index_off_tag tag_cal_typ;;
let for_cal_typ = Camlline_formula_v.retrieve tag_cal_typ;;

let val_cal_typ = Camlline_value_v.make tag_cal_typ;;

let tag_cal_pip = Doublet_list_v.find_if_left fnd_cal_pip for_cap;;
let sym_cal_pip = Tag_v.entity_off_tag tag_cal_pip;;
let sym_cuc_pip = Camlline_symbol_v.camlline_uno_camltype_symbol_off_camlline_symbol sym_cal_pip;;
let soi_cal_pip = Tag_v.sole_index_off_tag tag_cal_pip;;
let for_cal_pip = Camlline_formula_v.retrieve tag_cal_pip;;

let val_cal_pip = Camlline_value_v.make tag_cal_pip;;

test_number 1 (
tag_ite
(* : Item_symbol_t.item_symbol * Sole_index_t.sole_index *)
  =
(Item_symbol_t.Item_oneparagraph_symbol Item_oneparagraph_symbol_t.Typing,
 [3; 1; 1; 4; 1; 3])
);;

test_number 2 (
for_ite
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
=
[(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
   (Camlparagraph_comment_symbol_t.Item_title "typing"),
  [1; 3; 1; 1; 4; 1; 3]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   Camlparagraph_endmarked_symbol_t.Type_definition_for_formula,
  [2; 3; 1; 1; 4; 1; 3])]
);;

test_number 3 (
tag_cap
(* : Camlparagraph_symbol_t.camlparagraph_symbol * Sole_index_t.sole_index *)
=
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
    Camlparagraph_endmarked_symbol_t.Type_definition_for_formula,
   [2; 3; 1; 1; 4; 1; 3])
);;

test_number 4 (
for_cap
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
[(Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Type_eft_equal),
  [1; 2; 3; 1; 1; 4; 1; 3]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Pipe_Efs_bof_Efs_tdot_efs),
  [2; 2; 3; 1; 1; 4; 1; 3]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Pipe_Efs_bof_Efs_tdot_efs),
  [3; 2; 3; 1; 1; 4; 1; 3]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Pipe_Efs_bof_Efs_tdot_efs),
  [4; 2; 3; 1; 1; 4; 1; 3]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Double_semicolon),
  [5; 2; 3; 1; 1; 4; 1; 3])]
);;

test_number 5 (
tag_cal_typ
(* : Camlline_symbol_t.camlline_symbol * Sole_index_t.sole_index *)
=
(Camlline_symbol_t.Camlline_uno_symbol
  (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
    Camlline_uno_camltype_symbol_t.Type_eft_equal),
 [1; 2; 3; 1; 1; 4; 1; 3])
);;

test_number 6 (
for_cal_typ
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
= 
[(
   (Entity_symbol_t.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "molecule")),
  [1; 1; 2; 3; 1; 1; 4; 1; 3])]
);;

test_number 7 (
val_cal_typ
(* : string *)
=
"type molecule_formula ="
);;

test_number 8 (
tag_cal_pip
(* : Camlline_symbol_t.camlline_symbol * Sole_index_t.sole_index *)
=
(Camlline_symbol_t.Camlline_uno_symbol
  (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
    Camlline_uno_camltype_symbol_t.Pipe_Efs_bof_Efs_tdot_efs),
 [2; 2; 3; 1; 1; 4; 1; 3])
);;

test_number 9 (
for_cal_pip
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
= 
[(
   (Entity_symbol_t.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "molecule_forked")),
  [1; 2; 2; 3; 1; 1; 4; 1; 3])]
);;

test_number 10 (
val_cal_pip
(* : string *)
=
"  | Molecule_forked_formula of Molecule_forked_formula_t.molecule_forked_formula"
);;

(***************
test_number 11 (
Camlline_value_v.fullnameoffile tag_cal_pip
=
"./molecule__symbol_typing_let_ess_off_est_function_let_ess_off_est_equal_function_v.ml"
);;

Camlline_value_v.write tag_cal_pip;; 
*******)
  

