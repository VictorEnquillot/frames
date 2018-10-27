(** {3 Readee_basic_string_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Readee_basic_string_v";
   "Needed-by :";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming} *)

let name = function 
  | Readee_basic_string_t.Readee_basic_string_constructor str -> "readee_basic_string"
;;

let string_off = function
  | Readee_basic_string_t.Readee_basic_string_constructor str -> str
;;

let longname pbs =
  let cap_nam = String.capitalize (name pbs) in
  (Format.sprintf "%s_t.%s %s" cap_nam cap_nam (string_off pbs))
;;

let fullname pbs = 
  let cap_nam = String.capitalize (name pbs) in
  (Format.sprintf "Readee_t.%s %s" cap_nam (longname pbs))
;;

(** {6 Making} *)

let make nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "readee_basic_string" -> Readee_basic_string_t.Readee_basic_string_constructor s
  | _ ->
      Error_messages_v.print_fatal_error nam_mod "make"
	(Format.sprintf "type name >%s< were readee_basic_string" nam_low)
	"It is NOT"
	"Check DELE:Readee_basic_string_v"
;;

let readee_basic_string_of_string str =
  Readee_basic_string_t.Readee_basic_string_constructor str 
;;

