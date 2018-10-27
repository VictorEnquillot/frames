(** {3 Constructor_basename_list_by_domain_trail_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : AGNR:Constructor_basename_kind_basename_doublet_list_by_domain_trail_provider_v.provide";
   "Current : AGNR:Constructor_basename_list_by_domain_trail_provider_v";
   "Needed-by : ";
   "Definition : a Constructor_basename is a Root a Node of a Leaf of the Constructor Tree (CT)";
   "What-is-it : it is the list of all Constructor_basename for a Domainset";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "constructor_basename_list_by_domain_trail_register";;

let constructor_basename_list_by_domain_trail_register : 
    (Trail_t.trail, 
     string list) 
    Register_t.register = Register_v.make 137
;;

(** {6 Retrieving} *)

let retrieve tra_dos =
  try Register_v.retrieve constructor_basename_list_by_domain_trail_register tra_dos
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    let str_reg = 
      Register_v.string_of_register 
	Trail_v.name 
	(List_v.name_with_separator Utilities_v.identity "; ")
	"\n" 
	constructor_basename_list_by_domain_trail_register
    in
    let nam_ent = Trail_v.value_of_key_off_trail "entity" tra_dos in
    let tra_dos = List.tl tra_dos in
    let nam_fil = Filename_p.name
        (Database_filename_by_category_trail_provider_v.provide tra_dos) 
    in
    Error_messages_v.print_fatal_error 
      nam_cod 
      "retrieve"
      (Format.sprintf "key >%s<@.    were already stored"
         (Trail_v.name tra_dos)) 
      (Format.sprintf "no such key in register dumped below:@.        %s" str_reg) 
      (Format.sprintf "check entry >%s< in file:@.       >%s<" nam_ent nam_fil)
;;  

let store tra_dos str_l =
  try Register_v.store 
      constructor_basename_list_by_domain_trail_register 
      tra_dos str_l
  with Failure ("Already_stored:Register_v.ml:store") ->
    let str_old_l = retrieve tra_dos in
    if str_old_l <> str_l
    then
      begin
	let nam_ent = Trail_v.value_of_key_off_trail "entity" tra_dos in
	let tra_dos = List.tl tra_dos in
	let nam_fil = 
          Filename_p.name
            (Database_filename_by_category_trail_provider_v.provide tra_dos) 
	in
	Error_messages_v.print_fatal_error 
	  nam_cod 
          "store"
          (Format.sprintf "for key >%s<@.    already stored value >%s< equal new one"
             (Trail_v.name tra_dos)
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
           (Trail_v.name tra_dos)
           (List_v.name_with_separator Utilities_v.identity "; " str_old_l) )
;;

let is_stored tra_dos =
  Register_v.is_stored constructor_basename_list_by_domain_trail_register tra_dos
;;

let is_constructor_basename_list_once_list tra_dos dou_ck_l =
  let nam_fun = "is_constructor_basename_list_once_list" in

  let c_l = List.map (fun (c, k) -> c) dou_ck_l in
  
  if not ( List_v.is_once_list_of_list c_l )
  then (*** Improve : output those names ***)
    Error_messages_v.print_fatal_error nam_cod nam_fun  
      "Constructor basename list were a Once_list"
      (Format.sprintf "for domainset >%s<@.   Constructor basename list is :@.%s"
         (Trail_v.name tra_dos)
         (List_v.name_with_separator Utilities_v.identity ";\n " c_l) )
      "Check for duplicated constructor basename in set files"
  else
    List.sort String.compare c_l
;;

let build tra_dos =
  let dou_ck_l =
    Constructor_basename_kind_basename_doublet_list_by_domain_trail_provider_v.provide
      tra_dos
  in

  is_constructor_basename_list_once_list tra_dos dou_ck_l
;;

let build_n_store tra_dos =
  let nam_con_l = build tra_dos in
  store tra_dos nam_con_l;
  nam_con_l
;;

let provide tra_dos =
  if tra_dos = []
  then
    Error_messages_v.print_fatal_error nam_cod "provide"
      "trail tra_dos were NOT empty" "tra_dos IS empty" "Check"
  else
    if not (Trail_v.has_of_head_key_off_trail "domain" tra_dos) 
    then 
      Error_messages_v.print_fatal_error nam_cod "provide" "domain trail" 
	(Format.sprintf "%s instead" (Trail_v.name tra_dos) ) "Check"
    else
      begin
	if Register_v.is_stored 
	    constructor_basename_list_by_domain_trail_register 
	    tra_dos
	then retrieve tra_dos
	else build_n_store tra_dos
      end
;;
