open Make_test_v;;

testing "Fileio_v with
   Fileio_u_any.ml";;

(* toplevel 
   #use "Fileio_u_any.ml";; 
*)


let str = "./methanol.pdb";;
let fln = Filename_p.filename str;;
let ic = Fileio_v.in_channel_of_filename fln;;
let str_l = Fileio_v.string_list_of_in_channel ic ;;

test_number 1 (
str_l (* : string list *)
=
  ["COMPND       Methanol     CH3-OH\r";
   "HEADER    \169  Albert Pratt  DCU  Jan.'97\r";
   "HETATM    1  C           1      -1.139  -0.167   0.000\r";
   "HETATM    2  O           2      -1.128   1.234   0.000\r";
   "HETATM    3  H           3      -0.081  -0.515   0.000\r";
   "HETATM    4  H           4      -1.669  -0.508   0.918\r";
   "HETATM    5  H           5      -1.669  -0.508  -0.918\r";
   "HETATM    6  H           6      -2.024   1.523   0.000\r";
   "CONECT    1    2    3    4    5\r"; "CONECT    2    1    6\r";
   "CONECT    3    1\r"; "CONECT    4    1\r"; "CONECT    5    1\r";
   "CONECT    6    2\r"; "END\r"]
);;

test_number 2 (
Fileio_v.string_list_of_filename fln
=
str_l
);;

Fileio_v.write_of_string_of_filename "line a" (Filename_p.filename "./trac.dat");;
Fileio_v.write_of_string_of_filename "lige b" (Filename_p.filename "./trac.dat");;

Fileio_v.write_of_string_list_of_filename ["line 1\n"; "line 2\n"] (Filename_p.filename "./truc.dat");;

(*
Fileio_v.open_out_channel_n_warn_of_filename (Filename_p.filename "./trbc.dat") "ici" "là";;
*)

let str = "./do_atom_constructor_set.dat";;
let fln = Filename_p.filename str;;
let ic = Fileio_v.in_channel_of_filename fln;;
let str_l = Fileio_v.string_list_of_in_channel ic ;;

test_number 3 (
str_l 
(* : string list *)
=
["atom_zerotied"; "atom_onetied"; "atom_twotied"; "atom_threetied";
 "atom_fourtied"; "atom_fivetied"; "atom_sixtied"]
);;

test_number 4 (
Fileio_v.is_existing_of_filename fln
=
true
);;

let oc = Fileio_v.open_out_channel_of_string_of_string_of_fullnameoffile "tfileio" "here" "./test.dat";;
