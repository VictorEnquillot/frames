(** {3 A Provider of Database_filename for Code Generation for a Domainse for a Category}  *)

let nam_cod = "Database_filename_by_category_trail_provider_v.ml";;

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Entity_symbol_path_list_by_camlparagraph_tag_provider_v";
   "Needed-by : IGNR:Entity_symbol_list_camlline_symbol_doublet_list_for_camlparagraph_symbol_v";
   "What-is-it : It associates a Camlline Symbol with an Entity Symbol list (its formula)";
 ]
;;

(** {6 Registering} *)

let nam_reg = "database_filename_by_category_trail_register";;

let database_filename_by_category_trail_register : 
    (Trail_t.trail, 
     Filename_p.filename) 
    Register_t.register = Register_v.make 137;;

let store tra_cat fin =
  try Register_v.store 
      database_filename_by_category_trail_register 
      tra_cat 
      fin
  with Failure s ->
    match s with
    | "Not_stored:Register_v.ml:store" ->
	failwith ("Not_stored:"^nam_cod^":store")
    | _ -> failwith s
;;

let is_stored tra_cat =
  Register_v.is_stored database_filename_by_category_trail_register tra_cat
;;

let retrieve tra_cat =
  try Register_v.retrieve 
      database_filename_by_category_trail_register 
      tra_cat
  with Failure s ->
    match s with
    | "Not_stored:Register_v.ml:retrieve" ->
	failwith ("Not_stored:"^nam_cod^":retrieve")
    | _ -> failwith s
;;  

let nameoffile_of_category_trail tra_cat =
  let nam_dom = Trail_v.value_of_key_off_trail "domain" tra_cat in
  let nam_cat = Trail_v.value_of_key_off_trail "category" tra_cat in

  match nam_cat with
  | "tag"
  | "symbol" ->
      nam_dom^ "_symbols.dat" 
  | "formula" ->
      nam_dom ^ "_formulas.dat" 
  | _ ->    
      Error_messages_v.print_fatal_error nam_cod 
      "nameoffile_of_category_trail"
      "category name were formula|symbol|tag|"
      (">"^nam_cat^"<")
	"check"
;;

let build tra_cat =
  let nam_dir_fra =
    Frames_fullnameofdirectory_by_unit_provider_v.provide ();
   in
  if not (Sys.file_exists nam_dir_fra)
  then 
    Error_messages_v.print_fatal_error nam_cod 
      "build"
      "Frames directory exists"
      (">"^nam_dir_fra^"<")
	"check"
  else
    let nam_dom = Trail_v.value_of_key_off_trail "domain" tra_cat in
    let nam_set = nam_dom ^ "set" in
    let nam_dir = nam_dir_fra ^ "/" ^ nam_set ^ "/generator/" in

    if (Sys.file_exists nam_dir)
    then 
      let nam_fil = nameoffile_of_category_trail tra_cat in
      Filename_p.filename (nam_dir ^ nam_fil) 
    else
      Error_messages_v.print_fatal_error nam_cod 
	"build"
	"generator directory exists"
	(">"^nam_dir^"<")
	"check"
;;

let build_n_store tra_cat =
  let fin = build tra_cat in
  store tra_cat fin; 
  fin 
;;

let provide tra_cat =
  if Register_v.is_stored 
      database_filename_by_category_trail_register 
      tra_cat 
  then retrieve tra_cat
  else build_n_store tra_cat 
;;
