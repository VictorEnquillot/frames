open Make_test_v;;

testing "Creating atom_symbol_v.ml using Usagefile_value_u_1.ml";;

(* toplevel 
   #use "tatom_symbol_v.ml";;
*)

let sym_dom = Domain_symbol_v.make "chemicalset";;
let soi_dom = [1];;
let gss_dom = Generatorset_symbol_v.generatorset_symbol_of_domain_symbol sym_dom;;
Generatorset_symbol_by_sole_index_register_v.store soi_dom gss_dom;;
let tag_dom = Tag_v.make sym_dom soi_dom;;
let for_dom = Domain_formula_v.retrieve tag_dom;;

let tag_cat = Doublet_list_v.find_if_left 
    Category_symbol_v.is_symbol_off_category_symbol for_dom;; 
let for_cat = Category_formula_v.retrieve tag_cat;;

let tag_enp = Doublet_list_v.find_if_left (fun e -> Entity_symbol_v.string_off e = "atom") for_cat;;
let for_enp = Entity_formula_v.retrieve tag_enp;;

let tag_cof = Doublet_list_v.find_if_left 
    Contentfile_symbol_v.is_contentfile_value_alone_symbol_off_contentfile_symbol for_enp;; 
let for_cof = Contentfile_formula_v.retrieve tag_cof;;

let tag_usf = Doublet_list_v.find_if_left 
    Usagefile_symbol_v.is_implementation_off_usagefile_symbol for_cof;; 
let for_usf = Usagefile_formula_v.retrieve tag_usf;;

let val_usf = Usagefile_value_v.make tag_usf;;

test_number 1 (
tag_usf
(* : Item_symbol_t.usfm_symbol * Tag_t.Sid_t.sole_index *)
=
(Usagefile_symbol_t.Implementation, [1; 2; 2; 1; 1])
);;

test_number 2 (
for_usf
(* : Itt_t.item_tag Tag_t.tag list *)
=
[(Item_symbol_t.Item_heading, [1; 1; 2; 2; 1; 1]);
 (Item_symbol_t.Item_documenting, [2; 1; 2; 2; 1; 1]);
 (Item_symbol_t.Item_making, [3; 1; 2; 2; 1; 1]);
 (Item_symbol_t.Item_naming, [4; 1; 2; 2; 1; 1]);
 (Item_symbol_t.Item_extracting, [5; 1; 2; 2; 1; 1]);
 (Item_symbol_t.Item_querying, [6; 1; 2; 2; 1; 1]);
 (Item_symbol_t.Item_upgrading, [7; 1; 2; 2; 1; 1]);
 (Item_symbol_t.Item_abbreviating, [8; 1; 2; 2; 1; 1]);
 (Item_symbol_t.Item_ending, [9; 1; 2; 2; 1; 1])]
);;

test_number 3 (
Usagefile_value_v.fullnameoffile "./" tag_usf
=
"./atom_symbol_v.ml"
);;

Usagefile_value_v.write "./"  tag_usf;;


