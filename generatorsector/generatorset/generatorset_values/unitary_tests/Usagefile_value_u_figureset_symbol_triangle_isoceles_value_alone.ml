open Make_test_v;;

testing "Usagefile_symbol_value_v
   Usagefile_value_u_figureset_symbol_triangle_isoceles_value_alone.ml";;

(* toplevel 
   #use "Usagefile_value_u_figureset_symbol_triangle_isoceles_value_alone.ml";;

*)

let nam_cod = "Usagefile_value_u_figureset_symbol_triangle_isoceles_value_alone.ml";;
let nam_dom = "figure";;
let nam_cat = "symbol";;
let nam_cof = "value_alone";;
let nam_ent = "triangle_isoceles";;
let nam_usf = "implementation";;

let sym_dom = Domain_symbol_v.make nam_dom "";;
let idx_dom = Domain_symbol_v.list_index_of_domain_symbol sym_dom;;
let soi_dom = Sole_index_v.make idx_dom [];;
let gss_dom = Generatorset_symbol_v.generatorset_symbol_of_domain_symbol sym_dom;;
Generatorset_symbol_by_sole_index_register_v.store soi_dom gss_dom;;
let tag_dom = Tag_v.make sym_dom soi_dom;;
let for_dom = Domain_formula_v.retrieve tag_dom;;

let sel_cat = (fun c -> Category_symbol_v.name c = nam_cat);;
let tag_cat = Doublet_list_v.find_if_left sel_cat for_dom;;
let for_cat = Category_formula_v.retrieve tag_cat;;

let tag_ent_l = Category_formula_v.entity_tag_list_off_category_formula for_cat;;
let sel_ent = (fun e -> Entity_symbol_v.string_off e = nam_ent);;
let tag_ent = Doublet_list_v.find_if_left sel_ent tag_ent_l;;
let for_ent = Entity_formula_v.retrieve tag_ent;;

let sel_cof = (fun c -> Contentfile_symbol_v.name c = nam_cof);;
let tag_cof = Doublet_list_v.find_if_left sel_cof for_ent;;
let for_cof = Contentfile_formula_v.retrieve tag_cof;;

let sel_usf = (fun u -> Usagefile_symbol_v.name u = nam_usf);;
let tag_usf = Doublet_list_v.find_if_left sel_usf for_cof;;
let for_usf = Usagefile_formula_v.retrieve tag_usf;;

test_number 1 (
tag_usf
(* : Usagefile_symbol_t.usagefile_symbol * Sole_index_t.sole_index *)
=
  (Usagefile_symbol_t.Implementation, [1; 2; 3; 7; 2])
);;

let for_usf = Usagefile_formula_v.retrieve tag_usf;;

test_number 2 (
for_usf
(* : Item_symbol_t.item_symbol Tag_t.tag list *)
=
  [(Item_symbol_t.Item_for_any_only_top_symbol Item_for_symbol_only_top_symbol_t.Heading,
    [1; 1; 2; 3; 7; 2]);
   (Item_symbol_t.Item_for_any_only_top_symbol Item_for_symbol_only_top_symbol_t.Documenting,
    [2; 1; 2; 3; 7; 2]);
   (Item_symbol_t.Item_by_group_topsons_symbol Item_by_group_topsons_symbol_t.Naming,
    [3; 1; 2; 3; 7; 2]);
   (Item_symbol_t.Item_each_topson_notleaf_symbol
     Item_each_topson_notleaf_symbol_t.Extracting_topson_for_symbol,
    [4; 1; 2; 3; 7; 2]);
   (Item_symbol_t.Item_each_grandson_notleaf_symbol
     Item_each_grandson_notleaf_symbol_t.Extracting_grandson_for_symbol,
    [5; 1; 2; 3; 7; 2]);
   (Item_symbol_t.Item_each_topson_notleaf_symbol
     Item_each_topson_notleaf_symbol_t.Querying_topson,
    [6; 1; 2; 3; 7; 2]);
   (Item_symbol_t.Item_each_grandson_notleaf_symbol
     Item_each_grandson_notleaf_symbol_t.Querying_grandson,
    [7; 1; 2; 3; 7; 2]);
   (Item_symbol_t.Item_each_topson_notleaf_symbol
     Item_each_topson_notleaf_symbol_t.Upgrading_topson,
    [8; 1; 2; 3; 7; 2]);
   (Item_symbol_t.Item_each_grandson_notleaf_symbol
     Item_each_grandson_notleaf_symbol_t.Upgrading_grandson,
    [9; 1; 2; 3; 7; 2]);
   (Item_symbol_t.Item_each_topson_leaf_symbol
     Item_each_topson_leaf_symbol_t.Abbreviating_topson,
    [10; 1; 2; 3; 7; 2]);
   (Item_symbol_t.Item_each_grandson_leaf_symbol
     Item_each_grandson_leaf_symbol_t.Abbreviating_grandson,
    [11; 1; 2; 3; 7; 2]);
   (Item_symbol_t.Item_by_group_topsons_symbol Item_by_group_topsons_symbol_t.Making,
    [12; 1; 2; 3; 7; 2]);
   (Item_symbol_t.Item_for_any_only_top_symbol Item_for_symbol_only_top_symbol_t.Ending,
    [13; 1; 2; 3; 7; 2])]
);;

