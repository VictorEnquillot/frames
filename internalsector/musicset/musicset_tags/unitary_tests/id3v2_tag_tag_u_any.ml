open Make_test_v;;

testing "Id3v2_tag_tag_v with
   id3v2_tag_tag_u_any.ml";;

(* toplevel 
   #use "id3v2_tag_tag_u_any.ml";; 

 *)

let nam_dos = "musicset";;
let idx_dos = 1;;
let soi_dos = Sole_index_v.make idx_dos [];;

let str_i2t = "apic";;
let sym_i2t = Id3v2_tag_symbol_v.make str_i2t "";;
let idx_i2t = 3;;
let soi_i2t = Sole_index_v.make idx_i2t soi_dos;;
let tag_i2t = Id3v2_tag_tag_v.make sym_i2t soi_i2t;;
let nam_i2t = Id3v2_tag_tag_v.name tag_i2t;;

test_number 1 (
tag_i2t
(* Id3v2_tag_symbol_t.id3v2_tag_symbol Tag_t.tag *)
=
  (Id3v2_tag_symbol_t.Id3v2_base_tag_symbol
    (Id3v2_base_tag_symbol_t.Id3v2_tag_unique_symbol
      Id3v2_tag_unique_symbol_t.Apic),
   [3; 1])
);;

test_number 2 (
nam_i2t
(* : string *)
= 
"(Apic, [3; 1])"
);;

