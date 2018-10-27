(* toplevel 
   #use "Do_chemicalset_tags_tv_partial.ml";;
*)

let select_entity_name nam dep1 dep2 tag_enp =
  let str = Entity_proper_tag_v.string_off tag_enp in
  if String.length str < String.length nam 
  then false
  else
    begin
      let dep = List.length (String_v.split_of_c '_' str) in
      String.length str >= (String.length nam) 
	&& (String.sub str 0 (String.length nam) = nam)
	&& dep >= dep1 
	&& dep <= dep2 
    end
;;

let nam_dom = "chemicalset";;
let nam_dir_dom = (Unix.getenv "CHM") ^ "/";;

let sym_dom = Domain_symbol_v.make nam_dom "";;
let sip_dom = [1];;
let gss_dom = Generatorset_symbol_v.generatorset_symbol_of_domain_symbol sym_dom;;
Generatorset_symbol_by_sole_index_register_v.store sip_dom gss_dom;;
let tag_dom = Tag_v.make sym_dom sip_dom;;
let for_dom = Domain_formula_v.retrieve tag_dom;;

let tag_cat = Doublet_list_v.find_if_left 
    Category_symbol_v.is_tag_off_category_symbol for_dom;; 

let sym_cat = Tag_v.entity_off_tag tag_cat;;
let nam_cat = Category_symbol_v.name sym_cat ;;
let nam_dir_cat = nam_dir_dom ^ nam_dom ^ "_" ^ nam_cat ^ "s/";;

let for_cat = Category_formula_v.retrieve tag_cat;;

let tag_enp = List.find (fun e -> Entity_proper_tag_v.string_off e = "chemicalset") for_cat;;

let tag_enp_l = List.filter
    (fun t ->
      (select_entity_name "atom" 1 10 t)
    ||
      (select_entity_name "halfbridge" 1 10 t)
    ||
      (select_entity_name "block" 1 10 t)
) 
    for_cat
;;

let write_t nam_dir_cat tag_enp =
  let for_enp = Entity_formula_v.retrieve tag_enp in

  let tag_cof = Doublet_list_v.find_if_left 
      Contentfile_symbol_v.is_type_alone for_enp in
  
  let for_cof = Contentfile_formula_v.retrieve tag_cof in

  let tag_usf = Doublet_list_v.find_if_left 
      Usagefile_symbol_v.is_implementation_off_usagefile_symbol 
      for_cof 
  in

  Usagefile_value_v.write nam_dir_cat tag_usf
;;

let write_v nam_dir_cat tag_enp =
  let for_enp = Entity_formula_v.retrieve tag_enp in

  let tag_cof = Doublet_list_v.find_if_left 
      Contentfile_symbol_v.is_contentfile_value_alone_symbol_off_contentfile_symbol for_enp in
  
  let for_cof = Contentfile_formula_v.retrieve tag_cof in

  let tag_usf = Doublet_list_v.find_if_left 
      Usagefile_symbol_v.is_implementation_off_usagefile_symbol 
      for_cof 
  in

  Usagefile_value_v.write nam_dir_cat tag_usf
;;

List.iter (write_t nam_dir_cat) tag_enp_l ;
List.iter (write_v nam_dir_cat) tag_enp_l ;;





