let nam_cod = "Tools_vgnr_v.ml";;

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

let uppercase_abbreviation_domain sym_dos = 
  String.uppercase_ascii (Domain_symbol_v.abbreviation sym_dos)
;;

let uppercase_initial_category sym_cat = 
  let nam_cat = Category_symbol_v.name sym_cat in
  let str_one = String.sub nam_cat 0 1 in
  String.uppercase_ascii str_one
;;

let category_name sym_cat =
  String.lowercase_ascii (Category_symbol_v.name sym_cat) 
;;

let category_name_capitalized sym_cat =
  String.capitalize_ascii (category_name sym_cat)
;;

let entity_name sym_ent = 
  match sym_ent with
  | Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol _) ->

      String.lowercase_ascii (Entity_symbol_v.name sym_ent) 
	  
  | _ ->
      String.lowercase_ascii (Entity_symbol_v.string_off sym_ent) 
;;

let entity_name_capitalized sym_ent =
  String.capitalize_ascii (entity_name sym_ent)
;;

let module_name_of_string str =
  let (nam_ent, nam_cat) = 
    String_v.first_string_doublet_of_char_off_string
      ':' str 
  in
  nam_ent ^ "_" ^ nam_cat
;;

let module_name sym_cat sym_ent =
  String.lowercase_ascii (Format.sprintf "%s_%s" 
    (Entity_symbol_v.string_off sym_ent) 
    (Category_symbol_v.name sym_cat))
;;

let module_name_capitalized sym_cat sym_ent =
  String.capitalize_ascii (module_name sym_cat sym_ent)
;;

let module_suffix sym_cof =
  Abbreviation_module_v.module_suffix_of_contentfile_symbol sym_cof
;;

let module_extension_of_usagefile_symbol = function 
  | Usagefile_symbol_t.Usagefile_for_symbol_symbol 
      (Usagefile_for_symbol_symbol_t.Implementation_for_symbol) -> "ml"

  | Usagefile_symbol_t.Usagefile_for_formula_symbol 
      (Usagefile_for_formula_symbol_t.Implementation_for_formula) -> "ml"

  | Usagefile_symbol_t.Usagefile_for_symbol_symbol 
      (Usagefile_for_symbol_symbol_t.Interface_for_symbol) -> "mli"

  | Usagefile_symbol_t.Usagefile_for_formula_symbol 
      (Usagefile_for_formula_symbol_t.Interface_for_formula) -> "mli"
;;

let module_suffix_of_contentfile_symbol = function
  | Contentfile_symbol_t.Type_alone -> "_t"
  | Contentfile_symbol_t.Type_n_value -> "_p"
  | Contentfile_symbol_t.Value_alone -> "_v"
;;


let module_name_suffixed sym_cat sym_ent sym_cof =
  let nam_mod = module_name sym_cat sym_ent in
  let suf_mod = module_suffix sym_cof in
  
  Format.sprintf "%s%s" nam_mod suf_mod
;;

let module_name_suffixed_extended sym_cat sym_ent sym_cof sym_usf =
  let nam_mod = module_name sym_cat sym_ent in
  let suf_mod = module_suffix sym_cof in
  let ext_mod = module_extension_of_usagefile_symbol sym_usf in
  
  Format.sprintf "%s%s.%s" nam_mod suf_mod ext_mod
;;

let module_name_capitalized_suffixed sym_cat sym_ent sym_cof =
  String.capitalize_ascii (module_name_suffixed sym_cat sym_ent sym_cof)
;;

let module_name_capitalized_suffixed_extended sym_cat sym_ent sym_cof sym_usf =
  String.capitalize_ascii (module_name_suffixed_extended sym_cat sym_ent sym_cof sym_usf)
;;

let uno_off_list nam_cod nam_fun sym_cal sym_ent_l =
  let a = 
    try 
      List_v.element_off_one_element_list sym_ent_l
    with 
    | Failure s ->
	match s with
	| "Empty_list:list_v.ml:element_off_one_element_list" ->
	    Error_messages_v.print_fatal_error 
	("Tools_vgnr_v.ml in "^nam_cod) nam_fun
	  "exactly 1 elements in list"
	  "Empty list"
	  (Format.sprintf "check Formula for @.   >%s<@.    in module@.   >Camlparagraph_for_..._proformula_v.ml<"
	     (Camlline_symbol_v.name sym_cal))

	| "Several_elements:list_v.ml:element_off_one_element_list" ->
	    Error_messages_v.print_fatal_error 
	      ("Tools_vgnr_v.ml in "^nam_cod) nam_fun
	      "exactly 1 elements in list"
	      (Format.sprintf "%s" 
	   (List_v.name_with_separator Entity_symbol_v.string_off ";" sym_ent_l))
	      (Format.sprintf "check number of Entity_symbol in Formula for @.   >%s<@.    in module@.   >camlparagraph_proformula_v.ml<"
		 (Camlline_symbol_v.name sym_cal))
	| _ -> failwith s
  in
  a
