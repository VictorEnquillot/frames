(** {3 Domain_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Domain_interface_v";
   "Current : FGNR:Domain_formula_v";
   "Needed-by : FGNR:Section_formula";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Stem type";
   "Author : François Colonna 30 octobre 2018 at 09:51:12+01:00";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_dom =
  match for_dom with
  | Domain_formula_t.Common _ -> Domain_symbol_t.Common
  | Domain_formula_t.Database _ -> Domain_symbol_t.Database
  | Domain_formula_t.Elementary _ -> Domain_symbol_t.Elementary
  | Domain_formula_t.Figure _ -> Domain_symbol_t.Figure
  | Domain_formula_t.General _ ->	Domain_symbol_t.General
  | Domain_formula_t.Generator _ -> Domain_symbol_t.Generator
  | Domain_formula_t.Localinput _ -> Domain_symbol_t.Localinput
  | Domain_formula_t.Operator _ -> Domain_symbol_t.Operator
  | Domain_formula_t.Primitive _ -> Domain_symbol_t.Primitive
  | Domain_formula_t.Property _ -> Domain_symbol_t.Property
  | Domain_formula_t.Prototype _ -> Domain_symbol_t.Prototype
  | Domain_formula_t.Skeleton _ -> Domain_symbol_t.Skeleton
  | Domain_formula_t.Wavefunction _ -> Domain_symbol_t.Wavefunction
;;

(** {6 Naming_for_formula} *)

let name for_dom = 
  let sym_dom = symbol_of_formula for_dom in
  Domain_symbol_v.name sym_dom
;;
(* ***

let string_off for_dom =
  let sym_dom = symbol_of_formula for_dom in
  Domain_symbol_v.string_off sym_dom
;;

let longname for_dom =
  Format.sprintf "Domain_formula_t.%s" 
    (String.capitalize (name for_dom))

let fullname for_dom =
  Format.sprintf "%s \"%s\"" (longname for_dom) (string_off for_dom)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_dom soi_dom =
  let sym_cat_l = Domain_interface_v.make sym_dom in
  let soi_cat_l = 
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
      1 (List.length sym_cat_l)
      soi_dom
  in
  let gss_of_sym = Generatorset_symbol_v.generatorset_symbol_of_category_symbol in
  Tools_fgnr_v.store_builder_gss_datastructure gss_of_sym sym_cat_l soi_cat_l;
  
  List.map2 Tag_v.make sym_cat_l soi_cat_l
;;

(** {6 Making_for_formula} *)

let make sym_dom soi_dom =
  let tag_cat_l = build_n_store sym_dom soi_dom in

  match sym_dom with
  | Domain_symbol_t.Common -> Domain_formula_t.Common tag_cat_l
  | Domain_symbol_t.Database -> Domain_formula_t.Database tag_cat_l
  | Domain_symbol_t.Elementary -> Domain_formula_t.Elementary tag_cat_l
  | Domain_symbol_t.Figure -> Domain_formula_t.Figure tag_cat_l
  | Domain_symbol_t.General -> Domain_formula_t.General tag_cat_l
  | Domain_symbol_t.Generator -> Domain_formula_t.Generator tag_cat_l
  | Domain_symbol_t.Localinput -> Domain_formula_t.Localinput tag_cat_l
  | Domain_symbol_t.Operator -> Domain_formula_t.Operator tag_cat_l
  | Domain_symbol_t.Primitive -> Domain_formula_t.Primitive tag_cat_l
  | Domain_symbol_t.Property -> Domain_formula_t.Property tag_cat_l
  | Domain_symbol_t.Prototype -> Domain_formula_t.Prototype tag_cat_l
  | Domain_symbol_t.Skeleton -> Domain_formula_t.Skeleton tag_cat_l
  | Domain_symbol_t.Wavefunction -> Domain_formula_t.Wavefunction tag_cat_l
;;

(** {6 Retrieving} *)

let retrieve tag_dom =
  let soi_dom = Tag_v.sole_index_off_tag tag_dom in
  let sym_dom = Tag_v.entity_off_tag tag_dom in
  make sym_dom soi_dom 
;; 

(** {6 Builder_tag_listing} *)

let category_tag_list_off_domain_formula for_dom =
  match for_dom with
  |  Domain_formula_t.Common  tag_cat_l -> tag_cat_l
  |  Domain_formula_t.Database  tag_cat_l -> tag_cat_l
  |  Domain_formula_t.Elementary  tag_cat_l -> tag_cat_l
  |  Domain_formula_t.Figure  tag_cat_l -> tag_cat_l
  |  Domain_formula_t.General tag_cat_l -> tag_cat_l
  |  Domain_formula_t.Generator tag_cat_l -> tag_cat_l
  |  Domain_formula_t.Localinput  tag_cat_l -> tag_cat_l
  |  Domain_formula_t.Operator  tag_cat_l -> tag_cat_l
  |  Domain_formula_t.Primitive  tag_cat_l -> tag_cat_l
  |  Domain_formula_t.Property  tag_cat_l -> tag_cat_l
  |  Domain_formula_t.Prototype  tag_cat_l -> tag_cat_l
  |  Domain_formula_t.Skeleton  tag_cat_l -> tag_cat_l
  |  Domain_formula_t.Wavefunction  tag_cat_l -> tag_cat_l
;;

let category_tag_list_off_domain_tag tag_dom =
  let for_dom = retrieve tag_dom in
  category_tag_list_off_domain_formula for_dom
;; 

let camlline_tag_list_off_domain_formula for_dom =
  let tag_cat_l = 
    category_tag_list_off_domain_formula 
      for_dom 
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

let camlline_tag_list_off_domain_tag tag_dom =
  let for_dom = retrieve tag_dom in
  camlline_tag_list_off_domain_formula for_dom
;; 

(** {6 Iterating_for_formula} *)

let map f_of_tag_cat for_dom = 
  let tag_cat_l = category_tag_list_off_domain_formula for_dom in
  List.map f_of_tag_cat tag_cat_l
;;

let iter f_of_tag_cat for_dom = 
  let tag_cat_l = category_tag_list_off_domain_formula for_dom in
  List.iter f_of_tag_cat tag_cat_l ;;

let map2 f_of_tag_cat for_dom_1 for_dom_2  = 
  let tag_cat_l_1 = category_tag_list_off_domain_formula for_dom_1 in
  let tag_cat_l_2 = category_tag_list_off_domain_formula for_dom_2 in
  List.map2 f_of_tag_cat tag_cat_l_1 tag_cat_l_2
;;

let iter2 f_of_tag_cat for_dom_1 for_dom_2 = 
  let tag_cat_l_1 = category_tag_list_off_domain_formula for_dom_1 in
  let tag_cat_l_2 = category_tag_list_off_domain_formula for_dom_2 in
  List.iter2 f_of_tag_cat tag_cat_l_1 tag_cat_l_2 
;;

