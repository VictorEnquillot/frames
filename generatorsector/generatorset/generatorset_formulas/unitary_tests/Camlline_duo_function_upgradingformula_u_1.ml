open Make_test_v;;

testing "Camlline_duo_function_upgradingformula_u_1.ml";;

(* toplevel 
   #use "Camlline_duo_function_upgradingformula_u_1.ml";;
*)


let val_tar = Target_data_v.make 
    "chemicalset" "atom_zerotied" "symbol" 
    "value" "implementation" "unconstrained"
;;

let tag_tar = Target_tag_v.make_of_string "current";;
Tdttp_v.store_force tag_tar val_tar;;
let soi_tar = Tag_v.sole_index_off_tag tag_tar;;

let soi_caf = 1 :: soi_tar;;

let sym_ite = Item_symbol_v.upgrading;;
let sym_ite_l = Item_symbol_list_by_category_n_content_n_usage_provider_v.provide sym_cat sym_cof sym_usf ;;
let idx_ite = 1 + (List_v.index_of_element_of_list sym_ite sym_ite_l);;
let sid_ite = idx_ite :: soi_caf;;
let tag_ite = Tag_v.make sym_ite sid_ite;;
Generatorset_symbol_by_sole_index_register_v.store_force sid_ite (Generatorset_symbol_t.Item_symbol sym_ite);;

let for_ite = Item_upgrading_symbol_value_implementation_formula_v.retrieve tag_ite;;

let tag_cap_4 = List.nth for_ite 3;;

let sym_cap_4 = Tag_v.symbol_off_tag tag_cap_4;;
let soi_cap_4 = Tag_v.sole_index_off_tag tag_cap_4;;
Generatorset_symbol_by_sole_index_register_v.store_force soi_cap_4 (Generatorset_symbol_t.Camlparagraph_symbol sym_cap_4);;

let sym_cdf_41 = Camlline_duo_function_symbol_t.Let_et_any_of_ec_any_space_ac_ac_equal;;
let soi_cal_41 = 1 :: soi_cap_4;;

let sym_cdf_42 = Camlline_duo_function_symbol_t.Let_ass_equal_ess_off_est_space_ast_in;;
let soi_cal_42 = 2 :: soi_cap_4;;

let sym_cdf_43 = Camlline_duo_function_symbol_t.Ass_vdot_esc_off_ess_space_ass;;
let soi_cal_43 = 3 :: soi_cap_4;;

let for_cap_4 = Camlparagraph_formula_v.retrieve tag_cap_4;;
let for_cal_41 = Camlline_duo_function_formula_v.retrieve sym_cdf_41 soi_cal_41;;
let for_cal_42 = Camlline_duo_function_formula_v.retrieve sym_cdf_42 soi_cal_42;;
let for_cal_43 = Camlline_duo_function_formula_v.retrieve sym_cdf_43 soi_cal_43;;

test_number 1 (
tag_cap_4
  =
(Item_upgrading_symbol_value_implementation_formula_v.Tsisdcs_v.Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Item_upgrading_symbol_value_implementation_formula_v.Tsisdcs_v.Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
      (Item_upgrading_symbol_value_implementation_formula_v.Tsisdcs_v.Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
	 Item_upgrading_symbol_value_implementation_formula_v.Tsisdcs_v.Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol_t.Let_est_of_esc_argument)),
 [4; 7; 1; 1]);
);;

