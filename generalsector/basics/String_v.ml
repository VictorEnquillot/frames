(** {3 Add-ons functionalities for a String} *)

let nam_mod = "String_v";;
 
let empty = "";;

let is_empty_of_string str =
  Scanf.sscanf str " %s " (fun s -> (String.length s)= 0)
;;

let check_empty_of_string_of_name str nam her =
  if (String.length str > 0) ;
  then ()
  else failwith ("Empty_string:"^nam_mod^".check_empty_of_string_of_name")
;;

let fails_if_empty_nth_character str n mdn her =
  if (String.get str (n-1)) = ' ' then () else
  begin 
      Format.fprintf Format.err_formatter 
      "@.@[%s.%s:@.\
         Fatal Error non-empty column # %i (from 1 to 80)@.\
         in record:@.%s@]@."
	 mdn her n str;
      assert (false);
    end
;;

let check_for_empty_character str psn_l mdn her =
  List.iter (fun i -> 
    fails_if_empty_nth_character str i mdn her) psn_l
;;

let regexp_string_for_integer = "^[-]?[0-9]+$";;

let regexp_for_integer = Str.regexp regexp_string_for_integer;;

let is_integer_of_string s =
  Str.string_match regexp_for_integer s 0
;;

let string_of_integer i =
  Format.sprintf "%i" i
;;

let regexp_string_for_generalized_float = "^[-]?[0-9]*\\.[0-9]*$";;

let regexp_for_generalized_float = Str.regexp regexp_string_for_generalized_float;;

let regexp_string_for_float = "^[-]?[0-9]+\\.[0-9]*$";;

let regexp_for_float = Str.regexp regexp_string_for_float;; 

let string_of_char c = String.make 1 c;;
let string_of_character = string_of_char;;

let character_of_string str =
  try String.get str 0
  with Invalid_argument _ ->
    failwith ("String_too_long:"^nam_mod^".character_of_string")
;;

let regexp_string_for_alphabetic = "^[A-Za-z]+$";;

let regexp_for_alphabetic = Str.regexp regexp_string_for_alphabetic;;

let is_alphabetic_of_string s =
  Str.string_match regexp_for_alphabetic s 0
;;

let regexp_string_for_alphanumeric = "^[A-Za-z0-9]+$";;

let regexp_for_alphanumeric = Str.regexp regexp_string_for_alphanumeric;;

let is_alphanumeric_of_string s =
  Str.string_match regexp_for_alphanumeric s 0
;;

let is_basictype_name_of_string = function
  | "boolean" | "float" | "integer" | "string" -> true
  | _ -> false
;;

let regexp_string_for_non_zero_dot_float = "^[-]?\\.[0-9]*$";;
let regexp_for_non_zero_dot_float = Str.regexp regexp_string_for_non_zero_dot_float;; 

let is_non_zero_dot_float_of_string s =
 Str.string_match regexp_for_non_zero_dot_float s 0
;;

let add_zero_of_non_zero_dot_float_string str =
 if is_non_zero_dot_float_of_string str 
 then Str.replace_first (Str.regexp "\\.") "0." str 
 else str
;;

let substitute_all_string_from_of_string string_from string_to str =
  Str.global_replace (Str.regexp_string string_from) string_to str
;;

let reverse_of_bytes byt =
  let lby = Bytes.length byt in
  let rby = Bytes.create lby in
  for i = 0 to lby -1 do
    let c = Bytes.get byt (lby -i -1) in
    Bytes.set rby i c
  done; 
  rby
;;

let reverse_of_bytes byt =
  let lby = Bytes.length byt in
  let rby = Bytes.create lby in

  let rec apply i r =
    let c = Bytes.get byt (lby -i -1) in
    Bytes.set r i c;
  
    if i = lby -1 
    then r
    else apply (i+1) r
  in
  
  apply 0 rby
;;

let reverse_of_string str =
  let byt = Bytes.of_string str in
  let rby = reverse_of_bytes byt in
  Bytes.to_string rby
;;

let character_list_off_string str =
 let ib = Scanf.Scanning.from_string str in
 let rec add ls =
  try Scanf.bscanf ib "%c" (fun c -> c :: add ls) 
  with End_of_file -> ls
 in
  add []
;;

let char_list_of_string = character_list_off_string;;

let rec string_of_character_list = function
  | [] -> ""
  | h :: tl ->
      (String.make 1 h) ^ (string_of_character_list tl)
;;

let string_of_char_list = string_of_character_list;;

let string_of_char_list c_l =
  let str_l = List.map (String.make 1) c_l in
  String.concat "" str_l
