let nam_cod = "Invariants_v.ml";;

let has_valid_kind_of_category_trail_of_string_triplet_list tra_cat tri_str_l =
  let nam_fun = "has_valid_kind_of_category_trail_of_string_triplet_list" in

  let nam_cat = Trail_v.value_of_key_off_trail "category" tra_cat in
  match nam_cat with
  | "symbol" ->
      List.filter (fun (k, e, rhs) -> k = "constructors" || k = "description" ) tri_str_l 
	
  | "formula" ->
      List.filter (fun (k, e, rhs) -> k = "builders" || k ="description") tri_str_l 
	
  | _ ->
      Error_messages_v.print_fatal_error nam_cod nam_fun
	"category name were symbol|formula"  
	nam_cat
	"Check category set files"
;;

let has_valid_entity_kind_of_category_trail_of_string_triplet_list tra_cat tri_str_l =
  let nam_fun = "has_valid_entity_kind_of_category_trail_of_string_triplet_list" in
  let nam_cat = Trail_v.value_of_key_off_trail "category" tra_cat in
  
  match nam_cat with
  | "symbol" ->
      List.filter (fun (k, e, rhs) -> k = "constructors" ) tri_str_l 
	
  | "formula" ->
      List.filter (fun (k, e, rhs) -> k = "builders" ) tri_str_l 
	
  | _ ->
      Error_messages_v.print_fatal_error nam_cod nam_fun
	"category name were symbol|formula"  
	nam_cat
	"Check category set files"
;;

let has_valid_element_number_of_category_name_of_righthandside nam_cat rhs =
  let nam_fun = "has_valid_element_number_of_righthandside_element_list_of_category_name" in
  let ele_l = String_v.split_of_character_of_string ' ' rhs in

  let is_valid =
    match nam_cat with
    | "formula" -> List.length ele_l > 1 
    | "symbol" -> List.length ele_l > 0
    | str ->
	Error_messages_v.print_fatal_error nam_cod nam_fun
	  "a valid category name formula|symbol" nam_cat "Check"
  in
  if (not is_valid)
  then
    Error_messages_v.print_fatal_error nam_cod nam_fun
      "RHS had a valid number of elements" 
      (Format.sprintf "for category %s RHS is >%s<" nam_cat rhs)
      (Format.sprintf "Check file %ss.set" nam_cat)
  else
    ele_l	
;;

let is_valid_of_datastructure_basename ban_das =
  let nam_fun = "is_valid_datastructure_basename" in

  let ban_das_l = 
    [
     "booted_list"; "capped_list"; "capped_booted_list"; 
     "doublet"; "doublet_list"; "duo"; 
     "list"; "singlet"; 
     "trio"; "triplet"; "triplet_list";
     "repeated_list";
   ] in
  
  let is_valid = List.mem ban_das ban_das_l in
  
  if (not is_valid)
  then
    Error_messages_v.print_fatal_error nam_cod nam_fun
      (Format.sprintf "Datastructure_basename >%s< were valid" ban_das) 
      (Format.sprintf "list of valid Datastructure_basename is :@.       %s"
	 (List_v.name_with_separator Utilities_v.identity ";\n  " ban_das_l)
      ) 
      "Check set file or add it to list"
  else
    ban_das
;;

let has_valid_datastructure_basename_of_righthandside_string rhs =
  let wor_l = String_v.split_of_character_of_string ' ' rhs in
  let ban_das = List.hd wor_l in

  is_valid_of_datastructure_basename ban_das
;;

