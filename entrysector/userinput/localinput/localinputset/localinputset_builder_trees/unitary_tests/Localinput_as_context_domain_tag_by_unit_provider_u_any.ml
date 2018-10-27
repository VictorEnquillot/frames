open Make_test_v;;

testing "Localinput_as_context_domain_tag_by_unit_provider_v with
        Localinput_as_context_domain_tag_by_unit_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Localinput_as_context_domain_tag_by_unit_provider_u_any.ml";; 

*)

open Localinput_as_context_domain_tag_by_unit_provider_v;;
  
let (_, nam_dom, nam_sec) = 
    Localinput_context_name_trio_by_unit_provider_v.provide () 
;;

test_number 1 (
(nam_dom : string ) = 
"user"
);;

test_number 2 (
(nam_sec : string ) = 
"entry"
);;

let soi_dom = 
  Context_sole_index_by_domain_name_n_sector_name_provider_v.provide 
    (nam_dom, nam_sec) ;;
  
test_number 3 (
(soi_dom : int list ) = 
[21; 1]
);;

let sym_loc_lcd = 
  Localinput_symbol_v.localinput_context_domain_constructor 
    nam_dom 
;;

test_number 4 (
(sym_loc_lcd : Localinput_symbol_t.localinput_symbol ) =
  Localinput_symbol_t.Localinput_context_symbol
   (Localinput_context_symbol_t.Localinput_context_domain_symbol
     (Localinput_context_domain_symbol_t.Localinput_context_domain_constructor
       "user"))
);;
 
let tag_loc_lcd = Tag_v.make sym_loc_lcd soi_dom;;

test_number 5 (
(tag_loc_lcd : Localinput_symbol_t.localinput_symbol Tag_t.tag ) =
  (Localinput_symbol_t.Localinput_context_symbol
    (Localinput_context_symbol_t.Localinput_context_domain_symbol
      (Localinput_context_domain_symbol_t.Localinput_context_domain_constructor
        "user")),
   [21; 1])
);;

test_number 6 (
tag_loc_lcd = provide ()
);;