;;

let is_once_of_char_of_string c str =
  let c_l = char_list_of_string str in
  let f_l = List.filter (fun e -> e = c ) c_l in
  List.length f_l = 1
;;

let extract_of_string_of_start_of_stop str start stop =
(* abcdef.hij *)
(* 012345.789 *)
  let len = stop - start + 1 in
  try String.sub str start len
  with Invalid_argument _ -> 
    failwith ("Invalid_argument:"^nam_mod^".extract_of_string_of_start_of_stop")
;;

let rec column_of_string_list sl =
 match sl with
  | []      -> ""
  | head::[]  -> "\n\t>" ^ head ^ "<" 
  | head::tail -> "\n\t>" ^ head ^ "<"  
    ^ ( column_of_string_list tail )
;;

let cut_first_blank_off_string s =
  let l = String.length s in
  if l = 0 then
    failwith ("Empty_string:"^nam_mod^".cut_first_blank_off_string")
  else
    if (String.get s 0) = ' '
    then String.sub s 1 (l-1)
    else s
;;

let cut_first_characters_of_count_off_string i s =
  if i < 0 
  then
    failwith ("Negative_number:"^nam_mod^".first_characters_of_count_off_string")
  else
    if i = 0 
    then s
    else
      let l = String.length s in
      if l = 0 then
	failwith ("Empty_string:"^nam_mod^".first_characters_of_count_off_string")
      else
	if i > l-1 
	then
	  failwith ("String_too_short:"^nam_mod^".first_characters_of_count_off_string")
	else
	  String.sub s i (l-i)
;;

let cut_first_character_off_string str =
  cut_first_characters_of_count_off_string 1 str
;;

let cut_last_character_off_string str =
  let len = String.length str in
  if len = 0 then
    failwith ("Empty_string:"^nam_mod^".cut_last_character_off_string")
  else
    String.sub str 0 (len-1)
;;

let suppress_leading_string_off_string lds str =
  let lh = String.length lds in
  if String.sub str 0 lh <> lds 
  then str
  else cut_first_characters_of_count_off_string lh str
;;

let cut_last_blank_off_string s =
  let l = String.length s in  
  if l = 0 then
    failwith ("Empty_string:"^nam_mod^".cut_last_blank_off_string")
  else
    if (String.get s (l -1)) = ' '
    then String.sub s 0 (l -1)
    else s
;;

let last_character_off_string s =
  let l = String.length s in
  if l = 0 then
    failwith ("Empty_string:"^nam_mod^".last_character_off_string")
  else
  String.get s (l-1)
;;

let last_n_characters_off_string n s =
  let l = String.length s in
  if l < n then
    failwith ("Length_too_short:"^nam_mod^".last_n_characters_off_string")
  else
    String.sub s (l-n) n 
;;

let last_n_characters_of_count_of_string n s =
  let l = String.length s in
  if l < n then
    failwith (
    Format.sprintf "Length_too_short:%s.last_n_characters_of_count_of_string %i %s" nam_mod n s)
  else
    String.sub s (l-n) n 
;;

let cut_last_n_characters_of_count_off_string cou str =
  let len = String.length str in
  if len < cou then
    let nam_fun = "cut_last_n_character_of_count_of_string" in
    failwith 
      (Format.sprintf "%s.ml.%s:String_too_short %s" nam_mod nam_fun str)
  else
    String.sub str 0 (len-cou)
;;

let has_extension_of_extension_of_string ext str =
  let cou = String.length ext in
  if String.length str > cou
  then
    last_n_characters_of_count_of_string cou str = ext
  else
    false
;; 

let rec trim_head_of_string s =
 if is_empty_of_string s then
  failwith ("Empty_string:"^nam_mod^".trim_head_of_string")
 else
  let s_l = cut_first_blank_off_string s in
  if s_l <> s
  then trim_head_of_string s_l
  else s
;;

let rec trim_tail_of_string s =
 if is_empty_of_string s then
  failwith ("Empty_string:"^nam_mod^".trim_tail_of_string")
 else
  let s_l = cut_last_blank_off_string s in
  if s_l <> s
  then trim_tail_of_string s_l
  else s
;;

let trim_left_of_string s = trim_head_of_string s;;
let trim_right_of_string s = trim_tail_of_string s;;

let trim_of_string str =
 if is_empty_of_string str then
  failwith ("Empty_string:"^nam_mod^".trim_of_string")
 else
 trim_head_of_string (trim_tail_of_string str)
;;

let trim_left_of_string str = trim_of_string str;;