test_number 2 (
for_cap_4 
(* : Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
[(Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Camlline_duo_symbol
   (Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Camlparagraph_symbol_t.Camlline_duo_function_symbol
     Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Camlparagraph_symbol_t.Camlline_duo_function_symbol_t.Let_et_any_of_ec_any_space_ac_ac_equal),
  [1; 4; 7; 1; 1]);
 (Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Camlline_duo_symbol
   (Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Camlparagraph_symbol_t.Camlline_duo_function_symbol
     Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Camlparagraph_symbol_t.Camlline_duo_function_symbol_t.Let_ass_equal_As_vdot_ess_of_esc_space_asc_in),
  [2; 4; 7; 1; 1]);
 (Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Camlline_duo_symbol
   (Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Camlparagraph_symbol_t.Camlline_duo_function_symbol
     Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Camlparagraph_symbol_t.Camlline_duo_function_symbol_t.Space_est_of_ess_space_ass),
  [3; 4; 7; 1; 1]);
 (Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Camlline_constant_symbol
   (Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol_t.Double_semicolon),
  [4; 4; 7; 1; 1])]
);;

test_number 3 (
Framestype_extended_symbol_doublet_list_by_camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_tag_provider_v.provide tag_cap_4
(* : (string * Framestype_extended_symbol_t.framestype_extended_symbol) list *)
=
[("fxs_c",
  Framestype_extended_symbol_t.Framestype_essential_symbol
   (Framestype_extended_symbol_t.Fes_t.Framestype_essential_unconstrained_symbol
     (Framestype_extended_symbol_t.Fes_t.Feus_t.Framestype_essential_unconstrained_polyconstructor
       "atom_zerotied_cation_plusone")));
 ("fxs_s",
  Framestype_extended_symbol_t.Framestype_essential_symbol
   (Framestype_extended_symbol_t.Fes_t.Framestype_essential_unconstrained_symbol
     (Framestype_extended_symbol_t.Fes_t.Feus_t.Framestype_essential_unconstrained_polyconstructor
       "atom_zerotied_cation")));
 ("fxs_t",
  Framestype_extended_symbol_t.Framestype_essential_symbol
   (Framestype_extended_symbol_t.Fes_t.Framestype_essential_unconstrained_symbol
     (Framestype_extended_symbol_t.Fes_t.Feus_t.Framestype_essential_unconstrained_polyconstructor
       "atom_zerotied")))]
);;

test_number 4 (
for_cal_41
(* : Framestype_extended_symbol_t.framestype_extended_symbol list *) 
=
[Framestype_extended_symbol_t.Framestype_essential_symbol
  (Framestype_extended_symbol_t.Fes_t.Framestype_essential_unconstrained_symbol
    (Framestype_extended_symbol_t.Fes_t.Feus_t.Framestype_essential_unconstrained_polyconstructor
      "atom_zerotied_cation_plusone"));
 Framestype_extended_symbol_t.Framestype_essential_symbol
  (Framestype_extended_symbol_t.Fes_t.Framestype_essential_unconstrained_symbol
    (Framestype_extended_symbol_t.Fes_t.Feus_t.Framestype_essential_unconstrained_polyconstructor
      "atom_zerotied"))]
);;

test_number 5 (
for_cal_42
(* : Framestype_extended_symbol_t.framestype_extended_symbol list *)
=
[Framestype_extended_symbol_t.Framestype_essential_symbol
  (Framestype_extended_symbol_t.Fes_t.Framestype_essential_unconstrained_symbol
    (Framestype_extended_symbol_t.Fes_t.Feus_t.Framestype_essential_unconstrained_polyconstructor
      "atom_zerotied_cation"));
 Framestype_extended_symbol_t.Framestype_essential_symbol
  (Framestype_extended_symbol_t.Fes_t.Framestype_essential_unconstrained_symbol
    (Framestype_extended_symbol_t.Fes_t.Feus_t.Framestype_essential_unconstrained_polyconstructor
      "atom_zerotied"))]
);;

test_number 6 (
for_cal_43
(* : Framestype_extended_symbol_t.framestype_extended_symbol list *)
=
[Framestype_extended_symbol_t.Framestype_essential_symbol
  (Framestype_extended_symbol_t.Fes_t.Framestype_essential_unconstrained_symbol
    (Framestype_extended_symbol_t.Fes_t.Feus_t.Framestype_essential_unconstrained_polyconstructor
      "atom_zerotied_cation_plusone"));
 Framestype_extended_symbol_t.Framestype_essential_symbol
  (Framestype_extended_symbol_t.Fes_t.Framestype_essential_unconstrained_symbol
    (Framestype_extended_symbol_t.Fes_t.Feus_t.Framestype_essential_unconstrained_polyconstructor
      "atom_zerotied_cation"))]
);;

