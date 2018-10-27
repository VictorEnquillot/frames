(** {3 Provides a Constructor list for each Category *)

let nam_cod = "Constructor_basename_list_by_category_trail_provider_v.ml";;

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : AGNR:Constructor_basename_righthandside_string_doublet_list_by_category_trail_provider_v";
   "Needed-by : AGNR:";
   "Definition : a Constructor is an Entity located at the RHS of the domainset_symbols.set";
   "Definition : a Constructor is an element of the Constructor Tree (CT) except Root Domainset Entity";
   "What-is-it : it is the list of all Constructor name for a Category trail";
   "How-is-it-done : by splitting each RightHandSide_string into a Constructor name list";
   "Remark : Constructor is a Type Constructor NOT a formula Builder of Constructor_leaf";
   "Remark : Symbols and Formulas have the SAME Constructor name list because they have isomorphous CTs";
   "Remark : Formula Leaf Builders are use in an other context";
   "Improve : Database concerned is domainset_symbols.set and depends ONLY on Domainset";
 ]
;;

(** {6 Registering} *)

let nam_reg = "constructor_basename_list_by_category_trail_register";;

let constructor_basename_list_by_category_trail_register : 
    (Trail_t.trail, 
     string list) 
    Register_t.register = Register_v.make 137
;;

(** {6 Retrieving} *)

let retrieve tra_cat =
  try Register_v.retrieve constructor_basename_list_by_category_trail_register tra_cat
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    let str_reg = 
      Register_v.string_of_register 
	Trail_v.name 
	(List_v.name_with_separator Utilities_v.identity "; ")
	"\n" 
	constructor_basename_list_by_category_trail_register
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
      constructor_basename_list_by_category_trail_register 
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
  Register_v.is_stored constructor_basename_list_by_category_trail_register tra_cat
;;

let build_n_store tra_cat =
  let tra_cat_sym = Trail_v.replace_of_value_of_key_off_trail 
      "symbol" "category" tra_cat
  in
  let nam_ent_str_rhs_dol =  
    Constructor_basename_righthandside_string_doublet_list_by_category_trail_provider_v.provide
      tra_cat
  in
  match nam_ent_str_rhs_dol with 
  | [] -> 
      Error_messages_v.print_fatal_error nam_cod "build"
	"(Entity_name, RHS string) list were NOT Empty"
	(Format.sprintf "it IS Empty for category trail:@.   %s" (Trail_v.name tra_cat_sym))
	"Check"
  | _ ->
      Doublet_list_v.left_list_off_doublet_list nam_ent_str_rhs_dol
;;

let provide tra_cat =
  if not (Trail_v.has_of_head_key_off_trail "category" tra_cat) 
  then 
    Error_messages_v.print_fatal_error nam_cod "provide" "category trail" 
      (Format.sprintf "%s instead" (Trail_v.name tra_cat) ) "Check"
  else
    begin
      if Register_v.is_stored 
	  constructor_basename_list_by_category_trail_register 
	  tra_cat
      then retrieve tra_cat
      else build_n_store tra_cat
    end
;;
