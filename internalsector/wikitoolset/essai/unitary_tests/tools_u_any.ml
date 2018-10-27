open Make_test_v;;

testing "Tools_v with
   tools_u_any.ml";;

(* toplevel 
   #use "tools_u_any.ml"
*)


let wor_l = Tools_v.word_list_off_string " salut les gars ! ";;

let iss = Scanf.Scanning.from_string "";;

(* val bscanf : Scanning.in_channel -> ('a, 'b, 'c, 'd) scanner *)
(* val fscanf : in_channel -> ('a, 'b, 'c, 'd) scanner *)
(* val kscanf : Scanning.in_channel ->
       (Scanning.in_channel -> exn -> 'a) -> ('b, 'c, 'd, 'a) scanner *)

(*
val output_char : out_channel -> char -> unit
    Write the character on the given output channel.

val output_string : out_channel -> string -> unit
    Write the string on the given output channel.

val output : out_channel -> string -> int -> int -> unit

output oc buf pos len writes len characters from string buf, starting at offset pos, to the given output channel oc. Raise Invalid_argument "output" if pos and len do not designate a valid substring of buf.
*)

let ich = Tools_v.in_channel_of_file_name "Balise_b.html";;

(* let ich = Tools_v.skip_blanks ich;; *)
(* let ich = Tools_v.skip_character ich;; *)

test_number 1 (
input_line ich
(* : string *)
= 
"<div class=\"print-content\">"
);;

let ich = Tools_v.in_channel_of_file_name "Balise_b.html";;

test_number 2 (
input_char ich
(* : string *)
= 
'<'
);;

let a = input_line ich;;
let a = input_line ich;;
let a = input_line ich;;
let a = input_line ich;;
let a = input_line ich;;
let a = input_line ich;;


let ich = Tools_v.in_channel_of_file_name "Balise_b.html";;


let str_l = Tools_v.string_list_of_in_channel ich;;

test_number 3 (
wor_l 
(* : string list *)
= 
["salut"; "les"; "gars"; "!"]
);;

test_number 4 (
List.length str_l 
(* : string list *)
=
30
);;
 
test_number 5 (
str_l 
(* : string list *)
= 
[
 "<div class=\"print-content\">";
 "  <div class=\"field field-type-text field-field-large-header\">";
 "    <div class=\"field-label\">Ent\195\170te large:&nbsp;"; 
 "    </div>";
 "    <div class=\"field-items\">";
 "      <div class=\"field-item odd\"><!--paging_filter-->";
 "      </div>"; 
 "    </div>"; 
 "  </div><!-- google_ad_section_start -->";
 "  <div class=\"field field-type-number-integer field-field-external-feed-display\" ss=\"field-items\">";
 "    <div class=\"field-item odd\">Normal"; 
 "    </div>"; 
 "  </div>";
 "</div>";
 "<div class=\"field field-type-nodereference field-field-blog-context\">";
 "  <div class=\"field-label\">Blog principal:&nbsp;"; 
 "  </div>";
 "  <div class=\"field-items\">";
 "    <div class=\"field-item odd\"\197\147>";
 "      <a href=\"http://www.rue89.com/chinatown\">Chinatown</a>";
 "      <span class=\"print-footnote\">[1]</span>"; 
 "    </div>";
 "  </div>"; "</div>";
 "<div class=\"field field-type-text field-field-ad-bottom\">";
 "  <div class=\"field-label\">ad_bottom:&nbsp;</div>";
 "  <div class=\"field-items\">";
 "    <div class=\"field-item odd\">Ligatus</div>"; "  </div>"; "</div>"
]
);;

test_number 6 (
Tools_v.read_string_list_of_file_name "Balise_b.html"
(* : string list *)
= 
str_l 
);;
