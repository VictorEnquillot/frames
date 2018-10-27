open Make_test_v;;

testing "Mp3_header symbol_v with
   mp3_header_symbol_u_any.ml";;

(* toplevel 
   #use "mp3_header_symbol_u_any.ml";; 

 *)

let nam_hea = "mp3_header_1";;
let sym_hea = Mp3_header_symbol_v.make nam_hea "";;

test_number 1 (
sym_hea
(* : File_id3v1_symbol_t.mp3_header_symbol *)
= 
Mp3_header_symbol_t.Mp3_header_1
);;

test_number 2 (
Mp3_header_symbol_v.name sym_hea
(* : string *)
= 
String.capitalize (nam_hea)
);;

