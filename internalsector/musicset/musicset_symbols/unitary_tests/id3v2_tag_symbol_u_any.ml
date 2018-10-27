open Make_test_v;;

testing "Id3v2_tag_symbol_v with
   id3v2_tag_symbol_u_any.ml";;

(* toplevel 
   #use "id3v2_tag_symbol_u_any.ml";; 

 *)

let sym_tir = Id3v2_tag_symbol_v.make "apic" "";;
let nam_tir = Id3v2_tag_symbol_v.name sym_tir;;

test_number 1 (
sym_tir
(* : Id3v2_tag_symbol_t.id3v2_tag_symbol *)
=
  Id3v2_tag_symbol_t.Id3v2_base_tag_symbol
   (Id3v2_base_tag_symbol_t.Id3v2_tag_unique_symbol
     Id3v2_tag_unique_symbol_t.Apic)
);;

test_number 2 (
nam_tir 
(* : string *)
= 
"Apic"
);;
