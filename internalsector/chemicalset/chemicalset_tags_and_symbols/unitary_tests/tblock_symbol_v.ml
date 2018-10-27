open Gentest_v;;

(** {3 Tests for Block_symbol_v.} *)

testing "Block_symbol_v";;

(* toplevel 
   #use "tblock_symbol_v.ml";; 
 *)

(* Modules *)

module Bls_t = Block_symbol_t
module Bls_v = Block_symbol_v
module Idx_p = Index_p

(** c *)

let smb_blk = Bls_t.Triforked Bls_t.C;;

testi 0 (
Bls_v.name smb_blk
  = 
"C"
);;

(** Cr *)

let smb_blk = Bls_t.Biforked Bls_t.Cr;;
testi 1 (
Bls_v.name smb_blk
=
"Cr"
);;

