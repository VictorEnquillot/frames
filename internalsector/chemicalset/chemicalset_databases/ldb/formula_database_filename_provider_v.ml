(** {3 A Provider of Database_filename for a Domainset.}  *)

let nam_cod = "formula_database_filename_provider_v.ml";;

(** {6 Aliasing.} *)

(** {6 Building.} *)

let build () =
  let nam_dir_chm =
    Frames_directories_v.frames_directory_name_of_environment_variable "CHM"
  in
  if not (Sys.file_exists nam_dir_chm)
  then 
    Error_messages_v.print_fatal_error nam_cod 
      "build"
      "directory exists"
      (">"^nam_dir_chm^"<")
	"check"
  else
    let str_l = 
      Directoryname_v.string_list_off_directoryname 
	(Directoryname_v.make nam_dir_chm)
    in
    let nam_dos = List_v.last_element_off_list str_l in
    let nam_dir = nam_dir_chm ^ "/" ^ nam_dos ^ "_databases/ldb/" in
    if (Sys.file_exists nam_dir)
    then 
      let nam_fil = "chemicalset_formulas.ldb" in
      Filename_p.filename (nam_dir ^ nam_fil) 
    else
      Error_messages_v.print_fatal_error nam_cod 
	"build"
	"directory exists"
	(">"^nam_dir^"<")
	"check"
;;

let provide () =
  build ()
;;
