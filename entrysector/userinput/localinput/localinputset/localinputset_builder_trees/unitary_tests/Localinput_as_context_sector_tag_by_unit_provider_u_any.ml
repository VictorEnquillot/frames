open Make_test_v;;

testing "Localinput_as_context_sector_tag_by_unit_provider_v with
        Localinput_as_context_sector_tag_by_unit_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Localinput_as_context_sector_tag_by_unit_provider_u_any.ml";; 

*)

open Localinput_as_context_sector_tag_by_unit_provider_v;;
  
let nam_sec = Localinput_context_sector_name_by_unit_provider_v.provide ();;

test_number 1 (
(nam_sec : string) = 
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

let sym_loc_lcs = 
  Localinput_symbol_v.localinput_context_sector_constructor 
    nam_sec 
;;

test_number 3 (
(sym_loc_lcs : Localinput_symbol_t.localinput_symbol ) =
  Localinput_symbol_t.Localinput_context_symbol
   (Localinput_context_symbol_t.Localinput_context_sector_symbol
     (Localinput_context_sector_symbol_t.Localinput_context_sector_constructor
       "entry"))
);;
 
let tag_loc_dcs = Tag_v.make sym_loc_lcs soi_sec;;

test_number 4 (
(tag_loc_dcs : Localinput_symbol_t.localinput_symbol Tag_t.tag ) =
  (Localinput_symbol_t.Localinput_context_symbol
    (Localinput_context_symbol_t.Localinput_context_sector_symbol
      (Localinput_context_sector_symbol_t.Localinput_context_sector_constructor
        "entry")),
   [1])
);;

test_number 5 (
tag_loc_dcs = provide ()
);;
