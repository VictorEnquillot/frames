(** {3 A Provider of word_list fro each entity and name couple.}  *)

let nam_cod = "word_list_by_entity_name_n_name_provider_v.ml";;

(**

Needs : Formula_database_record_list_provider_v
*)

(** {6 Registering.} *)

let nam_reg = "word_list_by_entity_name_n_name_register";;

let word_list_by_entity_name_n_name_register : 
    (string * string, string list) 
    Register_t.register = Register_v.make 137
;;

let store nam_ent_n_nam wor_l =
  try Register_v.store 
      word_list_by_entity_name_n_name_register nam_ent_n_nam wor_l
  with Failure ("Already_stored:Register_v.store") ->
    failwith ("Already_stored:Word_list_by_entity_name_n_name_provider_v.store")
;;

let is_stored nam_ent_n_nam =
  Register_v.is_stored 
    word_list_by_entity_name_n_name_register nam_ent_n_nam
;;

(** {6 Retrieving.} *)

let retrieve nam_ent_n_nam =
  try Register_v.retrieve word_list_by_entity_name_n_name_register nam_ent_n_nam
  with Failure ("Not_stored:Register_v.retrieve") ->
    failwith ("Not_stored:Word_list_by_entity_name_n_name_provider_v.retrieve")
;;  

let check_of_record  rcd =
  let wor_l = String_v.word_list_off_string rcd in
  if List.length wor_l < 4
  then
    begin
      let nam_fil = 
	Filename_p.name
	  (Formula_database_filename_provider_v.provide ()) 
      in
       Error_messages_v.print_fatal_error
	nam_cod
	"check_of_record"
	"record must have at least 4 words : (type, entity, =, formula list)"
	(rcd) 
	(Format.sprintf "check file >%s<" nam_fil)
    end
  else
    if List_v.third_element_off_list wor_l <> "=" 
    then
      let nam_fil = 
	Filename_p.name
	  (Formula_database_filename_provider_v.provide ()) 
      in
      Error_messages_v.print_fatal_error
	nam_cod
	"check_of_record"
	"third word of record must be a \"=\""
	(Format.sprintf "check record >%s<" rcd) 
	(Format.sprintf "check file >%s<" nam_fil)
;;

let entity_name_n_name_n_word_list_off_record rcd =
(* Ex.:
  
 entity_name    name            word_list 
 "molecule   guanidine = n_nh2_s_c_sd s_nh2_z d_nh_n"
<---- hea_str -------> <------ tai_str --------------->
*)

  check_of_record rcd;

  let str_l = String_v.split_of_c '=' rcd in
  let hea_str = List.nth str_l 0 in
  let tai_str = List.nth str_l 1 in

  let woh_l = String_v.word_list_off_string hea_str in
  let nam_ent = List_v.first_element_off_list woh_l in
  let nam = List_v.second_element_off_list woh_l in

  begin
    match nam_ent with 
    | "description" ->
	((nam_ent, nam), ["description"; tai_str])

    | "block"
    | "segment"
    | "fragment"
    | "grouping"
    | "molecule" ->

	((nam_ent, nam), String_v.word_list_off_string tai_str)

    | _ ->
	let nam_fil = 
	  Filename_p.name
	    (Formula_database_filename_provider_v.provide ()) 
	in
	Error_messages_v.print_fatal_error
	  nam_cod
	  "word_n_entity_name_n_name_n_word_list_off_record"
	  "first word of record must be entity: block|segment|fragment|grouping|molecule"
	  (Format.sprintf "check record >%s<" rcd) 
	  (Format.sprintf "check file >%s<" nam_fil)
  end
 ;;

let build_n_store () =
  let rec_l = 
    Formula_database_record_list_provider_v.provide ()
  in
  let dol = 
    List.map entity_name_n_name_n_word_list_off_record rec_l
  in
  let nam_ent_n_nam_l = Doublet_list_v.left_list_off_doublet_list dol in
  let wor_ll = Doublet_list_v.right_list_off_doublet_list dol in
  List.iter2 store nam_ent_n_nam_l wor_ll;
;;

let build nam_ent_n_nam =
  build_n_store ();
  retrieve nam_ent_n_nam
;;

let provide nam_ent_n_nam =
  if Register_v.is_stored 
      word_list_by_entity_name_n_name_register
      nam_ent_n_nam
  then retrieve nam_ent_n_nam
  else build nam_ent_n_nam
;;
