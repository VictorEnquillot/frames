(** {3 A Symbol for a Atom_zerotied_cation.} *)

let nam_mod = "Atom_zerotied_cation_symbol_v";;

(** {6 Modules.} *)

module Ac1s_t = Atom_zerotied_cation_plus_one_symbol_t
module Ac1s_v = Atom_zerotied_cation_plus_one_symbol_v
module Ac2s_t = Atom_zerotied_cation_plus_two_symbol_t
module Ac2s_v = Atom_zerotied_cation_plus_two_symbol_v
module Ac3s_t = Atom_zerotied_cation_plus_three_symbol_t
module Ac3s_v = Atom_zerotied_cation_plus_three_symbol_v
module Acns_t = Atom_zerotied_cation_symbol_t

(** {6 Displaying.} *)

let name = function
  | Acns_t.Atom_zerotied_cation_plus_one_symbol smb_ac1 -> 
      Ac1s_v.name smb_ac1
  | Acns_t.Atom_zerotied_cation_plus_two_symbol smb_ac2 -> 
      Ac2s_v.name smb_ac2
  | Acns_t.Atom_zerotied_cation_plus_three_symbol smb_ac3 -> 
      Ac3s_v.name smb_ac3
;;

let print ppf = function
  | Acns_t.Atom_zerotied_cation_plus_one_symbol smb_ac1 -> 
      Ac1s_v.print ppf smb_ac1
  | Acns_t.Atom_zerotied_cation_plus_two_symbol smb_ac2 -> 
      Ac2s_v.print ppf smb_ac2
  | Acns_t.Atom_zerotied_cation_plus_three_symbol smb_ac3 -> 
      Ac3s_v.print ppf smb_ac3
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found atom_zerotied_cation_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Atom_zerotied_cation_plus_one from Atom_zerotied_cation.} *)

let atom_zerotied_cation_plus_one_symbol_off_atom_zerotied_cation_symbol = function
  | Acns_t.Atom_zerotied_cation_plus_one_symbol smb_ac1 -> smb_ac1
  | s ->  print_fatal_error
      "atom_zerotied_cation_plus_one_symbol_off_atom_zerotied_cation_symbol"
      "Atom_zerotied_cation_plus_one_symbol" (name s)
;;

(** {9 Extracting H_1p from Atom_zerotied_cation_plus_one from Atom_zerotied_cation.} *)

(* No Extraction from h_1p 0. *)

(** {9 Extracting K_1p from Atom_zerotied_cation_plus_one from Atom_zerotied_cation.} *)

(* No Extraction from k_1p 0. *)

(** {9 Extracting Li_1p from Atom_zerotied_cation_plus_one from Atom_zerotied_cation.} *)

(* No Extraction from li_1p 0. *)

(** {9 Extracting Na_1p from Atom_zerotied_cation_plus_one from Atom_zerotied_cation.} *)

(* No Extraction from na_1p 0. *)

(** {9 Extracting Ni_1p from Atom_zerotied_cation_plus_one from Atom_zerotied_cation.} *)

(* No Extraction from ni_1p 0. *)

(** {9 Extracting Cu_1p from Atom_zerotied_cation_plus_one from Atom_zerotied_cation.} *)

(* No Extraction from cu_1p 0. *)

(** {6 Extracting Atom_zerotied_cation_plus_two from Atom_zerotied_cation.} *)

let atom_zerotied_cation_plus_two_symbol_off_atom_zerotied_cation_symbol = function
  | Acns_t.Atom_zerotied_cation_plus_two_symbol smb_ac2 -> smb_ac2
  | s ->  print_fatal_error
      "atom_zerotied_cation_plus_two_symbol_off_atom_zerotied_cation_symbol"
      "Atom_zerotied_cation_plus_two_symbol" (name s)
;;

(** {9 Extracting Mg_2p from Atom_zerotied_cation_plus_two from Atom_zerotied_cation.} *)

(* No Extraction from mg_2p 0. *)

