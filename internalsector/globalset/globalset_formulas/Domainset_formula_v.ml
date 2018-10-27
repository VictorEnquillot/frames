(** {3 Domainset_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Domainset_formula_v";
   "Current : FGNR:Domainset_formula_v";
   "Needed-by : FGNR:Section_formula";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "What-is-it : It upgrades Formula type as Formula type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_mai =
  match for_mai with
  | Domainset_formula_t.Chemicalset _ ->
      Domainset_symbol_t.Chemicalset

  | Domainset_formula_t.Generatorset _ ->
      Domainset_symbol_t.Generatorset

  | Domainset_formula_t.Figureset _ ->
      Domainset_symbol_t.Figureset

  | Domainset_formula_t.Musicset _ ->
      Domainset_symbol_t.Musicset
;;

(** {6 Naming_for_formula} *)

let name for_mai = 
  let sym_mai = formula_of_formula for_mai in
  Domainset_formula_v.name sym_mai
;;
(* ***

let string_off for_mai =
  let sym_mai = formula_of_formula for_mai in
  Domainset_formula_v.string_off sym_mai
;;

let longname for_mai =
  Format.sprintf "Domainset_formula_t.%s" 
    (String.capitalize (name for_mai))

let fullname for_mai =
  Format.sprintf "%s \"%s\"" (longname for_mai) (string_off for_mai)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_mai soi_mai =
  let sym_cat_l = Domainset_formula_v.make sym_mai in
  let soi_cat_l = 
    Tools_fgnr_v.sole_index_son_list_of_formula_son_list_of_sole_index
      sym_cat_l
      soi_mai
  in
  let gss_of_sym = Generatorset_formula_v.generatorset_formula_of_category_formula in
  Tools_fgnr_v.store_builder_gss_datastructure gss_of_sym sym_cat_l soi_cat_l;
  
  List.map2 Tag_v.make sym_cat_l soi_cat_l
;;

(** {6 Making_for_formula} *)

let make sym_mai soi_mai =
  let tag_cat_l = build_n_store sym_mai soi_mai in

  match sym_mai with 
  | Domainset_symbol_t.Generatorset ->
      Domainset_formula_t.Generatorset tag_cat_l

  | Domainset_symbol_t.Figureset ->
      Domainset_formula_t.Figureset tag_cat_l

  | Domainset_symbol_t.Musicset ->
      Domainset_formula_t.Musicset tag_cat_l

  | Domainset_symbol_t.Chemicalset ->
      Domainset_formula_t.Chemicalset tag_cat_l
;;

(** {6 Retrieving} *)

let retrieve tag_mai =
  let soi_mai = Tag_v.sole_index_off_tag tag_mai in
  let sym_mai = Tag_v.formula_off_tag tag_mai in
  make sym_mai soi_mai 
;; 

(** {6 Builder_tag_listing} *)

let category_tag_list_off_mainset_formula for_mai =
  match for_mai with
  | Domainset_formula_t.Chemicalset tag_cat_l ->
      tag_cat_l

  | Domainset_formula_t.Generatorset tag_cat_l ->
      tag_cat_l

  | Domainset_formula_t.Figureset tag_cat_l ->
      tag_cat_l

  | Domainset_formula_t.Musicset tag_cat_l ->
      tag_cat_l
;;

let category_tag_list_off_mainset_tag tag_mai =
  let for_mai = retrieve tag_mai in
  category_tag_list_off_mainset_formula for_mai
;; 

let camlline_tag_list_off_mainset_formula for_mai =
  let tag_cat_l = 
    category_tag_list_off_mainset_formula 
      for_mai 
  in
  let for_cat_l = List.map
      Category_formula_v.retrieve 
      tag_cat_l 
  in
  let tag_cal_ll = List.map
      Category_formula_v.camlline_tag_list_off_category_formula 
      for_cat_l
  in 
  List.flatten tag_cal_ll
;;

let camlline_tag_list_off_mainset_tag tag_mai =
  let for_mai = retrieve tag_mai in
  camlline_tag_list_off_mainset_formula for_mai
;; 

(** {6 Iterating_for_formula} *)

let map f_of_tag_cat for_mai = 
  let tag_cat_l = category_tag_list_off_mainset_formula for_mai in
  List.map f_of_tag_cat tag_cat_l
;;

let iter f_of_tag_cat for_mai = 
  let tag_cat_l = category_tag_list_off_mainset_formula for_mai in
  List.iter f_of_tag_cat tag_cat_l ;;

let map2 f_of_tag_cat for_mai_1 for_mai_2  = 
  let tag_cat_l_1 = category_tag_list_off_mainset_formula for_mai_1 in
  let tag_cat_l_2 = category_tag_list_off_mainset_formula for_mai_2 in
  List.map2 f_of_tag_cat tag_cat_l_1 tag_cat_l_2
;;

let iter2 f_of_tag_cat for_mai_1 for_mai_2 = 
  let tag_cat_l_1 = category_tag_list_off_mainset_formula for_mai_1 in
  let tag_cat_l_2 = category_tag_list_off_mainset_formula for_mai_2 in
  List.iter2 f_of_tag_cat tag_cat_l_1 tag_cat_l_2 
;;

