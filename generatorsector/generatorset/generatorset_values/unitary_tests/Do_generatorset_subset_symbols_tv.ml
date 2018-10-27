let nam_cod = "Do_generatorset_subset_symbols_tv.ml";;

(* toplevel 
   #use "Do_generatorset_subset_symbols_tv.ml";;

*)

let nam_dom = "generatorset";;
let nam_cat = "symbol";;
let sel_cat = (fun c -> c = Category_symbol_v.make nam_cat);;

let nam_dir_fra = (Unix.getenv "FRA") ^ "/";;
let nam_dir_dom = nam_dir_fra ^ nam_dom ^ "/";;

let sym_dom = Domain_symbol_v.make nam_dom "";;
let idx_dom = Domain_symbol_v.list_index_of_domain_symbol sym_dom;;
let soi_dom = Sole_index_v.make idx_dom [];;
let gss_dom = Generatorset_symbol_v.generatorset_symbol_of_domain_symbol sym_dom;;
Generatorset_symbol_by_sole_index_register_v.store soi_dom gss_dom;;
let tag_dom = Tag_v.make sym_dom soi_dom;;

let tag_cat_l = Domain_formula_v.category_tag_list_off_domain_tag tag_dom;;
let sel_cat = (fun c -> Category_symbol_v.name c = nam_cat);;
let tag_cat = Doublet_list_v.find_if_left sel_cat tag_cat_l;;
let sym_cat = Tag_v.entity_off_tag tag_cat;;

let nam_cat = Category_symbol_v.name sym_cat ;;
let nam_dir_cat = nam_dir_dom ^ nam_dom ^ "_" ^ nam_cat ^ "s/";;

let write_t nam_dir_cat tag_ent =
  let nam_cof = "type_alone" in
  let nam_usf = "implementation_for_symbol" in

  let tag_cof_l = Entity_formula_v.contentfile_tag_list_off_entity_tag tag_ent in
  let sel_cof = (fun c -> Contentfile_symbol_v.name c = nam_cof) in
  let tag_cof = Doublet_list_v.find_if_left sel_cof tag_cof_l in

  let tag_usf_l = Contentfile_formula_v.usagefile_tag_list_off_contentfile_tag tag_cof in
  let sel_usf = (fun u -> Usagefile_symbol_v.name u = nam_usf) in
  let tag_usf = Doublet_list_v.find_if_left sel_usf tag_usf_l in

  let nof = Usagefile_value_v.fullnameoffile nam_dir_cat tag_usf in
  let fin = Filename_p.filename nof in 

  if Fileio_v.is_existing_of_filename fin 
  then
    begin 
      (Format.fprintf Format.err_formatter "rm %s\n" nof); 
      flush stderr;
    end 
  else

    Usagefile_value_v.write nam_dir_cat tag_usf
;;

let write_v nam_dir_cat tag_ent =
  let nam_cof = "value_alone" in
  let nam_usf = "implementation_for_symbol" in

  let tag_cof_l = Entity_formula_v.contentfile_tag_list_off_entity_tag tag_ent in
  let sel_cof = (fun c -> Contentfile_symbol_v.name c = nam_cof) in
  let tag_cof = Doublet_list_v.find_if_left sel_cof tag_cof_l in

  let tag_usf_l = Contentfile_formula_v.usagefile_tag_list_off_contentfile_tag tag_cof in
  let sel_usf = (fun u -> Usagefile_symbol_v.name u = nam_usf) in
  let tag_usf = Doublet_list_v.find_if_left sel_usf tag_usf_l in

  let nof = Usagefile_value_v.fullnameoffile nam_dir_cat tag_usf in
  let fin = Filename_p.filename nof in 

  if Fileio_v.is_existing_of_filename fin 
  then
    begin 
      (Format.fprintf Format.err_formatter "rm %s\n" nof); 
      flush stderr;
    end 
  else

    Usagefile_value_v.write nam_dir_cat tag_usf
;;

let tag_ent_l = Category_formula_v.entity_tag_list_off_category_tag tag_cat;; 
(*
List.iter (write_t nam_dir_cat) tag_ent_l ;
List.iter (write_v nam_dir_cat) tag_ent_l ;;
*)

let tag_ent = List.find (fun e -> Entity_symbol_v.string_off n = "camlline") tag_ent_l;;

Format.fprintf Format.std_formatter 
"@.@.%i _t.ml and _v.ml files processed for directory %s@." 
(List.length tag_ent_l) nam_dir_cat;



