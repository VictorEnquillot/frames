open Make_test_v;;

testing "Localinput_context_domain_tag_by_unit_provider_v with
        Localinput_context_domain_tag_by_unit_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Localinput_context_domain_tag_by_unit_provider_u_any.ml";; 

*)

open Localinput_context_domain_tag_by_unit_provider_v;;

let (_, nam_dom, nam_sec) = 
  Localinput_context_name_trio_by_unit_provider_v.provide ();;

  let soi_dom = 
    Context_sole_index_by_domain_name_n_sector_name_provider_v.provide 
      (nam_dom, nam_sec) ;;

  let sym_lcd = 
    Localinput_context_domain_symbol_v.localinput_context_domain_constructor 
      nam_dom ;;

let tag_lcd  = Tag_v.make sym_lcd soi_dom;;

test_number 1 (
( tag_lcd :
  Localinput_context_domain_symbol_t.localinput_context_domain_symbol
  Tag_t.tag ) =
  (Localinput_context_domain_symbol_t.Localinput_context_domain_constructor
    "user",
   [21; 1])
);;

test_number 2 (
tag_lcd = provide ()
);;
