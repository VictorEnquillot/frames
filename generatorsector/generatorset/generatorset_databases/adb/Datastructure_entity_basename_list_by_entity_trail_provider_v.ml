(** {3 Datastructure_entity_basename_list_by_entity_trail_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : AGNR:Constructor_node_basename_list_by_category_trail_provider_v";
   "Needs : AGNR:Righthandside_string_by_entity_trail_provider_v";
   "Needed-by : IGNR:Contentfile_symbol_list_by_entity_proper_tag_provider_v";
   "Needed-by : IGNR:Entity_proformula_by_entity_proper_tag_provider_v";
   "Current : AGNR:Datastructure_entity_basename_list_by_entity_trail_provider_v";
   "What-is-it : it splits Righthandside_string into constructor name list";
   "Remark : Constructor is Type Constructor NOT formula Builder of Leaf";
   "Remark : Symbols and Formulas have the SAME list";
   "Remark : Formula Leaf Builders are use in an other context";
   "Improve : Information should be read from specific Database : GNR:generatorset_formulas.set";
 ]
;;

(** {6 Registering} *)

let nam_reg = "datastructure_entity_basename_list_by_entity_trail_register";;

let datastructure_entity_basename_list_by_entity_trail_register : 
    (Trail_t.trail, 
     string list) 
    Register_t.register = Register_v.make 137
;;

(** {6 Retrieving} *)

let retrieve tra_ent =
  try Register_v.retrieve datastructure_entity_basename_list_by_entity_trail_register tra_ent
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    let str_reg = 
      Register_v.string_of_register 
	Trail_v.name 
	(List_v.name_with_separator Utilities_v.identity "; ")
	"\n" 
	datastructure_entity_basename_list_by_entity_trail_register
    in
    let nam_ent = Trail_v.value_of_key_off_trail "entity" tra_ent in
    let tra_cat = List.tl tra_ent in
    let nam_fil = Filename_p.name
        (Database_filename_by_category_trail_provider_v.provide tra_cat) 
    in
    Error_messages_v.print_fatal_error 
      nam_cod 
      "retrieve"
      (Format.sprintf "key >%s<@.    were already stored"
         (Trail_v.name tra_ent)) 
      (Format.sprintf "no such key in register dumped below:@.        %s" str_reg) 
      (Format.sprintf "check entry >%s< in file:@.       >%s<" nam_ent nam_fil)
;;  

let store tra_ent str_l =
  try Register_v.store 
      datastructure_entity_basename_list_by_entity_trail_register 
      tra_ent str_l
  with Failure ("Already_stored:Register_v.ml:store") ->
    let str_old_l = retrieve tra_ent in
    if str_old_l <> str_l
    then
      begin
	let nam_ent = Trail_v.value_of_key_off_trail "entity" tra_ent in
	let tra_cat = List.tl tra_ent in
	let nam_fil = 
          Filename_p.name
            (Database_filename_by_category_trail_provider_v.provide tra_cat) 
	in
	Error_messages_v.print_fatal_error 
	  nam_cod 
          "store"
          (Format.sprintf "for key >%s<@.    already stored value >%s< equal new one"
             (Trail_v.name tra_ent)
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
           (Trail_v.name tra_ent)
           (List_v.name_with_separator Utilities_v.identity "; " str_old_l) )
;;

let is_stored tra_ent =
  Register_v.is_stored datastructure_entity_basename_list_by_entity_trail_register tra_ent
;;

let build_n_store tra_ent =
  let tra_ent_sym = Trail_v.replace_of_value_of_key_off_trail 
      "symbol" "category" tra_ent
  in
  let str_con_sym =
    Righthandside_string_by_entity_trail_provider_v.provide 
      tra_ent_sym
  in
  let nam_con_sym_l =
    String_v.split_of_character_of_string 
      ' ' str_con_sym 
  in
  store tra_ent nam_con_sym_l;
  nam_con_sym_l
;;

let provide tra_ent =
  if Register_v.is_stored 
      datastructure_entity_basename_list_by_entity_trail_register 
      tra_ent
  then retrieve tra_ent
  else build_n_store tra_ent
;;
