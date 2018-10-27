(** {3 A Symbol for a Atom_onetied.} *)

let nam_mod = "Atom_onetied_symbol_v";;

(** {6 Modules.} *)

module Aocs_t = Atom_onetied_conjugated_symbol_t
module Aocs_v = Atom_onetied_conjugated_symbol_v
module Aods_t = Atom_onetied_double_symbol_t
module Aods_v = Atom_onetied_double_symbol_v
module Aons_t = Atom_onetied_symbol_t
module Aoss_t = Atom_onetied_single_symbol_t
module Aoss_v = Atom_onetied_single_symbol_v
module Aots_t = Atom_onetied_triple_symbol_t
module Aots_v = Atom_onetied_triple_symbol_v

(** {6 Displaying.} *)

let name = function
  | Aons_t.Atom_onetied_conjugated_symbol smb_aoc -> 
      Aocs_v.name smb_aoc
  | Aons_t.Atom_onetied_double_symbol smb_aod -> 
      Aods_v.name smb_aod
  | Aons_t.Atom_onetied_single_symbol smb_aos -> 
      Aoss_v.name smb_aos
  | Aons_t.Atom_onetied_triple_symbol smb_aot -> 
      Aots_v.name smb_aot
;;

let print ppf = function
  | Aons_t.Atom_onetied_conjugated_symbol smb_aoc -> 
      Aocs_v.print ppf smb_aoc
  | Aons_t.Atom_onetied_double_symbol smb_aod -> 
      Aods_v.print ppf smb_aod
  | Aons_t.Atom_onetied_single_symbol smb_aos -> 
      Aoss_v.print ppf smb_aos
  | Aons_t.Atom_onetied_triple_symbol smb_aot -> 
      Aots_v.print ppf smb_aot
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found atom_onetied_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Atom_onetied_conjugated from Atom_onetied.} *)

let atom_onetied_conjugated_symbol_off_atom_onetied_symbol = function
  | Aons_t.Atom_onetied_conjugated_symbol smb_aoc -> smb_aoc
  | s ->  print_fatal_error
      "atom_onetied_conjugated_symbol_off_atom_onetied_symbol"
      "Atom_onetied_conjugated_symbol" (name s)
;;

(** {9 Extracting O_c from Atom_onetied_conjugated from Atom_onetied.} *)

(* No Extraction from o_c 0. *)

(** {6 Extracting Atom_onetied_double from Atom_onetied.} *)

let atom_onetied_double_symbol_off_atom_onetied_symbol = function
  | Aons_t.Atom_onetied_double_symbol smb_aod -> smb_aod
  | s ->  print_fatal_error
      "atom_onetied_double_symbol_off_atom_onetied_symbol"
      "Atom_onetied_double_symbol" (name s)
;;

(** {9 Extracting O_d from Atom_onetied_double from Atom_onetied.} *)

(* No Extraction from o_d 0. *)

(** {6 Extracting Atom_onetied_single from Atom_onetied.} *)

let atom_onetied_single_symbol_off_atom_onetied_symbol = function
  | Aons_t.Atom_onetied_single_symbol smb_aos -> smb_aos
  | s ->  print_fatal_error
      "atom_onetied_single_symbol_off_atom_onetied_symbol"
      "Atom_onetied_single_symbol" (name s)
;;

(** {9 Extracting H_s from Atom_onetied_single from Atom_onetied.} *)

(* No Extraction from h_s 0. *)

(** {9 Extracting F_s from Atom_onetied_single from Atom_onetied.} *)

(* No Extraction from f_s 0. *)

(** {6 Extracting Atom_onetied_triple from Atom_onetied.} *)

let atom_onetied_triple_symbol_off_atom_onetied_symbol = function
  | Aons_t.Atom_onetied_triple_symbol smb_aot -> smb_aot
  | s ->  print_fatal_error
      "atom_onetied_triple_symbol_off_atom_onetied_symbol"
      "Atom_onetied_triple_symbol" (name s)
;;

(** {9 Extracting N_t from Atom_onetied_triple from Atom_onetied.} *)

(* No Extraction from n_t 0. *)

(** {9 Extracting O_t from Atom_onetied_triple from Atom_onetied.} *)

