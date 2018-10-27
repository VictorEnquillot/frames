(** {3 A Symbol for a Molecule_forked.} *)

let nam_mod = "Molecule_forked_symbol_v";;

(** {6 Modules.} *)

module Mf1s_t = Molecule_forked_oneforked_symbol_t
module Mf1s_v = Molecule_forked_oneforked_symbol_v
module Mf2s_t = Molecule_forked_twoforked_symbol_t
module Mf2s_v = Molecule_forked_twoforked_symbol_v
module Mf3s_t = Molecule_forked_threeforked_symbol_t
module Mf3s_v = Molecule_forked_threeforked_symbol_v
module Mfms_t = Molecule_forked_moreforked_symbol_t
module Mfms_v = Molecule_forked_moreforked_symbol_v
module Mfs_t = Molecule_forked_symbol_t

(** {6 Displaying.} *)

let name = function
  | Mfs_t.Molecule_forked_oneforked_symbol smb_mfo -> 
      Mf1s_v.name smb_mfo
  | Mfs_t.Molecule_forked_twoforked_symbol smb_mf2 -> 
      Mf2s_v.name smb_mf2
  | Mfs_t.Molecule_forked_threeforked_symbol smb_mf3 -> 
      Mf3s_v.name smb_mf3
  | Mfs_t.Molecule_forked_moreforked_symbol smb_mfm -> 
      Mfms_v.name smb_mfm
;;

let print ppf = function
  | Mfs_t.Molecule_forked_oneforked_symbol smb_mfo -> 
      Mf1s_v.print ppf smb_mfo
  | Mfs_t.Molecule_forked_twoforked_symbol smb_mf2 -> 
      Mf2s_v.print ppf smb_mf2
  | Mfs_t.Molecule_forked_threeforked_symbol smb_mf3 -> 
      Mf3s_v.print ppf smb_mf3
  | Mfs_t.Molecule_forked_moreforked_symbol smb_mfm -> 
      Mfms_v.print ppf smb_mfm
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found molecule_forked_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Molecule_forked_oneforked from Molecule_forked.} *)

let molecule_forked_oneforked_symbol_off_molecule_forked_symbol = function
  | Mfs_t.Molecule_forked_oneforked_symbol smb_mfo -> smb_mfo
  | s ->  print_fatal_error
      "molecule_forked_oneforked_symbol_off_molecule_forked_symbol"
      "Molecule_forked_oneforked_symbol" (name s)
;;

(** {9 Extracting Guanidine from Molecule_forked_oneforked from Molecule_forked.} *)

(* No Extraction from Guanidine 0. *)

(** {6 Extracting Molecule_forked_twoforked from Molecule_forked.} *)

let molecule_forked_twoforked_symbol_off_molecule_forked_symbol = function
  | Mfs_t.Molecule_forked_twoforked_symbol smb_mf2 -> smb_mf2
  | s ->  print_fatal_error
      "molecule_forked_twoforked_symbol_off_molecule_forked_symbol"
      "Molecule_forked_twoforked_symbol" (name s)
;;

(** {9 Extracting Fake_2 from Molecule_forked_twoforked from Molecule_forked.} *)

(* No Extraction from Fake_2 0. *)

(** {6 Extracting Molecule_forked_threeforked from Molecule_forked.} *)

let molecule_forked_threeforked_symbol_off_molecule_forked_symbol = function
  | Mfs_t.Molecule_forked_threeforked_symbol smb_mf3 -> smb_mf3
  | s ->  print_fatal_error
      "molecule_forked_threeforked_symbol_off_molecule_forked_symbol"
      "Molecule_forked_threeforked_symbol" (name s)
;;

(** {9 Extracting Fake_3 from Molecule_forked_threeforked from Molecule_forked.} *)

(* No Extraction from Fake_3 0. *)

(** {6 Extracting Molecule_forked_moreforked from Molecule_forked.} *)

