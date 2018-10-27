open Make_test_v;;

let nam_mod = "html_lexer_u_any.ml";;

testing "Html_lexer_v with
   html_lexer_u_any.ml";;

(* toplevel 
   #use "html_lexer_u_any.ml";;

*)

(*
<div class="field field-type-nodereference field-field-blog-context">
  <div class="field-label">Blog principal:&nbsp;
  </div>
  <div class="field-items">
    <div class="field-item odd"œ>
      <a href="http://www.rue89.com/chinatown">Chinatown</a>
      <span class="print-footnote">[1]</span>
    </div>
  </div>
</div>
*)

let nam_fil_c = "Balise_c.html" ;;
let ich_c = Tools_v.in_channel_of_file_name nam_fil_c;;
Tools_v.skip_character ich_c;; (* skip '<' *)

(* read div | from div class="field field-type-nodereferen..." *)
let htm_tag_div = Html_lexer_v.html_tag_of_in_channel ich_c;;

let htm_lex_div = Html_lexeme_v.html_lexeme_of_html_tag htm_tag_div;;

test_number 1 (
htm_tag_div
(* Html_tag_t.html_tag *)
= 
Html_tag_t.Div
);;

test_number 2 (
htm_lex_div 
(* Html_lexeme_t.html_lexeme *)
  = 
Html_lexeme_t.Html_tag Html_tag_t.Div
);;

Tools_v.skip_character ich_c;; 
(* read class | from class="field field-type-nodereferen..." *)

let htm_att_cla = Html_lexer_v.html_attribute_of_in_channel ich_c;;   
let htm_lex_cla = Html_lexeme_v.html_lexeme_of_html_attribute htm_att_cla;;

test_number 3 (
htm_att_cla
(* Html_attribute_t.html_attribute *)
= 
Html_attribute_t.Class
);;

test_number 4 (
htm_lex_cla 
(* Html_lexeme_t.html_lexeme *)
  = 
Html_lexeme_t.Html_attribute Html_attribute_t.Class
);;

