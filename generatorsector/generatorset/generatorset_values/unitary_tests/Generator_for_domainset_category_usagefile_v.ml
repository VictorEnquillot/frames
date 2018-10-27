(* toplevel 
   #use "Generator_for_domainset_category_usagefile_v.ml";;

*)


let nam_cod = "Generator_for_domainset_category_usagefile_v.ml";;

let domain_name_of_string str =
  let nam_fun = "domain_name_of_string" in

  let sub = String.sub str 0 3 in
  match sub with
  | "che" -> "chemical"
  | "fig" -> "figure"
  | "gen" -> "generator"
  | "mai" -> "main"
  | "mus" -> "music"
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

(** Main *)

Format.fprintf Format.std_formatter "Caml module Generator :@.enter Domain Category Usage Entity@.";;

(* let str = read_line ();; *)

let str = "chemical symbol implementation fake";;

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


let sym_ent_fut = 
    Entity_symbol_constructor_tree_by_domain_symbol_provider_v.provide 
      sym_dom
;;

let sym_ent_dom = Entity_symbol_v.make "entity_proper_with_one_son" nam_dom;;
Tree_v.subtree_of_node_off_tree sym_ent_dom sym_ent_fut;;

let tag_ent_l = Category_formula_v.entity_tag_list_off_category_tag tag_cat;;

failwith "ici";;
