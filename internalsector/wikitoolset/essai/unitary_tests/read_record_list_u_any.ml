open Make_test_v;;

let nam_mod = "read_record_list_u_any.ml";;

testing "Read_record_list_v with
   read_record_list_u_any.ml";;

(* toplevel 
   #use "read_record_list_u_any.ml"
*)


(** {6 Lire les records} *)

let nam_fil_a = "Balise_a.html" ;;
let nam_fil_b = "Balise_b.html" ;;

let rec_htm_a_l = Tools_v.read_string_list_of_file_name nam_fil_a;;
let rec_htm_b_l = Tools_v.read_string_list_of_file_name nam_fil_b;;

let iss_spa = Scanf.Scanning.from_string "span ";; 
let tag_spa = Read_record_list_v.html_tag_of_scanning_in_channel iss_spa;;   

let iss_cla = Scanf.Scanning.from_string "class=";; 

let str_spa = "<span class=\"print-footnote\">[3]</span>";; 

let lex_spa = Read_record_list_v.html_lexeme_of_string str_spa;;

let str_tag_l =
[
 "  <div class=\"field-items\">";
 "    <div class=\"field-item odd\"\197\147>";
 "      <a href=\"http://www.rue89.com/chinatown\">Chinatown</a>";
 "      <span class=\"print-footnote\">[1]</span>";
 "    </div>";
 "  </div>";
]
;;

test_number 1 (
tag_spa
(* : Html_tree_t.html_tag *)
= 
Html_tree_t.Span
);;

test_number 2 (
lex_spa 
(* : Html_tree_t.html_lexeme *)
= 
Html_tree_t.Html_tag Html_tree_t.Span
);;
