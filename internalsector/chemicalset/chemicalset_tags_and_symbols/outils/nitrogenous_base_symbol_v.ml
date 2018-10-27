(** {3 A Symbol for a Nitrogenous_base.} *)

let nam_cod = "nitrogenous_base_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v

module Pus_v = Purine_base_symbol_v
module Pys_v = Pyrimidine_base_symbol_v


let name = function
  | Nbs_v smb_pub ->
      Pus_v.name smb_pub
  | Nbs_v smb_pyb ->
      Pys_v.name smb_pyb
;;


let print ppf = function
  | Nbs_v smb_pub ->
      Pus_v.print ppf smb_pub
  | Nbs_v smb_pyb ->
      Pys_v.print ppf smb_pyb
;;


(** {6 Extracting.} *)

let purine_base_symbol_off_nitrogenous_base_symbol = function
  | Nbs_v smb_pub -> smb_pub
  | s -> Erm_v.print_fatal_error nam_cod
     "purine_base_symbol_off_nitrogenous_base_symbol"
     "Purine_base_symbol"
     (name s)
    "check"
;;

let pyrimidine_base_symbol_off_nitrogenous_base_symbol = function
  | Nbs_v smb_pyb -> smb_pyb
  | s -> Erm_v.print_fatal_error nam_cod
     "pyrimidine_base_symbol_off_nitrogenous_base_symbol"
     "Pyrimidine_base_symbol"
     (name s)
    "check"
;;


(** {6 Querying.} *)

let is_purine_base_symbol_off_nitrogenous_base_symbol = function
  | Nitrogenous_base_symbol_t.Purine_base_symbol _ -> true
  | _ -> false
;;

let is_pyrimidine_base_symbol_off_nitrogenous_base_symbol = function
  | Nitrogenous_base_symbol_t.Pyrimidine_base_symbol _ -> true
  | _ -> false
;;


(** {6 Upgrading.} *)

let nitrogenous_base_symbol_of_purine_base_symbol smb_pub =
Nbs_v.purine_base_symbol smb_pub
;;

let purine_base_symbol_of_purine_base_symbol smb_pub =
Pus_v.purine_base_symbol smb_pub
;;

let purine_base_symbol_of_purine_base_symbol smb_pub =
Pus_v.purine_base_symbol smb_pub
;;

let nitrogenous_base_symbol_of_pyrimidine_base_symbol smb_pyb =
Nbs_v.pyrimidine_base_symbol smb_pyb
;;

let pyrimidine_base_symbol_of_pyrimidine_base_symbol smb_pyb =
Pys_v.pyrimidine_base_symbol smb_pyb
;;

let pyrimidine_base_symbol_of_pyrimidine_base_symbol smb_pyb =
Pys_v.pyrimidine_base_symbol smb_pyb
;;

let pyrimidine_base_symbol_of_pyrimidine_base_symbol smb_pyb =
Pys_v.pyrimidine_base_symbol smb_pyb
;;



(** created by ./generator nitrogenous_base v symbol at 11:8 26 Apr 2011. *)