let molecule_forked_moreforked_symbol_off_molecule_forked_symbol = function
  | Mfs_t.Molecule_forked_moreforked_symbol smb_mfm -> smb_mfm
  | s ->  print_fatal_error
      "molecule_forked_moreforked_symbol_off_molecule_forked_symbol"
      "Molecule_forked_moreforked_symbol" (name s)
;;

(** {9 Extracting Fake_4 from Molecule_forked_moreforked from Molecule_forked.} *)

(* No Extraction from Fake_4 0. *)

(** {6 Querying.} *)

(** {6 Querying Molecule_forked_oneforked in Molecule_forked.} *)

let is_molecule_forked_oneforked_symbol_off_molecule_forked_symbol = function
  | Mfs_t.Molecule_forked_oneforked_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Guanidine in Molecule_forked_oneforked in Molecule_forked.} *)

(* No Query from Guanidine 0. *)


(** {6 Querying Molecule_forked_twoforked in Molecule_forked.} *)

let is_molecule_forked_twoforked_symbol_off_molecule_forked_symbol = function
  | Mfs_t.Molecule_forked_twoforked_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Fake_2 in Molecule_forked_twoforked in Molecule_forked.} *)

(* No Query from Fake_2 0. *)


(** {6 Querying Molecule_forked_threeforked in Molecule_forked.} *)

let is_molecule_forked_threeforked_symbol_off_molecule_forked_symbol = function
  | Mfs_t.Molecule_forked_threeforked_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Fake_3 in Molecule_forked_threeforked in Molecule_forked.} *)

(* No Query from Fake_3 0. *)


(** {6 Querying Molecule_forked_moreforked in Molecule_forked.} *)

let is_molecule_forked_moreforked_symbol_off_molecule_forked_symbol = function
  | Mfs_t.Molecule_forked_moreforked_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Fake_4 in Molecule_forked_moreforked in Molecule_forked.} *)

(* No Query from Fake_4 0. *)


(** {6 Upgrading from Molecule_forked_oneforked to Molecule_forked.} *)

let molecule_forked_symbol_of_molecule_forked_oneforked_symbol smb_mfo =
  Mfs_t.Molecule_forked_oneforked_symbol smb_mfo
;;

(** {9 Upgrading from Guanidine through Molecule_forked_oneforked to Molecule_forked.} *)

let guanidine = molecule_forked_symbol_of_molecule_forked_oneforked_symbol Mf1s_t.Guanidine;;

(** {6 Upgrading from Molecule_forked_twoforked to Molecule_forked.} *)

let molecule_forked_symbol_of_molecule_forked_twoforked_symbol smb_mf2 =
  Mfs_t.Molecule_forked_twoforked_symbol smb_mf2
;;

(** {9 Upgrading from Fake_2 through Molecule_forked_twoforked to Molecule_forked.} *)

let fake_2 = molecule_forked_symbol_of_molecule_forked_twoforked_symbol Mf2s_t.Fake_2;;

(** {6 Upgrading from Molecule_forked_threeforked to Molecule_forked.} *)

let molecule_forked_symbol_of_molecule_forked_threeforked_symbol smb_mf3 =
  Mfs_t.Molecule_forked_threeforked_symbol smb_mf3
;;

(** {9 Upgrading from Fake_3 through Molecule_forked_threeforked to Molecule_forked.} *)

let fake_3 = molecule_forked_symbol_of_molecule_forked_threeforked_symbol Mf3s_t.Fake_3;;

(** {6 Upgrading from Molecule_forked_moreforked to Molecule_forked.} *)

let molecule_forked_symbol_of_molecule_forked_moreforked_symbol smb_mfm =
  Mfs_t.Molecule_forked_moreforked_symbol smb_mfm
;;

(** {9 Upgrading from Fake_4 through Molecule_forked_moreforked to Molecule_forked.} *)

let fake_4 = molecule_forked_symbol_of_molecule_forked_moreforked_symbol Mfms_t.Fake_4;;

(** created by ./do_entitysum_symbol_v_ml.sh molecule_forked 12 January 2011. *)

