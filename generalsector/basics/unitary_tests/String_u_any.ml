open Make_test_v;;

testing "String_v with
   String_u_any.ml";;

(* toplevel 
   #use "String_u_any.ml";; 

*)

test_number 1 (
String_v.split_of_character_of_string '/' "/absc/efg/hijk.ml"
=
["absc"; "efg"; "hijk.ml"]
);;

test_number 2 (
String_v.split_of_character_of_string ' ' "absc  efg  hijk.ml"
=
["absc"; "efg"; "hijk.ml"]
);;

test_number 3 (
String_v.extract_of_string_of_start_of_stop "abcdefghij" 2 5
=
"cdef"
);;

test_number 4 (
String_v.head_of_string_of_char "absc/efg/hijk.ml" '/'
=
"absc"
);;

test_number 5 (
String_v.head_of_string_of_char "/absc/efg/hijk.ml" '/'
=
""
);;

let str = String_v.tail_of_string_of_char "/absc/efg/hijk.ml" '/';;

test_number 6 (
str
=
"hijk.ml"
);;

test_number 7 (
String_v.truncate_head_of_string_of_char "absc_efg_hijk" '_'
=
"efg_hijk"
);;

let str = String_v.head_if_contains_of_string_of_char "abcd#efg" '#';;

test_number 8 (
str
=
"abcd"
);;

let str = String_v.head_if_contains_of_string_of_char "abcd#efg" '.';;

test_number 9 (
str
=
"abcd#efg"
);;

let str = String_v.tail_if_contains_of_string_of_char "abcd#efg" '#';;

test_number 10 (
str
=
"efg"
);;

let str = String_v.tail_if_contains_of_string_of_char "abcd#efg" '.';;

test_number 11 (
str
=
"abcd#efg"
);;

test_number 12 (
String_v.truncate_tail_of_string_of_char "/absc/efg/hijk.ml" '.'
=
"/absc/efg/hijk"
);;

test_number 13 (
String_v.string_of_char_list ['a'; 'b'; 'c']
=
"abc"
);;

test_number 14 (
String_v.is_once_of_char_of_string ':' "abc:def"
);;

test_number 15 (
String_v.first_characters_string_of_underscored_string "abc_def_g"
=
"adg"
);;

test_number 16 (
String_v.word_list_off_string "ab cde  fgh"
=
["ab"; "cde";  "fgh"]
);;

test_number 17 (
String_v.string_with_separator_of_string_list " " (String_v.word_list_off_string "ab  cde   fgh")
=
"ab cde fgh"
);;

test_number 18 (
String_v.word_off_string_list (String_v.word_list_off_string "ab  cde   fgh")
=
"abcdefgh"
);;

test_number 19 (
String_v.first_string_doublet_of_char_off_string ':' "abc:def"
=
("abc", "def")
);;

test_number 20 (
String_v.first_word_of_char_off_string '_' " ab_cde_fgh "
=
" ab"
);;

test_number 21 (
String_v.first_word_off_string " ab cde  fgh "
=
"ab"
);;

test_number 22 (
String_v.second_word_off_string " ab cde  fgh "
=
"cde"
);;

test_number 23 (
String_v.second_word_of_char_off_string '_' " ab_cde  fgh "
=
"cde  fgh "
);;

test_number 24 (
String_v.first_word_doublet_off_string " ab cde  fgh "
=
("ab", "cde")
);;

let wor = String_v.third_word_off_string " ab cde  fgh ";;
test_number 25 (
wor
=
"fgh"
);;

let wor = String_v.third_word_of_char_off_string '_' " ab_cde  _fgh ";;
test_number 26 (
wor
=
"fgh "
);;

let wor = String_v.fourth_word_off_string " ab cde  fgh ij";;
test_number 27 (
wor
=
"ij"
);;

let wor = String_v.fifth_word_off_string " ab cde  fgh ij klm";;
test_number 28 (
wor
=
"klm"
);;

test_number 29 (
String_v.first_word_triplet_off_string " ab cde  fgh "
=
("ab", "cde", "fgh")
);;

test_number 30 (
String_v.word_n_string_off_string " ab  cde   fgh "
(* : string * string *)
= 
("ab", "cde   fgh")
);;


test_number 31 (
String_v.first_string_doublet_of_char_off_string  ' ' "ab  cde   fgh " 
=
("ab", " cde   fgh ")
);;

test_number 32 (
String_v.first_string_triplet_of_char_off_string  ' ' "ab  cde   fgh " 
=
("ab", "", "cde   fgh ")
);;

test_number 33 (
String_v.first_string_triplet_of_char_off_string  ':' "ab : cde :  fgh " 
=
("ab ", " cde ", "  fgh ")
);;

let str = String_v.cut_first_characters_of_count_off_string  2 "./truc";;
test_number 34 (
str
=
"truc"
);;

let bol = String_v.is_first_word_of_what_of_string "abc" "abc def";;
test_number 35 (
bol
);;

let bol = String_v.is_first_word_of_char_of_what_of_string '_' "abc" "abc_def";;
test_number 36 (
bol
);;

let str = String_v.cut_first_character_off_string  "/truc";;
test_number 37 (
str
=
"truc"
);;

let str = String_v.cut_last_character_off_string  "truc/";;
test_number 38 (
str
=
"truc"
);;

