(** {3 Provides a Builder list for each Category *)

let nam_cod = "Builder_basename_list_by_category_trail_provider_v.ml";;

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : AGNR:Righthandside_string_list_by_category_trail_provider_v";
   "Needed-by : IGNR:Contentfile_symbol_list_by_entity_proper_tag_provider_v";
   "Needed-by : IGNR:Entity_proformula_by_entity_proper_tag_provider_v";
   "Definition : an Builder is an element of the Builder Tree (BT)";
   "Remark : an Builder is either a Builder_node or a Builder_leaf";
   "What-is-it : it is the list of all Builder_name for a Domainset";
   "How-is-it-done : by splitting the Righthandside_string of the domainset_formulas.set";
 ]
;;

(** {6 Registering} *)

let nam_reg = "builder_basename_list_by_category_trail_register";;

let builder_basename_list_by_category_trail_register : 
    (Trail_t.trail, 
     string list) 
    Register_t.register = Register_v.make 137
;;

(** {6 Retrieving} *)

let retrieve tra_cat =
  try Register_v.retrieve builder_basename_list_by_category_trail_register tra_cat
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    let str_reg = 
      Register_v.string_of_register 
	Trail_v.name 
	(List_v.name_with_separator Utilities_v.identity "; ")
	"\n" 
	builder_basename_list_by_category_trail_register
    in
    let nam_ent = Trail_v.value_of_key_off_trail "entity" tra_cat in
    let tra_cat = List.tl tra_cat in
    let nam_fil = Filename_p.name
        (Database_filename_by_category_trail_provider_v.provide tra_cat) 
    in
    Error_messages_v.print_fatal_error 
      nam_cod 
      "retrieve"
      (Format.sprintf "key >%s<@.    were already stored"
         (Trail_v.name tra_cat)) 
      (Format.sprintf "no such key in register dumped below:@.        %s" str_reg) 
      (Format.sprintf "check entry >%s< in file:@.       >%s<" nam_ent nam_fil)
;;  

let store tra_cat str_l =
  try Register_v.store 
      builder_basename_list_by_category_trail_register 
      tra_cat str_l
  with Failure ("Already_stored:Register_v.ml:store") ->
    let str_old_l = retrieve tra_cat in
    if str_old_l <> str_l
    then
      begin
	let nam_ent = Trail_v.value_of_key_off_trail "entity" tra_cat in
	let tra_cat = List.tl tra_cat in
	let nam_fil = 
          Filename_p.name
            (Database_filename_by_category_trail_provider_v.provide tra_cat) 
	in
	Error_messages_v.print_fatal_error 
	  nam_cod 
          "store"
          (Format.sprintf "for key >%s<@.    already stored value >%s< equal new one"
             (Trail_v.name tra_cat)
 	     (List_v.name_with_separator Utilities_v.identity "; " str_l) )
     
	  (Format.sprintf "this value >%s<"
 	     (List_v.name_with_separator Utilities_v.identity "; " str_old_l) )

	  (Format.sprintf "check for duplicated entry >%s< in file:@.       >%s<" nam_ent nam_fil)
      end
    else 
      Error_messages_v.print_warning
	nam_cod 
        "store"
        (Format.sprintf "for key >%s<@.    already stored value >%s<"
           (Trail_v.name tra_cat)
           (List_v.name_with_separator Utilities_v.identity "; " str_old_l) )
;;

let is_stored tra_cat =
  Register_v.is_stored builder_basename_list_by_category_trail_register tra_cat
;;

let builder_basename_list_of_string = function
  | "" -> []
  | str -> String_v.split_of_character_of_string ' ' str
 ;;

let build_n_store tra_cat =
  let tra_cat_for = Trail_v.replace_of_value_of_key_off_trail 
      "symbol" "category" tra_cat
  in
  let str_rhs_l_for =
    Righthandside_string_list_by_category_trail_provider_v.provide 
      tra_cat_for
  in
  let nam_bui_ll = List.map 
      builder_basename_list_of_string 
      str_rhs_l_for
  in
  let nam_bui_l = 
    List_v.left_once_list_off_list 
      (List.flatten nam_bui_ll) 
  in
  store tra_cat nam_bui_l;
  nam_bui_l
;;

let provide tra_cat =
  if Register_v.is_stored 
      builder_basename_list_by_category_trail_register 
      tra_cat
  then retrieve tra_cat
  else build_n_store tra_cat
;;
