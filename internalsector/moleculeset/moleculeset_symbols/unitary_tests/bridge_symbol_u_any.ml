open Make_test_v;;

(* toplevel 
   #use "thalfbridge_symbol_u_any.ml";; 
 *)

testing "Halfbridge_symbol_v";;

(** Modules. *)


(** Halfbridge S a *)

let smb_bdg = Halfbridge_symbol_t.Bca;;
let mty = Halfbridge_symbol_v.multiplicity_off_halfbridge_symbol smb_bdg;;
let sta_bnd = Halfbridge_symbol_v.bond_index_off_halfbridge_symbol smb_bdg;;

test_number 0 (
smb_bdg
=
Halfbridge_symbol_t.Bca
);;

test_number 1 (
Halfbridge_symbol_v.name smb_bdg
=
"Bca"
);;

test_number 2 (
mty (* : Bond_index_t.bond_index *)
=
Multiplicity_t.Half
);;

test_number 3 (
sta_bnd (* : Bond_index_t.bond_index *)
=
Bond_index_t.Multiplicity Bond_index_t.Multiplicity_t.Half
);;
