(** {3 Pripath functionalities A Symbol for a Hsbf Molbasis.} *)

let mod_nam = "Hsbf_molbasis_symbol_v";;

module Hms_t = Hsbf_molbasis_symbol_t

(** {6 Converting.} *)

let print ppf = function
  | Hms_t.Ao -> Format.fprintf ppf "Ao"
  | Hms_t.So -> Format.fprintf ppf "So"
;;

let name = function
  | Hms_t.Ao -> Format.sprintf "Ao"
  | Hms_t.So -> Format.sprintf "So"
;;
