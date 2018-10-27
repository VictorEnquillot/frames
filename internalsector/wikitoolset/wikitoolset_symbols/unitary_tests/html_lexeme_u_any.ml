open Make_test_v;;

testing "Html_lexeme_v with
   html_lexeme_u_any.ml";;

(* toplevel 
   #use "html_lexeme_u_any.ml";;

*)

let htm_tag_div = Html_tag_v.make "div";;
let htm_att_hre = Html_attribute_v.make "href";;
let htm_apa_tru = Html_attribute_parameter_v.make "trucmuch";;

let htm_lex_div = Html_lexeme_v.html_lexeme_of_html_tag htm_tag_div;;
let htm_lex_hre = Html_lexeme_v.html_lexeme_of_html_attribute htm_att_hre;;
let htm_lex_tru = Html_lexeme_v.html_lexeme_of_html_attribute_parameter htm_apa_tru;;

let htm_lex_spa = Html_lexeme_v.make "span";;
let htm_lex_cla = Html_lexeme_v.make "class";;
let htm_lex_mac = Html_lexeme_v.make "machin";;

test_number 1 (
htm_lex_div
(* : Html_attribute_t.html_attribute *)
= 
Html_lexeme_t.Html_tag Html_tag_t.Div
);;

test_number 2 (
htm_lex_hre
(* : Html_attribute_t.html_attribute *)
= 
Html_lexeme_t.Html_attribute Html_attribute_t.Href
);;

test_number 3 (
htm_lex_spa
(* : Html_attribute_t.html_attribute *)
= 
Html_lexeme_t.Html_tag Html_tag_t.Span
);;

test_number 4 (
htm_lex_tru
(* : Html_attribute_t.html_attribute *)
= 
Html_lexeme_t.Html_attribute_parameter "trucmuch"
);;

test_number 5 (
htm_lex_cla
(* : Html_attribute_t.html_attribute *)
= 
Html_lexeme_t.Html_attribute Html_attribute_t.Class
);;

test_number 6 (
htm_lex_mac
(* : Html_attribute_t.html_attribute *)
= 
Html_lexeme_t.Html_attribute_parameter "machin"
);;

