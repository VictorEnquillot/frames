(** {3 The functionalities for a File Content Symbol as a Noslash String.} *)

let nam_mod = "Filecontentsymbol_v.ml";;


let make str =
  Noslash_string_p.noslash_string str
;;

let fails_if_string_empty str =
  let len_str = String.length str in
  if (len_str = 0) 
  then 
    begin
      Format.fprintf Format.err_formatter 
	"@.@[<hov>%s.%s: --- Fatal Error ---@.\
	empty string could not define a file content symbol.@]@."
	nam_mod "fails_if_string_empty";
     assert false;
    end
  else ()
;;

let has_invalid_characters_of_string str =
  let i =
    try Str.search_forward (Str.regexp "[<>{}(),%]") str 0
    with Not_found -> -1
  in
 i >= 0
;;

let fails_if_string_has_invalid_characters str =
  if (has_invalid_characters_of_string str)
  then 
    begin
      (Format.fprintf Format.err_formatter 
	"@.@[<hov>In module %s: --- Fatal Error ---@.      string >%s< contains invalid characters@.      and could not define a file content symbol.@]@."
	nam_mod str);
     assert false;
    end
  else ()
;;

let extract_off_string str =
(* ../..//d/i/r/contentsymbol.ext *)
(* txe.lobmystnetnoc/r/i/d//../.. *)

  fails_if_string_empty str;
  fails_if_string_has_invalid_characters str;

  let rvs = String_v.reverse_of_string str in

  let no_path = 
    try String_v.head_of_string_of_char rvs '/' 
    with Failure s -> rvs
  in
  
  let no_extension = 
    try String_v.truncate_head_of_string_of_char no_path '.' 
    with Failure s -> no_path
  in

  make (String_v.reverse_of_string no_extension)
;;

let short_name flc =
  Noslash_string_p.name flc
;;

let name flc =
  short_name flc
;;

