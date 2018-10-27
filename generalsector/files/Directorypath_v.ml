(** {3 The functionalities for a Directory path.} *)

let nam_cod = "Directorypath_v";;

(** {6 Making.} *)

let make_relative str_l =
  let drn_l = Directoryname_v.make_directoryname_list str_l in
  Directorypath_t.Relative drn_l
;;

let make_absolute str_l =
  let drn_l = Directoryname_v.make_directoryname_list str_l in
  Directorypath_t.Absolute drn_l 
;;

let fails_if_string_empty str =
  let len_str = String.length str in
  if (len_str = 0) 
  then 
    begin
      Format.fprintf Format.err_formatter 
	"@.@[<hov>%s.%s: --- Fatal Error ---@.\
	empty string could not define a directorypath.@]@."
	nam_cod "fails_if_string_empty";
     assert false;
    end
  else ()
;;

let after_directoryhead_index str =
  Str.search_forward (Str.regexp "[a-zA-Z0-9]") str 0 
;;

let has_string_invalid_characters str =
  let i =
    try Str.search_forward (Str.regexp "[#<>{}(),%]") str 0
    with Not_found -> -1
  in
 i >= 0
;;

let is_string_directorypath str =
  (not (has_string_invalid_characters str))
    &&
  after_directoryhead_index str != 0
;;

let stringhead_off_string str =
(* "../.././abc" -> "../.././/" *)
  let idx = after_directoryhead_index str in
  Str.string_before str idx 
;;

let make_directoryhead = function
  | "/" -> Directorypath_t.Slash
  | "./" -> Directorypath_t.Dotslash
  | s -> 
      begin
      Format.fprintf Format.err_formatter 
	"@.@[<hov>%s.%s: --- Fatal Error ---@.\
	string >%s< is not an allowed string head for a directory.@.\
        the 2 allowed string head are : \"/\" and \"./\"@]@."
	nam_cod "make_directoryhead" s;
        assert false;
      end
;;

let extract_off_string str =
(* ../..//d/i/r/contentsymbol.ext *)
  if is_string_directorypath str 
  then
    begin
      let lastslash_idx = String.rindex str '/' in
      let sth_idx = after_directoryhead_index str in
      let dir_s = String.sub str (sth_idx-1) (lastslash_idx) in
      let str_l = String_v.split_of_character_of_string '/' dir_s in
      let sth = make_directoryhead (stringhead_off_string str) in
      match sth with
      | Directorypath_t.Slash -> make_absolute str_l
      | Directorypath_t.Dotslash -> make_relative str_l
    end
  else
    Directorypath_t.Relative []
;;

(** {6 Extracting.} *)

let directoryname_list_off_directorypath = function
  | Directorypath_t.Absolute drn_l
  | Directorypath_t.Relative drn_l -> drn_l
;;

let string_list_off_directorypath dir =
  let drn_l = directoryname_list_off_directorypath dir in
  List.map Directoryname_v.string_off_directoryname drn_l
;;

let directoryhead_off_directorypath = function
  | Directorypath_t.Absolute _ -> Directorypath_t.Slash
  | Directorypath_t.Relative _ -> Directorypath_t.Dotslash
;;

(** {6 Converting.} *)

let string_of_directoryhead = function
  | Directorypath_t.Dotslash -> "./" 
  | Directorypath_t.Slash -> "/" 
;;

let name dir =
  let str_l = string_list_off_directorypath dir in
  let ssl_l =  (* [string ^ "/"; ...] *)
    List.map (fun s -> s ^ "/") str_l in
  let str = String_v.word_off_string_list ssl_l in
  let sth = directoryhead_off_directorypath dir in
  (string_of_directoryhead sth)  ^ str  
;;

let short_name dir =
  name dir
;;

let compare di1 di2 =
String.compare (name di1) (name di2)
;;