let nam_fil = Usagefile_value_v.fullnameoffile "./" tag_usf;;

test_number 3 (
nam_fil
=
"./Triangle_isoceles_symbol_v.ml"
);;

let val_usf = Usagefile_value_v.make tag_usf;;

Usagefile_value_v.write "./" tag_usf;; 

let val_par = List_v.cut_off_last_element_off_list val_usf;;
  
test_number 4 (  (*** Be careful : in last list element the TIME is of course WRONG ! *)
val_par
(* : Usagefile_value_t.usagefile_value *)
=
  [[["(** {3 Triangle_isoceles_symbol_v} *)"]];
   [["let documentation () = "; "["; "  \"Needs: \";";
     "  \"Current : CDOS:Triangle_isoceles_symbol_v\";"; "  \"Needed-by: \";";
     "  \"What-is-it: \";"; "  \"How-is-it-done: \";"; "  \"Example: \";";
     "]"; ";;"];
    ["let nam_cod = Management_v.current_module_name (documentation ());;"]];
   [["(** {6 Naming} *)"];
    ["let name = function";
     "  | Triangle_isoceles_symbol_t.Triangle_isoceles_equilateral -> \"Triangle_isoceles_equilateral\"";
     "  | Triangle_isoceles_symbol_t.Triangle_isoceles_right -> \"Triangle_isoceles_right\"";
     "  | Triangle_isoceles_symbol_t.Triangle_isoceles_acute -> \"Triangle_isoceles_acute\"";
     "  | Triangle_isoceles_symbol_t.Triangle_isoceles_obtuse -> \"Triangle_isoceles_obtuse\"";
     ";;"]];
   [["(** {6 Extracting_topson_for_symbol} *)"]]; [["(** {6 Extracting_grandson_for_symbol} *)"]];
   [["(** {6 Querying_topson} *)"]]; [["(** {6 Querying_grandson} *)"]];
   [["(** {6 Upgrading_topson} *)"]]; [["(** {6 Upgrading_grandson} *)"]];
   [["(** {6 Abbreviating_topson} *)"];
    ["let triangle_isoceles_equilateral = Triangle_isoceles_symbol_t.Triangle_isoceles_equilateral;;"];
    ["let triangle_isoceles_right = Triangle_isoceles_symbol_t.Triangle_isoceles_right;;"];
    ["let triangle_isoceles_acute = Triangle_isoceles_symbol_t.Triangle_isoceles_acute;;"];
    ["let triangle_isoceles_obtuse = Triangle_isoceles_symbol_t.Triangle_isoceles_obtuse;;"]];
   [["(** {6 Abbreviating_grandson} *)"]];
   [["(** {6 Making} *)"];
    ["let make nam s ="; "  let nam_low = String.lowercase nam in";
     "  match nam_low with";
     "  | \"triangle_isoceles_equilateral\" -> triangle_isoceles_equilateral";
     "  | \"triangle_isoceles_right\" -> triangle_isoceles_right";
     "  | \"triangle_isoceles_acute\" -> triangle_isoceles_acute";
     "  | \"triangle_isoceles_obtuse\" -> triangle_isoceles_obtuse";
     "  | _ ->";
     "    failwith \"Not_Triangle_isoceles_symbol:Triangle_isoceles_symbol_v:make\"";
     ";;"]]]
 );;


