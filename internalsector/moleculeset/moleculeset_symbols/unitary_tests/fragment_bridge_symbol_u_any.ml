open Make_test_v;;

(* toplevel 
   #use "fragment_halfbridge_symbol_u_any.ml";; 
 *)

testing "Fragment_halfbridge_symbol_v";;

(** Modules. *)



(** Fragment Halfbridge a : -C_h_2Cc_a -Cch_N_h_Cc_a *)

let smb_bdg = "a";;
let smb_bdg = Halfbridge_marker_v.make smb_bdg;;

let smb_frg_l = Fragment_symbol_t.Rod Fragment_symbol_t.C_h_2Cc;;
let smb_frg_r = Fragment_symbol_t.Rod Fragment_symbol_t.Cch_N_h_Cc;;
let bdg_frs = Halfbridge_v.make smb_bdg smb_frg_l smb_frg_r;;

test_number 0 (
bdg_frs 
=
(Halfbridge_t.Bnd_t.Bnd_t.symbol = "a";
 (Fragment_symbol_t.Rod Fragment_symbol_t.C_h_2Cc, Fragment_symbol_t.Rod Fragment_symbol_t.Cch_N_h_Cc))
);;

