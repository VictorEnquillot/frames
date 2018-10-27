(** {3 Provides a Righthandside_string for each Entity_name *)

let nam_cod = "Righthandside_string_by_entity_trail_provider_v.ml";;

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : AGNR:Constructor_basename_righthandside_string_doublet_list_by_category_trail_provider_v";
   "Needed-by : IGNR:Constructor_basename_list_by_entity_proper_tag_provider_v";
   "Needed-by : IGNR:Contentfile_symbol_list_by_entity_proper_tag_provider_v";
   "Needed-by : IGNR:Entity_proformula_by_entity_proper_tag_provider_v";
   "What-is-it : it is the string following the = sign in a type or builders record";
   "Remark : Symbols have entity names as constructors (kind type or type_private)";
   "Remark : Formulas have Datastructure as constructors (kind builders)";
   "Remark : For each entity_name Constructors is kept in the original string.";
   "Remark : When entity has no constructor an Empty String is provided.";
   "Improve : does it happen ?";
   "Improve : modify the name or differentiate between label constructor and builder";
 ]
;;

(** {6 Registering} *)

let nam_reg = "righthandside_string_by_entity_trail_register";;

let righthandside_string_by_entity_trail_register : 
    (Trail_t.trail, 
     string) 
    Register_t.register = Register_v.make 137
;;

(** {6 Retrieving} *)

let retrieve tra_ent =
  try Register_v.retrieve righthandside_string_by_entity_trail_register tra_ent
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith 
      "Not_stored:Righthandside_string_by_entity_trail_provider_v.ml.retrieve"
;;  

let store tra_ent str =
  try Register_v.store righthandside_string_by_entity_trail_register tra_ent str
  with Failure ("Already_stored:Register_v.ml:store") ->
    let str_old = retrieve tra_ent in
    if str_old <> str
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
          (Format.sprintf 
	     "for key >%s<@.    already stored value >%s< equal new one"
             (Trail_v.name tra_ent)
             (Utilities_v.identity str_old) 
	  )
	  
          (Format.sprintf ">%s<" (Utilities_v.identity str) )
          (Format.sprintf "check for duplicated entry >%s< in file:@.       >%s<" nam_ent nam_fil)
      end
    else 
      Error_messages_v.print_warning
	nam_cod 
        "store"
        (Format.sprintf "for key >%s<@.    already stored value >%s<"
           (Trail_v.name tra_ent)
           (Utilities_v.identity str_old) 
	)
;;

let is_stored tra_ent =
  Register_v.is_stored righthandside_string_by_entity_trail_register tra_ent
;;

let build_n_store tra_ent =
  let tra_cat = Trail_v.trail_of_key_off_trail "category" tra_ent in 
  let nam_ent_str_con_dol = 
    Constructor_basename_righthandside_string_doublet_list_by_category_trail_provider_v.provide 
      tra_cat
  in

  let str_con = 
    match nam_ent_str_con_dol with
    | [] -> 
	failwith ("Doublet_list_empty:"^nam_cod^":build_n_store")

    | _ ->
	let nam_ent = Trail_v.value_of_key_off_trail "entity" tra_ent in 
	let nam_ent_str_con =
	  try Doublet_list_v.find_if_left 
	      (fun e -> e = nam_ent) 
	      nam_ent_str_con_dol
	  with Failure "Not_found:Doublet_list_v.ml:find_if_left" ->
	    failwith ("Constructor_basename_not_found:"^nam_cod^":build_n_store")
	in

	Doublet_v.right_off_doublet nam_ent_str_con 
  in
  
  store tra_ent str_con;

;;

let build tra_ent =
  build_n_store tra_ent;
  retrieve tra_ent
;;

let provide tra_ent =
  if not (Trail_v.has_of_head_key_off_trail "entity" tra_ent) 
  then 
    Error_messages_v.print_fatal_error nam_cod "provide"
      "entity trail"
      (Format.sprintf "%s instead" (Trail_v.name tra_ent))
      "Check"
  else
    begin
      if Register_v.is_stored 
	  righthandside_string_by_entity_trail_register 
	  tra_ent
      then retrieve tra_ent
      else build tra_ent 
    end
;;
