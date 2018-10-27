open Make_test_v;;

testing "Usagefile_value_v
   Usagefile_value_u_figureset_formula_fake_son_constructor_value_alone.ml";;

(* toplevel 
   #use "Usagefile_value_u_figureset_formula_fake_son_constructor_value_alone.ml";;

*)

let nam_cod = "Usagefile_value_u_figureset_formula_fake_son_constructor_value_alone.ml";;

let nam_dom = "figure";;
let nam_cof = "value_alone";;
let nam_ent = "fake_son_constructor";;
let nam_cat = "formula";;
let nam_usf = "implementation_for_formula";;

let sym_dom = Domain_symbol_v.make nam_dom "";;
let idx_dom = Domain_symbol_v.list_index_of_domain_symbol sym_dom;;
let soi_dom = Sole_index_v.make idx_dom [];;
let gss_dom = Generatorset_symbol_v.generatorset_symbol_of_domain_symbol sym_dom;;
Generatorset_symbol_by_sole_index_register_v.store soi_dom gss_dom;;
let tag_dom = Tag_v.make sym_dom soi_dom;;
let tag_cat_l = Domain_formula_v.category_tag_list_off_domain_tag tag_dom;;

test_number 1 ( 
tag_dom 
(* : Domain_symbol_t.domain_symbol Tag_t.tag *)
=
  (Domain_symbol_t.Figure, [2])
);;

let sel_cat = (fun c -> Category_symbol_v.name c = nam_cat);;
let tag_cat = Doublet_list_v.find_if_left sel_cat tag_cat_l;;

test_number 2 ( 
tag_cat 
(* : Category_symbol_t.category_symbol * Sole_index_t.sole_index *)
=
  (Category_symbol_t.Formula, [2; 2])
);;

let for_cat = Category_formula_v.retrieve tag_cat;;
let tag_ent_l = Category_formula_v.entity_tag_list_off_category_formula for_cat;;

let sel_ent = (fun e -> Entity_symbol_v.string_off e = nam_ent);;
let tag_ent = Doublet_list_v.find_if_left sel_ent tag_ent_l;;

test_number 3 ( 
tag_ent 
(* : Entity_symbol_t.entity_proper_symbol * Sole_index_t.sole_index *)
  =
  (Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_one_son "fake_son_constructor"),
   [12; 2; 2])
);;
  
let tag_cof_l = Entity_formula_v.contentfile_tag_list_off_entity_tag tag_ent;;

let sel_cof = (fun c -> Contentfile_symbol_v.name c = nam_cof);;
let tag_cof = Doublet_list_v.find_if_left sel_cof tag_cof_l;;

test_number 4 (    
tag_cof 
(* :  Contentfile_symbol_t.contentfile_symbol * Sole_index_t.sole_index *)
  =
(Contentfile_symbol_t.Value_alone, [2; 12; 2; 2])
);;

let tag_usf_l = Contentfile_formula_v.usagefile_tag_list_off_contentfile_tag tag_cof;;

let sel_usf = (fun u -> Usagefile_symbol_v.name u = nam_usf);;
let tag_usf = Doublet_list_v.find_if_left sel_usf tag_usf_l;;

test_number 5 (
tag_usf
(* : Usagefile_symbol_t.usagefile_symbol * Sole_index_t.sole_index *)
=
   (Usagefile_symbol_t.Usagefile_for_formula_symbol
    Usagefile_for_formula_symbol_t.Implementation_for_formula,
   [1; 2; 12; 2; 2])
);;

let tag_ite_l = Usagefile_formula_v.item_tag_list_off_usagefile_tag tag_usf;;

test_number 6 (
tag_ite_l
(* : Item_symbol_t.item_symbol Tag_t.tag list *)
=
  [(Item_symbol_t.Item_for_any_only_top_symbol
     Item_for_any_only_top_symbol_t.Heading,
    [1; 1; 2; 12; 2; 2]);
   (Item_symbol_t.Item_for_formula_symbol
     (Item_for_formula_symbol_t.Item_for_formula_by_group_topsons_symbol
       Item_for_formula_by_group_topsons_symbol_t.Symbolizing_for_formula),
    [2; 1; 2; 12; 2; 2]);
   (Item_symbol_t.Item_for_formula_symbol
     (Item_for_formula_symbol_t.Item_for_formula_by_group_topsons_symbol
       Item_for_formula_by_group_topsons_symbol_t.Making_for_formula),
    [3; 1; 2; 12; 2; 2]);
   (Item_symbol_t.Item_for_formula_symbol
     (Item_for_formula_symbol_t.Item_for_formula_only_top_symbol
       Item_for_formula_only_top_symbol_t.Retrieving_for_formula),
    [4; 1; 2; 12; 2; 2]);
   (Item_symbol_t.Item_for_formula_symbol
     (Item_for_formula_symbol_t.Item_for_formula_only_top_symbol
       Item_for_formula_only_top_symbol_t.Data_tag_listing_off_formula),
    [5; 1; 2; 12; 2; 2]);
   (Item_symbol_t.Item_for_formula_symbol
     (Item_for_formula_symbol_t.Item_for_formula_only_top_symbol
       Item_for_formula_only_top_symbol_t.Data_tag_listing_off_tag),
    [6; 1; 2; 12; 2; 2]);
   (Item_symbol_t.Item_for_any_only_top_symbol
     Item_for_any_only_top_symbol_t.Ending,
    [7; 1; 2; 12; 2; 2])]
);;

