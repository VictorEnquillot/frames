(** {3 The functionalities for a Duo.} *)

let nam_mod = "Either_or_v";;

(** {6 Modules.} *)


(** {6 Making.} *)
  
let make_either t_e = 
  Either_or_t.Either t_e 
;;

let make_or t_o = 
  Either_or_t.Or t_o 
;;

(** {6 Extracting.} *)

let type_either_off_either_or exn = function
  | Either_or_t.Either t_e -> t_e
  | Either_or_t.Or _ -> raise exn
;;

let type_or_off_either_or exn = function
  | Either_or_t.Or t_o -> t_o
  | Either_or_t.Either _ -> raise exn
;;

(** {6 Modifying.} *)

let map fe fo = function
  | Either_or_t.Either t_e -> make_either (fe t_e)
  | Either_or_t.Or t_o -> make_or (fo t_o)
;;
 
let iter fe fo = function
  | Either_or_t.Either t_e -> fe t_e
  | Either_or_t.Or t_o -> fo t_o
;;
 
let onetype_off_either_or fe fo = function
  | Either_or_t.Either t_e -> 
      (fe t_e)
  | Either_or_t.Or t_o -> 
      (fo t_o)
;;

let singlet_off_either_or fe fo eor =
    let otp = onetype_off_either_or fe fo eor in
    Singlet_v.make otp 
;;

(** {6 Naming} *)

let print prt_e prt_o ppf = function
  | Either_or_t.Either t_e -> Format.fprintf ppf "Either %a" prt_e t_e
  | Either_or_t.Or t_o -> Format.fprintf ppf "Or %a" prt_o t_o
;;

let name nam_e nam_o =  function
  | Either_or_t.Either t_e -> Format.sprintf "E_%s" (nam_e t_e)
  | Either_or_t.Or t_o -> Format.sprintf "O_%s" (nam_o t_o)
;;

