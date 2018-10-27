(** {3 Constructor_root_basename_by_domain_trail_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : AGNR:Entity_basename_lefthandside_list_by_category_trail_provider_v";
   "Needs : AGNR:Entity_basename_righthandside_list_by_category_trail_provider_v";
   "Current : AGNR:Constructor_root_basename_by_domain_trail_provider_v";
   "Needed-by : ";
   "Needed-by : ";
   "Definition : the Root of the Constructor Tree for a domain";
   "How-is-it-done : the only Constructor basename in LHS of symbols.dat not in the RHS";
   "Invariant : has Only value" 
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "constructor_root_basename_by_domain_trail_register";;

let constructor_root_basename_by_domain_trail_register : 
    (Trail_t.trail, 
     string) 
    Register_t.register = Register_v.make 137
;;

(** {6 Retrieving} *)

let retrieve tra_dos =
  let nam_fun = "retrieve" in
  try Register_v.retrieve constructor_root_basename_by_domain_trail_register tra_dos
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    let tra_cat = Trail_v.make "category" "symbol" tra_dos in
    let nam_fil = 
      Filename_p.name (Database_filename_by_category_trail_provider_v.provide tra_cat) 
    in
    let nam_dos = Trail_v.value_of_key_off_trail "domain" tra_dos in
    Error_messages_v.print_fatal_error nam_cod nam_fun
      (Format.sprintf "key >%s< were already stored" (Trail_v.name tra_dos)) 
      (Format.sprintf "no such key in register >%s<" nam_reg) 
      (Format.sprintf "check entry >%s< in dat file: >%s<" nam_dos nam_fil)
;;  

let store tra_dos str =
  let nam_fun = "store" in
  try Register_v.store 
      constructor_root_basename_by_domain_trail_register 
      tra_dos str
  with Failure ("Already_stored:Register_v.ml:store") ->
    let str_old = retrieve tra_dos in
    if str_old <> str
    then
      begin
	let tra_cat = Trail_v.make "category" "symbol" tra_dos in
	let nam_fil = 
	  Filename_p.name (Database_filename_by_category_trail_provider_v.provide tra_cat) 
	in
	let nam_dos = Trail_v.value_of_key_off_trail "domain" tra_dos in
	Error_messages_v.print_fatal_error nam_cod nam_fun
          (Format.sprintf "for key >%s<@.    already stored value >%s< equal new one"
             (Trail_v.name tra_dos) nam_dos
	  )
	  (Format.sprintf "this value >%s<" str_old)
	  (Format.sprintf "check for duplicated entry >%s< in file:@.       >%s<" nam_dos nam_fil)
      end
    else 
      let tra_cat = Trail_v.make "category" "symbol" tra_dos in
      let nam_fil = 
	Filename_p.name (Database_filename_by_category_trail_provider_v.provide tra_cat) 
      in
      let mes = Format.sprintf "for key >%s<@.    already stored value >%s<@.     check dat file >%s<"
	  (Trail_v.name tra_dos) str_old nam_fil
      in

      Error_messages_v.print_warning nam_cod nam_fun mes;
;;

let is_stored tra_dos =
  Register_v.is_stored constructor_root_basename_by_domain_trail_register tra_dos
;;

let has_only_one_value_of_category_trail_of_list tra_cat lst =
  let nam_fun = "has_only_one_value_of_category_trail_of_list" in

  match List.length lst with
  | 1 -> List.hd lst
  | 0 ->  
      let nam_cat = Trail_v.value_of_key_off_trail "category" tra_cat in
      let nam_dos = Trail_v.value_of_key_off_trail "domain" tra_cat in
      Error_messages_v.print_fatal_error nam_cod nam_fun
        (Format.sprintf "a Root did exist in >%s_%ss.dat< file" nam_dos nam_cat)
	"No Root" "Check that file"
  | n ->  
      let nam_cat = Trail_v.value_of_key_off_trail "category" tra_cat in
      let nam_dos = Trail_v.value_of_key_off_trail "domain" tra_cat in
      Error_messages_v.print_fatal_error nam_cod nam_fun
        (Format.sprintf "only One Root exists in >%s_%ss.dat< file" nam_dos nam_cat)
	(Format.sprintf "this list :@.  %s" 
	   (List_v.name_with_separator Utilities_v.identity ";\n    " lst) 
	)
	(Format.sprintf	"Check file >%s_%ss.dat< file" nam_dos nam_cat)
;;

let build tra_dos =
  let tra_cat = Trail_v.make "category" "symbol" tra_dos in
  let ebl_l =
    Entity_basename_lefthandside_list_by_category_trail_provider_v.provide 
      tra_cat 
  in
  let ebr_l =
    Entity_basename_righthandside_list_by_category_trail_provider_v.provide 
      tra_cat 
  in
  let lst = List_v.exclusion_off_list_of_list ebl_l ebr_l in

  has_only_one_value_of_category_trail_of_list tra_cat lst
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
	    constructor_root_basename_by_domain_trail_register 
	    tra_dos
	then retrieve tra_dos
	else build_n_store tra_dos
      end
;;
