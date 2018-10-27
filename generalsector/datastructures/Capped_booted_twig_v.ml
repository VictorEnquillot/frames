(** {3 The Capped Booted_twig data structure functionalities.} *)

let nam_mod = "Capped_booted_twig_v";;


(** {6 Making.} *)

let make cap btw = 
  Doublet_v.make cap btw
;;

let make_of_doublet_list_capped_booted cbl =
  let cap = Capped_booted_list_v.cap_part_off_list_capped_booted cbl in
  let bls = Capped_booted_list_v.booted_list_part_off_list_capped_booted cbl in
  let cpl_bls = Booted_list_v.map (fun (n, s) -> (n, s)) (fun b -> b) bls in 
  let btw = Booted_twig_v.make_of_doublet_booted_list cpl_bls in
  make cap btw
;;

(** {6 Extracting.} *)

let cap_off_capped_booted_twig cbt =
  Doublet_v.left_off_doublet cbt
;;

let booted_twig_off_capped_booted_twig cbt =
  Doublet_v.right_off_doublet cbt
;;

(** {6 Iterating.} *)

let rec map fc fn fs fb cbt =
    Doublet_v.map fc (Booted_twig_v.map fn fs fb) cbt 
;;
 
(** {6 Naming} *)

let rec name nam_c nam_b nam_s nam_r ctw =
 Doublet_v.name nam_c (Booted_twig_v.name nam_b nam_s nam_r) ctw 
;;


