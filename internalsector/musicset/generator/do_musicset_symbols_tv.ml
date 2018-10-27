(* toplevel 
   #use "do_musicset_symbols_tv.ml";;

*)

let nam_dos = "musicset";;
let nam_dir_fra = (Unix.getenv "FRA") ^ "/";;
let nam_dir_dos = nam_dir_fra ^ nam_dos ^ "/generator/";;

let sym_dos = Domainset_symbol_v.make nam_dos;;
let idx_dos = Domainset_symbol_v.list_index_of_domainset_symbol sym_dos;;
let soi_dos = Sole_index_v.make idx_dos [];;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_production_provider_v.store soi_dos gss_dos;;
let tag_dos = Tag_v.make sym_dos soi_dos;;
let for_dos = Domainset_formula_v.retrieve tag_dos;;

let tag_cat = Doublet_list_v.find_if_left 
    Category_symbol_v.is_symbol_off_category_symbol for_dos;; 
  
let sym_cat = Tag_v.symbol_off_tag tag_cat;;
let nam_cat = Category_symbol_v.name sym_cat ;;
let nam_dir_cat = nam_dir_dos ^ nam_dos ^ "_" ^ nam_cat ^ "s/";;

let for_cat = Category_formula_v.retrieve tag_cat;;

let tag_enp_l = for_cat;;

let write_t nam_dir_cat tag_enp =
  let for_enp = Entity_proper_formula_v.retrieve tag_enp in

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
  let for_enp = Entity_proper_formula_v.retrieve tag_enp in

  let tag_cof = Doublet_list_v.find_if_left 
      Contentfile_symbol_v.is_value_alone for_enp in
  
  let for_cof = Contentfile_formula_v.retrieve tag_cof in

  let tag_usf = Doublet_list_v.find_if_left 
      Usagefile_symbol_v.is_implementation_off_usagefile_symbol 
      for_cof 
  in

  Usagefile_value_v.write nam_dir_cat tag_usf
;;

List.iter (write_t nam_dir_cat) tag_enp_l ;
List.iter (write_v nam_dir_cat) tag_enp_l ;;





