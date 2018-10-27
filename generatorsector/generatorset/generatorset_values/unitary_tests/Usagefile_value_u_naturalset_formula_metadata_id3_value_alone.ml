open Make_test_v;;

testing "Usagefile_value_v
   Usagefile_value_u_naturalset_formula_metadata_id3_value_alone.ml";;

(* toplevel 
   #use "Usagefile_value_u_naturalset_formula_metadata_id3_value_alone.ml";;

*)

let nam_cod = "Usagefile_value_u_naturalset_formula_metadata_id3_value_alone.ml";;

let nam_dom = "natural";;
let nam_cof = "value_alone";;
let nam_ent = "metadata_id3";;
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
  (Domain_symbol_t.Natural, [5])
);;

let sel_cat = (fun c -> Category_symbol_v.name c = nam_cat);;
let tag_cat = Doublet_list_v.find_if_left sel_cat tag_cat_l;;

test_number 2 ( 
tag_cat 
(* : Category_symbol_t.category_symbol * Sole_index_t.sole_index *)
=
  (Category_symbol_t.Formula, [2; 5])
);;

let tag_ent_l = Category_formula_v.entity_tag_list_off_category_tag tag_cat;;

let sel_ent = (fun e -> Entity_symbol_v.string_off e = nam_ent);;
let tag_ent = Doublet_list_v.find_if_left sel_ent tag_ent_l;;

test_number 3 ( 
tag_ent 
(* : Entity_symbol_t.entity_proper_symbol * Sole_index_t.sole_index *)
  =
  (Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_sons "metadata_id3"),
   [1; 2; 5])
);;
  
let tag_cof_l = Entity_formula_v.contentfile_tag_list_off_entity_tag tag_ent;;

let sel_cof = (fun c -> Contentfile_symbol_v.name c = nam_cof);;
let tag_cof = Doublet_list_v.find_if_left sel_cof tag_cof_l;;

test_number 4 (    
tag_cof 
(* :  Contentfile_symbol_t.contentfile_symbol * Sole_index_t.sole_index *)
  =
(Contentfile_symbol_t.Value_alone, [2; 1; 2; 5])
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
   [1; 2; 1; 2; 5])
);;


let tag_ite_l = Usagefile_formula_v.item_tag_list_off_usagefile_tag tag_usf;;
let tag_ite_sl1 = tag_ite_l;;

test_number 6 (
tag_ite_sl1
(* : Item_symbol_t.item_symbol Tag_t.tag list *)
=
  [(Item_symbol_t.Item_for_any_only_top_symbol
     Item_for_any_only_top_symbol_t.Heading,
    [1; 1; 2; 1; 2; 5]);
   (Item_symbol_t.Item_for_formula_symbol
     (Item_for_formula_symbol_t.Item_for_formula_by_group_topsons_symbol
       Item_for_formula_by_group_topsons_symbol_t.Symbolizing_for_formula),
    [2; 1; 2; 1; 2; 5]);
   (Item_symbol_t.Item_for_formula_symbol
     (Item_for_formula_symbol_t.Item_for_formula_only_top_symbol
       Item_for_formula_only_top_symbol_t.Building_and_storing_proper_sons),
    [3; 1; 2; 1; 2; 5]);
   (Item_symbol_t.Item_for_formula_symbol
     (Item_for_formula_symbol_t.Item_for_formula_by_group_topsons_symbol
       Item_for_formula_by_group_topsons_symbol_t.Making_for_formula),
    [4; 1; 2; 1; 2; 5]);
   (Item_symbol_t.Item_for_formula_symbol
     (Item_for_formula_symbol_t.Item_for_formula_only_top_symbol
       Item_for_formula_only_top_symbol_t.Retrieving_for_formula),
    [5; 1; 2; 1; 2; 5]);
   (Item_symbol_t.Item_for_formula_symbol
     (Item_for_formula_symbol_t.Item_for_formula_by_group_topsons_symbol
       Item_for_formula_by_group_topsons_symbol_t.Builder_tag_listing_off_formula),
    [6; 1; 2; 1; 2; 5]);
   (Item_symbol_t.Item_for_formula_symbol
     (Item_for_formula_symbol_t.Item_for_formula_only_top_symbol
       Item_for_formula_only_top_symbol_t.Builder_tag_listing_off_tag),
    [7; 1; 2; 1; 2; 5]);
   (Item_symbol_t.Item_for_formula_symbol
     (Item_for_formula_symbol_t.Item_for_formula_only_top_symbol
       Item_for_formula_only_top_symbol_t.Data_tag_listing_off_formula),
    [8; 1; 2; 1; 2; 5]);
   (Item_symbol_t.Item_for_formula_symbol
     (Item_for_formula_symbol_t.Item_for_formula_only_top_symbol
       Item_for_formula_only_top_symbol_t.Data_tag_listing_off_tag),
    [9; 1; 2; 1; 2; 5]);
   (Item_symbol_t.Item_for_any_only_top_symbol
     Item_for_any_only_top_symbol_t.Ending,
    [10; 1; 2; 1; 2; 5])]
);;

