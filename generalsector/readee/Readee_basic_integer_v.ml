(** {3 Readee_basic_integer_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Readee_basic_integer_v";
   "Needed-by :";
   "Author : François Colonna 28 novembre 2016 at 14:25:43+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming} *)

let name = function 
  | Readee_basic_integer_t.Readee_basic_integer_constructor ing -> "readee_basic_integer"
;;

let integer_off = function
  | Readee_basic_integer_t.Readee_basic_integer_constructor ing -> ing
;;

let string_off rbi =
  let ing = integer_off rbi in
  String_v.string_of_integer ing
;;

let shortname rbi = string_off rbi;;

let longname pbs =
  let cap_nam = String.capitalize (name pbs) in
  (Format.sprintf "%s_t.%s %i" cap_nam cap_nam (integer_off pbs))
;;

let fullname pbs = 
  let cap_nam = String.capitalize (name pbs) in
  (Format.sprintf "Readee_t.%s %s" cap_nam (longname pbs))
;;

(** {6 Making} *)

let make nam s =
  let nam_low = String.lowercase nam in
  let ing = (String_v.integer_of_string s) in
  match nam_low with
  | "readee_basic_integer" -> Readee_basic_integer_t.Readee_basic_integer_constructor ing
  | "readee_basic_integer_constructor" -> Readee_basic_integer_t.Readee_basic_integer_constructor ing
  | _ ->
      Error_messages_v.print_fatal_error nam_mod "make"
	(Format.sprintf "type name >%s< were readee_basic_integer" nam_low)
	"It is NOT"
	"Check DELE:Readee_basic_integer_v"
;;

let readee_basic_integer_of_integer ing =
  Readee_basic_integer_t.Readee_basic_integer_constructor ing 
;;

