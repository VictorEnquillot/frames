open Make_test_v;;

testing "Camlline_uno_module_documentingformula_u_1.ml";;

(* toplevel 
   #use "Camlline_uno_module_documentingformula_u_1.ml";;
*)


let val_tar = Target_data_v.make 
    "chemicalset" "atom_zerotied" "symbol" 
    "value" "implementation" "unconstrained"
;;

let tag_tar = Target_tag_v.make_of_string "current";;
Tdttp_v.store_force tag_tar val_tar;;
let for_tar = Target_formula_v.retrieve tag_tar;;

let tag_caf = List.hd for_tar;;
let for_caf = Contentfile_formula_v.retrieve tag_caf ;;

let tag_ite = List.find Item_tag_v.is_item_documenting for_caf;;
let for_ite = Item_formula_v.retrieve tag_ite;;

let tag_cap_1 = List.nth for_ite 0;;
let tag_cap_2 = List.nth for_ite 1;;
let tag_cap_3 = List.nth for_ite 2;;
let tag_cap_4 = List.nth for_ite 3;;
let tag_cap_5 = List.nth for_ite 4;;
let tag_cap_6 = List.nth for_ite 5;;
let tag_cap_7 = List.nth for_ite 6;;

let for_cap_1 = Camlparagraph_formula_v.retrieve tag_cap_1;;
let for_cap_2 = Camlparagraph_formula_v.retrieve tag_cap_2;;
let for_cap_3 = Camlparagraph_formula_v.retrieve tag_cap_3;;
let for_cap_4 = Camlparagraph_formula_v.retrieve tag_cap_4;;
let for_cap_5 = Camlparagraph_formula_v.retrieve tag_cap_5;;
let for_cap_6 = Camlparagraph_formula_v.retrieve tag_cap_6;;
let for_cap_7 = Camlparagraph_formula_v.retrieve tag_cap_7;;

let tag_cal_11 = List.nth for_cap_1 0;;
let tag_cal_21 = List.nth for_cap_2 0;;
let tag_cal_22 = List.nth for_cap_2 1;;
let tag_cal_31 = List.nth for_cap_3 0;;
let tag_cal_32 = List.nth for_cap_3 1;;
let tag_cal_41 = List.nth for_cap_4 0;;
let tag_cal_42 = List.nth for_cap_4 1;;
let tag_cal_51 = List.nth for_cap_5 0;;
let tag_cal_52 = List.nth for_cap_5 1;;
let tag_cal_61 = List.nth for_cap_6 0;;
let tag_cal_62 = List.nth for_cap_6 1;;
let tag_cal_71 = List.nth for_cap_7 0;;
let tag_cal_72 = List.nth for_cap_7 1;;

let for_cal_11 = Camlline_formula_v.retrieve tag_cal_11;;
let for_cal_21 = Camlline_formula_v.retrieve tag_cal_21;;
let for_cal_22 = Camlline_formula_v.retrieve tag_cal_22;;
let for_cal_31 = Camlline_formula_v.retrieve tag_cal_31;;
let for_cal_32 = Camlline_formula_v.retrieve tag_cal_32;;
let for_cal_41 = Camlline_formula_v.retrieve tag_cal_41;;
let for_cal_42 = Camlline_formula_v.retrieve tag_cal_42;;
let for_cal_51 = Camlline_formula_v.retrieve tag_cal_51;;
let for_cal_52 = Camlline_formula_v.retrieve tag_cal_52;;
let for_cal_61 = Camlline_formula_v.retrieve tag_cal_61;;
let for_cal_62 = Camlline_formula_v.retrieve tag_cal_62;;
let for_cal_71 = Camlline_formula_v.retrieve tag_cal_71;;
let for_cal_72 = Camlline_formula_v.retrieve tag_cal_72;;

test_number 1 (
tag_cap_1
(* : Iasvmuf_v.Tsisdcs_v.Camlparagraph_symbol_t.camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_module_symbol
    Camlparagraph_endmarked_symbol_t.Cems_t.Camlparagraph_endmarked_module),
 [1; 2; 1; 1])
);;

test_number 2 (
tag_cap_2
(* : Iasvmuf_v.Tsisdcs_v.Camlparagraph_symbol_t.camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_module_symbol
    Camlparagraph_endmarked_symbol_t.Cems_t.Camlparagraph_endmarked_module),
 [2; 2; 1; 1])
);;

