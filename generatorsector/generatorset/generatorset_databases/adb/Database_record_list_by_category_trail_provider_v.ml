(** {3 AGNR:Database_record_list_by_category_trail_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : Tools_agnr_1_v";
   "Current : AGNR:Database_record_list_by_category_trail_provider_v";
   "Needed-by :"; 
   "What-is-it : for a given Domain it provides the content of a database file as a record list";
   "Improve : Information should be read from specific Database : GNR:generator_formulas.dat";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "Database_record_list_by_category_trail_register";;

let database_record_list_by_category_trail_register : 
    (Trail_t.trail, 
     string list) 
    Register_t.register = Register_v.make 137;;

let store tra_cat rcd_l =
  try Register_v.store database_record_list_by_category_trail_register tra_cat rcd_l
  with Failure ("Already_stored:Register_v.ml:store") ->
    failwith ("Already_stored:"^nam_cod^":store")
;;

let is_stored tra_cat =
  Register_v.is_stored database_record_list_by_category_trail_register tra_cat
;;

let retrieve tra_cat =
  try Register_v.retrieve database_record_list_by_category_trail_register tra_cat
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith ("Already_stored:"^nam_cod^":retrieve")
;;  

let filename_of_category_trail tra_cat =
  let fin = Database_filename_by_category_trail_provider_v.provide tra_cat in
  if not (Fileio_v.is_existing_of_filename fin)
  then
    Error_messages_v.print_fatal_error 
      nam_cod
      "filename_of_category_trail"
      (Format.sprintf "file @.    >%s<@.    exists" (Filename_p.fullname fin)) 
      ">No such file<"
      "check file name"
  else fin
;;

let check_record tra_cat rcd =

  let fin = Database_filename_by_category_trail_provider_v.provide tra_cat in

  if not ( String.contains rcd '=' )
  then Error_messages_v.print_fatal_error nam_cod "check_record" 
      "Record do contain an = sign"
      (Format.sprintf " :@.    >%s<" rcd)
      (Format.sprintf "Check Database file for missing = sign:@.    >%s<" (Filename_p.fullname fin) )
  else 
    let weq_l = String_v.split_of_character_of_string '=' rcd in
    let str = List.hd weq_l in
    let wor_l = String_v.split_of_character_of_string ' ' str in
    if List.length wor_l < 2
    then 
      Error_messages_v.print_fatal_error nam_cod "check_record" 
	"string up to = sign do contain two words"
	(Format.sprintf "string :@.     >%s<@.    in record :@.     >%s<" str rcd)
	(Format.sprintf "Check Database file for a problably missing record_kind:@.    >%s<" (Filename_p.fullname fin) )
    else 
      ()
;;

let select_entity_name tra_cat nam dep1 dep2 rcd =
  check_record tra_cat rcd;
  let str_l = String_v.split_of_character_of_string '=' rcd in
  let str = List.hd str_l in
  let wor = List.nth (String_v.split_of_character_of_string ' ' str) 1  in
  let dep = List.length (String_v.split_of_character_of_string '_' wor) in
  String.length wor >= (String.length nam) 
    && (String.sub wor 0 (String.length nam) = nam)
    && dep >= dep1 
    && dep <= dep2 
;;

let check_domain_exists_of_word_list_of_category_trail wor_l tra_cat =
  let nam_dom = Trail_v.value_of_key_off_trail "domain" tra_cat in
  let nam_cat = Trail_v.value_of_key_off_trail "category" tra_cat in

  match nam_cat with
  | "symbol" ->
      if List.filter (select_entity_name tra_cat nam_dom 1 1) wor_l = []
      then
	let fin = filename_of_category_trail tra_cat in
	Error_messages_v.print_fatal_error 
	  nam_cod
	  "check_domain_exists_of_word_list_of_category_trail"
	  (Format.sprintf "Domain name >%s< exists" nam_dom)
	  "No such Domain name"
	  (Format.sprintf "Check database file @.    >%s<" (
	   Filename_p.fullname fin)
	  ) 
      else  ()
  | _ -> ()
;;

let record_for_entity_basename_begining nam_ent_beg rcd =
  let wor_l = String_v.split_of_character_of_string ' ' rcd in
  let wor = List.nth wor_l 1 in
  (String.length nam_ent_beg >= String.length wor)
    &&
  String.sub wor  0 (String.length nam_ent_beg) = nam_ent_beg
;;

let is_not_comment_nor_empty_of_record rcd = 
  (not (String_v.is_empty_of_string rcd ))
    &&
  (String_v.first_character_of_string 
     (String_v.trim_head_of_string rcd) 
     <> "#")
;;

let select_of_domain_basename_of_record nam_dom rcd =
  match nam_dom with
  | "chemical"
  | "database"
  | "elementary"
  | "fake"
  | "figure"
  | "generator"
  | "input"
  | "logic"
  | "molecule"
  | "music" 
  | "natural" 
  | "operator" 
  | "prototype" 
  | "wavefunction"
  | "wikitools" ->

      is_not_comment_nor_empty_of_record rcd

  | _ ->
      Error_messages_v.print_fatal_error 
	nam_cod
	"select_of_domain_basename_of_record"
	"domain were basisfunction | chemical | database | elementary | fake | figure | generator | input | logic | molecule | music | natural | operator | primitive | property | prototype | wavefunction | wikitools" nam_dom 
	"Check or add it to menu"
;;

let read_non_empty_record_list_of_filename fin =
  let str_l = Filename_p.read_string_list_of_filename fin in
  List.filter (fun s -> s <> "") str_l
;;

let build tra_cat =

  let nam_dom = Trail_v.value_of_key_off_trail "domain" tra_cat in
  let fin = filename_of_category_trail tra_cat in
  let rcd_l = read_non_empty_record_list_of_filename fin in
  
  let str_l = List.filter 
      (select_of_domain_basename_of_record nam_dom) 
      rcd_l 
  in
 
  check_domain_exists_of_word_list_of_category_trail str_l tra_cat;

  Format.fprintf Format.std_formatter "@.Module %s:@." nam_cod;
  Format.fprintf Format.std_formatter "%i records selected from file :@.   >%s<@." 
    (List.length str_l) 
     (Filename_p.fullname fin) 
    ;

  str_l
;;

let build_n_store tra_cat =
  let rcd_l = build tra_cat in
  store tra_cat rcd_l; 
  rcd_l 
;;

let provide tra_cat =
  if Register_v.is_stored database_record_list_by_category_trail_register tra_cat 
  then retrieve tra_cat
  else build_n_store tra_cat 
;;
