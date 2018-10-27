open Make_test_v;;

testing "Camlline_documenting_symbol_value_implementation_formula_u_1.ml";;

(* toplevel 
   #use "Camlline_documenting_symbol_value_implementation_formula_u_1.ml";;
*)

let sym_dos = Domainset_symbol_v.make "chemicalset";;
let soi_dos = [1];;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_register_v.store_force soi_dos gss_dos;;
let tag_dos = Tag_v.make sym_dos soi_dos;;
let for_dos = Domainset_formula_v.retrieve tag_dos;;

let tag_cat = Doublet_list_v.find_if_left 
    Category_symbol_v.is_symbol_off_category_symbol for_dos;; 
let for_cat = Category_formula_v.retrieve tag_cat;;

let tag_enp = Doublet_list_v.find_if_left (fun e -> Entity_symbol_v.string_off e = "atom_zerotied") for_cat;;
let for_enp = Entity_proper_formula_u_chemicalset_symbol_atom_zerotied.retrieve tag_enp;;


let tag_cof = Doublet_list_v.find_if_left 
    Contentfile_symbol_v.is_value_alone for_enp;; 
let for_cof = Contentfile_formula_v.retrieve tag_cof;;

let tag_usf = Doublet_list_v.find_if_left 
    Usagefile_symbol_v.is_implementation_off_usagefile_symbol for_cof;; 
let for_usf = Usagefile_formula_v.retrieve tag_usf;;

let tag_ite = Doublet_list_v.find_if_left 
    Item_symbol_v.is_item_documenting_off_item_symbol for_usf;; 
let for_ite = Item_formula_v.retrieve tag_ite;;

let tag_cap_1 = List.nth for_ite 0;;
let tag_cap_2 = List.nth for_ite 1;;
let tag_cap_3 = List.nth for_ite 2;;
let tag_cap_4 = List.nth for_ite 3;;
let tag_cap_5 = List.nth for_ite 4;;
let tag_cap_6 = List.nth for_ite 5;;
let tag_cap_7 = List.nth for_ite 6;;
let tag_cap_8 = List.nth for_ite 7;;

let for_cap_1 = Camlparagraph_formula_v.retrieve tag_cap_1;;
let for_cap_2 = Camlparagraph_formula_v.retrieve tag_cap_2;;
let for_cap_3 = Camlparagraph_formula_v.retrieve tag_cap_3;;
let for_cap_4 = Camlparagraph_formula_v.retrieve tag_cap_4;;
let for_cap_5 = Camlparagraph_formula_v.retrieve tag_cap_5;;
let for_cap_6 = Camlparagraph_formula_v.retrieve tag_cap_6;;
let for_cap_7 = Camlparagraph_formula_v.retrieve tag_cap_7;;
let for_cap_8 = Camlparagraph_formula_v.retrieve tag_cap_8;;

let cou_for_cap_1 = List.length for_cap_1;;
let cou_for_cap_4 = List.length for_cap_4;;
let cou_for_cap_8 = List.length for_cap_8;;

let tag_cal_11 = List.nth for_cap_1 0;;
let tag_cal_12 = List.nth for_cap_1 1;;

let for_cal_11 = Camlline_formula_v.retrieve tag_cal_11;;
let for_cal_12 = Camlline_formula_v.retrieve tag_cal_12;;
let cou_for_cal_11 = List.length for_cal_11;;
let cou_for_cal_12 = List.length for_cal_12;;

let tag_cal_41 = List.nth for_cap_4 0;;
let tag_cal_42 = List.nth for_cap_4 1;;

let for_cal_41 = Camlline_formula_v.retrieve tag_cal_41;;
let for_cal_42 = Camlline_formula_v.retrieve tag_cal_42;;
let cou_for_cal_41 = List.length for_cal_41;;
let cou_for_cal_42 = List.length for_cal_42;;

let tag_cal_81 = List.nth for_cap_8 0;;
let tag_cal_82 = List.nth for_cap_8 1;;

let for_cal_81 = Camlline_formula_v.retrieve tag_cal_81;;
let for_cal_82 = Camlline_formula_v.retrieve tag_cal_82;;
let cou_for_cal_81 = List.length for_cal_81;;
let cou_for_cal_82 = List.length for_cal_82;;

test_number 1 (
cou_for_cap_1
  =
2
);;

test_number 2 (
tag_cap_1
(* : Item_upgrading_symbol_value_implementation_formula_v.Tsisdcs_v.Camlparagraph_symbol_t.camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_module,
 [1; 2; 1; 2; 3; 1; 1])
);;

