(** {3 Kind_basename_list_by_category_trail_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : AGNR:Word_word_string_triplet_list_by_category_trail_provider_v";
   "Current : AGNR:Kind_basename_list_by_category_trail_provider_v";
   "Needed-by : ";
   "Definition : ";
   "What-is-it : it is the list of all Kind_name for a Category";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "kind_basename_list_by_category_trail_register";;

let kind_basename_list_by_category_trail_register : 
    (Trail_t.trail, 
     string list) 
    Register_t.register = Register_v.make 137
;;

(** {6 Retrieving} *)

let retrieve tra_cat =
  try Register_v.retrieve kind_basename_list_by_category_trail_register tra_cat
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    let str_reg = 
      Register_v.string_of_register 
	Trail_v.name 
	(List_v.name_with_separator Utilities_v.identity "; ")
	"\n" 
	kind_basename_list_by_category_trail_register
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
      kind_basename_list_by_category_trail_register 
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
  Register_v.is_stored kind_basename_list_by_category_trail_register tra_cat
;;

let build tra_cat =
  let tri_wws_l =
    Word_word_string_triplet_list_by_category_trail_provider_v.provide
      tra_cat
  in

  let k_l = List.map (fun (k, e, r) -> k) tri_wws_l in
  let ban_kin_l = List_v.left_once_list_off_list k_l in
  List.sort String.compare ban_kin_l
;;

let build_n_store tra_cat =
  let nam_con_l = build tra_cat in
  store tra_cat nam_con_l;
  nam_con_l
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
	    kind_basename_list_by_category_trail_register 
	    tra_cat
	then retrieve tra_cat
	else build_n_store tra_cat
      end
;;
