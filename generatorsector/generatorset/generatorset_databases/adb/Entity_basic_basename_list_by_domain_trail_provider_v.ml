(** {3 Entity_basic_basename_list_by_domain_trail_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : AGNR:Builder_basename_list_by_domain_trail_provider_v";
   "Needs : Constructor_notleaf_basename_list_by_domain_trail_provider_v";
   "Current : AGNR:Entity_basic_basename_list_by_domain_trail_provider_v";
   "Needed-by : ";
   "Definition : a Builder is an element of the Builder Tree (BT)";
   "Definition : a Builder has its name defined at the RHS of the domainset_formulas.set";
   "Definition : a Builder_name is either an Constructor_notleaf_name or an Entity_basic_name";
   "Definition : Builder_name list is the union of Constructor_notleaf_name list and Entity_basic_name list"; 
   "Remark : an Builder is specific to Formula Set while Constructor are NOT";
   "What-is-it : it is the list of all Builder_name for a Domainset";
   "How-is-it-done : by excluding Constructor_leaf_name list from Builder_basename_list";
   "Invariant : all elements are basic entities";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "entity_basic_basename_list_by_domain_trail_register";;

let entity_basic_basename_list_by_domain_trail_register : 
    (Trail_t.trail, 
     string list) 
    Register_t.register = Register_v.make 137
;;

(** {6 Retrieving} *)

let retrieve tra_dom =
  try Register_v.retrieve entity_basic_basename_list_by_domain_trail_register tra_dom
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    let str_reg = 
      Register_v.string_of_register 
	Trail_v.name 
	(List_v.name_with_separator Utilities_v.identity "; ")
	"\n" 
	entity_basic_basename_list_by_domain_trail_register
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
      entity_basic_basename_list_by_domain_trail_register 
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
  Register_v.is_stored entity_basic_basename_list_by_domain_trail_register tra_dom
;;

let build tra_dom =
  let ban_bui_l =
    Builder_basename_list_by_domain_trail_provider_v.provide tra_dom
  in

  let ban_cnl_l =
    Constructor_notleaf_basename_list_by_domain_trail_provider_v.provide
      tra_dom
  in

  let ban_bas_l = List_v.exclusion_off_list_of_list ban_bui_l ban_cnl_l in

  List.sort String.compare ban_bas_l

;;

let build_n_store tra_dom =
  let ban_enb_l = build tra_dom in
  store tra_dom ban_enb_l;
  ban_enb_l
;;

let provide tra_dom =
  if tra_dom = []
  then
    Error_messages_v.print_fatal_error nam_cod "provide"
      "trail tra_dom were NOT an empty list" 
      "trail tra_dom IS an empty list" 
      "Check"
  else
    if not (Trail_v.has_of_head_key_off_trail "domain" tra_dom) 
    then 
      Error_messages_v.print_fatal_error nam_cod "provide" "domain trail" 
	(Format.sprintf "%s instead" (Trail_v.name tra_dom) ) "Check"
    else
      begin
	if Register_v.is_stored 
	    entity_basic_basename_list_by_domain_trail_register 
	    tra_dom
	then retrieve tra_dom
	else build_n_store tra_dom
      end
;;
