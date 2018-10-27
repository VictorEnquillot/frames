(** {3 Readee_basic_boolean_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Readee_basic_boolean_v";
   "Needed-by :";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming} *)

let name = function 
  | Readee_basic_boolean_t.Readee_basic_boolean_constructor boo -> "readee_basic_boolean"
;;

let boolean_off = function
  | Readee_basic_boolean_t.Readee_basic_boolean_constructor boo -> boo
;;

let string_off pbb =
  let boo = boolean_off pbb in
  String_v.string_of_boolean boo
;;

let longname pbb =
  let cap_nam = String.capitalize (name pbb) in
  (Format.sprintf "%s_t.%s %b" cap_nam cap_nam (boolean_off pbb))
;;

let fullname pbb = 
  let cap_nam = String.capitalize (name pbb) in
  (Format.sprintf "Readee_t.%s %s" cap_nam (longname pbb))
;;

(** {6 Making} *)

let make nam s =
  let nam_low = String.lowercase nam in
  let boo = (String_v.boolean_of_string s) in
  match nam_low with
  | "readee_basic_boolean" -> Readee_basic_boolean_t.Readee_basic_boolean_constructor boo
  | "readee_basic_boolean_constructor" -> Readee_basic_boolean_t.Readee_basic_boolean_constructor boo
  | _ ->
      Error_messages_v.print_fatal_error nam_mod "make"
	(Format.sprintf "type name >%s< were readee_basic_boolean" nam_low)
	"It is NOT"
	"Check DELE:Readee_basic_boolean_v"
;;

let readee_basic_boolean_of_boolean boo =
  Readee_basic_boolean_t.Readee_basic_boolean_constructor boo 
;;

