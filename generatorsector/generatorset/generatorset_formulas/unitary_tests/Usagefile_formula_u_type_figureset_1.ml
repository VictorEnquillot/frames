open Make_test_v;;

testing "Usagefile_formula_u_type_figureset_1.ml";;

(* toplevel 
   #use "Usagefile_formula_u_type_figureset_1.ml";;

 *)

let nam_dos = "figureset";;
let nam_enp = "figureset";; 

let for_dos = Domainset_formula_v.retrieve tag_dos;;

let tag_cat = Doublet_list_v.find_if_left Category_symbol_v.is_symbol_off_category_symbol for_dos;; 
let for_cat = Category_formula_v.retrieve tag_cat;;

let tag_enp = Doublet_list_v.find_if_left (fun e -> Entity_symbol_v.string_off e = nam_enp) for_cat;; 
let for_enp = Entity_proper_formula_u_chemicalset_symbol_atom_zerotied.retrieve tag_enp;;

let tag_cof = Doublet_list_v.find_if_left 
    Contentfile_symbol_v.is_type_alone for_enp;; 
let for_cof = Contentfile_formula_v.retrieve tag_cof;;

let tag_usf = Doublet_list_v.find_if_left 
    Usagefile_symbol_v.is_implementation_off_usagefile_symbol for_cof;; 
let for_usf = Usagefile_formula_v.retrieve tag_usf;;

let knv_l = Register_v.entry_list Generatorset_symbol_by_sole_index_provider_v.generatorset_symbol_by_sole_index_register;;
let cou_knv = List.length knv_l;;

test_number 1 (
tag_cof
(* : Contentfile_symbol_t.contentfile_symbol * Sole_index_t.sole_index *)
=
(Contentfile_symbol_t.Type_alone, [1; 1; 1; 2])
);;

test_number 2 (
tag_usf
(* : Usagefile_symbol_t.usagefile_symbol * Sole_index_t.sole_index *)
=
(Usagefile_symbol_t.Implementation, [1; 1; 1; 1; 2])
);;

test_number 3 (
for_enp
(* : Contentfile_symbol_t.contentfile_symbol Tag_t.tag list *)
=
[(Contentfile_symbol_t.Type_alone, [1; 1; 1; 2]);
 (Contentfile_symbol_t.Value_alone, [2; 1; 1; 2])]
);;

test_number 4 (
for_usf
(* : Item_symbol_t.item_symbol Tag_t.tag list *)
  =
[(Item_symbol_t.Item_all_topsons_symbol Item_only_top_symbol_t.Heading,
  [1; 1; 1; 1; 1; 2]);
 (Item_symbol_t.Item_severalparagraph_symbol Item_only_top_symbol_t.Documenting,
  [2; 1; 1; 1; 1; 2]);
 (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Typing,
  [3; 1; 1; 1; 1; 2]);
 (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Ending,
  [4; 1; 1; 1; 1; 2])]
);;

let tag_cap_l = Usagefile_formula_v.camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_tag_list_off_usagefile_formula for_usf;;

let tag_cal_l = Usagefile_formula_v.camlline_tag_list_off_usagefile_formula for_usf;;


test_number 5 (
List_v.sublist_of_int_of_int_of_list 0 14 tag_cal_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
[(Camlline_symbol_t.Camlline_uno_symbol Camlline_uno_symbol_t.Camlfile_title,
  [1; 1; 1; 1; 1; 3; 1; 1]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Empty_line),
  [2; 1; 1; 1; 1; 3; 1; 1]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     (Camlline_constant_pervasive_symbol_t.Item_title "documenting")),
  [1; 1; 2; 1; 1; 3; 1; 1]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Empty_line),
  [2; 1; 2; 1; 1; 3; 1; 1]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     (Camlline_constant_pervasive_symbol_t.Item_title "typing")),
  [1; 1; 3; 1; 1; 3; 1; 1]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Empty_line),
  [2; 1; 3; 1; 1; 3; 1; 1]);
 (Camlline_symbol_t.Camlline_uno_symbol
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
  [6; 2; 3; 1; 1; 3; 1; 1]);
 (Camlline_symbol_t.Camlline_uno_symbol
   Camlline_uno_symbol_t.Camlfile_createdby,
  [1; 1; 4; 1; 1; 3; 1; 1])]
);;

