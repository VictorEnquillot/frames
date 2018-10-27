open Make_test_v;;

testing "Usagefile_formula_u_type_chemicalset_atom_zerotied.ml";;

(* toplevel 
   #use "Usagefile_formula_u_type_chemicalset_atom_zerotied.ml";;

*)

let nam_enp = "atom_zerotied";;
let sym_dos = Domainset_symbol_v.make "chemicalset";;
let soi_dos = [1];;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_register_v.store_force soi_dos gss_dos;;
let tag_dos = Tag_v.make sym_dos soi_dos;;
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

let tag_cal_l = Usagefile_formula_v.camlline_tag_list_off_usagefile_formula for_usf;;

let knv_l = Register_v.entry_list Generatorset_symbol_by_sole_index_provider_v.generatorset_symbol_by_sole_index_register;;
let cou_knv = List.length knv_l;;

test_number 1 (
tag_cof
(* : Usagefile_symbol_v.Usagefile_symbol_t.usagefile_symbol * Tag_t.Sole_index_t.sole_index *)
  =
(Contentfile_symbol_t.Type_alone, [1; 3; 1; 1])
);;

test_number 2 (
tag_usf
(* : Usagefile_symbol_v.Usagefile_symbol_t.usagefile_symbol * Tag_t.Sole_index_t.sole_index *)
  =
(Usagefile_symbol_t.Implementation, [1; 1; 3; 1; 1])
);;

test_number 3 (
for_usf
(* : Item_symbol_t.item_symbol Tag_t.tag list *)
=
[(Item_symbol_v.heading, [1; 1; 1; 3; 1; 1]);
 (Item_symbol_v.documenting, [2; 1; 1; 3; 1; 1]);
 (Item_symbol_v.typing, [3; 1; 1; 3; 1; 1]);
 (Item_symbol_v.ending, [4; 1; 1; 3; 1; 1])]
);;

test_number 4 (
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

