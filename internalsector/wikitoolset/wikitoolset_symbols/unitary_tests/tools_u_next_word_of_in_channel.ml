open Make_test_v;;

let nam_mod = "html_lexer_u_any.ml";;

testing "Html_lexer_v with
   tools_u_next_word_of_in_channel.ml";;

(* toplevel 
   #use "tools_u_next_word_of_in_channel.ml";;

*)

(*<div class="field field-type-nodereference field-field-blog-context"> *)

let nam_fil = "Balise_c.html" ;;
let ich = Tools_v.in_channel_of_file_name nam_fil;;

let cha_1 = Tools_v.next_char_stay_of_in_channel ich;;
let cha_2 = Tools_v.next_char_stay_of_in_channel ich;;
let cha_3 = Tools_v.next_char_move_of_in_channel ich;;
let cha_4 = Tools_v.next_char_move_of_in_channel ich;;

let wor_1 = Tools_v.next_word_of_in_channel ich;;
let wor_2 = Tools_v.next_word_of_in_channel ich;;

let cha_5 = Tools_v.next_char_move_of_in_channel ich;;
let wor_3 = Tools_v.next_word_of_in_channel ich;;

let wor_4 = Tools_v.next_word_of_in_channel ich;;
let wor_5 = Tools_v.next_word_of_in_channel ich;;

let wor_6 = Tools_v.next_word_of_in_channel ich;;

test_number 1 (
cha_1
  = 
'<'
);;

test_number 2 (
cha_2
  = 
cha_1
);;

test_number 3 (
cha_3
  = 
cha_2
);;

test_number 4 (
cha_4
  = 
'd'
);;

test_number 5 (
wor_1 
=
"iv"
);;

test_number 6 (
wor_2
=
"class"
);;

test_number 7 (
cha_5
  = 
'"'
);;

test_number 8 (
wor_3
=
"field"
);;

test_number 9 (
wor_4
=
"field-type-nodereference"
);;

test_number 10 (
wor_5
=
"field-field-blog-context"
);;

test_number 11 (
wor_6
=
">\n"
);;
