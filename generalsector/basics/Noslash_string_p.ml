(** {3 The functionalities for a String containing no slash.} *)

let nam_mod = "Noslash_string_p";;

(** {6 Typing.} *)

type noslash_string = string;;

(** {6 Querying.} *)

let has_slash_in_string str =
  try String.index str '/' <> 0 
  with Not_found -> false
;;

(** {6 Failing.} *)

let fails_if_has_slash_in_string str =
  if (has_slash_in_string str) 
  then failwith "Has_slash:Noslash_string_p.fails_if_has_slash_in_string"
  else str
;;

let stops_if_has_slash_in_string str =
  if (has_slash_in_string str) 
  then 
    begin
      Format.fprintf Format.err_formatter 
	"@.@[<hov>%s.%s: --- Fatal Error ---@.\
	string >%s< contains slash.@]@."
	nam_mod "fails_if_string_empty" str;
     assert false;
    end
  else ()
;;

(** {6 Making.} *)

let noslash_string str =
  stops_if_has_slash_in_string str;
  str
;;

(** {6 Extracting.} *)

let string_off_noslash_string str =
  str
;;

(** {6 Naming} *)

let name nss =
  let str = string_off_noslash_string nss in
  Format.sprintf "%s" str
;;

let print ppf nss =
  let str = string_off_noslash_string nss in
  Format.fprintf ppf "%s" str
;;