let split_of_character_of_string c s =
  let l = String.length s in

  let rec loop accu i =
    if i >= l then "" :: accu else
    try
      let j = String.index_from s i c in
      loop (String.sub s i (j - i) :: accu) (j + 1)
    with Not_found ->
      String.sub s i (l - i) :: accu 
  in
  let str_l = List.rev (loop [] 0) 
  in
  
List.filter (fun s -> s <> "") str_l 
;;

let rec string_of_string_list = function
  | [] -> ""
  | h::tl -> 
      h ^ (string_of_string_list tl)
;;

let rec string_with_separator_of_string_list sep = function
  | [] -> ""
  | h::[] -> 
      trim_of_string h 
  | h::tl -> 
      (  (trim_of_string h) ^ sep ^ (string_with_separator_of_string_list sep tl))
;;

let rec word_off_string_list = function
  | [] -> ""
  | h::[] -> 
      trim_of_string h 
  | h::tl -> 
      (trim_of_string h) ^ (word_off_string_list tl)
;;

let word_off_string str =
  let str_l = split_of_character_of_string ' ' str in
  word_off_string_list str_l 
;;

let remove_blanks_off_string = word_off_string;;
 
let reduce_blanks_to_one_blank_of_string str =
  let wor_l = split_of_character_of_string ' ' str in
  string_with_separator_of_string_list " " wor_l
;;

let capitalize_of_string str =
  String.capitalize_ascii str
;;

let is_capitalized_of_string str =
  str = capitalize_of_string str
;;

let capitalize_strict_of_string str =
  let h = String.get str 0 in
  let bytes = Bytes.of_string str in
  let bytes_low = Bytes.lowercase_ascii bytes in
  Bytes.set bytes_low 0 (Char.uppercase_ascii h);
  Bytes.to_string bytes_low
;;

let is_capitalized_strict_of_string str =
  str = capitalize_strict_of_string str
;;

let is_lowercase_of_string str =
  str = String.lowercase_ascii str 
;;

let is_uppercase_of_string str =
  str = String.uppercase_ascii str
;;

let is_larger_n_of_string n str =
 if is_empty_of_string str then
  failwith ("Empty_string:string_v:is_larger_n_of_string")
 else
 let trim_str = trim_of_string str in
  String.length trim_str <= n
;;

let check_n_characters_at_most n_a str message_a =
 if is_empty_of_string str then
  failwith ("Empty_string:"^nam_mod^".check_n_characters_at_most")
 else
 if is_larger_n_of_string n_a str
 then ()
 else (
  Format.fprintf Format.err_formatter
  "@.@[%s@]@." message_a; 
   failwith ("String_too_long:"^nam_mod^".check_n_characters_at_most") 
  )
;;

let is_generalized_float_of_string s =
  let str = trim_of_string s in
  Str.string_match regexp_for_generalized_float str 0
;;

let is_float_of_string s =
  let str = trim_of_string s in
  Str.string_match regexp_for_float str 0
;;

let check_generalized_float_of_string str message_a =
 if is_generalized_float_of_string str
 then ()
 else 
   begin
     print_string message_a; 
     print_newline (); 
     failwith ("Not_a_generalized_float:"^nam_mod^".check_generalized_float_of_string")
   end 
;;

let check_integer_of_string str message_a =
 if is_integer_of_string str
 then ()
 else 
   begin
     print_string message_a; 
     print_newline (); 
     failwith ("Not_an_integer:"^nam_mod^".check_integer_of_string")
   end 
;;

let substring str start_a len_a =
  try String.sub str start_a len_a;
  with Invalid_argument _ -> 
    failwith ("Not_substring:"^nam_mod^".substring")
;;

let two_chars_of_string str =
  try String.sub (str^"_") 0 2
  with
  | Invalid_argument _ -> 
      failwith ("Empty_string:"^nam_mod^".two_chars_of_string")
;;

let word_list_off_string str =
  Str.split (Str.regexp "[ \t\n]+") str
;;

let first_word_of_char_off_string cha str =
  List.hd (split_of_character_of_string cha str)
;;

let first_word_off_string str =
  first_word_of_char_off_string ' ' str
;;

let first_word_doublet_off_string str =
  let wor_l = split_of_character_of_string ' ' str in
  match List.length wor_l with
  | 0 -> 
      failwith ("Character_not_found:"^nam_mod^".first_word_doublet_off_string")
  | 1 -> 
      failwith ("Character_not_imbedded:"^nam_mod^".first_word_doublet_off_string")
  | _ -> 
      (List.hd wor_l, List.nth wor_l 1)
