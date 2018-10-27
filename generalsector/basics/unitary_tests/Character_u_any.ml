open Make_test_v;;

testing "Character_v with
   Character_u_any.ml";;

(* toplevel 
   #use "Character_u_any.ml";; 

*)

let cha = ' ';;
let boo = Character_v.is_space_of_character cha;;
test_number 1 (
boo
);;

let cha = '\t';;
let boo = Character_v.is_space_of_character cha;;
test_number 2 (
boo
);;

let cha = '\n';;
let boo = Character_v.is_space_of_character cha;;
test_number 3 (
boo
);;

let cha = '\\';;
let boo = Character_v.is_space_of_character cha;;
test_number 4 (
(boo : bool ) = false
);;
