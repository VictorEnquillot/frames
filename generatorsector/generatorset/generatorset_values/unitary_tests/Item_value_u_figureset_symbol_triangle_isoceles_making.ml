open Make_test_v;;

testing "Item_symbol_value_v
   Item_value_u_figureset_symbol_triangle_isoceles_making.ml";;

(* toplevel 
   #use "Item_value_u_figureset_symbol_triangle_isoceles_making.ml";;

*)

let nam_cod = "Item_value_u_figureset_symbol_triangle_isoceles_making.ml";;
let nam_dom = "figure";;
let nam_cof = "value_alone";;
let nam_ite = "making";;
let nam_enp = "triangle_isoceles";;

let sym_dom = Domain_symbol_v.make nam_dom "";;
let idx_dom = Domain_symbol_v.list_index_of_domain_symbol sym_dom;;
let soi_dom = Sole_index_v.make idx_dom [];;
let gss_dom = Generatorset_symbol_v.generatorset_symbol_of_domain_symbol sym_dom;;
Generatorset_symbol_by_sole_index_register_v.store soi_dom gss_dom;;
let tag_dom = Tag_v.make sym_dom soi_dom;;
let for_dom = Domain_formula_v.retrieve tag_dom;;

let sel_cat = Category_symbol_v.is_symbol_off_category_symbol;;
let tag_cat = Doublet_list_v.find_if_left sel_cat for_dom;;
let for_cat = Category_formula_v.retrieve tag_cat;;

let sel_enp = (fun e -> Entity_symbol_v.string_off e = nam_enp);;
let tag_enp = Doublet_list_v.find_if_left sel_enp for_cat;;
let for_enp = Entity_formula_v.retrieve tag_enp;;

let sel_cof = (fun c -> Contentfile_symbol_v.name c = nam_cof);;
let tag_cof = Doublet_list_v.find_if_left sel_cof for_enp;;
let for_cof = Contentfile_formula_v.retrieve tag_cof;;

let sel_usf = Usagefile_symbol_v.is_implementation_off_usagefile_symbol;; 
let tag_usf = Doublet_list_v.find_if_left sel_usf for_cof;;
let for_usf = Usagefile_formula_v.retrieve tag_usf;;

let sel_ite = (fun i -> Item_symbol_v.name i = nam_ite);;
let tag_ite = Doublet_list_v.find_if_left sel_ite for_usf;; 
let for_ite = Item_formula_v.retrieve tag_ite;;
let val_ite = Item_value_v.make tag_ite;;

test_number 1 (
tag_ite 
(* : Item_symbol_t.item_symbol * Sole_index_t.sole_index *)
=
  (Item_symbol_t.Item_oneparagraph_symbol Item_oneparagraph_symbol_t.Making,
   [6; 1; 2; 3; 7; 2])
);;

test_number 2 (
for_ite
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
=
[(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
   (Camlparagraph_comment_symbol_t.Item_title "making"),
  [1; 6; 1; 2; 3; 7; 2]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_function_symbol
       Camlparagraph_endmarked_let_function_symbol_t.Let_make_nam_s_equal_for_symbol)),
  [2; 6; 1; 2; 3; 7; 2])]
);;

test_number 3 (
val_ite
(* : string *)
  =
   [["(** {6 Making} *)";];
   ["let make nam s ="; "  match String.capitalize nam with";
    "  | \"Triangle_isoceles_equilateral\" -> triangle_isoceles_equilateral";
    "  | \"Triangle_isoceles_right\" -> triangle_isoceles_right";
    "  | \"Triangle_isoceles_acute\" -> triangle_isoceles_acute";
    "  | \"Triangle_isoceles_obtuse\" -> triangle_isoceles_obtuse";
    "  | _ ->";
    "    failwith \"Not_Triangle_isoceles_symbol:Triangle_isoceles_symbol_v:make\"";
    ";;"]]
);;

test_number 4 (
Item_value_v.fullnameoffile "./" tag_ite
=
"./triangle_isoceles_symbol_making_v.ml"
);;

(**

Camlline_value_v.write tag_cap;; 

**)
  

