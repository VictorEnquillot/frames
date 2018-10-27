(** {3 The functionalities for a String containing no blank nor \t.} *)

let nam_mod = "word_p";;

(** {6 Typing.} *)

type word = string;;

(** {6 Querying.} *)

let has_blank_in_string str =
  try String.index str ' ' <> 0 
  with Not_found -> false
;;

let has_tabulation_in_string str =
  try String.index str '\t' <> 0 
  with Not_found -> false
;;

let has_blank_or_tabulation_in_string str =
  (has_blank_in_string str) || (has_tabulation_in_string str)
;;


(** {6 Failing.} *)

let fails_if_has_blank_in_string str =
  if (has_blank_in_string str) 
  then failwith ("Has_blank:"^nam_mod^".fails_if_has_blank_in_string")
  else str
;;

let fails_if_has_tabulation_in_string str =
  if (has_tabulation_in_string str) 
  then failwith ("Has_tabulation"^nam_mod^".fails_if_has_tabulation_in_string")
  else str
;;

let fails_if_has_blank_or_tabulation_in_string str =
  if ( (has_tabulation_in_string str) || (has_tabulation_in_string str) )
  then failwith ("Has_blank_or_tabulation"^nam_mod^".fails_if_has_blank_or_tabulation_in_string")
  else str
;;

let stops_if_has_blank_or_tabulation_in_string str =
  if (has_blank_or_tabulation_in_string str) 
  then 
    begin
      Format.fprintf Format.err_formatter 
	"@.@[<hov>%s.%s: --- Fatal Error ---@.\
	string >%s< contains a blank or a tabulation.@]@."
	nam_mod "stops_if_has_blank_or_tabulation_in_string" str;
     assert false;
    end
  else ()
;;

(** {6 Making.} *)

let word str =
  stops_if_has_blank_or_tabulation_in_string str;
  str
;;

(** {6 Extracting.} *)

let string_off_word str =
  str
;;

(** {6 Naming} *)

let name nss =
  let str = string_off_word nss in
  Format.sprintf "%s" str
;;

