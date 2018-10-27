(** {3 The functionalities of a Bridge.} *)

let nam_mod = "Bridge_v";;


(** {6 Making.} *)

let make smb_bdg x_l y_l =
  Bond_v.make_orond_pair smb_bdg x_l y_l
;;

let bond_of_bridge bdg =
  Bond_t.Pair bdg
;;
(** A bridge is a bond_pair. *)

(** {6 Extracting.} *)

let characteristic_off_bridge bdg =
  let bnd = bond_of_bridge bdg in
  Bond_v.characteristic_off_bond bnd  
;;

let pair_off_bridge bdg =
  Bond_v.pair_off_bond_pair bdg  
;;

let pair_left_off_bridge bdg =
  let par = pair_off_bridge bdg in
  Pair_v.left_off_pair par
;;

let pair_right_off_bridge bdg =
  let par = pair_off_bridge bdg in
  Pair_v.right_off_pair par
;;

let bridge_off_edge_bridged_pair par_edb =
(* 
  b_a = ((x_l, b_a), (y_l, b_a)) 
 *)
  let edg_bdg_l = Pair_v.left_off_pair par_edb in
  let edg_bdg_r = Pair_v.right_off_pair par_edb in
  let x_l = Tree_edge_v.left_off_edge edg_bdg_l in
  let y_l = Tree_edge_v.left_off_edge edg_bdg_r in
  let bsa_l = Tree_edge_v.right_off_edge edg_bdg_l in
  let bsa_r = Tree_edge_v.right_off_edge edg_bdg_r in
  if bsa_l = bsa_r 
  then make bsa_l x_l y_l
  else
    failwith "Not_Same_Bridge:bridge_off_edge_bridged_pair"
;;

(** {6 Comparing.} *)

let compare bdg_1 bdg_2 =
  let chr_bdg_1 = characteristic_off_bridge bdg_1 in
  let par_bdg_1 = pair_off_bridge bdg_1 in
  let chr_bdg_2 = characteristic_off_bridge bdg_2 in
  let par_bdg_2 = pair_off_bridge bdg_2 in
   if compare chr_bdg_1 chr_bdg_2 <> 0 
   then compare chr_bdg_1 chr_bdg_2
   else compare par_bdg_1 par_bdg_2
;;

(** {6 Naming} *)

let print prt_c prt_e ppf bdg =
  let chr_bdg = characteristic_off_bridge bdg in
  let par = pair_off_bridge bdg in
  Format.fprintf ppf "@[<hov>(charateristic = \"%a\",\
                      @.pair = %a)|@]@."
  prt_c chr_bdg
  (Pair_v.print prt_e) par
;;

let name nam_c nam_e bdg =
  let chr_bdg = characteristic_off_bridge bdg in
  let par = pair_off_bridge bdg in
  Format.sprintf "%s,%s"
  (nam_c chr_bdg)
  ((Pair_v.name nam_e) par)
;;

