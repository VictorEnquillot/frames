open Make_test_v;;

testing "Localinput_context_sector_tag_by_unit_provider_v with
        Localinput_context_sector_tag_by_unit_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Localinput_context_sector_tag_by_unit_provider_u_any.ml";; 

*)

open Localinput_context_sector_tag_by_unit_provider_v;;
  
let nam_sec = Localinput_context_sector_name_by_unit_provider_v.provide ();;

test_number 1 (
(nam_sec : string ) = 
"entry"
);;

let soi_sec = 
  Context_sole_index_by_sector_name_provider_v.provide 
    nam_sec 
;;
  
test_number 2 (
(soi_sec : int list ) = 
[1]
);;

let sym_lcs = 
  Localinput_context_sector_symbol_v.localinput_context_sector_constructor 
    nam_sec 
;;

test_number 3 (
( sym_lcs :
  Localinput_context_sector_symbol_t.localinput_context_sector_symbol ) =
  Localinput_context_sector_symbol_t.Localinput_context_sector_constructor
   "entry"
);;
 
let tag_lcs = Tag_v.make sym_lcs soi_sec;;

test_number 4 (
(tag_lcs :
  Localinput_context_sector_symbol_t.localinput_context_sector_symbol
  Tag_t.tag ) =
  (Localinput_context_sector_symbol_t.Localinput_context_sector_constructor
    "entry",
   [1])
);;

test_number 5 (
tag_lcs = provide ()
);;
