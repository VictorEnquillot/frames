open Make_test_v;;

(** {3 Tests for Block_symbol_v.} *)

testing "Block_symbol_v";;

(* toplevel 
   #use "block_symbol_u_any.ml";; 
 *)

(* Modules *)


(** c *)

let smb_blk = Block_symbol_t.Triforked Block_symbol_t.C;;

test_number 0 (
Block_symbol_v.name smb_blk
  = 
"C"
);;

(** Cr *)

let smb_blk = Block_symbol_t.Biforked Block_symbol_t.Cr;;
test_number 1 (
Block_symbol_v.name smb_blk
=
"Cr"
);;

