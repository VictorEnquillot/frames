(** {3 A Symbol for a Atom_zerotied_anion.} *)

let nam_cod = "atom_zerotied_anion_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v

module A0am1s_v = Atom_zerotied_anion_minus_one_symbol_v
module A0am2s_v = Atom_zerotied_anion_minus_two_symbol_v


let name = function
  | A0as_v smb_am1 ->
      A0am1s_v.name smb_am1
  | A0as_v smb_am2 ->
      A0am2s_v.name smb_am2
;;


let print ppf = function
  | A0as_v smb_am1 ->
      A0am1s_v.print ppf smb_am1
  | A0as_v smb_am2 ->
      A0am2s_v.print ppf smb_am2
;;


(** {6 Extracting.} *)

let atom_zerotied_anion_minus_one_symbol_off_atom_zerotied_anion_symbol = function
  | A0as_v smb_am1 -> smb_am1
  | s -> Erm_v.print_fatal_error nam_cod
     "atom_zerotied_anion_minus_one_symbol_off_atom_zerotied_anion_symbol"
     "Atom_zerotied_anion_minus_one_symbol"
     (name s)
    "check"
;;

let atom_zerotied_anion_minus_two_symbol_off_atom_zerotied_anion_symbol = function
  | A0as_v smb_am2 -> smb_am2
  | s -> Erm_v.print_fatal_error nam_cod
     "atom_zerotied_anion_minus_two_symbol_off_atom_zerotied_anion_symbol"
     "Atom_zerotied_anion_minus_two_symbol"
     (name s)
    "check"
;;


(** {6 Querying.} *)

let is_atom_zerotied_anion_minus_one_symbol_off_atom_zerotied_anion_symbol = function
  | Atom_zerotied_anion_symbol_t.Atom_zerotied_anion_minus_one_symbol _ -> true
  | _ -> false
;;

let is_atom_zerotied_anion_minus_two_symbol_off_atom_zerotied_anion_symbol = function
  | Atom_zerotied_anion_symbol_t.Atom_zerotied_anion_minus_two_symbol _ -> true
  | _ -> false
;;


(** {6 Upgrading.} *)

let atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_one_symbol smb_am1 =
A0as_v.atom_zerotied_anion_minus_one_symbol smb_am1
;;

let atom_zerotied_anion_minus_one_symbol_of_atom_zerotied_anion_minus_one_symbol smb_am1 =
A0am1s_v.atom_zerotied_anion_minus_one_symbol smb_am1
;;

let atom_zerotied_anion_minus_one_symbol_of_atom_zerotied_anion_minus_one_symbol smb_am1 =
A0am1s_v.atom_zerotied_anion_minus_one_symbol smb_am1
;;

let atom_zerotied_anion_minus_one_symbol_of_atom_zerotied_anion_minus_one_symbol smb_am1 =
A0am1s_v.atom_zerotied_anion_minus_one_symbol smb_am1
;;

let atom_zerotied_anion_minus_one_symbol_of_atom_zerotied_anion_minus_one_symbol smb_am1 =
A0am1s_v.atom_zerotied_anion_minus_one_symbol smb_am1
;;

let atom_zerotied_anion_minus_one_symbol_of_atom_zerotied_anion_minus_one_symbol smb_am1 =
A0am1s_v.atom_zerotied_anion_minus_one_symbol smb_am1
;;

let atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_two_symbol smb_am2 =
A0as_v.atom_zerotied_anion_minus_two_symbol smb_am2
;;

let atom_zerotied_anion_minus_two_symbol_of_atom_zerotied_anion_minus_two_symbol smb_am2 =
A0am2s_v.atom_zerotied_anion_minus_two_symbol smb_am2
;;

let atom_zerotied_anion_minus_two_symbol_of_atom_zerotied_anion_minus_two_symbol smb_am2 =
A0am2s_v.atom_zerotied_anion_minus_two_symbol smb_am2
;;



(** created by ./generator atom_zerotied_anion v symbol at 11:8 26 Apr 2011. *)



