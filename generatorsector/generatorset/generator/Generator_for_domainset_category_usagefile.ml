let nam_cod = "Generator_for_domainset_category_usagefile";;

let domain_name_of_string str =
  let nam_fun = "domain_name_of_string" in

  let sub = String.sub str 0 3 in
  match sub with
  | "che" -> "chemical"
  | "dgn" -> "database"
  | "fig" -> "figure"
  | "log" -> "logic"
  | "gen" -> "generator"
  | "ele" -> "elementary"
  | "mus" -> "music"
  | "pro" -> "property"
  | _ ->
      Error_messages_v.print_fatal_error nam_cod nam_fun 
	"domain 3 first characters were che|fig|gen|mai|mus"
	str "Check input"
;;

let category_name_of_string str =
  let nam_fun = "category_name_of_string" in

  let sub = String.sub str 0 3 in
  match sub with
  | "for" -> "formula"
  | "sym" -> "symbol"
  | _ ->
      Error_messages_v.print_fatal_error nam_cod nam_fun 
	"domain 3 first characters were for|sym"
	str "Check input"
;;

let entity_name_of_string str =

  let sub = String.sub str 0 3 in
  match sub with
  | "mol" -> "molecule"
  | "ato" -> "atom"
  | _ -> str
;;

let usagefile_name_of_category_name_of_string nam_cat str =
  let nam_fun = "usagefile_name_of_string" in

  let sub = String.sub str 0 3 in
  match sub with
  | "imp" -> Format.sprintf "implementation_for_%s" nam_cat
  | "int" -> Format.sprintf "interface_for_%s" nam_cat
  | _ ->
      Error_messages_v.print_fatal_error nam_cod nam_fun 
	"domain 3 first characters were imp|int"
	str "Check input"
;;

let write_t nam_dir_cat nam_usf tag_enp =
  let in_cpu = Utilities_v.cpu_user_time () in
  let nam_cof = "type_alone" in

  let tag_cof_l = Entity_formula_v.contentfile_tag_list_off_entity_tag tag_enp in
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
      let out_cpu = Utilities_v.cpu_user_time () in
      Format.fprintf Format.err_formatter "rm %s@.# dCpu %f Total %f@."
        nof (out_cpu -. in_cpu) out_cpu;
    end 
  else
    begin
      Usagefile_value_v.write nam_dir_cat tag_usf;
      let out_cpu = Utilities_v.cpu_user_time () in
      Format.fprintf Format.err_formatter "dCpu %f Total %f module T %s@." 
        (out_cpu -. in_cpu) out_cpu (Entity_symbol_v.string_off (Tag_v.entity_off_tag tag_enp) );
    end
;;

let write_v nam_dir_cat nam_usf tag_enp =
  let in_cpu = Utilities_v.cpu_user_time () in
  let nam_cof = "value_alone" in
  
  let tag_cof_l = Entity_formula_v.contentfile_tag_list_off_entity_tag tag_enp in
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
      let out_cpu = Utilities_v.cpu_user_time () in
      Format.fprintf Format.err_formatter "rm %s@.# dCpu %f Total %f@."
        nof (out_cpu -. in_cpu) out_cpu;
    end
  else
    begin
      Usagefile_value_v.write nam_dir_cat tag_usf;
      let out_cpu = Utilities_v.cpu_user_time () in
      Format.fprintf Format.err_formatter "dCpu %f Total %f module V %s@." 
        (out_cpu -. in_cpu) out_cpu (Entity_symbol_v.string_off (Tag_v.entity_off_tag tag_enp) );
    end
;;

let rec space_of_int = function
  | 0 -> ""
  | i -> " " ^ (space_of_int (i-1))
;;

let write_symbol_t_of_oc_of_category_of_entity_symbol_n_depth oc nam_cat sym_n_dep =
  let (sym, dep) = sym_n_dep in
  let spa = space_of_int (dep-1) in
  let nam = String.capitalize (Entity_symbol_v.string_off sym) in

  output_string oc (Format.sprintf "%s%s_%s_t.mli \\@." spa nam nam_cat)
;;

let write_makefile_bottom_of_oc oc =
  let bot_l = [
    "";
    "FILES_V_MLI := $(subst _t.mli,_v.mli,$(FILES_T_MLI))";
    "";
    "# concatenate";
    "FILES_MLI:= $(FILES_T_MLI) $(FILES_V_MLI) \\";
    "#figureset_symbol_by_sole_index_provider_v.mli \\";
    "";
  ]
  in

  List.iter (fun s -> output_string oc (Format.sprintf "%s@." s)) bot_l;