test_number 39 (
String_v.suppress_leading_string_off_string "./" "./truc"
=
"truc"
);;

test_number 40 (
String_v.suppress_leading_string_off_string "./" "/truc"
=
"/truc"
);;

test_number 41 (
String_v.is_basictype_name_of_string "int"
=
false
);;

test_number 42 (
String_v.is_basictype_name_of_string "integer"
=
true
);;

test_number 43 (
String_v.reduce_blanks_to_one_blank_of_string "   ab    cd e "
=
"ab cd e"
);;

let str = String_v.last_n_characters_of_count_of_string  3 "trucext";;
test_number 44 (
str
=
"ext"
);;

let ich = Scanf.Scanning.from_string "list = { a b c}";;
let str = String_v.get_string_until_of_char_of_in_channel '{' ich;;

test_number 45 (
str
=
"list = "
);;

(* let ich = Scanf.Scanning.from_file "get_string_until_of_char_of_in_channel.inp";; *)
(* let str = String_v.get_string_until_of_char_of_in_channel '{' ich;; *)

let boo = String_v.is_capitalized_of_string "Abc efg";;

test_number 46 (
boo
);;

let boo = String_v.is_capitalized_of_string "AA";;

test_number 47 (
boo
);;

let boo = String_v.is_capitalized_strict_of_string "AA";;

test_number 48 (
boo = false
);;

let boo = String_v.is_lowercase_of_string "abc efg";;

test_number 49 (
boo
);;

let str = "ABCXEFG";;
let boo = String_v.is_alphabetic_of_string "ABCXEFG";;

test_number 50 (
(boo : bool ) =
true
);;

let mat = Str.matched_string str;; 

test_number 51 (
(mat : string ) = 
"ABCXEFG"
);;

let str = "ABC_EFG";;
let boo = String_v.is_alphabetic_of_string str;;

test_number 52 (
(boo : bool ) =
false
);;

let str = "ABC EFG";;
let boo = String_v.is_alphabetic_of_string str;;

test_number 53 (
(boo : bool ) = 
false
);;

let str = "12357";;
let boo = String_v.is_integer_of_string str;;

test_number 54 (
(boo : bool ) =
true
);;

let str = " 12357";;
let boo = String_v.is_integer_of_string str;;

test_number 55 (
(boo : bool ) =
false
);;

let str = "12 345";;
let boo = String_v.is_integer_of_string str;;

test_number 56 (
(boo : bool ) = 
false
);;

let str = "12 345";;
let rev = String_v.reverse_of_string str;;

test_number 57 (
(rev : string ) = 
"543 21"
);;

let cap = String_v.capitalize_of_string "abC dEF";;

test_number 58 (
(cap : string ) = 
"AbC dEF"
);;

let cap = String_v.capitalize_strict_of_string "abC dEF";;

test_number 59 (
(cap : string ) = 
"Abc def"
);;

let cap = String_v.capitalize_of_string "abC dEF";;
let boo = String_v.is_capitalized_of_string cap;;

test_number 60 (
boo
);;

let cap = String_v.capitalize_of_string "abC dEF";;
let boo = String_v.is_capitalized_strict_of_string cap;;

test_number 61 (
( boo : bool) = false
);;

let cap = String_v.capitalize_strict_of_string "abC dEF";;
let boo = String_v.is_capitalized_strict_of_string cap;;

test_number 62 (
( boo : bool) = true
);;

let cap = String_v.capitalize_strict_of_string "abC dEF";;
let boo = String_v.is_capitalized_of_string cap;;

test_number 63 (
( boo : bool) = true
);;

let str = String_v.substitute_all_string_from_of_string "a" "x" "abacdae";;

test_number 64 (
(str : string ) = 
"xbxcdxe"
);;

let str = String_v.substitute_all_string_from_of_string "? center_name ?" "X" "abac? center_name ? da ? center_name ? e";;

test_number 65 (
(str : string ) = 
"abacX da X e"
);;

let str = " un deux trois ";;
let boo = String_v.is_some_word_of_word_off_string "deux" str;;

test_number 66 (
boo
);;

let str = "datasector";;
let sec = String_v.cut_last_n_characters_of_count_off_string 6 str;;

test_number 67 (
(sec : string) =
"data"
);;

let split_of_character_of_string cha str =
  let len = String.length str in

  let rec loop accu i =
    if i >= len then "" :: accu else
    try
      let j = String.index_from str i cha in
      loop (String.sub str i (j - i) :: accu) (j + 1)
    with Not_found ->
      String.sub str i (len - i) :: accu 
  in
  let str_l = List.rev (loop [] 0) 
  in
  
  List.filter (fun s -> s <> "") str_l 
;;

let substring_of_string_of_character_of_integer str cha idx =
  let len = String.length str in

  let rec loop accu i =
    if i >= len then "" :: accu else
    try
      let j = String.index_from str i cha in
      loop (String.sub str i (j - i) :: accu) (j + 1)
    with Not_found ->
      String.sub str i (len - i) :: accu 
  in
  let str_l = List.rev (loop [] 0) 
  in
  
  let word_l = List.filter (fun s -> s <> "") str_l in
  String.trim (List.nth word_l idx)
;;

let str = substring_of_string_of_character_of_integer "bonjour, le, monde" ',' 2;;
test_number 68 (
(str : string) =
"monde"
);;