;;

let duo_off_list nam_cod nam_fun sym_cal sym_ent_l =
  let (a, b) = 
    try List_v.pair_off_list sym_ent_l
    with Failure "Not_a_pair:List_v.pair_off_list" ->
      Error_messages_v.print_fatal_error ("Tools_vgnr_v.ml in "^nam_cod) nam_fun
	"exactly 2 elements in list"
	  (Format.sprintf ":@.%s" (List_v.name_with_separator Entity_symbol_v.fullname ";\n " sym_ent_l))
	  (Format.sprintf "check number of Entity_symbol in Formula for @.   >%s<@.    in module@.   >camlparagraph_proformula_v.ml<"
	     (Camlline_symbol_v.name sym_cal))
  in
  (a, b)
;;

let trio_of_list nam_cod nam_fun sym_cal sym_ent_l =
  let (a, b, c) = 
    try List_v.trio_of_list sym_ent_l
    with 
    | Failure _ -> 
	Error_messages_v.print_fatal_error 
	  ("Tools_vgnr_v.ml in "^nam_cod) nam_fun
	  "exactly 3 elements in list"
	  (Format.sprintf ":@.%s" (List_v.name_with_separator Entity_symbol_v.fullname ";\n " sym_ent_l))
	  (Format.sprintf "check number of Entity_symbol in Formula for @.   >%s<@.    in module@.   >camlparagraph_proformula_v.ml<"
	     (Camlline_symbol_v.name sym_cal))
  in
  (a, b, c)
;;

let quatuor_off_list nam_cod nam_fun sym_cal sym_ent_l =
  let (a, b, c, d) = 
    try List_v.quatuor_off_list sym_ent_l
    with Failure "Not_a_quatuor:List_v.quatuor_off_list" ->
      
      Error_messages_v.print_fatal_error 
	("Tools_vgnr_v.ml in "^nam_cod) nam_fun
	"exactly 4 elements in list"
	  (Format.sprintf ":@.%s" (List_v.name_with_separator Entity_symbol_v.fullname ";\n " sym_ent_l))
	  (Format.sprintf "check number of Entity_symbol in Formula for @.   >%s<@.    in module@.   >camlparagraph_proformula_v.ml<"
	     (Camlline_symbol_v.name sym_cal))
  in
  (a, b, c, d)
;;

let quintet_off_list nam_cod nam_fun sym_cal sym_ent_l =
  let (a, b, c, d, e) = 
    try List_v.quintet_off_list sym_ent_l
    with Failure "Not_a_quintet:List_v.quintet_off_list" ->
      
      Error_messages_v.print_fatal_error 
	("Tools_vgnr_v.ml in "^nam_cod) nam_fun
	"exactly 5 elements in list"
	  (Format.sprintf ":@.%s" (List_v.name_with_separator Entity_symbol_v.fullname ";\n " sym_ent_l))
	  (Format.sprintf "check number of Entity_symbol in Formula for @.   >%s<@.    in module@.   >camlparagraph_proformula_v.ml<"
	     (Camlline_symbol_v.name sym_cal))
  in
  (a, b, c, d, e)
;;

let datastructure_tdot_datastructure_of_entity_symbol sym_ent =
(* Ex.: Doublet_t.doublet *)
  Format.sprintf "%s_t.%s" 
    (entity_name_capitalized sym_ent) 
    (entity_name sym_ent) 
;;
(***
let datastructure_tdot_datastructure_of_camlline_symbol sym_cal =
(* Ex.: Doublet_t.doublet *)
  let str_cal = Camlline_symbol_v.string_off sym_cal in

  Format.sprintf "%s_t.%s" 
    (String.capitalize_ascii str_cal) str_cal 
;;
****)
let entity_tag_tdot_entity_tag_of_entity_symbol sym_ent =
(* Ex.: Point_tag_t.point_tag *)
  Format.sprintf "%s_tag_t.%s_tag" 
    (entity_name_capitalized sym_ent) 
    (entity_name sym_ent) 
;;

let singlet_tag_of_entity_symbol sym_ent_a =
  Format.sprintf "%s"
    (entity_tag_tdot_entity_tag_of_entity_symbol sym_ent_a) 
;;

let doublet_tag_of_entity_symbol_of_entity_symbol sym_ent_a sym_ent_b =
  Format.sprintf "(%s, %s)"
    (entity_tag_tdot_entity_tag_of_entity_symbol sym_ent_a) 
    (entity_tag_tdot_entity_tag_of_entity_symbol sym_ent_b) 
;;

