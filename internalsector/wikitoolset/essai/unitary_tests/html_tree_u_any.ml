open Make_test_v;;

testing "Html_tree_v with
   html_tree_u_any.ml";;

(* toplevel 
   #use "html_tree_u_any.ml"
*)

test_number 1 (
Html_tree_v.make_html_tag "A"
(* : Html_tree_t.html_tag *)
= 
Html_tree_t.A
);;

test_number 2 (
Html_tree_v.make_html_tag "a"
(* : Html_tree_t.html_tag *)
= 
Html_tree_t.A
);;

test_number 3 (
Html_tree_v.make_html_attribute "href"
(* Html_tree_t.html_attribute *)
= 
Html_tree_t.Href
);;

test_number 4 (
Html_tree_v.make_html_lexeme "href"
(* Html_tree_t.html_lexeme *)
= 
Html_tree_t.Html_attribute Html_tree_t.Href
);;

test_number 5 (
Html_tree_v.make_html_lexeme "a"
(* Html_tree_t.html_lexeme *)
= 
Html_tree_t.Html_tag Html_tree_t.A
);;

test_number 6 (
Html_tree_v.make_html_lexeme "hello word"
(* Html_tree_t.html_lexeme *)
= 
Html_tree_t.String "hello word"
);;

(*    
 <A href="fichier.html">
      <p>Bonjour Toto.</p>
      <p>Aurevoir Toto.</p>
</A>


        a * href
         /   \       
        p     p
        |     |
       aur   bon 
*)


let aur = Html_tree_v.make_string_node "Au revoir Toto";;
let bon = Html_tree_v.make_string_node "Bonjour Toto";;

let p = Html_tree_v.make_html_tag "p";;
let a = Html_tree_v.make_html_tag "a";;

let href = Html_tree_v.make_html_attribute "href";;
let p1_n = Html_tree_v.make_tag_node p [] [aur]
let p2_n = Html_tree_v.make_tag_node p [] [bon]

let a_n = Html_tree_v.make_tag_node a [href] [p1_n; p2_n];; 

test_number 7 (
aur 
(* : Html_tree_t.html_tree *)
= 
Html_tree_t.String_node "Au revoir Toto"
);;

test_number 8 (
bon 
(* : Html_tree_t.html_tree *)
= 
Html_tree_t.String_node "Bonjour Toto"
);;

test_number 9 (
 p1_n 
(* : Html_tree_t.html_tree *)
=
  Html_tree_t.Tag_node (Html_tree_t.P, [],
   [Html_tree_t.String_node "Au revoir Toto"])
);;

test_number 10 (
 p2_n 
(* : Html_tree_t.html_tree *)
=
  Html_tree_t.Tag_node (Html_tree_t.P, [],
   [Html_tree_t.String_node "Bonjour Toto"])
);;

test_number 11 (
 a_n 
(* : Html_tree_t.html_tree *)
=
Html_tree_t.Tag_node 
  (Html_tree_t.A, 
   [Html_tree_t.Href],
   [
    Html_tree_t.Tag_node (Html_tree_t.P, 
			  [],
			  [Html_tree_t.String_node "Au revoir Toto"]);
    Html_tree_t.Tag_node (Html_tree_t.P, 
			  [],
			  [Html_tree_t.String_node "Bonjour Toto"])
  ])
);;
