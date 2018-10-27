open Make_test_v;;

testing "Usagefile_value_v
   Usagefile_value_u_figureset_formula_x_value_alone.ml";;

(* toplevel 
   #use "Usagefile_value_u_figureset_formula_x_value_alone.ml";;

*)

let nam_cod = "Usagefile_value_u_figureset_formula_x_value_alone.ml";;

let nam_dom = "figure";;
let nam_cof = "value_alone";;
let nam_ent = "x";;
let nam_cat = "formula";;
let nam_usf = "implementation";;

let sym_dom = Domain_symbol_v.make nam_dom "";;
let idx_dom = Domain_symbol_v.list_index_of_domain_symbol sym_dom;;
let soi_dom = Sole_index_v.make idx_dom [];;
let gss_dom = Generatorset_symbol_v.generatorset_symbol_of_domain_symbol sym_dom;;
Generatorset_symbol_by_sole_index_register_v.store soi_dom gss_dom;;
let tag_dom = Tag_v.make sym_dom soi_dom;;
let for_dom = Domain_formula_v.retrieve tag_dom;;

test_number 1 ( 
tag_dom 
(* : Domain_symbol_t.domain_symbol Tag_t.tag *)
=
  (Domain_symbol_t.Figure, [2])
);;

test_number 2 ( 
for_dom 
(* : Category_symbol_t.category_symbol Tag_t.tag list *)
=
  [(Category_symbol_t.Any, [1; 2]); (Category_symbol_t.Formula, [2; 2]);
   (Category_symbol_t.Mark, [3; 2]); (Category_symbol_t.Path, [4; 2]);
   (Category_symbol_t.Property, [5; 2]);
   (Category_symbol_t.Provider, [6; 2]); (Category_symbol_t.Symbol, [7; 2]);
   (Category_symbol_t.Tag, [8; 2]); (Category_symbol_t.Value, [9; 2]);
   (Category_symbol_t.Empty, [10; 2])]
);;

let sel_cat = (fun c -> Category_symbol_v.name c = nam_cat);;
let tag_cat = Doublet_list_v.find_if_left sel_cat for_dom;;

test_number 3 ( 
tag_cat 
(* : Category_symbol_t.category_symbol * Sole_index_t.sole_index *)
=
  (Category_symbol_t.Formula, [2; 2])
);;

let for_cat = Category_formula_v.retrieve tag_cat;;
let tag_ent_l = Category_formula_v.entity_tag_list_off_category_formula for_cat;;

test_number 4 ( 
List_v.sublist_of_int_of_int_of_list 0 9 tag_ent_l 
(* : Entity_symbol_t.entity_proper_symbol Tag_t.tag list *)
=
[(
   (Entity_symbol_t.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "figure")),
  [1; 2; 2]);
 (
   (Entity_symbol_t.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "triangle")),
  [2; 2; 2]);
 (
   (Entity_symbol_t.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "triangle_isoceles")),
  [3; 2; 2]);
 (
   (Entity_symbol_t.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "triangle_scalene")),
  [4; 2; 2]);
 (
   (Entity_symbol_t.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "vector")),
  [5; 2; 2]);
 (
   (Entity_symbol_t.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "point")),
  [6; 2; 2]);
 (
   (Entity_symbol_t.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "coordinate")),
  [7; 2; 2]);
 (
   (Entity_symbol_t.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "coordinate_3d")),
  [8; 2; 2]);
 (
   (Entity_symbol_t.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_sometopsonleaf
       "coordinate_cartesian_3d")),
  [9; 2; 2]);
 (
   (Entity_symbol_t.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_sometopsonleaf
       "coordinate_cylindrical")),
  [9; 2; 2])]
);;

let sel_ent = (fun e -> Entity_symbol_v.string_off e = nam_ent);;
let tag_ent = Doublet_list_v.find_if_left sel_ent tag_ent_l;;

test_number 5 ( 
tag_ent 
(* : Entity_symbol_t.entity_proper_symbol * Sole_index_t.sole_index *)
  =
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "x")),
   [37; 2; 2])
);;
  
let for_ent = Entity_formula_v.retrieve tag_ent;;

test_number 6 (
for_ent 
(* : Contentfile_symbol_t.contentfile_symbol Tag_t.tag list *)
    =
  [(Contentfile_symbol_t.Type_alone, [1; 37; 2; 2]);
   (Contentfile_symbol_t.Value_alone, [2; 37; 2; 2])]
);;

