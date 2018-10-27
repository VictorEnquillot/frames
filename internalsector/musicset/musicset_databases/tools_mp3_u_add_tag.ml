open Make_test_v;;

testing "Tools_mp3_v with
   tools_mp3_u_add_tag.ml";;

(* toplevel 
   #use "tools_mp3_u_add_tag.ml";;

*)

let nam_fil_tag = "01_aimable_adios_muchachos_tango.mp3";;

let str_l_tag = Tools_v.read_string_list_of_file_name nam_fil_tag;;
let str_tag_1 = List.nth str_l_tag 0;;
let str_tag_2 = List.nth str_l_tag 1;;
let str_tag_3 = List.nth str_l_tag 2;;
let str_tag_4 = List.nth str_l_tag 3;;

let sub_str_tag_1 = String.sub str_tag_1 0 150;;

let nam_fil_not = "01_aimable_adios_muchachos_tango_notag.mp3";;

let str_l_not = Tools_v.read_string_list_of_file_name nam_fil_not;;
let str_not_1 = List.nth str_l_not 0;;
let str_not_2 = List.nth str_l_not 1;;
let str_not_3 = List.nth str_l_not 2;;
let str_not_4 = List.nth str_l_not 3;;

let sub_str_not_1 = String.sub str_not_1 0 150;;

test_number 1 (
sub_str_tag_1
=
"ID3\003\000\000\000\000 \018TPE2\000\000\000\b\000\000\000AimableTIT2\000\000\000\016\000\000\000Adios MuchachosTCON\000\000\000\006\000\000\000(113)TYER\000\000\000\005\000\000\0002012TRCK\000\000\000\002\000\000\0001TALB\000\000\000\014\000\000\000mega  musetteTPE1\000\000\000\t\000\000\000aimable2\000\000\000\000\000\000\000\000\000\000"
);;

test_number 2 (
sub_str_not_1
=
"ID3\004\000\000\000\000\031vTPE1\000\000\000\016\000\000\000Various ArtistsTALB\000\000\000\030\000\000\000Tr\233sors de l'accord\233on - CD 4TIT2\000\000\000\026\000\000\000Aimable / Adios muchachosCOMM\000\000\000\005\000\000\000\000\000\000\000TENC\000\000\000\001@\000\000MCDI\000\000\003$\000\000 \000"
);;
