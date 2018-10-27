(** {3 The Designator functionalities for any Entity in any State.} *) 

let nam_mod = "Designator_v";;


(** {6 Making.} *)

let make smb stt = {
  Designator_t.symbol = smb; 
  Designator_t.state = stt;
}   
;;

let read ib =
  Utilities_v.not_yet_implemented nam_mod "read"
;;

let make_of_doublet cpl = 
  let lft = Doublet_v.left_off_doublet cpl in
  let rgt = Doublet_v.right_off_doublet cpl in
  make lft rgt
;;

(** {6 Extracting.} *)

let symbol_off_designator dsg =
  dsg.Designator_t.symbol
;;

let state_off_designator dsg =
  dsg.Designator_t.state
;;

let doublet_off_designator dsg =
  let smb = symbol_off_designator dsg in
  let stt = state_off_designator dsg in
(smb, stt)     
;;

(** {6 Mapping.} *)

let map f_s f_S dsg =
  let cpl = doublet_off_designator dsg in
  let cpl_m = Doublet_v.map f_s f_S cpl in
  make_of_doublet cpl_m
;;

(** {6 Naming} *)

let print prt_a prt_b ppf dsg = 
  let smb = symbol_off_designator dsg in
  let cst = state_off_designator dsg in
  Format.fprintf ppf "{symbol = %a; state = %a}"
  prt_a smb
  prt_b cst
;;

let name nam_a nam_b dsg = 
  let smb = symbol_off_designator dsg in
  let cst = state_off_designator dsg in
  Format.sprintf  "%s:%s" (nam_a smb) (nam_b cst)
;;

