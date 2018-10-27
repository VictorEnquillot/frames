open Make_test_v;;

testing "Fileformat_v";;

(* toplevel 
   #use "Fileformat_u_any.ml";; 
*)


let fmt_chm = Fileformat_v.read (Scanf.Scanning.from_string "Charmm");;
let fmt_frm = Fileformat_v.read (Scanf.Scanning.from_string "Frames");;
let fmt_pdb = Fileformat_v.read (Scanf.Scanning.from_string "Pdb");;

let ext_chm = Fileformat_v.fileextension_of_string "Charmm";;
let ext_frm = Fileformat_v.fileextension_of_string "Frames";;
let ext_pdb = Fileformat_v.fileextension_of_string "Pdb";;

test_number 1 (
Fileformat_v.name fmt_chm
=
"chm"
);;

test_number 2 (
Fileformat_v.name fmt_frm
=
"frm"
);;

test_number 3 (
Fileformat_v.name fmt_pdb
=
"pdb"
);;

test_number 4 (
ext_chm = Fileformat_v.name fmt_chm
);;

test_number 5 (
ext_frm = Fileformat_v.name fmt_frm
);;

test_number 6 (
ext_pdb = Fileformat_v.name fmt_pdb
);;

