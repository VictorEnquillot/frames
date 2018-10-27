open Make_test_v;;

testing "Group_for_symbol_header_constant_interface_v with
   Group_for_symbol_header_constant_interface_u_figure_symbol_figure.ml";;

(* toplevel 
   #use "Group_for_symbol_header_constant_interface_u_figure_symbol_figure.ml";;

*)

let nam_dos = "figure";;
let sym_dos = Domain_symbol_v.make nam_dos "";;

let sym_cat_l = Domainset_interface_v.make sym_dos;;

let nam_cat = "symbol";;
let sym_cat = Category_symbol_v.make nam_cat;;
let dou_cat = (sym_cat, sym_dos) ;;

let enp_l = Category_interface_v.make_of_tuple dou_cat;;

let nam_ent = "entity_proper_with_sons";;
let str = "coordinate_cartesian";;
let sym_ent = Entity_symbol_v.make nam_ent str;;
let tri_ent = (sym_ent, sym_cat, sym_dos) ;;

let nam_cof = "value_alone";;
let sym_cof = Contentfile_symbol_v.make nam_cof;;
let qua_cof = (sym_cof, sym_ent, sym_cat, sym_dos) ;;

let sym_usf_l = Contentfile_interface_v.make_of_tuple qua_cof;;

let nam_uim = "implementation_for_symbol";;
let sym_uim = Usagefile_for_symbol_symbol_v.make nam_uim "";;
let sym_usf = Usagefile_symbol_v.make nam_uim "";;
let qui_uim = (sym_uim, sym_cof, sym_ent, sym_cat, sym_dos) ;;

let sym_ite_l = Usagefile_for_symbol_interface_v.make_of_tuple qui_uim;;

(* Item_for_symbol_by_group_topsons_symbol_t : Making_for_symbol *)

let nam_ifs = "Making_for_symbol";;
let str_ifs = "";;
let sym_ifs = Item_for_symbol_by_group_topsons_symbol_v.make nam_ifs str_ifs;;
let sym_cap_l = Item_for_symbol_by_group_topsons_interface_v.make sym_ifs;;

let idx_cap = 2;;
let sym_cap = List.nth sym_cap_l (idx_cap-1);;
let sym_cla = Camlparagraph_symbol_v.camlparagraph_for_symbol_let_argument_symbol_off_camlparagraph_symbol sym_cap;;

let sym_sec_l = Camlparagraph_for_symbol_let_argument_interface_v.make sym_cla;;

test_number 1 (
sym_sec_l
(* : Section_symbol_t.section_symbol list *)
=
 [Section_symbol_t.Section_for_symbol_symbol
    (Section_for_symbol_symbol_t.Section_for_symbol_header_symbol
      (Section_for_symbol_header_symbol_t.Section_for_symbol_header_constant_symbol
        Section_for_symbol_header_constant_symbol_t.Let_make_nam_s_equal));
   Section_symbol_t.Section_for_symbol_symbol
    (Section_for_symbol_symbol_t.Section_for_symbol_body_symbol
      (Section_for_symbol_body_symbol_t.Section_for_symbol_body_son_top_symbol
        Section_for_symbol_body_son_top_symbol_t.Try_make_of_topson_with_failure_arrow));
   Section_symbol_t.Section_for_symbol_symbol
    (Section_for_symbol_symbol_t.Section_for_symbol_footer_symbol
      (Section_for_symbol_footer_symbol_t.Section_for_symbol_footer_top_symbol
        Section_for_symbol_footer_top_symbol_t.Let_underscore_print_error_failwith_make))]
);;

let sym_sec = List.nth sym_sec_l 0;;
let sym_shc = Section_symbol_v.section_for_symbol_header_constant_symbol_off_section_symbol sym_sec;;
let sym_gro_l = Section_for_symbol_header_constant_interface_v.make sym_shc;;

test_number 2 (
sym_gro_l
(* : Group_symbol_t.group_symbol list *)
=
 [Group_symbol_t.Group_for_symbol_symbol
    (Group_for_symbol_symbol_t.Group_for_symbol_header_symbol
      (Group_for_symbol_header_symbol_t.Group_for_symbol_header_constant_symbol
        Group_for_symbol_header_constant_symbol_t.Let_make_nam_s_equal))]
);;

let sym_gro = List.nth sym_gro_l 0;;
let sym_ghc = Group_symbol_v.group_for_symbol_header_constant_symbol_off_group_symbol sym_gro;;

let sym_cal_l = Group_for_symbol_header_constant_interface_v.make sym_ghc;;

test_number 3 (
sym_cal_l 
(* : Camlline_symbol_t.camlline_symbol list *)
=
  [Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_function_symbol
      Camlline_constant_function_symbol_t.Let_make_nam_s_equal)]
);;

let sym_cal = List.nth sym_cal_l 0;;
let sym_ccf = Camlline_symbol_v.camlline_constant_function_symbol_off_camlline_symbol sym_cal;;
let sym_ent_l = Camlline_constant_function_interface_v.make sym_ccf;;

test_number 4 (
sym_ent_l 
= 
[] 
);;

