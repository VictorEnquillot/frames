let nam_cod = "Do_chemicalset_symbols_files_mli_mk.ml";;

(* toplevel
  #use "Do_chemicalset_symbols_files_mli_mk.ml";;

*)

let nam_dom = "chemical";;
let nam_cat = "symbol";;

let nam_dir_fra = (Unix.getenv "FRA") ^ "/";;
let nam_set = nam_dom ^ "set";;
let nam_dir_set = nam_dir_fra ^ nam_set ^ "/";;
let nam_dir_cat = nam_dir_set ^ nam_set ^ "_" ^ nam_cat ^ "s/";;

let sym_dom = Domain_symbol_v.make nam_dom "";;
let idx_dom = Domain_symbol_v.list_index_of_domain_symbol sym_dom;;
let soi_dom = Sole_index_v.make idx_dom [];;

let gss_dom = Generatorset_symbol_v.generatorset_symbol_of_domain_symbol sym_dom;;
Generatorset_symbol_by_sole_index_register_v.store soi_dom gss_dom;;

let tag_dom = Tag_v.make sym_dom soi_dom;;

let tag_cat_l = Domain_formula_v.category_tag_list_off_domain_tag tag_dom;;
let sel_cat = (fun c -> c = Category_symbol_v.make nam_cat);;
let tag_cat = Doublet_list_v.find_if_left sel_cat tag_cat_l;;

let fullnameoffile nam_dir_dom tag_cat =
  let sym_cat = Tag_v.entity_off_tag tag_cat in
  let nam_cat = Category_symbol_v.name sym_cat in 
  let nam_dir_set = nam_dir_fra ^ nam_set ^ "/" in
  let nam_dir_cat = nam_dir_set ^ nam_set ^ "_" ^ nam_cat ^ "s/" in

  Format.sprintf "%sfiles_mli.mk" nam_dir_cat
;;

let write_top_of_oc oc =
  output_string oc (Format.sprintf "FILES_T_MLI :=  \\@.")
;;

let rec space_of_int = function
  | 0 -> ""
  | i -> " " ^ (space_of_int (i-1))
;;

let write_symbol_t_of_oc_of_entity_symbol_n_depth oc sym_n_dep =
  let (sym, dep) = sym_n_dep in
  let spa = space_of_int (dep-1) in
  let nam = String.capitalize (Entity_symbol_v.string_off sym) in

  output_string oc (Format.sprintf "%s%s_formula_t.mli \\@." spa nam)
;;

let write_bottom_of_oc oc =
  let bot_l = [
    "";
    "FILES_V_MLI := $(subst formula_t,formula_v,$(FILES_T_MLI))";
    "";
    "# concatenate";
    "FILES_MLI:= $(FILES_T_MLI) $(FILES_V_MLI) \\";
    "#figure_symbol_by_sole_index_provider_v.mli \\";
    "";
  ]
  in

  List.iter (fun s -> output_string oc (Format.sprintf "%s@." s)) bot_l;
;;

let oc_of_nameoffile nof = 
  Fileio_v.open_out_channel_of_string_of_string_of_fullnameoffile nam_cod "oc" nof
;; 

let write tag_cat =
  let nof = fullnameoffile nam_dir_set tag_cat in
  let fin = Filename_p.filename nof in 
  if Fileio_v.is_existing_of_filename fin 
  then
    begin 
      (Format.fprintf Format.err_formatter "rm %s\n" nof); 
      flush stderr;
    end 
  else
    begin
      let oc = oc_of_nameoffile nof in 
      
      let sym_ent_ft = 
	Entity_symbol_constructor_tree_by_domain_symbol_provider_v.provide sym_dom
      in
      let sym_n_dep_ent_l = 
	List.rev (
	Tree_v.node_n_depth_list_of_node_predicate_off_tree 
	  (fun n -> Entity_symbol_v.is_entity_proper_symbol_off_entity_symbol n) 
	  sym_ent_ft)
      in
      
      write_top_of_oc oc;
      List.iter (write_symbol_t_of_oc_of_entity_symbol_n_depth oc) sym_n_dep_ent_l;
      write_bottom_of_oc oc;
      
      close_out oc;
    end
;;

  let nof = fullnameoffile nam_dir_set tag_cat in
  Format.fprintf Format.std_formatter "@.@.file >%s< processed@." nof;
  flush stdout;


write tag_cat;