(** {9 Extracting Ca_2p from Atom_zerotied_cation_plus_two from Atom_zerotied_cation.} *)

(* No Extraction from ca_2p 0. *)

(** {9 Extracting Fe_2p from Atom_zerotied_cation_plus_two from Atom_zerotied_cation.} *)

(* No Extraction from fe_2p 0. *)

(** {9 Extracting Zn_2p from Atom_zerotied_cation_plus_two from Atom_zerotied_cation.} *)

(* No Extraction from zn_2p 0. *)

(** {9 Extracting Cu_2p from Atom_zerotied_cation_plus_two from Atom_zerotied_cation.} *)

(* No Extraction from cu_2p 0. *)

(** {6 Extracting Atom_zerotied_cation_plus_three from Atom_zerotied_cation.} *)

let atom_zerotied_cation_plus_three_symbol_off_atom_zerotied_cation_symbol = function
  | Acns_t.Atom_zerotied_cation_plus_three_symbol smb_ac3 -> smb_ac3
  | s ->  print_fatal_error
      "atom_zerotied_cation_plus_three_symbol_off_atom_zerotied_cation_symbol"
      "Atom_zerotied_cation_plus_three_symbol" (name s)
;;

(** {9 Extracting Fe_3p from Atom_zerotied_cation_plus_three from Atom_zerotied_cation.} *)

(* No Extraction from fe_3p 0. *)

(** {9 Extracting Ni_3p from Atom_zerotied_cation_plus_three from Atom_zerotied_cation.} *)

(* No Extraction from ni_3p 0. *)

(** {6 Querying.} *)

(** {6 Querying Atom_zerotied_cation_plus_one in Atom_zerotied_cation.} *)

let is_atom_zerotied_cation_plus_one_symbol_off_atom_zerotied_cation_symbol = function
  | Acns_t.Atom_zerotied_cation_plus_one_symbol _ -> true
  | _ -> false
;;

(** {9 Querying H_1p in Atom_zerotied_cation_plus_one in Atom_zerotied_cation.} *)

(* No Query from h_1p 0. *)


(** {9 Querying K_1p in Atom_zerotied_cation_plus_one in Atom_zerotied_cation.} *)

(* No Query from k_1p 0. *)


(** {9 Querying Li_1p in Atom_zerotied_cation_plus_one in Atom_zerotied_cation.} *)

(* No Query from li_1p 0. *)


(** {9 Querying Na_1p in Atom_zerotied_cation_plus_one in Atom_zerotied_cation.} *)

(* No Query from na_1p 0. *)


(** {9 Querying Ni_1p in Atom_zerotied_cation_plus_one in Atom_zerotied_cation.} *)

(* No Query from ni_1p 0. *)


(** {9 Querying Cu_1p in Atom_zerotied_cation_plus_one in Atom_zerotied_cation.} *)

(* No Query from cu_1p 0. *)


(** {6 Querying Atom_zerotied_cation_plus_two in Atom_zerotied_cation.} *)

let is_atom_zerotied_cation_plus_two_symbol_off_atom_zerotied_cation_symbol = function
  | Acns_t.Atom_zerotied_cation_plus_two_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Mg_2p in Atom_zerotied_cation_plus_two in Atom_zerotied_cation.} *)

(* No Query from mg_2p 0. *)


(** {9 Querying Ca_2p in Atom_zerotied_cation_plus_two in Atom_zerotied_cation.} *)

(* No Query from ca_2p 0. *)


(** {9 Querying Fe_2p in Atom_zerotied_cation_plus_two in Atom_zerotied_cation.} *)

(* No Query from fe_2p 0. *)


(** {9 Querying Zn_2p in Atom_zerotied_cation_plus_two in Atom_zerotied_cation.} *)

(* No Query from zn_2p 0. *)


(** {9 Querying Cu_2p in Atom_zerotied_cation_plus_two in Atom_zerotied_cation.} *)

(* No Query from cu_2p 0. *)


(** {6 Querying Atom_zerotied_cation_plus_three in Atom_zerotied_cation.} *)

