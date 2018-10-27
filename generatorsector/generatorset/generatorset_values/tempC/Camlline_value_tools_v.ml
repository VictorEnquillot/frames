
let abbreviation_argument sym_ent = 
  Abbreviation_argument_v.abbreviation_argument_of_entity_symbol sym_ent
;;

let abbreviation_category sym_cat = 
  Abbreviation_argument_v.abbreviation_argument_of_category_symbol sym_cat
;;

let abbreviation_categorized_argument sym_cat sym_ent =
   Format.sprintf "%s_%s" 
    (abbreviation_category sym_cat)
    (abbreviation_argument sym_ent)
;;

let category_name sym_cat =
  Category_symbol_v.name sym_cat 
;;

let category_name_capitalized sym_cat =
  String.capitalize (category_name sym_cat)
;;

let entity_name sym_ent =
  Entity_symbol_v.string_off sym_ent 
;;

let entity_name_capitalized sym_ent =
  String.capitalize (entity_name sym_ent)
;;

let module_name sym_cat sym_ent =
  Format.sprintf "%s_%s" 
    (Entity_symbol_v.string_off sym_ent) 
    (Category_symbol_v.name sym_cat)
;;

let module_name_capitalized sym_cat sym_ent =
  String.capitalize (module_name sym_cat sym_ent)
;;

let module_suffix sym_cof =
  Abbreviation_module_v.module_suffix_of_contentfile_symbol sym_cof
;;

let module_name_suffixed sym_cat sym_ent sym_cof =
  let nam_mod = module_name sym_cat sym_ent in
  let suf_mod = module_suffix sym_cof in
  
  Format.sprintf "%s%s" nam_mod suf_mod
;;

let module_name_capitalized_suffixed sym_cat sym_ent sym_cof =
  String.capitalize (module_name_suffixed sym_cat sym_ent sym_cof)
;;

let uno_off_list nam_cod nam_fun sym_cal e_l =
  let a = 
    try 
      List_v.element_off_one_element_list e_l
    with Failure "Several_elements:list_v.ml:element_off_one_element_list" ->
      Error_messages_v.print_fatal_error 
	("Camlline_value_tools_v.ml in "^nam_cod) nam_fun
	"exactly 1 elements in list"
	(Format.sprintf "%s" 
	   (List_v.name_with_separator Entity_symbol_v.string_off ";" e_l))
	(Format.sprintf "check number of Entity_symbol in Formula for @.   >%s<@.    in module@.   >camlparagraph_proformula_v.ml<"
	   (Camlline_symbol_v.longname sym_cal))
  in
  a
;;

let pair_off_list nam_cod nam_fun sym_cal e_l =
  let (a, b) = 
    try List_v.pair_off_list e_l
    with Failure "Not_a_pair:List_v.pair_off_list" ->
      Error_messages_v.print_fatal_error 
	("Camlline_value_tools_v.ml in "^nam_cod) nam_fun
	"exactly 2 elements in list"
	(Format.sprintf "%s" 
	   (List_v.name_with_separator Entity_symbol_v.longname ";" e_l))
	(Format.sprintf "check number of Entity_symbol in Formula for @.   >%s<@.    in module@.   >camlparagraph_proformula_v.ml<"
	   (Camlline_symbol_v.longname sym_cal))
  in
  (a, b)
;;

let trio_off_list nam_cod nam_fun sym_cal e_l =
  let (a, b, c) = 
    try List_v.trio_off_list e_l
    with Failure "Not_a_trio:List_v.trio_off_list" ->
      
      Error_messages_v.print_fatal_error 
	("Camlline_value_tools_v.ml in "^nam_cod) nam_fun
	"exactly 3 elements in list"
	(Format.sprintf "%s" (List_v.name_with_separator Entity_symbol_v.longname ";" e_l))
	(Format.sprintf "check number of Entity_symbol in Formula for @.   >%s<@.    in module@.   >camlparagraph_proformula_v.ml<"
	   (Camlline_symbol_v.longname sym_cal))
  in
  (a, b, c)
;;

