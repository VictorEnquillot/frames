(** {3 The functionalities for a Bond_state.} *)

let nam_mod = "Bond_v";;

(** {6 Modules.} *)


(** {6 Making.} *)

let make_orond_pair chr_bnd lft rgt = 
  let par = Pair_v.make lft rgt in 
  {
   Bond_t.p_characteristic = chr_bnd;
   Bond_t.pair= par;
 }
;;

let make_orond_extended chr_bnd elt_a =  {
   Bond_t.e_characteristic = chr_bnd;
   Bond_t.list = elt_a;
 }
;;

(** {6 Extracting.} *)

(** {6 Bond_pair.} *)
 
let bond_pair_off_bond = function
  | Bond_t.Pair b -> b
  | Bond_t.Extended _ -> 
      failwith "Not_bond_pair:bond_pair_off_bond"
;;

let pair_off_bond_pair bnp = 
  bnp.Bond_t.pair
;;

let left_off_bond_pair bnp =
  let par = pair_off_bond_pair bnp in
  Pair_v.left_off_pair par
;;

let right_off_bond_pair bnp =
  let par = pair_off_bond_pair bnp in
  Pair_v.right_off_pair par
;;

let characteristic_off_bond_extended bne =
  bne.Bond_t.e_characteristic
;;

let element_list_off_bond_extended bne =
  bne.Bond_t.list
;;

let characteristic_off_bond_pair bnp =
  bnp.Bond_t.p_characteristic
;;

let characteristic_off_bond = function 
  | Bond_t.Extended bne -> characteristic_off_bond_extended bne
  | Bond_t.Pair bnp -> characteristic_off_bond_pair bnp 
;;

(** {6 Naming} *)

let name_bond_extended nam_c nam_e bne =
    let chr_bnd = characteristic_off_bond_extended bne in
    let e_a = element_list_off_bond_extended bne in
    Format.sprintf "(%s, %s)" 
      (nam_c chr_bnd) 
      ((List_v.name_with_separator nam_e "; ") e_a)
;;

let name_bond_pair nam_c nam_e bnp =
  let chr_bnd = characteristic_off_bond_pair bnp in
  let par = pair_off_bond_pair bnp in
  Format.sprintf "(%s, %s)"        
    (nam_c chr_bnd)
    ((Pair_v.name nam_e) par)
;;

let name nam_c nam_e = function 
  | Bond_t.Extended bne ->
      name_bond_extended nam_c nam_e bne
  | Bond_t.Pair bnp ->
      name_bond_pair nam_c nam_e bnp
;;