let is_atom_zerotied_cation_plus_three_symbol_off_atom_zerotied_cation_symbol = function
  | Acns_t.Atom_zerotied_cation_plus_three_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Fe_3p in Atom_zerotied_cation_plus_three in Atom_zerotied_cation.} *)

(* No Query from fe_3p 0. *)


(** {9 Querying Ni_3p in Atom_zerotied_cation_plus_three in Atom_zerotied_cation.} *)

(* No Query from ni_3p 0. *)


(** {6 Upgrading from Atom_zerotied_cation_plus_one to Atom_zerotied_cation.} *)

let atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_one_symbol smb_ac1 =
  Acns_t.Atom_zerotied_cation_plus_one_symbol smb_ac1
;;

(** {9 Upgrading from H_1p through Atom_zerotied_cation_plus_one to Atom_zerotied_cation.} *)

let h_1p = atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_one_symbol Ac1s_t.H_1p;;

(** {9 Upgrading from K_1p through Atom_zerotied_cation_plus_one to Atom_zerotied_cation.} *)

let k_1p = atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_one_symbol Ac1s_t.K_1p;;

(** {9 Upgrading from Li_1p through Atom_zerotied_cation_plus_one to Atom_zerotied_cation.} *)

let li_1p = atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_one_symbol Ac1s_t.Li_1p;;

(** {9 Upgrading from Na_1p through Atom_zerotied_cation_plus_one to Atom_zerotied_cation.} *)

let na_1p = atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_one_symbol Ac1s_t.Na_1p;;

(** {9 Upgrading from Ni_1p through Atom_zerotied_cation_plus_one to Atom_zerotied_cation.} *)

let ni_1p = atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_one_symbol Ac1s_t.Ni_1p;;

(** {9 Upgrading from Cu_1p through Atom_zerotied_cation_plus_one to Atom_zerotied_cation.} *)

let cu_1p = atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_one_symbol Ac1s_t.Cu_1p;;

(** {6 Upgrading from Atom_zerotied_cation_plus_two to Atom_zerotied_cation.} *)

let atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_two_symbol smb_ac2 =
  Acns_t.Atom_zerotied_cation_plus_two_symbol smb_ac2
;;

(** {9 Upgrading from Mg_2p through Atom_zerotied_cation_plus_two to Atom_zerotied_cation.} *)

let mg_2p = atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_two_symbol Ac2s_t.Mg_2p;;

(** {9 Upgrading from Ca_2p through Atom_zerotied_cation_plus_two to Atom_zerotied_cation.} *)

let ca_2p = atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_two_symbol Ac2s_t.Ca_2p;;

(** {9 Upgrading from Fe_2p through Atom_zerotied_cation_plus_two to Atom_zerotied_cation.} *)

let fe_2p = atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_two_symbol Ac2s_t.Fe_2p;;

(** {9 Upgrading from Zn_2p through Atom_zerotied_cation_plus_two to Atom_zerotied_cation.} *)

let zn_2p = atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_two_symbol Ac2s_t.Zn_2p;;

(** {9 Upgrading from Cu_2p through Atom_zerotied_cation_plus_two to Atom_zerotied_cation.} *)

let cu_2p = atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_two_symbol Ac2s_t.Cu_2p;;

(** {6 Upgrading from Atom_zerotied_cation_plus_three to Atom_zerotied_cation.} *)

let atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_three_symbol smb_ac3 =
  Acns_t.Atom_zerotied_cation_plus_three_symbol smb_ac3
;;

(** {9 Upgrading from Fe_3p through Atom_zerotied_cation_plus_three to Atom_zerotied_cation.} *)

let fe_3p = atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_three_symbol Ac3s_t.Fe_3p;;

(** {9 Upgrading from Ni_3p through Atom_zerotied_cation_plus_three to Atom_zerotied_cation.} *)

let ni_3p = atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_three_symbol Ac3s_t.Ni_3p;;

(** created by ./do_entitysum_symbol_v_ml.sh atom_zerotied_cation 12 January 2011. *)