;;

let first_word_triplet_off_string str =
  let wor_l = split_of_character_of_string ' ' str in
  match List.length wor_l with
  | 0 -> 
      failwith ("Character_not_found:"^nam_mod^".first_word_triplet_off_string")
  | 1 -> 
      failwith ("Character_not_imbedded:"^nam_mod^".first_word_triplet_off_string")
  | 2 -> 
      failwith ("Invalid_string:"^nam_mod^".first_word_triplet_off_string "^str)
  | _ -> 
      (List.hd wor_l, List.nth wor_l 1, List.nth wor_l 2)
;;

let second_word_of_char_off_string cha str =
  let wor_l = split_of_character_of_string cha str in
  if List.length wor_l < 2 
  then
    failwith ("No_second_word_in_string:"^nam_mod^".second_word_off_string "^str)
  else
    List.nth wor_l 1
;;

let second_word_off_string str =
  second_word_of_char_off_string ' ' str
;;

let third_word_of_char_off_string cha str =
  let wor_l = split_of_character_of_string cha str in
  if List.length wor_l < 3 
  then
    failwith ("No_third_word_in_string:"^nam_mod^".third_word_off_string "^str)
  else
    List.nth wor_l 2
;;

let third_word_off_string str =
  third_word_of_char_off_string ' ' str
;;

let fourth_word_of_char_off_string cha str =
  let wor_l = split_of_character_of_string cha str in
  if List.length wor_l < 4 
  then
    failwith ("No_fourth_word_in_string:"^nam_mod^".fourth_word_off_string "^str)
  else
    List.nth wor_l 3
;;

let fourth_word_off_string str =
  fourth_word_of_char_off_string ' ' str
;;

let fifth_word_of_char_off_string cha str =
  let wor_l = split_of_character_of_string cha str in
  if List.length wor_l < 5 
  then
    failwith ("No_fifth_word_in_string:"^nam_mod^".fifth_word_off_string "^str)
  else
    List.nth wor_l 4
;;

let fifth_word_off_string str =
  fifth_word_of_char_off_string ' ' str
;;

let is_some_word_of_word_off_string wor str =
  let wor_l = split_of_character_of_string ' ' str in
  List.mem wor wor_l
;;

let is_word_of_string str =
  str = first_word_off_string str
;;

let first_string_doublet_of_char_off_string c str =
  let l = String.length str in
  try
    let i = String.index_from str 0 c in
    (String.sub str 0 i, String.sub str (i+1) (l-i-1) )
  with Not_found ->
    failwith ("Character_not_found:"^nam_mod^".first_string_doublet_of_char_off_string")
;;

let first_string_triplet_of_char_off_string c str =
  let l = String.length str in
  try
    let i = String.index_from str 0 c in
    let str_sub = String.sub str (i+1) (l-i-1) in
    let ls = String.length str_sub in
    let j = String.index_from str_sub 0 c in
    (String.sub str 0 i, 
     String.sub str_sub 0 j,
     String.sub str_sub (j+1) (ls-j-1) 
)
  with Not_found ->
    failwith ("Character_not_found:"^nam_mod^".first_string_triplet_of_char_off_string")
;;

let word_n_string_off_string str =
  let str_tri = trim_left_of_string str in 
  let (wor, str_tai) = first_string_doublet_of_char_off_string ' ' str_tri in
  (wor, trim_left_of_string str_tai)
;;

let head_of_string_of_char str c =
  let idx = 
    try String.index str c 
    with Not_found -> 
      failwith ("Not_found_char:"^nam_mod^".head_of_string_of_char")
  in
  String.sub str 0 idx
;;

let tail_of_string_of_char str c =
  let rvs = reverse_of_string str in
  let s = head_of_string_of_char rvs c in
  reverse_of_string s
;;

let head_if_contains_of_string_of_char str c =
  if String.contains str c
  then String.sub str 0 (String.index str c)
  else str
;;

let tail_if_contains_of_string_of_char str c =
  if String.contains str c
  then tail_of_string_of_char str c
  else str
;;

let truncate_head_of_string_of_char str c =
(* abcdef.hij *)
(* 012345.789 *)
  let idx = 
    try String.index str c 
    with Not_found -> 
      failwith ("Not_found:"^nam_mod^".truncate_head_of_string_of_char")
  in
  let start = idx +1 in
  let len = (String.length str) -idx-1 in
  String.sub str start len
;;

let truncate_tail_of_string_of_char str c =
  let rvs = reverse_of_string str in
  let s = truncate_head_of_string_of_char rvs c in
  reverse_of_string s
