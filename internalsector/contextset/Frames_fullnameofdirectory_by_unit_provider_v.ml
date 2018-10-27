(** {3 Frames_fullnameofdirectory_by_unit_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Frames_fullnameofdirectory_by_unit_provider_v";
   "Needed-by :"; 
   "What-is-it : ";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Preparing} *)

let frames_directory_name_of_environment_variable str =
  let nam_fun = "frames_directory_name_of_environment_variable" in
  
  let fnd_fra =
    try Sys.getenv str 
    with Not_found -> 
      Error_messages_v.print_fatal_error __LOC__ nam_fun
	"environment_variable defining Frames directory"
	str "check"
  in
  if not (Sys.file_exists fnd_fra)
  then 
    Error_messages_v.print_fatal_error __LOC__ nam_fun
      "Frames directory exists"
      (">"^fnd_fra^"<")
      "check"
  else
    fnd_fra
;;

let frames_directorypath_of_environment_variable str =
  let nam_dir = frames_directory_name_of_environment_variable str in
  let str_l = String_v.split_of_character_of_string '/' nam_dir in 
  Directorypath_v.make_absolute str_l
;;

(** {6 Building} *)
 
let build () =
  let nam_fun = "build" in
      
  let fnd_fra =
    frames_directory_name_of_environment_variable "FRA"
  in

  if not (Sys.file_exists fnd_fra)
  then 
    begin
      Error_messages_v.print_fatal_error __LOC__ nam_fun
	(Format.sprintf "Frames directory >%s< exists" fnd_fra)
	"it does NOT"
	"set environment variable FRA : export FRA = <full_path>/frames"
    end
  else
    fnd_fra
;;


(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_without_register_v.ml *)
(* done with do_provider_without_register.sh Frames_fullnameofdirectory_by_unit_provider_v.ml force on samedi 8 octobre 2016, 18:52:59 (UTC+0200) *)