test_number 3 (
for_cap_1 
(* : Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
[(Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_module_symbol
     Camlline_uno_module_symbol_t.Module_Mx_t_equal_X_t),
  [1; 1; 2; 1; 2; 3; 1; 1]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_module_symbol
     Camlline_uno_module_symbol_t.Module_Mx_u_equal_X_v),
  [2; 1; 2; 1; 2; 3; 1; 1])]
);;

test_number 4 (
for_cal_11
(* : Camlline_formula_v.Camlline_proformula_v. Tag_t.tag list *)
=
[(
   (Entity_symbol_t.Topentity "atom_zerotied"),
  [1; 1; 1; 2; 1; 2; 3; 1; 1])]
);;

test_number 5 (
for_cal_12
(* : Camlline_formula_v.Camlline_proformula_v. Tag_t.tag list *) 
  =
[(
   (Entity_symbol_t.Topentity "atom_zerotied"),
  [1; 2; 1; 2; 1; 2; 3; 1; 1])]
);;

test_number 6 (
cou_for_cap_4
  =
2
);;

test_number 7 (
tag_cap_4
(* : Item_upgrading_symbol_value_implementation_formula_v.Tsisdcs_v.Camlparagraph_symbol_t.camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_module,
 [4; 2; 1; 2; 3; 1; 1])
);;

test_number 8 (
for_cap_4 
(* : Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
[(Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_module_symbol
     Camlline_uno_module_symbol_t.Module_Mx_t_equal_X_t),
  [1; 4; 2; 1; 2; 3; 1; 1]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_module_symbol
     Camlline_uno_module_symbol_t.Module_Mx_u_equal_X_v),
  [2; 4; 2; 1; 2; 3; 1; 1])]
);;

test_number 9 (
for_cal_41
(* : Camlline_formula_v.Camlline_proformula_v. Tag_t.tag list *)
=
[(
   (Entity_symbol_t.Sonentity "atom_zerotied_cation"),
  [1; 1; 4; 2; 1; 2; 3; 1; 1])]
);;

test_number 10 (
for_cal_42
(* : Camlline_formula_v.Camlline_proformula_v. Tag_t.tag list *) 
  =
[(
   (Entity_symbol_t.Sonentity "atom_zerotied_cation"),
  [1; 2; 4; 2; 1; 2; 3; 1; 1])]
);;

test_number 11 (
cou_for_cap_8
  =
2
);;

test_number 12 (
tag_cap_8
(* : Item_upgrading_symbol_value_implementation_formula_v.Tsisdcs_v.Camlparagraph_symbol_t.camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_module,
 [8; 2; 1; 2; 3; 1; 1])
);;

test_number 13 (
for_cap_8 
(* : Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
[(Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_module_symbol
     Camlline_uno_module_symbol_t.Module_Mx_t_equal_X_t),
  [1; 8; 2; 1; 2; 3; 1; 1]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_module_symbol
     Camlline_uno_module_symbol_t.Module_Mx_u_equal_X_v),
  [2; 8; 2; 1; 2; 3; 1; 1])]
);;

test_number 14 (
tag_cal_81
(* : Camlparagraph_formula_v.Entity_symbol_list_n_camlline_symbol_list_by_camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_tag_provider_v.Translation_entity_symbol_to_couple_list_with_camlline_symbol_v.Camlline_symbol_v.Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
(Camlline_symbol_t.Camlline_uno_symbol
  (Camlline_uno_symbol_t.Camlline_uno_module_symbol
    Camlline_uno_module_symbol_t.Module_Mx_t_equal_X_t),
 [1; 8; 2; 1; 2; 3; 1; 1])
);;

test_number 15 (
for_cal_81
(* : Camlline_formula_v.Camlline_proformula_v. Tag_t.tag list *)
=
[(
   (Entity_symbol_t.Sonentity "halfbridge"),
  [1; 1; 8; 2; 1; 2; 3; 1; 1])]
);;

test_number 16 (
tag_cal_82
=
(Camlline_symbol_t.Camlline_uno_symbol
  (Camlline_uno_symbol_t.Camlline_uno_module_symbol
    Camlline_uno_module_symbol_t.Module_Mx_u_equal_X_v),
 [2; 8; 2; 1; 2; 3; 1; 1])
);;

test_number 17 (
for_cal_82
(* : Camlline_formula_v.Camlline_proformula_v. Tag_t.tag list *) 
  =
[(
   (Entity_symbol_t.Sonentity "halfbridge"),
  [1; 2; 8; 2; 1; 2; 3; 1; 1])]
);;
