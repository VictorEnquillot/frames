open Make_test_v;;

testing "Word_p with
   word_u_any.ml";;

(* toplevel 
   #use "word_u_any.ml";; 

 *)


let wor = Word_p.word "abcd_fgh";;

test_number 1 (
wor
=
Word_p.word "abcd_fgh"
);;

test_number 2 (
Word_p.string_off_word wor
=
"abcd_fgh"
);;



		
