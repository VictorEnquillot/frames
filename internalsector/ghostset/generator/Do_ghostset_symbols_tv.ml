let nam_cod = "Do_ghostset_symbols_tv.ml";;

(* toplevel 
   #use "Do_ghostset_symbols_tv.ml";;

*)

let nam_dos = "ghostset";;
let nam_cat = "symbol";;
let nam_usf = "implementation_for_symbol";;

let sel_cat = (fun c -> c = Category_symbol_v.make nam_cat);;

let nam_dir_fra = (Unix.getenv "FRA") ^ "/";;
let nam_dir_dos = nam_dir_fra ^ nam_dos ^ "/";;

let sym_dos = Domainset_symbol_v.make nam_dos;;
let idx_dos = Domainset_symbol_v.list_index_of_domainset_symbol sym_dos;;
let soi_dos = Sole_index_v.make idx_dos [];;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_register_v.store soi_dos gss_dos;;
let tag_dos = Tag_v.make sym_dos soi_dos;;

let tag_cat_l = Domainset_formula_v.category_tag_list_off_domainset_tag tag_dos;;
let sel_cat = (fun c -> Category_symbol_v.name c = nam_cat);;
let tag_cat = Doublet_list_v.find_if_left sel_cat tag_cat_l;;
let sym_cat = Tag_v.symbol_off_tag tag_cat;;

let nam_cat = Category_symbol_v.name sym_cat ;;
let nam_dir_cat = nam_dir_dos ^ nam_dos ^ "_" ^ nam_cat ^ "s/";;

let write_t nam_dir_cat tag_enp =
  let nam_cof = "type_alone" in

  let tag_cof_l = Entity_formula_v.contentfile_tag_list_off_entity_tag tag_enp in
  let sel_cof = (fun c -> Contentfile_symbol_v.name c = nam_cof) in
  let tag_cof = Doublet_list_v.find_if_left sel_cof tag_cof_l in

  let tag_usf_l = Contentfile_formula_v.usagefile_tag_list_off_contentfile_tag tag_cof in
  let sel_usf = (fun u -> Usagefile_symbol_v.name u = nam_usf) in
  let tag_usf = Doublet_list_v.find_if_left sel_usf tag_usf_l in

  let nof = Usagefile_value_v.nameoffile nam_dir_cat tag_usf in
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

let write_v nam_dir_cat tag_enp =
  let nam_cof = "value_alone" in

  let tag_cof_l = Entity_formula_v.contentfile_tag_list_off_entity_tag tag_enp in
  let sel_cof = (fun c -> Contentfile_symbol_v.name c = nam_cof) in
  let tag_cof = Doublet_list_v.find_if_left sel_cof tag_cof_l in

  let tag_usf_l = Contentfile_formula_v.usagefile_tag_list_off_contentfile_tag tag_cof in
  let sel_usf = (fun u -> Usagefile_symbol_v.name u = nam_usf) in
  let tag_usf = Doublet_list_v.find_if_left sel_usf tag_usf_l in

  let nof = Usagefile_value_v.nameoffile nam_dir_cat tag_usf in
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

List.iter (write_t nam_dir_cat) tag_ent_l ;
List.iter (write_v nam_dir_cat) tag_ent_l ;;

Format.fprintf Format.std_formatter 
"@.@.%i _t.ml and _v.ml files processed for directory %s@." 
(List.length tag_ent_l) nam_dir_cat;



