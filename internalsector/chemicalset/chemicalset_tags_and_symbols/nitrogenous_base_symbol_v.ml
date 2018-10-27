(** {3 A Symbol for a Nitrogenous_base.} *)

let nam_mod = "Nitrogenous_base_symbol_v";;

(** {6 Modules.} *)

module Nbs_t = Nitrogenous_base_symbol_t
module Pus_t = Purine_base_symbol_t
module Pus_v = Purine_base_symbol_v
module Pys_t = Pyrimidine_base_symbol_t
module Pys_v = Pyrimidine_base_symbol_v

(** {6 Displaying.} *)

let name = function
  | Nbs_t.Purine_base_symbol smb_pur -> 
      Pus_v.name smb_pur
  | Nbs_t.Pyrimidine_base_symbol smb_pyr -> 
      Pys_v.name smb_pyr
;;

let print ppf = function
  | Nbs_t.Purine_base_symbol smb_pur -> 
      Pus_v.print ppf smb_pur
  | Nbs_t.Pyrimidine_base_symbol smb_pyr -> 
      Pys_v.print ppf smb_pyr
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found nitrogenous_base_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Purine_base from Nitrogenous_base.} *)

let purine_base_symbol_off_nitrogenous_base_symbol = function
  | Nbs_t.Purine_base_symbol smb_pur -> smb_pur
  | s ->  print_fatal_error
      "purine_base_symbol_off_nitrogenous_base_symbol"
      "Purine_base_symbol" (name s)
;;

(** {9 Extracting Adenosine from Purine_base from Nitrogenous_base.} *)

(* No Extraction from Adenosine 0. *)

(** {9 Extracting Guanine from Purine_base from Nitrogenous_base.} *)

(* No Extraction from Guanine 0. *)

(** {6 Extracting Pyrimidine_base from Nitrogenous_base.} *)

let pyrimidine_base_symbol_off_nitrogenous_base_symbol = function
  | Nbs_t.Pyrimidine_base_symbol smb_pyr -> smb_pyr
  | s ->  print_fatal_error
      "pyrimidine_base_symbol_off_nitrogenous_base_symbol"
      "Pyrimidine_base_symbol" (name s)
;;

(** {9 Extracting Cytosine from Pyrimidine_base from Nitrogenous_base.} *)

(* No Extraction from Cytosine 0. *)

(** {9 Extracting Uracil from Pyrimidine_base from Nitrogenous_base.} *)

(* No Extraction from Uracil 0. *)

(** {9 Extracting Thymine from Pyrimidine_base from Nitrogenous_base.} *)

(* No Extraction from Thymine 0. *)

(** {6 Querying.} *)

(** {6 Querying Purine_base in Nitrogenous_base.} *)

let is_purine_base_symbol_off_nitrogenous_base_symbol = function
  | Nbs_t.Purine_base_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Adenosine in Purine_base in Nitrogenous_base.} *)

(* No Query from Adenosine 0. *)


(** {9 Querying Guanine in Purine_base in Nitrogenous_base.} *)

(* No Query from Guanine 0. *)


(** {6 Querying Pyrimidine_base in Nitrogenous_base.} *)

let is_pyrimidine_base_symbol_off_nitrogenous_base_symbol = function
  | Nbs_t.Pyrimidine_base_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Cytosine in Pyrimidine_base in Nitrogenous_base.} *)

(* No Query from Cytosine 0. *)


(** {9 Querying Uracil in Pyrimidine_base in Nitrogenous_base.} *)

(* No Query from Uracil 0. *)


(** {9 Querying Thymine in Pyrimidine_base in Nitrogenous_base.} *)

(* No Query from Thymine 0. *)


(** {6 Upgrading from Purine_base to Nitrogenous_base.} *)

let nitrogenous_base_symbol_of_purine_base_symbol smb_pur =
  Nbs_t.Purine_base_symbol smb_pur
;;

(** {9 Upgrading from Adenosine through Purine_base to Nitrogenous_base.} *)

let adenosine = nitrogenous_base_symbol_of_purine_base_symbol Pus_t.Adenosine;;

(** {9 Upgrading from Guanine through Purine_base to Nitrogenous_base.} *)

let guanine = nitrogenous_base_symbol_of_purine_base_symbol Pus_t.Guanine;;

(** {6 Upgrading from Pyrimidine_base to Nitrogenous_base.} *)

let nitrogenous_base_symbol_of_pyrimidine_base_symbol smb_pyr =
  Nbs_t.Pyrimidine_base_symbol smb_pyr
;;

(** {9 Upgrading from Cytosine through Pyrimidine_base to Nitrogenous_base.} *)

let cytosine = nitrogenous_base_symbol_of_pyrimidine_base_symbol Pys_t.Cytosine;;

(** {9 Upgrading from Uracil through Pyrimidine_base to Nitrogenous_base.} *)

let uracil = nitrogenous_base_symbol_of_pyrimidine_base_symbol Pys_t.Uracil;;

(** {9 Upgrading from Thymine through Pyrimidine_base to Nitrogenous_base.} *)

let thymine = nitrogenous_base_symbol_of_pyrimidine_base_symbol Pys_t.Thymine;;

(** created by ./do_entitysum_symbol_v_ml.sh nitrogenous_base 12 January 2011. *)