;;

let line_80_of_string str =
  let len = String.length str in
  if len < 80 then
    str ^ (String.make (80-len) ' ')
  else str
;;

let string_time () = 
  Format.fprintf Format.str_formatter "%i:%i:%i:%f"
    (Unix.localtime (Unix.gettimeofday ())).Unix.tm_hour
    (Unix.localtime (Unix.gettimeofday ())).Unix.tm_min
    (Unix.localtime (Unix.gettimeofday ())).Unix.tm_sec
    (Unix.gettimeofday () -. Unix.time ())
    ;
  Scanf.sscanf ( Format.flush_str_formatter () ) "%14s" (fun s -> s)
;;

let name str =
  Format.sprintf "%s" str
;;

let first_characters_string_of_underscored_string str =
  let w_l = split_of_character_of_string '_' str in
  let c_l = List.map (fun s -> String.get s 0) w_l in
  string_of_char_list c_l 
;;

let first_character_string_off_string str =
  if str = "" 
      then ""
  else
    String.sub str 0 1
;;

let first_character_off_string str =
  String.get str 0
;;

let first_two_characters_off_string str =
  let len = String.length str in
  match len with
  | 0 -> failwith ("Empty string:"^nam_mod^".first_two_characters_off_string")
  | 1 -> failwith ("One_character_string:"^nam_mod^".first_two_characters_off_string")
  | n ->
      String.sub str 0 2
;;

let first_three_characters_off_string str =
  let len = String.length str in
  match len with
  | 0 -> failwith ("Empty string:"^nam_mod^".first_three_characters_off_string")
  | 1 -> failwith ("One_character_string:"^nam_mod^".first_three_characters_off_string")
  | 2 -> failwith ("Two_character_string:"^nam_mod^".first_three_characters_off_string")
  | n ->
      String.sub str 0 3
;;

let rec remove_blanks_off_character_list = function
  | [] -> []
  | h :: tl ->
      if h = ' '
      then remove_blanks_off_character_list tl
      else h :: remove_blanks_off_character_list tl
;;

let is_palindrome_of_string str =
  let wor = word_off_string str in
  reverse_of_string wor = wor
;;

let worddouble_off_word_duo (l, r) =
  l ^ " " ^ r
;;

let leftword_off_worddouble wdo =
  first_word_off_string wdo
;;

let rightword_off_worddouble wdo =
  second_word_off_string wdo
;;

let word_duo_of_worddouble wdo =
  first_word_doublet_off_string wdo
;;

let int_of_string str =
  Scanf.sscanf str " %i " (fun i -> i)
;;

let integer_of_string str =
  int_of_string str
;;

let is_integer_positive_of_string str =
  (int_of_string str) > 0
;;

let float_of_string str =
  if is_float_of_string str
  then
    Scanf.sscanf str " %f " (fun f -> f)
  else
    begin
      Printexc.record_backtrace true;
      (Format.fprintf Format.std_formatter "backtrace:@.%s@." (Printexc.get_backtrace ()) );
      failwith (Format.sprintf "String >%s< is not a float:String_v.float_of_string" str)
    end
;;

let is_float_positive_of_string str =
  (float_of_string str) > 0.
;;

let shortname_of_float flo =
  Format.sprintf "%g" flo
;;

let string_of_float flo =
  Format.sprintf "%f" flo
;;

let string_of_boolean boo =
  Format.sprintf "%b" boo
;;

let boolean_of_string str =
  Scanf.sscanf str " %b " (fun f -> f)
;;

let bool_of_string str =
  Scanf.sscanf str " %b " (fun f -> f)
;;

let is_first_word_of_what_of_string wha str =
 let wor = first_word_off_string str in
 String.lowercase_ascii wha = String.lowercase_ascii wor  
;;

let is_first_word_of_char_of_what_of_string cha wha str =
  let wor = first_word_of_char_off_string cha str in
  String.lowercase_ascii wha = String.lowercase_ascii wor  
;;

(** {6 Parsing} *)

let get_string_until_of_char_of_in_channel cha ich =

  let rec apply ich str =
    Scanf.bscanf ich "%0c"
      (fun c ->
	match c with  
	| c when c = cha -> 
	    let _ = Scanf.bscanf ich "%1c" (fun c -> (Format.sprintf "%c" c)) in
	    str

	| _ ->
	    let cst = Scanf.bscanf ich "%1c" (fun c -> (Format.sprintf "%c" c)) in
	    let str = str ^ cst in
	    (apply ich str)
      )
  in
  apply ich ""
;;
