(** {3 A Symbol for a Atom_zerotied_anion.} *)

let nam_mod = "Atom_zerotied_anion_symbol_v";;

(** {6 Modules.} *)

module Aans_t = Atom_zerotied_anion_symbol_t
module Am1s_t = Atom_zerotied_anion_minus_one_symbol_t
module Am1s_v = Atom_zerotied_anion_minus_one_symbol_v
module Am2s_t = Atom_zerotied_anion_minus_two_symbol_t
module Am2s_v = Atom_zerotied_anion_minus_two_symbol_v

(** {6 Displaying.} *)

let name = function
  | Aans_t.Atom_zerotied_anion_minus_one_symbol smb_am1 -> 
      Am1s_v.name smb_am1
  | Aans_t.Atom_zerotied_anion_minus_two_symbol smb_am2 -> 
      Am2s_v.name smb_am2
;;

let print ppf = function
  | Aans_t.Atom_zerotied_anion_minus_one_symbol smb_am1 -> 
      Am1s_v.print ppf smb_am1
  | Aans_t.Atom_zerotied_anion_minus_two_symbol smb_am2 -> 
      Am2s_v.print ppf smb_am2
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found atom_zerotied_anion_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Atom_zerotied_anion_minus_one from Atom_zerotied_anion.} *)

let atom_zerotied_anion_minus_one_symbol_off_atom_zerotied_anion_symbol = function
  | Aans_t.Atom_zerotied_anion_minus_one_symbol smb_am1 -> smb_am1
  | s ->  print_fatal_error
      "atom_zerotied_anion_minus_one_symbol_off_atom_zerotied_anion_symbol"
      "Atom_zerotied_anion_minus_one_symbol" (name s)
;;

(** {9 Extracting F_1m from Atom_zerotied_anion_minus_one from Atom_zerotied_anion.} *)

(* No Extraction from f_1m 0. *)

(** {9 Extracting H_1m from Atom_zerotied_anion_minus_one from Atom_zerotied_anion.} *)

(* No Extraction from h_1m 0. *)

(** {9 Extracting Cl_1m from Atom_zerotied_anion_minus_one from Atom_zerotied_anion.} *)

(* No Extraction from cl_1m 0. *)

(** {9 Extracting Br_1m from Atom_zerotied_anion_minus_one from Atom_zerotied_anion.} *)

(* No Extraction from br_1m 0. *)

(** {9 Extracting I_1m from Atom_zerotied_anion_minus_one from Atom_zerotied_anion.} *)

(* No Extraction from i_1m 0. *)

(** {6 Extracting Atom_zerotied_anion_minus_two from Atom_zerotied_anion.} *)

let atom_zerotied_anion_minus_two_symbol_off_atom_zerotied_anion_symbol = function
  | Aans_t.Atom_zerotied_anion_minus_two_symbol smb_am2 -> smb_am2
  | s ->  print_fatal_error
      "atom_zerotied_anion_minus_two_symbol_off_atom_zerotied_anion_symbol"
      "Atom_zerotied_anion_minus_two_symbol" (name s)
;;

(** {9 Extracting O_2m from Atom_zerotied_anion_minus_two from Atom_zerotied_anion.} *)

(* No Extraction from o_2m 0. *)

(** {9 Extracting S_2m from Atom_zerotied_anion_minus_two from Atom_zerotied_anion.} *)

(* No Extraction from s_2m 0. *)

(** {6 Querying.} *)

(** {6 Querying Atom_zerotied_anion_minus_one in Atom_zerotied_anion.} *)

let is_atom_zerotied_anion_minus_one_symbol_off_atom_zerotied_anion_symbol = function
  | Aans_t.Atom_zerotied_anion_minus_one_symbol _ -> true
  | _ -> false
;;

(** {9 Querying F_1m in Atom_zerotied_anion_minus_one in Atom_zerotied_anion.} *)

(* No Query from f_1m 0. *)


(** {9 Querying H_1m in Atom_zerotied_anion_minus_one in Atom_zerotied_anion.} *)

(* No Query from h_1m 0. *)


(** {9 Querying Cl_1m in Atom_zerotied_anion_minus_one in Atom_zerotied_anion.} *)

(* No Query from cl_1m 0. *)


(** {9 Querying Br_1m in Atom_zerotied_anion_minus_one in Atom_zerotied_anion.} *)

(* No Query from br_1m 0. *)


(** {9 Querying I_1m in Atom_zerotied_anion_minus_one in Atom_zerotied_anion.} *)

(* No Query from i_1m 0. *)


(** {6 Querying Atom_zerotied_anion_minus_two in Atom_zerotied_anion.} *)

let is_atom_zerotied_anion_minus_two_symbol_off_atom_zerotied_anion_symbol = function
  | Aans_t.Atom_zerotied_anion_minus_two_symbol _ -> true
  | _ -> false
;;

(** {9 Querying O_2m in Atom_zerotied_anion_minus_two in Atom_zerotied_anion.} *)

(* No Query from o_2m 0. *)


(** {9 Querying S_2m in Atom_zerotied_anion_minus_two in Atom_zerotied_anion.} *)

(* No Query from s_2m 0. *)


(** {6 Upgrading from Atom_zerotied_anion_minus_one to Atom_zerotied_anion.} *)

let atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_one_symbol smb_am1 =
  Aans_t.Atom_zerotied_anion_minus_one_symbol smb_am1
;;

(** {9 Upgrading from F_1m through Atom_zerotied_anion_minus_one to Atom_zerotied_anion.} *)

let f_1m = atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_one_symbol Am1s_t.F_1m;;

(** {9 Upgrading from H_1m through Atom_zerotied_anion_minus_one to Atom_zerotied_anion.} *)

let h_1m = atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_one_symbol Am1s_t.H_1m;;

(** {9 Upgrading from Cl_1m through Atom_zerotied_anion_minus_one to Atom_zerotied_anion.} *)

let cl_1m = atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_one_symbol Am1s_t.Cl_1m;;

(** {9 Upgrading from Br_1m through Atom_zerotied_anion_minus_one to Atom_zerotied_anion.} *)

let br_1m = atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_one_symbol Am1s_t.Br_1m;;

(** {9 Upgrading from I_1m through Atom_zerotied_anion_minus_one to Atom_zerotied_anion.} *)

let i_1m = atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_one_symbol Am1s_t.I_1m;;

(** {6 Upgrading from Atom_zerotied_anion_minus_two to Atom_zerotied_anion.} *)

let atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_two_symbol smb_am2 =
  Aans_t.Atom_zerotied_anion_minus_two_symbol smb_am2
;;

(** {9 Upgrading from O_2m through Atom_zerotied_anion_minus_two to Atom_zerotied_anion.} *)

let o_2m = atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_two_symbol Am2s_t.O_2m;;

(** {9 Upgrading from S_2m through Atom_zerotied_anion_minus_two to Atom_zerotied_anion.} *)

let s_2m = atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_two_symbol Am2s_t.S_2m;;

(** created by ./do_entitysum_symbol_v_ml.sh atom_zerotied_anion 12 January 2011. *)

