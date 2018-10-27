(** {3 Builder_basename_list_by_domain_trail_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : AGNR:Righthandside_string_list_by_category_trail_provider_v";
   "Current : AGNR:Builder_basename_list_by_domain_trail_provider_v";
   "Needed-by : ";
   "Definition : a Builder is an element of the Builder Tree (BT)";
   "Definition : a Builder is the Entity defined in the datastructure part of a Formula type";
   "Definition : a Builder_name appears at the RHS of the domain_formulas.dat after the datastructure";
   "Definition : a Builder_name is either a non-root Constructor_name or an Entity_basic_name";
   "Remark : an Builder is specific to formulas.dat while Constructor are NOT";
   "What-is-it : it is the list of all Builder_name for a Domain";
   "How-is-it-done : by splitting the Righthandside_string of the domain_formulas.dat";
   "How-is-it-done : by excluding datastructure names";
   "How-is-it-done : by excluding duplicated names";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "builder_basename_list_by_domain_trail_register";;

let builder_basename_list_by_domain_trail_register : 
    (Trail_t.trail, 
     string list) 
    Register_t.register = Register_v.make 137
;;

(** {6 Retrieving} *)

let retrieve tra_dom =
  try Register_v.retrieve builder_basename_list_by_domain_trail_register tra_dom
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    let str_reg = 
      Register_v.string_of_register 
	Trail_v.name 
	(List_v.name_with_separator Utilities_v.identity "; ")
	"\n" 
	builder_basename_list_by_domain_trail_register
    in
    let nam_ent = Trail_v.value_of_key_off_trail "entity" tra_dom in
    let tra_dom = List.tl tra_dom in
    let nam_fil = Filename_p.name
        (Database_filename_by_category_trail_provider_v.provide tra_dom) 
    in
    Error_messages_v.print_fatal_error 
      nam_cod 
      "retrieve"
      (Format.sprintf "key >%s<@.    were already stored"
         (Trail_v.name tra_dom)) 
      (Format.sprintf "no such key in register dumped below:@.        %s" str_reg) 
      (Format.sprintf "check entry >%s< in file:@.       >%s<" nam_ent nam_fil)
;;  

let store tra_dom str_l =
  try Register_v.store 
      builder_basename_list_by_domain_trail_register 
      tra_dom str_l
  with Failure ("Already_stored:Register_v.ml:store") ->
    let str_old_l = retrieve tra_dom in
    if str_old_l <> str_l
    then
      begin
	let nam_ent = Trail_v.value_of_key_off_trail "entity" tra_dom in
	let tra_dom = List.tl tra_dom in
	let nam_fil = 
          Filename_p.name
            (Database_filename_by_category_trail_provider_v.provide tra_dom) 
	in
	Error_messages_v.print_fatal_error 
	  nam_cod 
          "store"
          (Format.sprintf "for key >%s<@.    already stored value >%s< equal new one"
             (Trail_v.name tra_dom)
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
           (Trail_v.name tra_dom)
           (List_v.name_with_separator Utilities_v.identity "; " str_old_l) )
;;

let is_stored tra_dom =
  Register_v.is_stored builder_basename_list_by_domain_trail_register tra_dom
;;

let builder_basename_list_of_string = function
  | "" -> 
	Error_messages_v.print_fatal_error nam_cod "builder_basename_list_of_string"
          "RHS of Record were NOT Empty"
          "Record is empty"
          "Check file formulas.dat"
  | str -> 
      let wor_l = 
	String_v.split_of_character_of_string ' ' str 
      in
      try
	List.tl wor_l
      with Failure "tl" ->
	Error_messages_v.print_fatal_error nam_cod "builder_basename_list_of_string"
          "RHS of Record DOES contain Builder_names"
          (Format.sprintf "Record is >%s<" str)
          "Check file formulas.dat"
;;

let build_n_store tra_dom =
  let tra_cat_for = 
    Trail_v.make "category" "formula" 
      tra_dom
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
    List.sort String.compare (List_v.left_once_list_off_list 
      (List.flatten nam_bui_ll) 
	      )
  in
  store tra_dom nam_bui_l;
  nam_bui_l
;;

let provide tra_dom =
  if tra_dom = []
  then
    Error_messages_v.print_fatal_error nam_cod "provide"
      "trail tra_dom were NOT empty" "tra_dom IS empty" "Check"
  else
    if not (Trail_v.has_of_head_key_off_trail "domain" tra_dom) 
    then 
      Error_messages_v.print_fatal_error nam_cod "provide" "domain trail" 
	(Format.sprintf "%s instead" (Trail_v.name tra_dom) ) "Check"
    else
      begin
	if Register_v.is_stored 
	    builder_basename_list_by_domain_trail_register 
	    tra_dom
	then retrieve tra_dom
	else build_n_store tra_dom
      end
;;
