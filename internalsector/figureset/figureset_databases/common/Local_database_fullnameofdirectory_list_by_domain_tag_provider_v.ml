(** {3 Local_database_fullnameofdirectory_list_by_domain_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : DCFIG:";
   "Current : DCFIG:Local_database_fullnameofdirectory_list_by_domain_tag_provider_v";
   "Register : DCFIG:Local_database_fullnameofdirectory_list_by_domain_tag_register_v";
   "Needed-by :"; 
   "What-is-it : ";
   "Invariant : list of Dababase Directory Path for Figureset Domain";
 ]
;;

(** {6 Preparing} *)

let nameofdomainset nam_dom =
  let set = String_v.last_n_characters_of_count_of_string 3 nam_dom in
  if set <> "set"
  then (nam_dom^"set")
  else nam_dom
;;

let fullnameofdomainsetdirectory nam_dom =
  let nam_fun = "nameofdomainsetdirectory" in
      
  let nam_dir_fra =
    Frames_directories_v.frames_directory_name_of_environment_variable "FRA"
  in
  
  let nam_dom_set = nameofdomainset nam_dom in
  let nam_dir_set = Format.sprintf "%s/%s" nam_dir_fra nam_dom_set in

  if not (Sys.file_exists nam_dir_set)
  then 
    begin
      let nam_cod = Management_v.current_module_name (documentation ()) in
      Error_messages_v.print_fatal_error nam_cod nam_fun
	(Format.sprintf "Domainset directory >%s< exists" nam_dir_set)
	"it does NOT"
	"check"
    end
  else
    nam_dir_set
;;

let is_fullnameofdatabasesdirectory_of_fullnameoffile fno =
  let flc = 
    Filecontentsymbol_v.short_name 
      (Filecontentsymbol_v.extract_off_string fno) 
  in

  (try Sys.is_directory fno
  with Sys_error _ -> false)
    &&
  (String.length flc > 2)
    &&
  (String.sub flc 0 2 = "db")
    && 
  (String_v.first_characters_of_count_off_string 1 flc <> ".")
;;

let nameofdatabasesdirectory nam_dom =
  let nam_fun = "nameofdatabasesdirectory" in

  let nam_dir_dos = fullnameofdomainsetdirectory nam_dom in
  let nam_dom_set = nameofdomainset nam_dom in
  let nam_dir_set = 
    Format.sprintf "%s/%s_databases/" nam_dir_dos nam_dom_set
  in
  
  if not (Sys.file_exists nam_dir_set)
  then 
    begin
      let nam_cod = Management_v.current_module_name (documentation ()) in
      Error_messages_v.print_fatal_error nam_cod nam_fun
	(Format.sprintf "Directory >%s< exists"  nam_dir_set)
	"it does NOT"
	"check"
    end
  else
    nam_dir_set
;;

let nameoffile_list_in_databasedirectory nam_dom =
  let nam_fun = "nameoffile_list_in_databasedirectory" in

  let nam_dir_dab = nameofdatabasesdirectory nam_dom in
  let nam_fil_a = Sys.readdir nam_dir_dab in
  let lis = Array.to_list nam_fil_a in
  if lis = []
  then 
    begin
      let nam_cod = Management_v.current_module_name (documentation ()) in
      Error_messages_v.print_fatal_error nam_cod nam_fun
	(Format.sprintf "Database directory >%s< had some files"  nam_dir_dab)
	"It is Empty"
	"check"
    end
  else
    lis
;;

let fullnameoffile_list_in_databasedirectory nam_dom =
  let nof_l = nameoffile_list_in_databasedirectory nam_dom in
  let nam_dir_dab = nameofdatabasesdirectory nam_dom in
  List.map (fun s -> nam_dir_dab ^ s) nof_l
;;

(** {6 Building} *)

let build tag_dom =
  let nam_fun = "build" in

  let nam_dom = Domain_tag_v.name_as_symbol tag_dom in
  let fno_l = fullnameoffile_list_in_databasedirectory nam_dom in
  let fnd_ldb_l = List.filter is_fullnameofdatabasesdirectory_of_fullnameoffile fno_l in
  if fnd_ldb_l = []
  then 
    begin
      let nam_cod = Management_v.current_module_name (documentation ()) in
      Error_messages_v.print_fatal_error nam_cod nam_fun
	"there were some Local_database directory" 
	"None"
	"Check"
    end
  else
    List.sort String.compare fnd_ldb_l
;;

let build_n_store tag_dom =
  let fnd_ldb_l = build tag_dom in
  Local_database_fullnameofdirectory_list_by_domain_tag_register_v.store tag_dom fnd_ldb_l;
  fnd_ldb_l
;;

let provide_without_trace tag_dom =
  if Local_database_fullnameofdirectory_list_by_domain_tag_register_v.is_stored tag_dom
  then Local_database_fullnameofdirectory_list_by_domain_tag_register_v.retrieve tag_dom
  else build_n_store tag_dom
;;

let provide_with_trace tag_dom =
  let nam_cod = Management_v.current_module_name (documentation ()) in
  Management_v.entering_of_current_module_name nam_cod;

  let result = provide_without_trace tag_dom in

  Management_v.exiting_of_current_module_name nam_cod;
  result
;;

let provide tag_dom =
  if Parameters_figureset_general_provider_v.provide "trace-provide" = "true"
  then provide_with_trace tag_dom
  else provide_without_trace tag_dom
;;