(* No Extraction from o_t 0. *)

(** {6 Querying.} *)

(** {6 Querying Atom_onetied_conjugated in Atom_onetied.} *)

let is_atom_onetied_conjugated_symbol_off_atom_onetied_symbol = function
  | Aons_t.Atom_onetied_conjugated_symbol _ -> true
  | _ -> false
;;

(** {9 Querying O_c in Atom_onetied_conjugated in Atom_onetied.} *)

(* No Query from o_c 0. *)


(** {6 Querying Atom_onetied_double in Atom_onetied.} *)

let is_atom_onetied_double_symbol_off_atom_onetied_symbol = function
  | Aons_t.Atom_onetied_double_symbol _ -> true
  | _ -> false
;;

(** {9 Querying O_d in Atom_onetied_double in Atom_onetied.} *)

(* No Query from o_d 0. *)


(** {6 Querying Atom_onetied_single in Atom_onetied.} *)

let is_atom_onetied_single_symbol_off_atom_onetied_symbol = function
  | Aons_t.Atom_onetied_single_symbol _ -> true
  | _ -> false
;;

(** {9 Querying H_s in Atom_onetied_single in Atom_onetied.} *)

(* No Query from h_s 0. *)


(** {9 Querying F_s in Atom_onetied_single in Atom_onetied.} *)

(* No Query from f_s 0. *)


(** {6 Querying Atom_onetied_triple in Atom_onetied.} *)

let is_atom_onetied_triple_symbol_off_atom_onetied_symbol = function
  | Aons_t.Atom_onetied_triple_symbol _ -> true
  | _ -> false
;;

(** {9 Querying N_t in Atom_onetied_triple in Atom_onetied.} *)

(* No Query from n_t 0. *)


(** {9 Querying O_t in Atom_onetied_triple in Atom_onetied.} *)

(* No Query from o_t 0. *)


(** {6 Upgrading from Atom_onetied_conjugated to Atom_onetied.} *)

let atom_onetied_symbol_of_atom_onetied_conjugated_symbol smb_aoc =
  Aons_t.Atom_onetied_conjugated_symbol smb_aoc
;;

(** {9 Upgrading from O_c through Atom_onetied_conjugated to Atom_onetied.} *)

let o_c = atom_onetied_symbol_of_atom_onetied_conjugated_symbol Aocs_t.O_c;;

(** {6 Upgrading from Atom_onetied_double to Atom_onetied.} *)

let atom_onetied_symbol_of_atom_onetied_double_symbol smb_aod =
  Aons_t.Atom_onetied_double_symbol smb_aod
;;

(** {9 Upgrading from O_d through Atom_onetied_double to Atom_onetied.} *)

let o_d = atom_onetied_symbol_of_atom_onetied_double_symbol Aods_t.O_d;;

(** {6 Upgrading from Atom_onetied_single to Atom_onetied.} *)

let atom_onetied_symbol_of_atom_onetied_single_symbol smb_aos =
  Aons_t.Atom_onetied_single_symbol smb_aos
;;

(** {9 Upgrading from H_s through Atom_onetied_single to Atom_onetied.} *)

let h_s = atom_onetied_symbol_of_atom_onetied_single_symbol Aoss_t.H_s;;

(** {9 Upgrading from F_s through Atom_onetied_single to Atom_onetied.} *)

let f_s = atom_onetied_symbol_of_atom_onetied_single_symbol Aoss_t.F_s;;

(** {6 Upgrading from Atom_onetied_triple to Atom_onetied.} *)

let atom_onetied_symbol_of_atom_onetied_triple_symbol smb_aot =
  Aons_t.Atom_onetied_triple_symbol smb_aot
;;

(** {9 Upgrading from N_t through Atom_onetied_triple to Atom_onetied.} *)

let n_t = atom_onetied_symbol_of_atom_onetied_triple_symbol Aots_t.N_t;;

(** {9 Upgrading from O_t through Atom_onetied_triple to Atom_onetied.} *)

let o_t = atom_onetied_symbol_of_atom_onetied_triple_symbol Aots_t.O_t;;

(** created by ./do_entitysum_symbol_v_ml.sh atom_onetied 12 January 2011. *)

