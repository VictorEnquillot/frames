(** {3 Some extensions for Characters.} *)

let nam_mod = "Character_v";;

let character_of_string str =
  try String.get str 0
  with Invalid_argument _ ->
    failwith ("String_too_long:"^nam_mod^".character_of_string")
;;

let character_list_off_string str =
 let ib = Scanf.Scanning.from_string str in
 let rec add ls =
  try Scanf.bscanf ib "%c" (fun c -> c :: add ls) 
  with End_of_file -> ls
 in
  add []
;;

let string_of_character_list c_l =
  let str_l = List.map (String.make 1) c_l in
  String.concat "" str_l
;;

let uppercase_of_character = Char.uppercase_ascii;;

let lowercase_of_character = Char.lowercase_ascii;;

let ascii_code_of_character = Char.code;;

let escaped_character_of_character = Char.escaped;;

let character_of_ascii_code = Char.chr;;
    
let unnacent_of_ascii_code = function
  | i when i <= 126 -> character_of_ascii_code i
  | 181 | 183 |	182 | 142 | 199 |143 -> 'A'
  | 144 | 212 | 210 | 211 -> 'E'
  | 214 | 222 | 215 | 216 -> 'I'
  | 224 | 227 | 226 | 153 | 229 | 157 -> 'O'
  | 233 | 235 | 234 | 154 -> 'U'
  | 237 -> 'Y'
  | 160 | 133 | 131 | 132 | 198 | 134 -> 'a'
  | 130 | 138 |	136 | 137 -> 'e'
  | 161 | 141 |	140 | 139 -> 'i'
  | 162 | 149 |	147 | 148 | 228 | 155 -> 'o'
  | 163 | 151 |	150 | 129 -> 'u'
  | 236 | 152 -> 'y'
  | _ -> failwith ("Not_Found:"^nam_mod^".unnacent_of_ascii_code") 
;;

let unnacent_of_ansi_code = function
  | i when i <= 126 -> character_of_ascii_code i
  | 193 | 192 |	194 | 196 | 195 |197 -> 'A'
  | 201 |200 | 202 |203 -> 'E'
  | 205 |204 | 206 | 207 -> 'I'
  | 211 | 210 | 212 | 214 | 213 | 216 -> 'O'
  | 218 | 217 | 219 | 220 -> 'U'
  | 221 -> 'Y'
  | 225 | 224 | 226 | 228 | 227 | 229 -> 'a'
  | 233 | 232 |	234 | 235 -> 'e'
  | 237 | 236 |	238 | 239 -> 'i'
  | 243 | 242 |	244 | 246 | 245 | 248 -> 'o'
  | 250 | 249 |	251 | 252 -> 'u'
  | 253 | 255 -> 'y'
  | _ -> failwith ("Not_Found:"^nam_mod^".unnacent_of_ansi_code") 
;;

let character_of_ansi_code = function
  | i when i <= 126 -> character_of_ascii_code i
  | i when i >= 256 -> failwith ("Not_Found:"^nam_mod^".character_of_ansi_code")
  | i -> unnacent_of_ansi_code i
;;

let unaccent_of_character_list  cha_l =
List.map unnacent_of_ascii_code cha_l
;;

(* {6 Abbreviating} *)
let aacute = character_of_ascii_code 160;;
let aAcute = character_of_ascii_code 181;;
let agrave = character_of_ascii_code 133;;
let aGrave = character_of_ascii_code 183;;
let eacute = character_of_ascii_code 130;;
let eAcute = character_of_ascii_code 144;;
let egrave = character_of_ascii_code 138;;
let eGrave = character_of_ascii_code 143;;

let is_space_of_character cha =
  cha = '\t' || cha = ' ' || cha = '\n' 
;;
