(** {3 Creates files_mli.mk} *)

let nam_cod = "Do_musicset_symbols_files_mli_mk.ml";;

(* toplevel
  #use "Do_musicset_symbols_files_mli_mk.ml";;
*)

let nam_dom = "musicset";;
let nam_dir_dom = (Unix.getenv "GEO") ^ "/";;

let sym_dom = Domain_symbol_v.make nam_dom "";;
let idx_dom = Domain_symbol_v.list_index_of_domain_symbol sym_dom;;
let soi_dom = Sole_index_v.make idx_dom [];;
let gss_dom = Generatorset_symbol_v.generatorset_symbol_of_domain_symbol sym_dom;;
Generatorset_symbol_by_sole_index_register_v.store soi_dom gss_dom;;
let tag_dom = Tag_v.make sym_dom soi_dom;;
let for_dom = Domain_formula_v.retrieve tag_dom;;

let fnd_cat = Category_symbol_v.is_symbol_off_category_symbol;;
let tag_cat = Doublet_list_v.find_if_left fnd_cat for_dom;;

let fullnameoffile nam_dir_dom tag_cat =
  let sym_cat = Tag_v.entity_off_tag tag_cat in
  let nam_cat = Category_symbol_v.name sym_cat in 
  let nam_dir_cat = nam_dir_dom ^ nam_dom ^ "_" ^ nam_cat ^ "s/" in

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
  let nam = Entity_symbol_v.string_off sym in

  output_string oc (Format.sprintf "%s%s_symbol_t.mli \\@." spa nam)
;;

let write_bottom_of_oc oc =
  let bot_l = [
    "";
    "FILES_V_MLI := $(subst symbol_t,symbol_v,$(FILES_T_MLI))";
    "";
    "# concatenate";
    "FILES_MLI:= $(FILES_T_MLI) $(FILES_V_MLI) \\";
     "";
  ]
  in

  List.iter (fun s -> output_string oc (Format.sprintf "%s@." s)) bot_l;
;;

let oc_of_nameoffile nof = 
  Fileio_v.open_out_channel_of_string_of_string_of_fullnameoffile nam_cod "oc" nof
;; 

let write tag_cat =
  let nof = fullnameoffile nam_dir_dom tag_cat in
  let oc = oc_of_nameoffile nof in 

  let sym_ent_ft = 
    Entity_symbol_fulltree_by_category_tag_provider_v.provide tag_cat
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
;;

write tag_cat;