let triplet_tag_of_entity_symbol_of_entity_symbol_of_entity_symbol sym_ent_a sym_ent_b sym_ent_c =
  Format.sprintf "(%s, %s, %s)"
    (entity_tag_tdot_entity_tag_of_entity_symbol sym_ent_a) 
    (entity_tag_tdot_entity_tag_of_entity_symbol sym_ent_b) 
    (entity_tag_tdot_entity_tag_of_entity_symbol sym_ent_c) 
;;

(***
let datastructure_expanded_name tag_ent = 
  (* | Triangle_isoceles_equilateral of (Point_3d_t.point_3d, Vector_3d_t.vector_3d) Doublet_t.doublet *)

  let soi_ent = Tag_v.sole_index_off_tag tag_ent in
  let sym_ent = Tag_v.entity_off_tag tag_ent in
  let sym_efn = 
    Entity_symbol_v.entity_fictive_nullary_symbol_off_entity_symbol 
      sym_ent
  in
  let tag_efn = Tag_v.make sym_efn soi_ent in
  let (sym_exd, sym_enf_l) =  
    Entity_external_datastructure_symbol_entity_fictive_symbol_list_by_entity_fictive_nullary_tag_provider_v.provide
      tag_efn
  in
  match sym_exd with
  | Entity_external_datastructure_symbol_t.Doublet s ->
      let sym_ent_l = List.map 
	  Entity_symbol_v.entity_symbol_of_entity_fictive_symbol 
	  sym_enf_l
      in 
      doublet_expanded_name sym_ent sym_ent_l

  | _ ->
      Error_messages_v.print_fatal_error nam_cod
	"datastructure_expanded_name"
	"Entity_external_datastructure_symbol were doublet" 
	(Entity_external_datastructure_symbol_v.fullname sym_exd)
	"Check"
;;
***)

let argument_module_name_list_of_arguments_string str_arg =
  let wor_l = String_v.split_of_character_of_string ' ' str_arg in
  List.map module_name_of_string wor_l
;;

let developped_arguments_string_of_arguments_string str_arg =
(* Ex.: 
   "fragment_head:mark grouping:mark" 
gives :
   (Fragment_head_mark_t.fragment_head_mark, Grouping_mark_t.grouping_mark) 
*)

  let nam_mod_low_l = 
    argument_module_name_list_of_arguments_string 
      str_arg 
  in
  let nam_mod_cap_l = List.map String.capitalize_ascii nam_mod_low_l in
  let nam_typ_l =
    List.map2 (fun c l -> c ^ "_t." ^ l)
      nam_mod_cap_l nam_mod_low_l 
  in
  let str = List_v.name_with_separator Utilities_v.identity ", " nam_typ_l in
  Bytes.set (Bytes.of_string str) 0 '('; 
  Bytes.set (Bytes.of_string str) ((String.length str) -1) ')';
  str 
;;

let constructor_name_of_entity_symbol_of_arguments_string sym_ent str_arg =
  let nam_mod_l = 
    argument_module_name_list_of_arguments_string 
      str_arg 
  in
  let str = List_v.name_with_separator Utilities_v.identity "_" nam_mod_l in
  let nam_con =
    String_v.cut_first_character_off_string 
      (String_v.cut_last_character_off_string str) 
  in
  let nam_ent = Entity_symbol_v.name sym_ent in
  (String.capitalize_ascii nam_ent) ^"_"^ nam_con
;;

let make_pipe_datastructure_camltype sym_ent_l =
(* Ex.:
  | Fragment_head_mark_n_grouping_mark of (Fragment_head_mark_t.fragment_head_mark, Grouping_mark_t.grouping_mark) Capped_list_t.capped_list
*)

(*
From :
  [(Entity_symbol_t.Entity_external_symbol
   (Entity_external_symbol_t.Entity_external_datastructure_symbol
   (Entity_external_datastructure_symbol_t.Capped_list
   "fragment_head:mark grouping:mark"))
   ;
   (Entity_symbol_t.Entity_symbol
   (Entity_symbol_t.Entity_top_symbol
   (Entity_top_symbol_t.Has_some_leaf_son
   "molecule_linear_diatomic"))]
*)

  let sym_ent_dat = List.hd sym_ent_l in
  let str_arg = Entity_symbol_v.string_off sym_ent_dat in

  Format.sprintf "  | %s of %s %s"
    (constructor_name_of_entity_symbol_of_arguments_string sym_ent_dat str_arg) 
    (developped_arguments_string_of_arguments_string str_arg)
    (datastructure_tdot_datastructure_of_entity_symbol sym_ent_dat)  
;;

let space_for_querying = function
    | Item_symbol_t.Item_for_symbol_symbol
	(Item_for_symbol_symbol_t.Item_for_symbol_each_grandson_bare_symbol _)
	
    | Item_symbol_t.Item_for_symbol_symbol
     (Item_for_symbol_symbol_t.Item_for_symbol_each_grandson_ofstring_symbol _) -> 
       
       "      "

    | _ -> 

	"  "
;;