let sel_cof = (fun c -> Contentfile_symbol_v.name c = nam_cof);;
let tag_cof = Doublet_list_v.find_if_left sel_cof for_ent;;

test_number 7 (    
tag_cof 
(* :  Contentfile_symbol_t.contentfile_symbol * Sole_index_t.sole_index *)
  =
(Contentfile_symbol_t.Value_alone, [2; 37; 2; 2])
);;

let for_cof = Contentfile_formula_v.retrieve tag_cof;;

test_number 8 (    
for_cof 
(* : Usagefile_symbol_t.usagefile_symbol Tag_t.tag list *)
=
  [(Usagefile_symbol_t.Implementation, [1; 2; 37; 2; 2]);
   (Usagefile_symbol_t.Interface, [2; 2; 37; 2; 2])]
);;

let sel_usf = (fun u -> Usagefile_symbol_v.name u = nam_usf);;
let tag_usf = Doublet_list_v.find_if_left sel_usf for_cof;;

test_number 9 (
tag_usf
(* : Usagefile_symbol_t.usagefile_symbol * Sole_index_t.sole_index *)
=
  (Usagefile_symbol_t.Implementation, [1; 2; 37; 2; 2])
);;

let for_usf = Usagefile_formula_v.retrieve tag_usf;;

test_number 10 (
for_usf
(* : Item_symbol_t.item_symbol Tag_t.tag list *)
=
  [(Item_symbol_t.Item_for_any_only_top_symbol Item_for_symbol_only_top_symbol_t.Heading,
    [1; 1; 2; 37; 2; 2]);
   (Item_symbol_t.Item_for_any_only_top_symbol Item_for_symbol_only_top_symbol_t.Documenting,
    [2; 1; 2; 37; 2; 2]);
   (Item_symbol_t.Item_by_group_topsons_symbol Item_by_group_topsons_symbol_t.Naming,
    [3; 1; 2; 37; 2; 2]);
   (Item_symbol_t.Item_by_group_topsons_symbol Item_by_group_topsons_symbol_t.Iterating,
    [4; 1; 2; 37; 2; 2]);
   (Item_symbol_t.Item_by_group_topsons_symbol Item_by_group_topsons_symbol_t.Making,
    [5; 1; 2; 37; 2; 2]);
   (Item_symbol_t.Item_for_any_only_top_symbol Item_for_symbol_only_top_symbol_t.Ending,
    [6; 1; 2; 37; 2; 2])]
);;

test_number 11 (
Usagefile_value_v.fullnameoffile "./" tag_usf
=
"./X_formula_v.ml"
);;

Usagefile_value_v.write "./" tag_usf;; 
  
let val_usf = Usagefile_value_v.make tag_usf;;
let val_usf_cut = List_v.cut_off_last_element_off_list val_usf;;

test_number 12 (  (*** Be careful : in last list element the TIME is of course WRONG ! *)
val_usf_cut
(* : Usagefile_value_t.usagefile_value *)
  =
  [[["(** {3 X_formula_v} *)"]];
   [["let documentation () = "; "["; "  \"Needs: \";";
     "  \"Current : CDOS:X_formula_v\";"; "  \"Needed-by: \";";
     "  \"What-is-it: \";"; "  \"How-is-it-done: \";"; "  \"Example: \";";
     "]"; ";;"];
    ["let nam_cod = Management_v.current_module_name (documentation ());;"]];
   [["(** {6 Naming} *)"];
    ["let name for_x_2 ="; "(* Float *)";
     "  let nam_flo = Float_tag_v.name in";
     "  Singlet_v.name nam_flo for_x_2"; ";;"]];
   [["(** {6 Iterating} *)"];
    ["let map = Singlet_v.map;;"; "let map2 = Singlet_v.map2;;";
     "let iter = Singlet_v.iter;;"; "let iter2 = Singlet_v.iter2;;"]];
   [["(** {6 Making} *)"];
    ["let make sym_x_2 soi_coo ="; "  let count = 0 in"; "(* Float *)";
     "  let count = Integer_v.increment count in";
     "  let soi_flo = Sole_index_v.make count soi_coo in";
     "  let tag_flo = Float_tag_v.make soi_flo in";
     "  Singlet_v.make tag_flo"; ";;"]]]
);;


