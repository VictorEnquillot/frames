(** {3 Category_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Builders : Entity_proper_tag";
   "Needs : IGNR:Category_interface_v";
   "Current : FGNR:Category_formula_v";
   "Needed-by : FGNR:Category_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_cat =
  match for_cat with
  | Category_formula_t.Any _ -> 
      Category_symbol_t.Any

  | Category_formula_t.Formula _ -> 
      Category_symbol_t.Formula

  | Category_formula_t.Mark _ -> 
      Category_symbol_t.Mark

  | Category_formula_t.Path _ -> 
      Category_symbol_t.Path

  | Category_formula_t.Property _ -> 
      Category_symbol_t.Property

  | Category_formula_t.Provider _ -> 
      Category_symbol_t.Provider

  | Category_formula_t.Tag _ -> 
      Category_symbol_t.Tag

  | Category_formula_t.Symbol _ -> 
      Category_symbol_t.Symbol

  | Category_formula_t.Value _ -> 
      Category_symbol_t.Value

  | Category_formula_t.Empty _ -> 
      Category_symbol_t.Empty
;;

(** {6 Naming_for_formula} *)

let name for_cat = 
  let sym_cat = symbol_of_formula for_cat in
  Category_symbol_v.name sym_cat
;;

let string_off for_cat =
  let sym_cat = symbol_of_formula for_cat in
  Category_symbol_v.string_off sym_cat
;;

let longname for_cat =
  Format.sprintf "Category_formula_t.%s" 
    (String.capitalize (name for_cat))

let fullname for_cat =
  Format.sprintf "%s \"%s\"" (longname for_cat) (string_off for_cat)
;;

(** {6 Building_and_storing} *)

let build_n_store sym_cat soi_cat =
  let tag_cat = Tag_v.make sym_cat soi_cat in
  let dou_cat = Category_tag_v.category_doutup_off_category_tag tag_cat in
  let sym_ent_l = Category_interface_v.make_of_tuple dou_cat in
  let soi_ent_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
      1 (List.length sym_ent_l)
      soi_cat
  in

  let gss_of_sym = Generatorset_symbol_v.generatorset_symbol_of_entity_symbol in
  Tools_fgnr_v.store_builder_gss_datastructure gss_of_sym sym_ent_l soi_ent_l;
  
  List.map2 Tag_v.make sym_ent_l soi_ent_l
;;

(** {6 Making_for_formula} *)

let make sym_cat soi_cat =
  let tag_ent_l = build_n_store sym_cat soi_cat in

  match sym_cat with 
  | Category_symbol_t.Any
  | Category_symbol_t.Mark
  | Category_symbol_t.Path
  | Category_symbol_t.Property
  | Category_symbol_t.Provider
  | Category_symbol_t.Value
  | Category_symbol_t.Empty ->

      Utilities_v.not_yet_implemented nam_cod 
	(Format.sprintf "make for Category_symbol %s" (Category_symbol_v.fullname sym_cat))

  | Category_symbol_t.Formula ->
      Category_formula_t.Formula tag_ent_l

  | Category_symbol_t.Symbol ->
       Category_formula_t.Symbol tag_ent_l
	
  | Category_symbol_t.Tag ->
      Category_formula_t.Tag tag_ent_l
;;

(** {6 Retrieving.} *)

let retrieve tag_cat = 
  let soi_cat = Tag_v.sole_index_off_tag tag_cat in
  let sym_cat = Tag_v.entity_off_tag tag_cat in
  make sym_cat soi_cat
;;

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_category_formula for_cat =
  match for_cat with
  | Category_formula_t.Any tag_ent_l ->
      tag_ent_l

  | Category_formula_t.Formula tag_ent_l -> 
      tag_ent_l

  | Category_formula_t.Symbol tag_ent_l -> 
      tag_ent_l

  | Category_formula_t.Tag tag_ent_l -> 
      tag_ent_l

  | Category_formula_t.Mark tag_ent_l ->
      tag_ent_l

  | Category_formula_t.Path tag_ent_l ->
      tag_ent_l

  | Category_formula_t.Property tag_ent_l ->
      tag_ent_l

  | Category_formula_t.Provider tag_ent_l ->
      tag_ent_l

  | Category_formula_t.Value tag_ent_l ->
      tag_ent_l

  | Category_formula_t.Empty tag_ent_l ->
      tag_ent_l
;;

let entity_tag_list_off_category_tag tag_cat =
  let for_cat = retrieve tag_cat in
  entity_tag_list_off_category_formula for_cat
;;

let camlline_tag_list_off_category_formula for_cat =
  let tag_ent_l = 
    entity_tag_list_off_category_formula 
      for_cat 
  in
  let for_ent_l = List.map
      Entity_formula_v.retrieve 
      tag_ent_l 
  in
  let tag_cal_ll = List.map
      Entity_formula_v.camlline_tag_list_off_entity_formula 
      for_ent_l
  in 
  List.flatten tag_cal_ll
;;

let camlline_tag_list_off_category_tag tag_cat =
  let for_cat = retrieve tag_cat in
  camlline_tag_list_off_category_formula for_cat
;;

(** {6 Iterating_for_formula_stem.} *)

let map f_of_tag_cap for_cat = 
  let tag_cap_l = camlline_tag_list_off_category_formula for_cat in
  List.map f_of_tag_cap tag_cap_l
;;

let iter f_of_tag_cap for_cat = 
  let tag_cap_l = camlline_tag_list_off_category_formula for_cat in
  List.iter f_of_tag_cap tag_cap_l ;;

let map2 f_of_tag_cap for_cat_1 for_cat_2  = 
  let tag_cap_l_1 = camlline_tag_list_off_category_formula for_cat_1 in
  let tag_cap_l_2 = camlline_tag_list_off_category_formula for_cat_2 in
  List.map2 f_of_tag_cap tag_cap_l_1 tag_cap_l_2
;;

let iter2 f_of_tag_cap for_cat_1 for_cat_2 = 
  let tag_cap_l_1 = camlline_tag_list_off_category_formula for_cat_1 in
  let tag_cap_l_2 = camlline_tag_list_off_category_formula for_cat_2 in
  List.iter2 f_of_tag_cap tag_cap_l_1 tag_cap_l_2 
;;

