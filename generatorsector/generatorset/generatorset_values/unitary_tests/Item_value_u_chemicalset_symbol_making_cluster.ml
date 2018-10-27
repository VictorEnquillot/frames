open Make_test_v;;

testing "Item_value_v with
   Item_value_u_chemicalset_symbol_making_cluster.ml";;

(* toplevel 
   #use "Item_value_u_chemicalset_symbol_making_cluster.ml";;
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

let tag_enp = Doublet_list_v.find_if_left (fun e -> Entity_symbol_v.string_off e = "cluster") for_cat;;
let for_enp = Entity_formula_v.retrieve tag_enp;;

let tag_cof = Doublet_list_v.find_if_left 
    Contentfile_symbol_v.is_contentfile_value_alone_symbol_off_contentfile_symbol for_enp;; 
let for_cof = Contentfile_formula_v.retrieve tag_cof;;

let tag_usf = Doublet_list_v.find_if_left 
    Usagefile_symbol_v.is_implementation_off_usagefile_symbol for_cof;; 
let for_usf = Usagefile_formula_v.retrieve tag_usf;;

let tag_ite = Doublet_list_v.find_if_left 
    Item_symbol_v.is_making for_usf;; 

let for_ite = Item_formula_v.retrieve tag_ite;;
let val_ite = Item_value_v.make tag_ite;;

test_number 1 (
tag_enp 
(* : Entity_symbol_t.entity_proper_symbol * Sole_index_t.sole_index *)
=
(Entity_symbol_t.Entity_proper "cluster", [113; 1; 1])
);;

test_number 2 (
tag_ite
(* : Item_symbol_t.item_symbol * Sole_index_t.sole_index *)
 =
(Item_symbol_t.Item_oneparagraph_symbol Item_oneparagraph_symbol_t.Making,
 [6; 1; 2; 113; 1; 1])
);;

test_number 3 (
for_ite
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
=
[(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
   (Camlparagraph_comment_symbol_t.Item_title "making"),
  [1; 6; 1; 2; 113; 1; 1]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_function_symbol
       Camlparagraph_endmarked_let_argument_function_symbol_t.Let_make_argument_equal_function_for_symbol)),
  [2; 6; 1; 2; 113; 1; 1])]
);;

test_number 4 (
Item_value_v.fullnameoffile "./" tag_ite
=
"./cluster_symbol_making_v.ml"
);;

Item_value_v.write "./" tag_ite;;


