(** {3 The Mark functionalities for any Entity at any Index in any State.} *) 

let nam_mod = "Mark_v.ml";;

(** {6 Aliasing.} *)

(** {6 Making.} *)

let make smb tci =
  Doublet_v.make smb tci
;;

(** {6 Naming.} *)

let name nam_s mar =  
  Doublet_v.name nam_s Vsepr_index_v.name mar
;;

(** {6 Extracting.} *)

let entity_off_mark mar =
  Doublet_v.left_off_doublet mar
;;

let vsepr_index_off_mark mar =
  Doublet_v.right_off_doublet mar
;;

let entity_n_int_off_mark mar =
  let sym = entity_off_mark mar in
  let vin = vsepr_index_off_mark mar in
  let ind = Vsepr_index_v.int_off_vsepr_index vin in
  Doublet_v.make sym ind
;;

let tag_of_sole_index_off_mark soi mar =
  let (sym, i) = entity_n_int_off_mark mar in
  Tag_v.make sym (i::soi)
;;

(** {6 Iterating.} *)

let map f_l f_r mar =
  Doublet_v.map f_l f_r mar 
;;

let map_left f_l mar =
  Doublet_v.map_left f_l mar 
;;

let map_right f_r mar =
  Doublet_v.map_right f_r mar 
;;
