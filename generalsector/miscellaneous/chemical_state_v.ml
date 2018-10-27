(** {3 The State functionalities for a Chemical_state entity.} *)

let nam_mod = "Chemical_state_v";;

(** {6 Modules.} *)

module ChS_t = Chemical_state_t
module EvS_v = Environment_state_v
module PrS_v = Protonation_state_v

(** {6 Making.} *)

(** {6 Extracting.} *)

let protonation_state_off_chemical_state = function
  | ChS_t.Protonation_state pst -> pst
  | _ -> 
      failwith ("Not_Protonation_state:protonation_state_of_chemical_state") 
;;

let environment_state_off_chemical_state = function
  | ChS_t.Environment_state est -> est
  | _ -> 
      failwith ("Not_Environment_state:environment_state_of_chemical_state") 
;;

(** {6 Abbreviations.} *)

let a = ChS_t.Protonation_state PrS_v.a;;
let h = ChS_t.Protonation_state PrS_v.h;;
let m = ChS_t.Protonation_state PrS_v.m;;
let n = ChS_t.Protonation_state PrS_v.n;;
let p = ChS_t.Protonation_state PrS_v.p;;
let z = ChS_t.Protonation_state PrS_v.z;;

let od = ChS_t.Protonation_state PrS_v.od;;
let odh = ChS_t.Protonation_state PrS_v.odh;;
let oe = ChS_t.Protonation_state PrS_v.oe;;
let oeh = ChS_t.Protonation_state PrS_v.oeh;;
let nde = ChS_t.Protonation_state PrS_v.nde;;
let ndeh = ChS_t.Protonation_state PrS_v.ndeh;;
let ndh = ChS_t.Protonation_state PrS_v.ndh;;
let ne = ChS_t.Protonation_state PrS_v.ne;;
let neh = ChS_t.Protonation_state PrS_v.neh;;
let nz = ChS_t.Protonation_state PrS_v.nz;;
let nzh = ChS_t.Protonation_state PrS_v.nzh;;

let v = ChS_t.Environment_state EvS_v.v;;
let mi = ChS_t.Environment_state EvS_v.mi;;
let mb = ChS_t.Environment_state EvS_v.mb;;
let v = ChS_t.Environment_state EvS_v.v;;
let w = ChS_t.Environment_state EvS_v.w;;

(** {6 Converting.} *)

let rec print ppf = function
  | ChS_t.Protonation_state pst -> 
      Format.fprintf ppf "P_%a" PrS_v.print pst
  | ChS_t.Environment_state est ->
      Format.fprintf ppf "E_%a" EvS_v.print est
;;

let rec name = function
  | ChS_t.Protonation_state pst -> 
      Format.sprintf "%s" (PrS_v.name pst)
  | ChS_t.Environment_state est ->
      Format.sprintf "%s" (EvS_v.name est)
;;



