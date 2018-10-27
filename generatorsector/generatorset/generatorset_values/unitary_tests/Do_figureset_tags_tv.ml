let nam_cod = "Do_figure_tags_tv.ml";;

(* toplevel 
   #use "Do_figure_tags_tv.ml";;

*)

let nam_dom = "figure";;
let nam_cat = "tag";;
let sel_cat = (fun c -> c = Category_symbol_v.make nam_cat);;

let nam_dir_fra = (Unix.getenv "FRA") ^ "/";;
let nam_dir_dom = nam_dir_fra ^ nam_dom ^ "/";;

let sym_dom = Domain_symbol_v.make nam_dom "";;
let idx_dom = Domain_symbol_v.list_index_of_domain_symbol sym_dom;;
let soi_dom = Sole_index_v.make idx_dom [];;
let gss_dom = Generatorset_symbol_v.generatorset_symbol_of_domain_symbol sym_dom;;
Generatorset_symbol_by_sole_index_register_v.store soi_dom gss_dom;;
let tag_dom = Tag_v.make sym_dom soi_dom;;
let for_dom = Domain_formula_v.retrieve tag_dom;;

let tag_cat = Doublet_list_v.find_if_left sel_cat for_dom;; 
  
let sym_cat = Tag_v.entity_off_tag tag_cat;;
let nam_cat = Category_symbol_v.name sym_cat ;;
let nam_dir_cat = nam_dir_dom ^ nam_dom ^ "_" ^ nam_cat ^ "s/";;

let tag_ent_l = Category_formula_v.entity_tag_list_off_category_tag tag_cat;;

let write_t nam_dir_cat tag_ent =
  let for_ent = Entity_formula_v.retrieve tag_ent in

  let tag_cof = Doublet_list_v.find_if_left 
      Contentfile_symbol_v.is_type_alone for_ent in
  
  let for_cof = Contentfile_formula_v.retrieve tag_cof in

  let tag_usf = Doublet_list_v.find_if_left 
      Usagefile_symbol_v.is_implementation_off_usagefile_symbol 
      for_cof 
  in

  Usagefile_value_v.write nam_dir_cat tag_usf
;;

let write_v nam_dir_cat tag_ent =
  let for_ent = Entity_formula_v.retrieve tag_ent in

  let tag_cof = Doublet_list_v.find_if_left 
      Contentfile_symbol_v.is_value_alone for_ent in
  
  let for_cof = Contentfile_formula_v.retrieve tag_cof in

  let tag_usf = Doublet_list_v.find_if_left 
      Usagefile_symbol_v.is_implementation_off_usagefile_symbol 
      for_cof 
  in

  Usagefile_value_v.write nam_dir_cat tag_usf
;;

List.iter (write_t nam_dir_cat) tag_ent_l ;
List.iter (write_v nam_dir_cat) tag_ent_l ;;

Format.fprintf Format.std_formatter "@.@.%i _t.ml and _v.ml files processed for directory %s@." (List.length tag_ent_l) nam_dir_cat;



