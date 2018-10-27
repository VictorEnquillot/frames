open Gentest_v;;

(* toplevel 
   #use "thalfbridge_symbol_v.ml";; 
 *)

testing "Halfbridge_symbol_v";;

(** Modules. *)

module Bns_v = Bond_symbol_t
module BnS_t = Bond_index_t
module Brd_v = Halfbridge_marker_v
module Brs_t = Halfbridge_symbol_t
module Brs_v = Halfbridge_symbol_v
module Brg_v = Halfbridge_v
module Mty_t = Multiplicity_t

(** Halfbridge S a *)

let smb_bdg = Brs_t.Bca;;
let mty = Brs_v.multiplicity_off_halfbridge_symbol smb_bdg;;
let sta_bnd = Brs_v.bond_index_off_halfbridge_symbol smb_bdg;;

testi 0 (
smb_bdg
=
Brs_t.Bca
);;

testi 1 (
Brs_v.name smb_bdg
=
"Bca"
);;

testi 2 (
mty (* : Bond_index_t.bond_index *)
=
Mty_t.Half
);;

testi 3 (
sta_bnd (* : Bond_index_t.bond_index *)
=
Bond_index_t.Multiplicity Bond_index_t.Mty_t.Half
);;
