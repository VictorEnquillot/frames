open Make_test_v;;

testing "Item_symbol_value_v
   Item_value_u_figureset_symbol_figureset_string_offing.ml";;

(* toplevel 
   #use "Item_value_u_figureset_symbol_figureset_string_offing.ml";;

*)

let nam_cod = "Item_value_u_figureset_symbol_figureset_string_offing.ml";;

let nam_dom = "figure";;
let nam_cat = "symbol";;
let nam_ent = "figure";;
let nam_cof = "value_alone";;
let nam_usf = "implementation_for_symbol";;

let sym_dom = Domain_symbol_v.make nam_dom "";;
let idx_dom = Domain_symbol_v.list_index_of_domain_symbol sym_dom;;
let soi_dom = Sole_index_v.make idx_dom [];;
let gss_dom = Generatorset_symbol_v.generatorset_symbol_of_domain_symbol sym_dom;;
Generatorset_symbol_by_sole_index_register_v.store soi_dom gss_dom;;
let tag_dom = Tag_v.make sym_dom soi_dom;;

let tag_cat_l = Domain_formula_v.category_tag_list_off_domain_tag tag_dom;;

let sel_cat = (fun c -> Category_symbol_v.name c = nam_cat);;
let tag_cat = Doublet_list_v.find_if_left sel_cat tag_cat_l;;
let for_cat = Category_formula_v.retrieve tag_cat;;

let tag_ent_l = Category_formula_v.entity_tag_list_off_category_formula for_cat;;

let sel_ent = (fun e -> Entity_symbol_v.string_off e = nam_ent);;
let tag_ent = Doublet_list_v.find_if_left sel_ent tag_ent_l;;
let for_ent = Entity_formula_v.retrieve tag_ent;;

let tag_cof_l = Entity_formula_v.contentfile_tag_list_off_entity_formula for_ent;;
let sel_cof = (fun c -> Contentfile_symbol_v.name c = nam_cof);;
let tag_cof = Doublet_list_v.find_if_left sel_cof tag_cof_l;;
let for_cof = Contentfile_formula_v.retrieve tag_cof;;

let tag_usf_l = Contentfile_formula_v.usagefile_tag_list_off_contentfile_formula for_cof;;
let sel_usf = (fun u -> Usagefile_symbol_v.name u = nam_usf);;
let tag_usf = Doublet_list_v.find_if_left sel_usf tag_usf_l;;
let for_usf = Usagefile_formula_v.retrieve tag_usf;;

