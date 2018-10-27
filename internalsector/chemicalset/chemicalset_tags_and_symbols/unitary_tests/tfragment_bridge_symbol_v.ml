open Gentest_v;;

(* toplevel 
   #use "tfragment_halfbridge_symbol_v.ml";; 
 *)

testing "Fragment_halfbridge_symbol_v";;

(** Modules. *)

module Frs_t = Fragment_symbol_t
module Frs_v = Fragment_symbol_v

module Bns_v = Bond_symbol_v
module Bdd_v = Halfbridge_marker_v
module Bdg_v = Halfbridge_v

(** Fragment Halfbridge a : -C_h_2Cc_a -Cch_N_h_Cc_a *)

let smb_bdg = "a";;
let smb_bdg = Bdd_v.make smb_bdg;;

let smb_frg_l = Frs_t.Rod Frs_t.C_h_2Cc;;
let smb_frg_r = Frs_t.Rod Frs_t.Cch_N_h_Cc;;
let bdg_frs = Bdg_v.make smb_bdg smb_frg_l smb_frg_r;;

testi 0 (
bdg_frs 
=
(Halfbridge_t.Bnd_t.Bnd_t.symbol = "a";
 (Frs_t.Rod Frs_t.C_h_2Cc, Frs_t.Rod Frs_t.Cch_N_h_Cc))
);;

