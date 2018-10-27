(** {3 Lefthandside_string_list_by_category_trail_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : AGNR:Constructor_basename_lefthandside_string_doublet_list_by_category_trail_provider_v";
   "Current : AGNR:Lefthandside_string_list_by_category_trail_provider_v";
   "Needed-by : ";
   "Definition : the Lefthandside_string is the string at the left of the = sign";
   "What-is-it : it is the list of all Lefthandside_string for a given Category trail";
   "How-is-it-done : by extracting each LeftHandSide_string of the above doublet list";
   "How-is-it-done : then by extracting a once_list";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "lefthandside_string_list_by_category_trail_register";;

let lefthandside_string_list_by_category_trail_register : 
    (Trail_t.trail, 
     string list) 
    Register_t.register = Register_v.make 137
;;

(** {6 Retrieving} *)

let retrieve tra_cat =
  try Register_v.retrieve lefthandside_string_list_by_category_trail_register tra_cat
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    let str_reg = 
      Register_v.string_of_register 
	Trail_v.name 
	(List_v.name_with_separator Utilities_v.identity "; ")
	"\n" 
	lefthandside_string_list_by_category_trail_register
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
      lefthandside_string_list_by_category_trail_register 
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
  Register_v.is_stored lefthandside_string_list_by_category_trail_register tra_cat
;;

let build_n_store tra_cat =
  let nam_ent_str_rhs_dol =  
    Constructor_basename_lefthandside_string_doublet_list_by_category_trail_provider_v.provide
      tra_cat
  in
  match nam_ent_str_rhs_dol with 
  | [] -> 
      Error_messages_v.print_fatal_error nam_cod "build"
	"(Entity_name, RHS string) list were NOT Empty"
	(Format.sprintf "it IS Empty for category trail:@.   %s" (Trail_v.name tra_cat))
	"Check"
  | _ ->
      let str_rhs_l = 
	Doublet_list_v.left_list_off_doublet_list 
	  nam_ent_str_rhs_dol
      in
      List_v.left_once_list_off_list str_rhs_l
;;

let provide tra_cat =
  if tra_cat = []
  then
    Error_messages_v.print_fatal_error nam_cod "provide"
      "trail tra_cat were NOT empty" "tra_cat IS empty" "Check"
  else
    if not (Trail_v.has_of_head_key_off_trail "category" tra_cat) 
    then 
      Error_messages_v.print_fatal_error nam_cod "provide" "category trail" 
	(Format.sprintf "%s instead" (Trail_v.name tra_cat) ) "Check"
    else
      begin
	if Register_v.is_stored 
	    lefthandside_string_list_by_category_trail_register 
	    tra_cat
	then retrieve tra_cat
	else build_n_store tra_cat
      end
;;