test_number 7 (
Usagefile_value_v.fullnameoffile "./" tag_usf
=
"./Fake_son_constructor_formula_v.ml"
);;

Usagefile_value_v.write "./" tag_usf;; 
  
let val_usf = Usagefile_value_v.retrieve tag_usf;;
let str_l = Usagefile_value_v.string_list_off_usagefile_value val_usf;;
let str_l_cut = List_v.cut_off_last_element_off_list str_l;;

test_number 8 (  (*** Be careful : in last list element the TIME is of course WRONG ! *)
str_l_cut
(* : Usagefile_value_t.usagefile_value *)
  =
  ["(** {3 Fake_son_constructor_formula_v} *)";
   "(** {6 Symbolizing_for_formula} *)";
   "let symbol_of_formula = function";
   "  | Fake_son_constructor_formula_t.Fake_son_constructor_isoceles_formula for_tis ->";
   "    Fake_son_constructor_formula_t.Fake_son_constructor_isoceles_formula";
   "      (Fake_son_constructor_isoceles_formula_v.symbol_of_formula for_tis)";
   "  | Fake_son_constructor_formula_t.Fake_son_constructor_scalene_formula for_trs ->";
   "    Fake_son_constructor_formula_t.Fake_son_constructor_scalene_formula";
   "      (Fake_son_constructor_scalene_formula_v.symbol_of_formula for_trs)";
   ";;";
   "(** {6 Making_for_formula} *)";
   "let make sym_tri soi_tri =";
   "  match sym_tri with";
   "  | Fake_son_constructor_symbol_t.Fake_son_constructor_isoceles_symbol sym_tis ->";
   "    Fake_son_constructor_formula_t.Fake_son_constructor_isoceles_formula";
   "      (Fake_son_constructor_isoceles_formula_v.make sym_tis soi_tri)";
   "  | Fake_son_constructor_symbol_t.Fake_son_constructor_scalene_symbol sym_trs ->";
   "    Fake_son_constructor_formula_t.Fake_son_constructor_scalene_formula";
   "      (Fake_son_constructor_scalene_formula_v.make sym_trs soi_tri)";
   ";;";
   "(** {6 Retrieving_for_formula} *)";
   "let retrieve tag_tri =";
   "  let soi_tri = Tag_v.sole_index_off_tag tag_tri in";
   "  let sym_tri = Fake_son_constructor_tag_v.symbol_off_tag tag_tri in";
   "  make sym_tri soi_tri";
   ";;";
   "(** {6 Builder_tag_listing_off_formula} *)";
   "let point_tag_list_off_fake_son_constructor_formula = function";
   "  | Fake_son_constructor_formula_t.Fake_son_constructor_isoceles_formula for_tis ->";
   "      Fake_son_constructor_isoceles_formula_v.point_tag_list_off_fake_son_constructor_isoceles_formula for_tis";
   "  | Fake_son_constructor_formula_t.Fake_son_constructor_scalene_formula for_trs ->";
   "      Fake_son_constructor_scalene_formula_v.point_tag_list_off_fake_son_constructor_scalene_formula for_trs";
   ";;";
   "(** {6 Builder_tag_listing_off_tag} *)";
   "let point_tag_list_off_fake_son_constructor_tag tag_tri =";
   "  let for_tri = retrieve tag_tri in";
   "  point_tag_list_off_fake_son_constructor_formula for_tri";
   ";;";
   "(** {6 Data_tag_listing_off_formula} *)";
   "let float_tag_list_off_fake_son_constructor_formula for_tri =";
   "  | Fake_son_constructor_formula_t.Fake_son_constructor_isoceles_formula for_tis ->";
   "      Fake_son_constructor_isoceles_formula_v.float_tag_list_off_fake_son_constructor_isoceles_formula for_tis";
   "  | Fake_son_constructor_formula_t.Fake_son_constructor_scalene_formula for_trs ->";
   "      Fake_son_constructor_scalene_formula_v.float_tag_list_off_fake_son_constructor_scalene_formula for_trs";
   ";;";
   "(** {6 Data_tag_listing_off_tag} *)";
   "let float_tag_list_off_fake_son_constructor_tag tag_tri =";
   "  let for_tri = retrieve tag_tri in";
   "  float_tag_list_off_fake_son_constructor_formula for_tri";
   ";;"]
);;


