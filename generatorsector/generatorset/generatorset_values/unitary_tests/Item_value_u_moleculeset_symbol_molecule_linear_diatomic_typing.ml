open Make_test_v;;

testing "Item_value_v with
   Item_value_u_moleculeset_symbol_molecule_linear_diatomic_typing.ml";;
   
(* toplevel 
   #use "Item_value_u_moleculeset_symbol_molecule_linear_diatomic_typing.ml";;
         
*)

let nam_cod = "Item_value_u_moleculeset_symbol_molecule_linear_diatomic_typing.ml";;

let nam_dom = "moleculeset";;
let nam_enp = "molecule_linear_diatomic";;
let idx_dom = Domain_symbol_v.domainset_index_of_domainset_name nam_dom;;
let soi_dom = Sole_index_v.make idx_dom [];;
let sym_dom = Domain_symbol_v.make nam_dom "";;

let fnd_cat = Category_symbol_v.is_symbol_off_category_symbol;;
let fnd_enp = (fun e -> Entity_symbol_v.string_off e = nam_enp)
let fnd_cof = Contentfile_symbol_v.is_type_alone;;
let fnd_usf = Usagefile_symbol_v.is_implementation_off_usagefile_symbol;; 
let fnd_ite = Item_symbol_v.is_typing;;

let fnd_cap = Camlparagraph_symbol_v.is_type_definition_for_symbol;;
let fnd_cal = Camlline_symbol_v.is_pipe_ess_bof_ess_tdot_ess;;

let gss_dom = Generatorset_symbol_v.generatorset_symbol_of_domain_symbol sym_dom;;
Generatorset_symbol_by_sole_index_register_v.store_force soi_dom gss_dom;;
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

let val_ite = Item_value_v.make tag_ite;;

test_number 1 (
tag_ite
(* Camlparagraph_symbol_t.camlparagraph_symbol * Sole_index_t.sole_index *)
=
  (Item_symbol_t.Item_oneparagraph_symbol Item_oneparagraph_symbol_t.Typing,
   [3; 1; 1; 7; 3; 3])
);;

test_number 2 (
for_ite
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
=
  [(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
     (Camlparagraph_comment_symbol_t.Item_title "typing"),
    [1; 3; 1; 1; 7; 3; 3]);
   (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
     Camlparagraph_endmarked_symbol_t.Type_definition_for_symbol,
    [2; 3; 1; 1; 7; 3; 3])]
);;

test_number 3 (
val_ite
(* : string list list *)
=
[["(** {6 Typing} *)"; 
  ""];
 
 ["type molecule_linear_diatomic_symbol ="; 
  "  | Carbonmonoxide";
  "  | Dihydrogen"; 
  "  | Dinitrogen"; 
  "  | Dioxygen"; 
  "  | Hydrogenchloride";
  "  | Hydrogenfluoride"; 
  ";;"]]
);;

test_number 4 (
Item_value_v.fullnameoffile "./" tag_ite
=
"./molecule_linear_diatomic_symbol_typing_t.ml"
);;

Item_value_v.write "./" tag_ite;;

