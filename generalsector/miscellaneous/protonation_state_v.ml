(** {3 The Protonation_statefunctionalities for polar chemical groups and Sidechains.} *)

let nam_mod = "Protonation_state_v";;

module PrS_t = Protonation_state_t

(** {6 Abbreviations.} *)

let a = PrS_t.Absent;; (* No such capability *)
let h = PrS_t.Protonated;;
let m = PrS_t.Minus;;
let n = PrS_t.Neutral;;
let p = PrS_t.Plus;;
let z = PrS_t.Zwitterion;;

let od = PrS_t.OD;;    (* Asp de-Protonated on OD2 *)
let odh = PrS_t.ODH;;  (* Asp Protonated on OD2 *)
let oe = PrS_t.OE;;    (* Glu de-Protonated on OE2 *)
let oeh = PrS_t.OEH;;  (* Glu Protonated on OE2 *)
let nde = PrS_t.NDE;;  (* His de-Protonated on ND1 and NE2 *)
let ndeh = PrS_t.NDEH;;(* His Protonated on ND1 and NE2 *)
let ndh = PrS_t.NDH;;  (* His Protonated on ND1 and de-Protonated on NE2 *)
let ne = PrS_t.NE;;    (* Arg de-Protonated on NE *)
let neh = PrS_t.NEH;;  (* Arg, His Protonated on NE2 and His de-Protonated on ND1 *)
let nz = PrS_t.NZ;;    (* Lys de-Protonated on NZ *)
let nzh = PrS_t.NZH;;  (* Lys Protonated on NZ *)

(** {6 Converting.} *)

let print ppf = function
   | PrS_t.Absent -> Format.fprintf ppf "Absent"
   | PrS_t.Neutral -> Format.fprintf ppf "Neutral"
   | PrS_t.Plus -> Format.fprintf ppf "Plus"
   | PrS_t.Minus -> Format.fprintf ppf "Minus"
   | PrS_t.Zwitterion -> Format.fprintf ppf "Zwitterion"
   | PrS_t.Protonated -> Format.fprintf ppf "Protonated"
   | PrS_t.Deprotonated -> Format.fprintf ppf "Deprotonated"
   | PrS_t.NE -> Format.fprintf ppf "NE"
   | PrS_t.NDE -> Format.fprintf ppf "NDE"
   | PrS_t.NDH -> Format.fprintf ppf "NDH"
   | PrS_t.NEH -> Format.fprintf ppf "NEH"
   | PrS_t.NDEH -> Format.fprintf ppf "NDEH"
   | PrS_t.NZ -> Format.fprintf ppf "NZ"
   | PrS_t.NZH -> Format.fprintf ppf "NZH"
   | PrS_t.OD -> Format.fprintf ppf "OD"
   | PrS_t.OE -> Format.fprintf ppf "OE"
   | PrS_t.ODH -> Format.fprintf ppf "ODH"
   | PrS_t.OEH -> Format.fprintf ppf "OEH"
;;

let name = function
   | PrS_t.Absent -> Format.sprintf "A"
   | PrS_t.Neutral -> Format.sprintf "N"
   | PrS_t.Plus -> Format.sprintf "P"
   | PrS_t.Minus -> Format.sprintf "M"
   | PrS_t.Zwitterion -> Format.sprintf "Z"
   | PrS_t.Protonated -> Format.sprintf "H"
   | PrS_t.Deprotonated -> Format.sprintf "D"
   | PrS_t.NE -> Format.sprintf "NE"
   | PrS_t.NDE -> Format.sprintf "NDE"
   | PrS_t.NDH -> Format.sprintf "NDH"
   | PrS_t.NEH -> Format.sprintf "NEH"
   | PrS_t.NDEH -> Format.sprintf "NDEH"
   | PrS_t.NZ -> Format.sprintf "NZ"
   | PrS_t.NZH -> Format.sprintf "NZH"
   | PrS_t.OD -> Format.sprintf "OD"
   | PrS_t.OE -> Format.sprintf "OE"
   | PrS_t.ODH -> Format.sprintf "ODH"
   | PrS_t.OEH -> Format.sprintf "OEH"
;;

let string_of_protonation_state pst =
  Format.fprintf Format.str_formatter "%a" print pst; 
  Format.flush_str_formatter ()
;;

let print_error_protonation_state pst mdn her =
  Format.fprintf Format.err_formatter 
  "@.@[<hov>%s.%s: --- Fatal Error ---@.\
    unkown Protonation_state >%a<@.\
    Probably missing in menu.@]@." 
    mdn her 
    print pst 
;;

let fail_protonation_state pst mdn her =
  print_error_protonation_state pst mdn her;
  assert false
;;

let print_error_string str mdn her =
  Format.fprintf Format.err_formatter 
  "@.@[<hov>%s.%s: --- Fatal Error ---@.\
  string >%s< is not a Protonation_state State symbol@.\
  Please add it to the menu above.@]@." 
  mdn str her
;;

let fail_string str mdn her =
  print_error_string str mdn her;
  assert false 
;;

let protonation_state_of_string = function  
  | "Absent" -> PrS_t.Absent
  | "Neutral" -> PrS_t.Neutral
  | "Zwitterion" -> PrS_t.Zwitterion
  | "OD" -> PrS_t.OD
  | "ODH" -> PrS_t.ODH
  | "OE" -> PrS_t.OE
  | "OEH" -> PrS_t.OEH
  | "NDE" -> PrS_t.NDE
  | "NDEH" -> PrS_t.NDEH
  | "NDH" -> PrS_t.NDH
  | "NE" -> PrS_t.NE
  | "NEH" -> PrS_t.NEH
  | "NZ" -> PrS_t.NZ
  | "NZH" -> PrS_t.NZH
  | str -> fail_string str nam_mod "protonation_state_of_string"
;;

let read ib =
  Scanf.bscanf ib "%s" (function str -> protonation_state_of_string str)
;;