;;

let write_m sym_dom nam_ent nam_cat nam_dir_cat =
  let nof = Format.sprintf "%sfiles_%s_t_mli.mk" nam_dir_cat nam_ent in
  let fin = Filename_p.filename nof in 

  if Fileio_v.is_existing_of_filename fin 
  then
    begin 
      (Format.fprintf Format.err_formatter "rm %s\n" nof); 
      flush stderr;
    end 
  else
    begin
      let oc =
	Fileio_v.open_out_channel_of_string_of_string_of_fullnameoffile nam_cod "oc" nof
      in      

      let sym_ent_ft = 
	Entity_symbol_constructor_tree_by_domain_symbol_provider_v.provide sym_dom
      in
      let sym_n_dep_ent_l = 
	List.rev (
	Tree_v.node_n_depth_list_of_node_predicate_off_tree 
	  (fun n -> Entity_symbol_v.is_entity_proper_symbol_off_entity_symbol n) 
	  sym_ent_ft)
      in

      output_string oc (Format.sprintf "%s_T_MLI :=  \\@." (String.uppercase nam_ent) );

      List.iter 
	(write_symbol_t_of_oc_of_category_of_entity_symbol_n_depth oc  nam_cat) sym_n_dep_ent_l;

      (* write_makefile_bottom_of_oc oc; *)
      
      close_out oc;
    end
;;

(** Main *)

Format.fprintf Format.std_formatter "Caml module Generator :@.enter Domain Category Usage Entity@.";;

let str = read_line ();;
let wor_l = String_v.word_list_off_string str;;

let str_dom = List.nth wor_l 0;;
let str_cat = List.nth wor_l 1;;
let str_usf = List.nth wor_l 2;;
let str_ent = try List.nth wor_l 3
with Failure("nth") ->
  Error_messages_v.print_fatal_error nam_cod "Generator" 
    "4 arguments" str "Add <entity> to input"
;;   

let nam_dom = domain_name_of_string str_dom;;
let nam_cat = category_name_of_string str_cat;;
let nam_usf = usagefile_name_of_category_name_of_string nam_cat str_usf;;
let nam_ent = entity_name_of_string str_ent;;

Format.fprintf Format.std_formatter "Caml module Generator :@.Domain %s@.Category %s@.Usage %s@. Entity %s@." nam_dom nam_cat nam_usf nam_ent;;
  
let sel_cat = (fun c -> c = Category_symbol_v.make nam_cat);;

let nam_dir_fra = (Unix.getenv "FRA") ^ "/";;
let nam_dir_dom = nam_dir_fra ^ nam_dom ^ "/";;
let nam_set = nam_dom ^ "set";;
let nam_dir_set = nam_dir_fra ^ nam_set ^ "/";;
let nam_dir_cat = nam_dir_set ^ nam_set ^ "_" ^ nam_cat ^ "s/";;

let sym_dom = Domain_symbol_v.make nam_dom "";;
let idx_dom = Domain_symbol_v.list_index_of_domain_symbol sym_dom;;
let soi_dom = Sole_index_v.make idx_dom [];;
let tag_dom = Tag_v.make sym_dom soi_dom;;

let tag_cat_l = Domain_formula_v.category_tag_list_off_domain_tag tag_dom;;
let sel_cat = (fun c -> Category_symbol_v.name c = nam_cat);;
let tag_cat = Doublet_list_v.find_if_left sel_cat tag_cat_l;;
let sym_cat = Tag_v.entity_off_tag tag_cat;;

let tag_ent_l = Category_formula_v.entity_tag_list_off_category_tag tag_cat;;

List.iter (write_v nam_dir_cat nam_usf) tag_ent_l ;;

List.iter (write_t nam_dir_cat nam_usf) tag_ent_l ;; 

Format.fprintf Format.std_formatter 
"@.@.%i _t.ml and _v.ml files processed for directory %s@." 
(List.length tag_ent_l) nam_dir_cat;;

(** Makefile *)

write_m sym_dom nam_ent nam_cat nam_dir_cat;

let nof = Format.sprintf "%sfiles_%s_t_mli.mk" nam_dir_cat nam_ent in
Format.fprintf Format.std_formatter "@.@.makefile >%s< processed@." nof;
flush stdout;



