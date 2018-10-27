open Make_test_v;;

testing "Abbreviation_default_v";;

(* toplevel 
   #use "abbreviation_default_u_any.ml";; 
 *)

test_number 1 (
Abbreviation_default_v.one_character_abbreviation_default_of_word "2d"
=
'2'
);;

test_number 2 (
Abbreviation_default_v.abbreviation_default_argument_of_string "x_2d"
=
"x2d"
);;

test_number 3 (
 Abbreviation_default_v.abbreviation_default_argument_of_string "polypeptide"
= 
"pol"
);;

test_number 4 (
Abbreviation_default_v.abbreviation_default_argument_of_string "polyglycine"
=
"pol"
);;

test_number 5 (
Abbreviation_default_v.abbreviation_default_argument_of_string "atom"
=
"ato"
);;

test_number 6 (
Abbreviation_default_v.abbreviation_default_argument_of_string "atom_onetied"
=
"aon"
);;

test_number 7 (
Abbreviation_default_v.abbreviation_default_argument_of_string "atom_onetied_single"
=
"a1s"
);;

test_number 8 (
Abbreviation_default_v.abbreviation_default_argument_of_string "atom_zerotied_cation_plusone"
=
"ac1"
);;

test_number 9 (
Abbreviation_default_v.abbreviation_default_argument_of_string "atom_zerotied_anion_minustwo"
=
"aa2"
);;

