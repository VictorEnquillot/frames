open Make_test_v;;

testing "Character_v with
   character_u_alain.ml";;

(* toplevel 
  
 #use "character_u_alain.ml";; 

*)


let cha_l = [ Character_v.egrave;Character_v.aGrave; Character_v.eGrave ];;

test_number 1 (
Character_v.agrave
=
'\181'
);;

test_number 2 (
Character_v.aGrave
=
'\183'
);;

test_number 3 (
 Character_v.unnacent_of_ascii_code 181
(* : char *)
=
'A'
);;

test_number 4 (
Character_v.unnacent_of_ansi_code 193
=
'A'
);;

test_number 5 (
Character_v.escaped_character_of_character 'x'
=
"x"
);;

test_number 6 (
Character_v.unaccent_of_character_list  cha_l
=
[]
);;
