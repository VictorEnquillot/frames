(** {3 Readee_basic_float_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Readee_basic_float_v";
   "Needed-by :";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming} *)

let name = function 
  | Readee_basic_float_t.Readee_basic_float_constructor flo -> "readee_basic_float"
;;

let float_off = function
  | Readee_basic_float_t.Readee_basic_float_constructor flo -> flo
;;

let string_off pbf =
  let flo = float_off pbf in
  String_v.string_of_float flo
;;

let longname pbs =
  let cap_nam = String.capitalize (name pbs) in
  (Format.sprintf "%s_t.%s %f" cap_nam cap_nam (float_off pbs))
;;

let fullname pbs = 
  let cap_nam = String.capitalize (name pbs) in
  (Format.sprintf "Readee_t.%s %s" cap_nam (longname pbs))
;;

(** {6 Making} *)

let make nam s =
  let nam_low = String.lowercase nam in
  let flo = (String_v.float_of_string s) in
  match nam_low with
  | "readee_basic_float" -> Readee_basic_float_t.Readee_basic_float_constructor flo
  | "readee_basic_float_constructor" -> Readee_basic_float_t.Readee_basic_float_constructor flo
  | _ ->
      Error_messages_v.print_fatal_error nam_mod "make"
	(Format.sprintf "type name >%s< were readee_basic_float" nam_low)
	"It is NOT"
	"Check DELE:Readee_basic_float_v"
;;

let readee_basic_float_of_float flo =
  Readee_basic_float_t.Readee_basic_float_constructor flo 
;;

