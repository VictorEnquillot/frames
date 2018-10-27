open Make_test_v;;

let nam_mod = "html_attribute_parameter_u_any.ml";;

testing "Html_attribute_parameter_v with
   html_attribute_parameter_u_any.ml";;

(* toplevel 
   #use "html_attribute_parameter_u_any.ml";;

*)

test_number 1 (
Html_attribute_parameter_v.make "blabla" 
= 
"blabla"
);;

