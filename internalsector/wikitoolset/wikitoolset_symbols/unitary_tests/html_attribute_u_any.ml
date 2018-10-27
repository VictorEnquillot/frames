open Make_test_v;;

testing "Html_attribute_parameter_v with
   html_attribute_parameter_u_any.ml";;

(* toplevel 
   #use "html_attribute_parameter_u_any.ml";;

*)

let htm_att_hre = Html_attribute_v.make "href";;
let htm_att_cla = Html_attribute_v.make "class";;

test_number 1 (
htm_att_hre
(* : Html_attribute_t.html_attribute *)
= 
Html_attribute_t.Href
);;

test_number 2 (
htm_att_cla
(* : Html_attribute_t.html_attribute *)
= 
Html_attribute_t.Class
);;

