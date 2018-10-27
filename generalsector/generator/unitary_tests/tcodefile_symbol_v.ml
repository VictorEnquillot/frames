open Gentest_v;;

testing "Item_symbol_v";;

(* toplevel 
   #use "titem_symbol_v.ml";; 
 *)

module Its_t = Item_symbol_t
module Its_v = Item_symbol_v

let smb_abb = Its_v.upgrading_function;;

testi 0 (
Its_v.name smb_abb 
=
 "Upgrading"
);;