let tag_ite_l = Usagefile_formula_v.item_tag_list_off_usagefile_formula for_usf;;
test_number 1 (
tag_ite_l
(* : Item_symbol_t.item_symbol Tag_t.tag list *)
=
 [(Item_symbol_t.Item_for_any_only_top_symbol
     (Item_for_symbol_only_top_symbol_t.Item_for_symbol_only_top_for_any_symbol
       Item_for_symbol_only_top_for_any_symbol_t.Heading),
    [1; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_for_any_only_top_symbol
     (Item_for_symbol_only_top_symbol_t.Item_for_symbol_only_top_for_any_symbol
       Item_for_symbol_only_top_for_any_symbol_t.Documenting),
    [2; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_by_group_topsons_symbol
     (Item_by_group_topsons_symbol_t.Item_by_group_topsons_for_symbol_symbol
       Item_by_group_topsons_for_symbol_symbol_t.Naming_for_symbol),
    [3; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_by_group_topsons_symbol
     (Item_by_group_topsons_symbol_t.Item_by_group_topsons_for_symbol_symbol
       Item_by_group_topsons_for_symbol_symbol_t.String_offing_for_symbol),
    [4; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_for_any_only_top_symbol
     (Item_for_symbol_only_top_symbol_t.Item_for_symbol_only_top_for_symbol_symbol
       Item_for_symbol_only_top_for_symbol_symbol_t.Longnaming_for_symbol),
    [5; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_for_any_only_top_symbol
     (Item_for_symbol_only_top_symbol_t.Item_for_symbol_only_top_for_symbol_symbol
       Item_for_symbol_only_top_for_symbol_symbol_t.Fullnaming_for_symbol),
    [6; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_topson_notleaf_symbol
     (Item_each_topson_notleaf_symbol_t.Item_each_topson_notleaf_for_symbol_symbol
       Item_for_symbol_each_topson_notleaf_symbol_t.Extracting_topson_for_symbol),
    [7; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_grandson_notleaf_symbol
     (Item_each_grandson_notleaf_symbol_t.Item_each_grandson_notleaf_for_symbol_symbol
       Item_for_symbol_each_grandson_notleaf_symbol_t.Extracting_grandson_for_symbol),
    [8; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_topson_notleaf_symbol
     (Item_each_topson_notleaf_symbol_t.Item_each_topson_notleaf_for_symbol_symbol
       Item_for_symbol_each_topson_notleaf_symbol_t.Querying_topson_notleaf_for_symbol),
    [9; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_grandson_notleaf_symbol
     (Item_each_grandson_notleaf_symbol_t.Item_each_grandson_notleaf_for_symbol_symbol
       Item_for_symbol_each_grandson_notleaf_symbol_t.Querying_grandson_notleaf_for_symbol),
    [10; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_topson_notleaf_symbol
     (Item_each_topson_notleaf_symbol_t.Item_each_topson_notleaf_for_symbol_symbol
       Item_for_symbol_each_topson_notleaf_symbol_t.Upgrading_topson_for_symbol),
    [11; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_grandson_notleaf_symbol
     (Item_each_grandson_notleaf_symbol_t.Item_each_grandson_notleaf_for_symbol_symbol
       Item_for_symbol_each_grandson_notleaf_symbol_t.Upgrading_grandson_for_symbol),
    [12; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_by_group_topsons_symbol
     (Item_by_group_topsons_symbol_t.Item_by_group_topsons_for_symbol_symbol
       Item_by_group_topsons_for_symbol_symbol_t.Making_for_symbol),
    [13; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_for_any_only_top_symbol
     (Item_for_symbol_only_top_symbol_t.Item_for_symbol_only_top_for_any_symbol
       Item_for_symbol_only_top_for_any_symbol_t.Ending),
    [14; 1; 2; 1; 7; 2])]
);;

(* String_offing_for_symbol *)

let nam_ite = "string_offing_for_symbol";;
let sel_ite = (fun i -> Item_symbol_v.name i = nam_ite);;
let tag_ite = Doublet_list_v.find_if_left sel_ite tag_ite_l;; 

test_number 2 (
tag_ite 
(* : Item_symbol_t.item_symbol * Sole_index_t.sole_index *)
=
  (Item_symbol_t.Item_by_group_topsons_symbol
    (Item_by_group_topsons_symbol_t.Item_by_group_topsons_for_symbol_symbol
      Item_by_group_topsons_for_symbol_symbol_t.String_offing_for_symbol),
   [4; 1; 2; 1; 7; 2])
);;

let for_ite = Item_formula_v.retrieve tag_ite;;
let tag_cap_l = Item_formula_v.camlparagraph_tag_list_off_item_formula for_ite;;

test_number 3 (
tag_cap_l
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
  =
  [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       Camlparagraph_for_any_comment_symbol_t.Item_title),
    [1; 4; 1; 2; 1; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_match_symbol
         Camlparagraph_for_symbol_let_match_symbol_t.Let_string_off_equal_function_for_symbol)),
    [2; 4; 1; 2; 1; 7; 2])]
);;

let val_ite = Item_value_v.retrieve tag_ite;;
let str_ite_l = Item_value_v.string_list_off_item_value val_ite;;

test_number 4 (
str_ite_l
(* : string list *)
=  
  ["(** {6 String_offing_for_symbol} *)";
   "let string_off = function";
   "  | Figure_symbol_t.Triangle_symbol sym_tri ->";
   "  Triangle_symbol_v.string_off sym_tri";
   "  | Figure_symbol_t.Triangle_symbol sym_tri ->";
   "  Coordinate_symbol_v.string_off sym_coo";
   "  | Figure_symbol_t.Vector _ -> \"Vector\"";
   "  | Figure_symbol_t.Point _ -> \"Point\""; 
   ";;"]
);;

let nam_fil = Item_value_v.fullnameoffile "./" tag_ite;;
test_number 5 (
nam_fil
=
 "./Figure_symbol_String_offing_for_symbol_v.ml"
);;

Item_value_v.write "./" tag_ite;; 
  