test_number 3 (
tag_cap_3
(* : Iasvmuf_v.Tsisdcs_v.Camlparagraph_symbol_t.camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_module_symbol
    Camlparagraph_endmarked_symbol_t.Cems_t.Camlparagraph_endmarked_module),
 [3; 2; 1; 1])
);;

test_number 4 (
tag_cap_7
(* : Iasvmuf_v.Tsisdcs_v.Camlparagraph_symbol_t.camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_module_symbol
    Camlparagraph_endmarked_symbol_t.Cems_t.Camlparagraph_endmarked_module),
 [7; 2; 1; 1])
);;

test_number 5 (
for_cap_1 
(* : Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
[(Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Camlline_uno_symbol
   (Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Css_t.Camlline_uno_module_symbol
     Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Css_t.Camlline_uno_module_symbol_t.Module_Mx_t_equal_X_t),
  [1; 1; 2; 1; 1])]
);;

test_number 6 (
for_cap_2 
(* : Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
[(Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Camlline_uno_symbol
   (Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Css_t.Camlline_uno_module_symbol
     Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Css_t.Camlline_uno_module_symbol_t.Module_Mx_t_equal_X_t),
  [1; 2; 2; 1; 1]);
 (Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Camlline_uno_symbol
   (Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Css_t.Camlline_uno_module_symbol
     Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Css_t.Camlline_uno_module_symbol_t.Module_Mx_u_equal_X_v),
  [2; 2; 2; 1; 1])]
);;

test_number 7 (
for_cap_3 
(* : Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
[(Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Camlline_uno_symbol
   (Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Css_t.Camlline_uno_module_symbol
     Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Css_t.Camlline_uno_module_symbol_t.Module_Mx_t_equal_X_t),
  [1; 3; 2; 1; 1]);
 (Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Camlline_uno_symbol
   (Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Css_t.Camlline_uno_module_symbol
     Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Css_t.Camlline_uno_module_symbol_t.Module_Mx_u_equal_X_v),
  [2; 3; 2; 1; 1])]
);;

test_number 8 (
for_cap_7 
(* : Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
[(Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Camlline_uno_symbol
   (Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Css_t.Camlline_uno_module_symbol
     Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Css_t.Camlline_uno_module_symbol_t.Module_Mx_t_equal_X_t),
  [1; 7; 2; 1; 1]);
 (Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Camlline_uno_symbol
   (Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Css_t.Camlline_uno_module_symbol
     Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Css_t.Camlline_uno_module_symbol_t.Module_Mx_u_equal_X_v),
  [2; 7; 2; 1; 1])]
);;

test_number 9 (
Framestype_extended_symbol_doublet_list_by_camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_tag_provider_v.provide tag_cap_2
(* : (string, Framestype_extended_symbol_doublet_list_by_camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_tag_provider_v.Framestype_extended_symbol_t.framestype_extended_symbol)
    Framestype_extended_symbol_doublet_list_by_camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_tag_provider_v.Doublet_list_t.doublet_list *)
=
[("fxs_c",
  Framestype_extended_symbol_doublet_list_by_camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_tag_provider_v.Framestype_extended_symbol_t.Framestype_essential_symbol
   (Framestype_extended_symbol_doublet_list_by_camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_tag_provider_v.Framestype_extended_symbol_t.Fes_t.Framestype_essential_unconstrained_symbol
     (Framestype_extended_symbol_doublet_list_by_camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_tag_provider_v.Framestype_extended_symbol_t.Fes_t.Feus_t.Framestype_essential_unconstrained_polyconstructor
       "atom_zerotied_raregas")));
 ("fxs_s",
  Framestype_extended_symbol_doublet_list_by_camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_tag_provider_v.Framestype_extended_symbol_t.Framestype_essential_symbol
   (Framestype_extended_symbol_doublet_list_by_camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_tag_provider_v.Framestype_extended_symbol_t.Fes_t.Framestype_essential_unconstrained_symbol
     (Framestype_extended_symbol_doublet_list_by_camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_tag_provider_v.Framestype_extended_symbol_t.Fes_t.Feus_t.Framestype_essential_unconstrained_polyconstructor
       "atom_zerotied_raregas")));
 ("fxs_t",
  Framestype_extended_symbol_doublet_list_by_camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_tag_provider_v.Framestype_extended_symbol_t.Framestype_essential_symbol
   (Framestype_extended_symbol_doublet_list_by_camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_tag_provider_v.Framestype_extended_symbol_t.Fes_t.Framestype_essential_unconstrained_symbol
     (Framestype_extended_symbol_doublet_list_by_camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_tag_provider_v.Framestype_extended_symbol_t.Fes_t.Feus_t.Framestype_essential_unconstrained_polyconstructor
       "atom_zerotied")))]
);;

test_number 10 (
Framestype_extended_symbol_doublet_list_by_camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_tag_provider_v.provide tag_cap_3
(* : (string, Framestype_extended_symbol_doublet_list_by_camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_tag_provider_v.Framestype_extended_symbol_t.framestype_extended_symbol)
    Framestype_extended_symbol_doublet_list_by_camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_tag_provider_v.Doublet_list_t.doublet_list *)
=
[("fxs_c",
  Framestype_extended_symbol_doublet_list_by_camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_tag_provider_v.Framestype_extended_symbol_t.Framestype_essential_symbol
   (Framestype_extended_symbol_doublet_list_by_camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_tag_provider_v.Framestype_extended_symbol_t.Fes_t.Framestype_essential_unconstrained_symbol
     (Framestype_extended_symbol_doublet_list_by_camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_tag_provider_v.Framestype_extended_symbol_t.Fes_t.Feus_t.Framestype_essential_unconstrained_polyconstructor
       "atom_zerotied_anion")));
 ("fxs_s",
  Framestype_extended_symbol_doublet_list_by_camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_tag_provider_v.Framestype_extended_symbol_t.Framestype_essential_symbol
   (Framestype_extended_symbol_doublet_list_by_camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_tag_provider_v.Framestype_extended_symbol_t.Fes_t.Framestype_essential_unconstrained_symbol
     (Framestype_extended_symbol_doublet_list_by_camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_tag_provider_v.Framestype_extended_symbol_t.Fes_t.Feus_t.Framestype_essential_unconstrained_polyconstructor
       "atom_zerotied_anion")));
 ("fxs_t",
  Framestype_extended_symbol_doublet_list_by_camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_tag_provider_v.Framestype_extended_symbol_t.Framestype_essential_symbol
   (Framestype_extended_symbol_doublet_list_by_camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_tag_provider_v.Framestype_extended_symbol_t.Fes_t.Framestype_essential_unconstrained_symbol
     (Framestype_extended_symbol_doublet_list_by_camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_tag_provider_v.Framestype_extended_symbol_t.Fes_t.Feus_t.Framestype_essential_unconstrained_polyconstructor
       "atom_zerotied")))]
);;

test_number 11 (
Framestype_extended_symbol_doublet_list_by_camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_tag_provider_v.provide tag_cap_7
(* : (string, Framestype_extended_symbol_doublet_list_by_camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_tag_provider_v.Framestype_extended_symbol_t.framestype_extended_symbol)
    Framestype_extended_symbol_doublet_list_by_camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_tag_provider_v.Doublet_list_t.doublet_list *)
=
[("fxs_c",
  Framestype_extended_symbol_doublet_list_by_camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_tag_provider_v.Framestype_extended_symbol_t.Framestype_essential_symbol
   (Framestype_extended_symbol_doublet_list_by_camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_tag_provider_v.Framestype_extended_symbol_t.Fes_t.Framestype_essential_unconstrained_symbol
     (Framestype_extended_symbol_doublet_list_by_camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_tag_provider_v.Framestype_extended_symbol_t.Fes_t.Feus_t.Framestype_essential_unconstrained_polyconstructor
       "atom_zerotied_cation_plusthree")));
 ("fxs_s",
  Framestype_extended_symbol_doublet_list_by_camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_tag_provider_v.Framestype_extended_symbol_t.Framestype_essential_symbol
   (Framestype_extended_symbol_doublet_list_by_camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_tag_provider_v.Framestype_extended_symbol_t.Fes_t.Framestype_essential_unconstrained_symbol
     (Framestype_extended_symbol_doublet_list_by_camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_tag_provider_v.Framestype_extended_symbol_t.Fes_t.Feus_t.Framestype_essential_unconstrained_polyconstructor
       "atom_zerotied_cation")));
 ("fxs_t",
  Framestype_extended_symbol_doublet_list_by_camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_tag_provider_v.Framestype_extended_symbol_t.Framestype_essential_symbol
   (Framestype_extended_symbol_doublet_list_by_camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_tag_provider_v.Framestype_extended_symbol_t.Fes_t.Framestype_essential_unconstrained_symbol
     (Framestype_extended_symbol_doublet_list_by_camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_tag_provider_v.Framestype_extended_symbol_t.Fes_t.Feus_t.Framestype_essential_unconstrained_polyconstructor
       "atom_zerotied")))]
);;

test_number 12 ( 
tag_cal_11 
(* : Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
(Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Camlline_uno_symbol
  (Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Css_t.Camlline_uno_module_symbol
    Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Css_t.Camlline_uno_module_symbol_t.Module_Mx_t_equal_X_t),
 [1; 1; 2; 1; 1])
);;

test_number 13 ( 
tag_cal_21 
(* : Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
(Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Camlline_uno_symbol
  (Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Css_t.Camlline_uno_module_symbol
    Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Css_t.Camlline_uno_module_symbol_t.Module_Mx_t_equal_X_t),
 [1; 2; 2; 1; 1])
);;

test_number 14 ( 
tag_cal_22 
(* : Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
(Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Camlline_uno_symbol
  (Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Css_t.Camlline_uno_module_symbol
    Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Css_t.Camlline_uno_module_symbol_t.Module_Mx_u_equal_X_v),
 [2; 2; 2; 1; 1])
);;

test_number 15 ( 
tag_cal_31 
(* : Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
(Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Camlline_uno_symbol
  (Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Css_t.Camlline_uno_module_symbol
    Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Css_t.Camlline_uno_module_symbol_t.Module_Mx_t_equal_X_t),
 [1; 3; 2; 1; 1])
);;

test_number 16 ( 
tag_cal_32 
(* : Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
(Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Camlline_uno_symbol
  (Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Css_t.Camlline_uno_module_symbol
    Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Css_t.Camlline_uno_module_symbol_t.Module_Mx_u_equal_X_v),
 [2; 3; 2; 1; 1])
);;

test_number 17 ( 
tag_cal_71 
(* : Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
(Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Camlline_uno_symbol
  (Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Css_t.Camlline_uno_module_symbol
    Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Css_t.Camlline_uno_module_symbol_t.Module_Mx_t_equal_X_t),
 [1; 7; 2; 1; 1])
);;

test_number 18 ( 
tag_cal_72
(* : Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
(Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Camlline_uno_symbol
  (Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Css_t.Camlline_uno_module_symbol
    Camlparagraph_formula_v.Ccf_v.Camlline_symbol_t.Css_t.Camlline_uno_module_symbol_t.Module_Mx_u_equal_X_v),
 [2; 7; 2; 1; 1])
);;

test_number 19 (
for_cal_11
(* : Framestype_extended_symbol_t.framestype_extended_symbol list *) 
=
[Framestype_extended_symbol_t.Framestype_essential_symbol
  (Fes_t.Framestype_essential_unconstrained_symbol
    (Fes_t.Feus_t.Framestype_essential_unconstrained_polyconstructor
      "atom_zerotied"))]
);;

test_number 20 (
for_cal_21
(* : Framestype_extended_symbol_t.framestype_extended_symbol list *) 
=
[Framestype_extended_symbol_t.Framestype_essential_symbol
  (Fes_t.Framestype_essential_unconstrained_symbol
    (Fes_t.Feus_t.Framestype_essential_unconstrained_polyconstructor
      "atom_zerotied_raregas"))]
);;

test_number 21 (
for_cal_22
(* : Framestype_extended_symbol_t.framestype_extended_symbol list *) 
=
[Framestype_extended_symbol_t.Framestype_essential_symbol
  (Framestype_extended_symbol_t.Fes_t.Framestype_essential_unconstrained_symbol
    (Framestype_extended_symbol_t.Fes_t.Feus_t.Framestype_essential_unconstrained_polyconstructor
      "atom_zerotied_raregas"))]
);;

test_number 22 (
for_cal_31
(* : Framestype_extended_symbol_t.framestype_extended_symbol list *) 
=
[Framestype_extended_symbol_t.Framestype_essential_symbol
  (Framestype_extended_symbol_t.Fes_t.Framestype_essential_unconstrained_symbol
    (Framestype_extended_symbol_t.Fes_t.Feus_t.Framestype_essential_unconstrained_polyconstructor
      "atom_zerotied_anion"))]
);;

test_number 23 (
for_cal_32
(* : Framestype_extended_symbol_t.framestype_extended_symbol list *) 
=
[Framestype_extended_symbol_t.Framestype_essential_symbol
  (Framestype_extended_symbol_t.Fes_t.Framestype_essential_unconstrained_symbol
    (Framestype_extended_symbol_t.Fes_t.Feus_t.Framestype_essential_unconstrained_polyconstructor
      "atom_zerotied_anion"))]
);;

test_number 24 (
for_cal_41
(* : Framestype_extended_symbol_t.framestype_extended_symbol list *) 
=
[Framestype_extended_symbol_t.Framestype_essential_symbol
  (Framestype_extended_symbol_t.Fes_t.Framestype_essential_unconstrained_symbol
    (Framestype_extended_symbol_t.Fes_t.Feus_t.Framestype_essential_unconstrained_polyconstructor
      "atom_zerotied_cation"))]
);;

test_number 25 (
for_cal_42
(* : Framestype_extended_symbol_t.framestype_extended_symbol list *) 
=
[Framestype_extended_symbol_t.Framestype_essential_symbol
  (Framestype_extended_symbol_t.Fes_t.Framestype_essential_unconstrained_symbol
    (Framestype_extended_symbol_t.Fes_t.Feus_t.Framestype_essential_unconstrained_polyconstructor
      "atom_zerotied_cation"))]
);;

test_number 26 (
for_cal_51
(* : Framestype_extended_symbol_t.framestype_extended_symbol list *) 
=
[Framestype_extended_symbol_t.Framestype_essential_symbol
  (Framestype_extended_symbol_t.Fes_t.Framestype_essential_unconstrained_symbol
    (Framestype_extended_symbol_t.Fes_t.Feus_t.Framestype_essential_unconstrained_polyconstructor
      "atom_zerotied_cation_plusone"))]
);;

test_number 27 (
for_cal_52
(* : Framestype_extended_symbol_t.framestype_extended_symbol list *) 
=
[Framestype_extended_symbol_t.Framestype_essential_symbol
  (Framestype_extended_symbol_t.Fes_t.Framestype_essential_unconstrained_symbol
    (Framestype_extended_symbol_t.Fes_t.Feus_t.Framestype_essential_unconstrained_polyconstructor
      "atom_zerotied_cation_plusone"))]
);;

test_number 28 (
for_cal_61
(* : Framestype_extended_symbol_t.framestype_extended_symbol list *) 
=
[Framestype_extended_symbol_t.Framestype_essential_symbol
  (Framestype_extended_symbol_t.Fes_t.Framestype_essential_unconstrained_symbol
    (Framestype_extended_symbol_t.Fes_t.Feus_t.Framestype_essential_unconstrained_polyconstructor
      "atom_zerotied_cation_plustwo"))]
);;

test_number 29 (
for_cal_62
(* : Framestype_extended_symbol_t.framestype_extended_symbol list *) 
=
[Framestype_extended_symbol_t.Framestype_essential_symbol
  (Framestype_extended_symbol_t.Fes_t.Framestype_essential_unconstrained_symbol
    (Framestype_extended_symbol_t.Fes_t.Feus_t.Framestype_essential_unconstrained_polyconstructor
      "atom_zerotied_cation_plustwo"))]
);;


test_number 30 (
for_cal_71
(* : Framestype_extended_symbol_t.framestype_extended_symbol list *) 
=
[Framestype_extended_symbol_t.Framestype_essential_symbol
  (Framestype_extended_symbol_t.Fes_t.Framestype_essential_unconstrained_symbol
    (Framestype_extended_symbol_t.Fes_t.Feus_t.Framestype_essential_unconstrained_polyconstructor
      "atom_zerotied_cation_plusthree"))]
);;

test_number 31 (
for_cal_72
(* : Framestype_extended_symbol_t.framestype_extended_symbol list *) 
=
[Framestype_extended_symbol_t.Framestype_essential_symbol
  (Framestype_extended_symbol_t.Fes_t.Framestype_essential_unconstrained_symbol
    (Framestype_extended_symbol_t.Fes_t.Feus_t.Framestype_essential_unconstrained_polyconstructor
      "atom_zerotied_cation_plusthree"))]
);;

