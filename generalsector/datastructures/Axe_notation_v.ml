(* {3 The functionalities for the Axe method notation for Vsepr Indices *)

(* http://en.wikipedia.org/wiki/VSEPR_theory#AXE_method *)

(* {6 Making} *)

let make sib lop =
  Doublet_v.make sib lop
;;

(* {6 Extracting} *)

let sigmabond_number_off_axe_notation axn =
  Doublet_v.left_off_doublet axn
;;

let lonepair_number_off_axe_notation axn =
  Doublet_v.right_off_doublet axn
;;

let steric_number_off_axe_notation axn =
  let sib = sigmabond_number_off_axe_notation axn in 
  let lop = lonepair_number_off_axe_notation axn in 
  sib + lop
;;

(* {6 Naming} *)

let name axn =
  let sib = sigmabond_number_off_axe_notation axn in
  let lop = lonepair_number_off_axe_notation axn in 
  Format.sprintf "AX%iE%i" sib lop
;;
