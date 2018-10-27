(** {3 A Symbol for a Atom_zerotied_cation.} *)

let nam_cod = "atom_zerotied_cation_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v

module A0cp1s_v = Atom_zerotied_cation_plus_one_symbol_v
module A0cp2s_v = Atom_zerotied_cation_plus_two_symbol_v
module A0cp3s_v = Atom_zerotied_cation_plus_three_symbol_v


let name = function
  | A0cs_v smb_cp1 ->
      A0cp1s_v.name smb_cp1
  | A0cs_v smb_cp2 ->
      A0cp2s_v.name smb_cp2
  | A0cs_v smb_cp3 ->
      A0cp3s_v.name smb_cp3
;;


let print ppf = function
  | A0cs_v smb_cp1 ->
      A0cp1s_v.print ppf smb_cp1
  | A0cs_v smb_cp2 ->
      A0cp2s_v.print ppf smb_cp2
  | A0cs_v smb_cp3 ->
      A0cp3s_v.print ppf smb_cp3
;;


(** {6 Extracting.} *)

let atom_zerotied_cation_plus_one_symbol_off_atom_zerotied_cation_symbol = function
  | A0cs_v smb_cp1 -> smb_cp1
  | s -> Erm_v.print_fatal_error nam_cod
     "atom_zerotied_cation_plus_one_symbol_off_atom_zerotied_cation_symbol"
     "Atom_zerotied_cation_plus_one_symbol"
     (name s)
    "check"
;;

let atom_zerotied_cation_plus_two_symbol_off_atom_zerotied_cation_symbol = function
  | A0cs_v smb_cp2 -> smb_cp2
  | s -> Erm_v.print_fatal_error nam_cod
     "atom_zerotied_cation_plus_two_symbol_off_atom_zerotied_cation_symbol"
     "Atom_zerotied_cation_plus_two_symbol"
     (name s)
    "check"
;;

let atom_zerotied_cation_plus_three_symbol_off_atom_zerotied_cation_symbol = function
  | A0cs_v smb_cp3 -> smb_cp3
  | s -> Erm_v.print_fatal_error nam_cod
     "atom_zerotied_cation_plus_three_symbol_off_atom_zerotied_cation_symbol"
     "Atom_zerotied_cation_plus_three_symbol"
     (name s)
    "check"
;;


(** {6 Querying.} *)

let is_atom_zerotied_cation_plus_one_symbol_off_atom_zerotied_cation_symbol = function
  | Atom_zerotied_cation_symbol_t.Atom_zerotied_cation_plus_one_symbol _ -> true
  | _ -> false
;;

let is_atom_zerotied_cation_plus_two_symbol_off_atom_zerotied_cation_symbol = function
  | Atom_zerotied_cation_symbol_t.Atom_zerotied_cation_plus_two_symbol _ -> true
  | _ -> false
;;

let is_atom_zerotied_cation_plus_three_symbol_off_atom_zerotied_cation_symbol = function
  | Atom_zerotied_cation_symbol_t.Atom_zerotied_cation_plus_three_symbol _ -> true
  | _ -> false
;;


(** {6 Upgrading.} *)

let atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_one_symbol smb_cp1 =
A0cs_v.atom_zerotied_cation_plus_one_symbol smb_cp1
;;

let atom_zerotied_cation_plus_one_symbol_of_atom_zerotied_cation_plus_one_symbol smb_cp1 =
A0cp1s_v.atom_zerotied_cation_plus_one_symbol smb_cp1
;;

let atom_zerotied_cation_plus_one_symbol_of_atom_zerotied_cation_plus_one_symbol smb_cp1 =
A0cp1s_v.atom_zerotied_cation_plus_one_symbol smb_cp1
;;

let atom_zerotied_cation_plus_one_symbol_of_atom_zerotied_cation_plus_one_symbol smb_cp1 =
A0cp1s_v.atom_zerotied_cation_plus_one_symbol smb_cp1
;;

let atom_zerotied_cation_plus_one_symbol_of_atom_zerotied_cation_plus_one_symbol smb_cp1 =
A0cp1s_v.atom_zerotied_cation_plus_one_symbol smb_cp1
;;

let atom_zerotied_cation_plus_one_symbol_of_atom_zerotied_cation_plus_one_symbol smb_cp1 =
A0cp1s_v.atom_zerotied_cation_plus_one_symbol smb_cp1
;;

let atom_zerotied_cation_plus_one_symbol_of_atom_zerotied_cation_plus_one_symbol smb_cp1 =
A0cp1s_v.atom_zerotied_cation_plus_one_symbol smb_cp1
;;

let atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_two_symbol smb_cp2 =
A0cs_v.atom_zerotied_cation_plus_two_symbol smb_cp2
;;

let atom_zerotied_cation_plus_two_symbol_of_atom_zerotied_cation_plus_two_symbol smb_cp2 =
A0cp2s_v.atom_zerotied_cation_plus_two_symbol smb_cp2
;;

let atom_zerotied_cation_plus_two_symbol_of_atom_zerotied_cation_plus_two_symbol smb_cp2 =
A0cp2s_v.atom_zerotied_cation_plus_two_symbol smb_cp2
;;

let atom_zerotied_cation_plus_two_symbol_of_atom_zerotied_cation_plus_two_symbol smb_cp2 =
A0cp2s_v.atom_zerotied_cation_plus_two_symbol smb_cp2
;;

let atom_zerotied_cation_plus_two_symbol_of_atom_zerotied_cation_plus_two_symbol smb_cp2 =
A0cp2s_v.atom_zerotied_cation_plus_two_symbol smb_cp2
;;

let atom_zerotied_cation_plus_two_symbol_of_atom_zerotied_cation_plus_two_symbol smb_cp2 =
A0cp2s_v.atom_zerotied_cation_plus_two_symbol smb_cp2
;;

let atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_three_symbol smb_cp3 =
A0cs_v.atom_zerotied_cation_plus_three_symbol smb_cp3
;;

let atom_zerotied_cation_plus_three_symbol_of_atom_zerotied_cation_plus_three_symbol smb_cp3 =
A0cp3s_v.atom_zerotied_cation_plus_three_symbol smb_cp3
;;

let atom_zerotied_cation_plus_three_symbol_of_atom_zerotied_cation_plus_three_symbol smb_cp3 =
A0cp3s_v.atom_zerotied_cation_plus_three_symbol smb_cp3
;;



(** created by ./generator atom_zerotied_cation v symbol at 11:8 26 Apr 2011. *)