let tag_ite_sl2 = tag_ite_l;;

test_number 7 (
tag_ite_sl2
(* : Item_symbol_t.item_symbol Tag_t.tag list *)
=
tag_ite_l
);;

let nam_fil = Usagefile_value_v.fullnameoffile "./" tag_usf;;

test_number 8 (
nam_fil
=
"./Metadata_id3_formula_v.ml"
);;

Usagefile_value_v.write "./" tag_usf;; 
  
let val_usf = Usagefile_value_v.retrieve tag_usf;;
let str_l = Usagefile_value_v.string_list_off_usagefile_value val_usf;;
let str_l_cut = List_v.cut_off_last_element_off_list str_l;;

test_number 9 (  (*** Be careful : in last list element the TIME is of course WRONG ! *)
str_l_cut
(* : Usagefile_value_t.usagefile_value *)
  =
  ["(** {3 Metadata_id3_formula_v} *)";
   "(** {6 Symbolizing_for_formula} *)";
   "let symbol_of_formula = function";
   "  | Metadata_id3_formula_t.Metadata_id3v1x _ ->";
   "      Metadata_id3_symbol_t.Metadata_id3v1x";
   "  | Metadata_id3_formula_t.Metadata_id3v2x _ ->";
   "      Metadata_id3_symbol_t.Metadata_id3v2x";
   ";;";
   "(** {6 Building_and_storing_proper_sons} *)";
   "let build_n_store sym_mid soi_mid =";
   "  ";
   "  let tag_mid = Tag_v.make sym_mid soi_mid in";
   "  let sym_tid_l = Tag_id3_symbol_list_by_metadata_id3_tag_provider_v.provide tag_mid in";
   "  let soi_tid_l =";
   "    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index";
   "    1 (List.length sym_tid_l) soi_mid in";
   "  let dss_of_sym = Natural_symbol_v.natural_symbol_of_tag_id3_symbol in";
   "  let dss_tid_l = List.map dss_of_sym sym_tid_l in";
   "  List.iter2 Natural_symbol_by_sole_index_register_v.store soi_tid_l dss_tid_l;";
   "  List.map2 Tag_v.make sym_tid_l soi_tid_l";
   ";;";
   "(** {6 Making_for_formula} *)";
   "let make sym_mid soi_mid =";
   "  match sym_mid with";
   "  | Metadata_id3_symbol_t.Metadata_id3v1x ->";
   "      let tag_tid_l = build_n_store sym_mid soi_mid in";
   "        Metadata_id3_formula_t.Metadata_id3v1x tag_tid_l";
   "  | Metadata_id3_symbol_t.Metadata_id3v2x ->";
   "      let tag_tid_l = build_n_store sym_mid soi_mid in";
   "        Metadata_id3_formula_t.Metadata_id3v2x tag_tid_l";
   ";;";
   "(** {6 Retrieving_for_formula} *)";
   "let retrieve tag_mid =";
   "  let soi_mid = Tag_v.sole_index_off_tag tag_mid in";
   "  let sym_mid = Tag_v.entity_off_tag tag_mid in";
   "  make sym_mid soi_mid";
   ";;";
   "(** {6 Builder_tag_listing_off_formula} *)";
   "let tag_id3_tag_list_off_metadata_id3_formula = function";
   "  | Metadata_id3_formula_t.Metadata_id3v1x tag_tid_l -> tag_tid_l";
   "  | Metadata_id3_formula_t.Metadata_id3v2x tag_tid_l -> tag_tid_l";
   ";;";
   "(** {6 Builder_tag_listing_off_tag} *)";
   "let tag_id3_tag_list_off_metadata_id3_tag tag_mid =";
   "  let for_mid = retrieve tag_mid in";
   "  tag_id3_tag_list_off_metadata_id3_formula for_mid";
   ";;";
   "(** {6 Data_tag_listing_off_formula} *)";
   "let string_tag_list_off_metadata_id3_formula = function";
   "  | Metadata_id3_formula_t.Metadata_id3v1x tag_str_l -> tag_str_l";
   "  | Metadata_id3_formula_t.Metadata_id3v2x tag_str_l -> tag_str_l";
   ";;";
   "(** {6 Data_tag_listing_off_tag} *)";
   "let string_tag_list_off_metadata_id3_tag tag_mid =";
   "  let for_mid = retrieve tag_mid in";
   "  string_tag_list_off_metadata_id3_formula for_mid";
   ";;"]
);;


