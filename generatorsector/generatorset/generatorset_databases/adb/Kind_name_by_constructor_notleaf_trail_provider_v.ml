(** {3 Kind_name_by_constructor_notleaf_trail_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : AGNR:Constructor_notleaf_basename_kind_basename_doublet_list_by_domain_trail_provider_v";
   "Needs : AGNR:Constructor_notleaf_basename_list_by_domain_trail_provider_v";
   "Current : AGNR:Kind_name_by_constructor_notleaf_trail_provider_v";
   "Definition : a Kind_name is either type or type_private in file domainset_symbols.set";
   "Definition : a Constructor_notleaf is a Root or a Node of the Constructor Tree (CT) i.e. a LHS Entity in labels set";
   "What-is-it : it provides the Kind_name associated with a given Entity_node_name";
   "How-is-it-done : by reducing the above Doublet_list";
   "Improve : description is missing. Each Constructor has a list of Kind_basename !!!";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "kind_name_by_constructor_notleaf_trail_register";;

let kind_name_by_constructor_notleaf_trail_register : 
    (Trail_t.trail, 
     string) 
    Register_t.register = Register_v.make 137
;;

(** {6 Retrieving} *)

let retrieve tra_cnl =
  try Register_v.retrieve kind_name_by_constructor_notleaf_trail_register tra_cnl
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith 
      "Not_stored:Kind_name_by_constructor_notleaf_trail_provider_v.ml.retrieve"
;;  

let store tra_cnl nam_kin =
  try Register_v.store kind_name_by_constructor_notleaf_trail_register tra_cnl nam_kin
  with Failure ("Already_stored:Register_v.ml:store") ->
    let nam_kin_old = retrieve tra_cnl in
    if nam_kin_old <> nam_kin
    then
      begin
	let nam_ent = Trail_v.value_of_key_off_trail "entity" tra_cnl in
	let tra_cat = List.tl tra_cnl in
	let nam_fil = 
          Filename_p.name
            (Database_filename_by_category_trail_provider_v.provide tra_cat) 
	in
	Error_messages_v.print_fatal_error 
	  nam_cod 
          "store"
          (Format.sprintf 
	     "for key >%s<@.    already stored value >%s< equal new one"
             (Trail_v.name tra_cnl)
             (Utilities_v.identity nam_kin_old) 
	  )
	  
          (Format.sprintf ">%s<" (Utilities_v.identity nam_kin) )
          (Format.sprintf "check for duplicated entry >%s< in file:@.       >%s<" nam_ent nam_fil)
      end
    else 
      Error_messages_v.print_warning
	nam_cod 
        "store"
        (Format.sprintf "for key >%s<@.    already stored value >%s<"
           (Trail_v.name tra_cnl)
           (Utilities_v.identity nam_kin_old) 
	)
;;

let is_stored tra_cnl =
  Register_v.is_stored kind_name_by_constructor_notleaf_trail_register tra_cnl
;;

let check_constructor_not_leaf_basename_n_constructors ban_cnl tra_dos =
  let nam_fun = "check_constructor_not_leaf_basename_n_constructors" in
  
  let dou_ck_l = 
    Constructor_notleaf_basename_kind_basename_doublet_list_by_domain_trail_provider_v.provide
      tra_dos
  in
  
  if not (List.mem (ban_cnl, "constructors") dou_ck_l) 
  then 
    let nam_dos = Trail_v.value_of_key_off_trail "domain" tra_dos in
    Error_messages_v.print_fatal_error nam_cod nam_fun 
      (Format.sprintf "(Constructor_notleaf, constructors\") (%s, \"constructors\") were in doublet list for domainset %s" ban_cnl nam_dos)
      (Format.sprintf "Constructor_notleaf_basename_kind_name_doublet list is:@.      %s" 
	 (Doublet_list_v.name_with_separator Utilities_v.identity  Utilities_v.identity ";\  " dou_ck_l)
      )
      "Check symbols.set file"
      
  else ()
;;

let is_constructor_notleaf_basename_in_list tra_cnl =
  let nam_fun = "is_constructor_notleaf_basename_in_list" in
  let tra_dos = Trail_v.trail_of_key_off_trail "domain" tra_cnl in
  let ban_cnl_l = 
    Constructor_notleaf_basename_list_by_domain_trail_provider_v.provide 
      tra_dos 
  in
  let ban_cnl = Trail_v.value_of_key_off_trail "entity" tra_cnl in
  
  if not (List.mem ban_cnl ban_cnl_l)
  then
    let nam_dos = Trail_v.value_of_key_off_trail "domain" tra_dos in
    Error_messages_v.print_fatal_error nam_cod nam_fun 
      (Format.sprintf "Constructor_notleaf >%s< were in list for domainset %s" ban_cnl nam_dos)
      (Format.sprintf "Constructor_notleaf list is:@.      %s" 
	 (List_v.name_with_separator Utilities_v.identity ";\  " ban_cnl_l)
      )
      "Check symbols.set file"
  else
    ban_cnl
;;

let is_constructor_notleaf_basename_private_of_string s =
  if not (String_v.is_once_of_char_of_string ':' s) 
  then false
  else  
    begin
      let (ban_cnl, pri) = 
        String_v.first_string_doublet_of_char_off_string ':' s 
      in
      pri = "private"
    end
;;

let build tra_cnl =
  let tra_dos = Trail_v.trail_of_key_off_trail "domain" tra_cnl in
  let ban_cnl = Trail_v.value_of_key_off_trail "entity" tra_cnl in

  check_constructor_not_leaf_basename_n_constructors ban_cnl tra_dos;
  
  if is_constructor_notleaf_basename_private_of_string ban_cnl 
  then
    "type_private"
  else
    "type"
;;

let build_n_store tra_cnl =
  let nam_kin = build tra_cnl in
  store tra_cnl nam_kin;
  nam_kin
;;

let is_constructor_notleaf_basename_of_entity_trail tra_ent =
  let tra_dos = Trail_v.trail_of_key_off_trail "domain" tra_ent in
  let nam_ent_l =  
    Constructor_notleaf_basename_list_by_domain_trail_provider_v.provide tra_dos
  in
  let nam_ent = Trail_v.value_of_key_off_trail "entity" tra_ent in
  List.mem nam_ent nam_ent_l
;;

let provide tra_cnl =
  if tra_cnl = []
  then
    Error_messages_v.print_fatal_error nam_cod "provide"
      "trail tra_cnl were NOT empty" "tra_cnl IS empty" "Check"
  else
    if not (Trail_v.has_of_head_key_off_trail "entity" tra_cnl) 
    then 
      Error_messages_v.print_fatal_error nam_cod "provide" "entity trail" 
	(Format.sprintf "%s instead" (Trail_v.name tra_cnl) ) "Check"
    else
      if not (is_constructor_notleaf_basename_of_entity_trail tra_cnl) 
      then
	Error_messages_v.print_fatal_error nam_cod "provide"
	  (Format.sprintf "Entity >%s< were a Constructor_node" (Trail_v.name tra_cnl) )
	  "it is NOT" "Check LHS of equal in domainset_symbols.set"
      else
      begin
      if Register_v.is_stored 
	  kind_name_by_constructor_notleaf_trail_register 
	  tra_cnl
      then retrieve tra_cnl
      else build tra_cnl 
    end
;;
