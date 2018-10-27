(** {3 The Marker functionalities for any Entity in any Index.} *) 

let nam_mod = "Marker_v";;

(** {6 Making.} *)

let make smb idx = 
  Doublet_v.make smb idx 
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

let entity_off_marker mrk =
  Doublet_v.left_off_doublet mrk
;;

let index_off_marker mrk =
  Doublet_v.right_off_doublet mrk
;;

let doublet_off_marker mrk =
  mrk
;;

let entity_list_off_marker_list mrk_l =
  List.map entity_off_marker mrk_l
;;

let index_list_off_marker_list mrk_l =
  List.map index_off_marker mrk_l
;;

(** {6 Mapping.} *)

let map_entity f_s mrk =
  let smb = entity_off_marker mrk in
  let idx = index_off_marker mrk in
  make (f_s smb) idx
;;

let map_index f_i mrk =
  let smb = entity_off_marker mrk in
  let idx = index_off_marker mrk in
  make smb (f_i idx)
;;

let map f_s f_i mrk =
  let smb = entity_off_marker mrk in
  let idx = index_off_marker mrk in
  make (f_s smb) (f_i idx)
;;

let iter_entity f_s mrk =
  let smb = entity_off_marker mrk in
  f_s smb;
;;

let iter_index f_i mrk =
  let idx = index_off_marker mrk in
  f_i idx;
;;

let iter f_s f_i mrk =
  let smb = entity_off_marker mrk in
  let idx = index_off_marker mrk in
  (f_s smb);(f_i idx);
;;

let ordinal_marker_list_of_entity_list smb_l =
  let ord_l = 
    List_v.ordinal_list_of_first_of_length 
      Ordinal_p.one (List.length smb_l) in
  List.combine smb_l ord_l  
;;

let sequential_marker_list_of_entity_list smb_l =
  let sqi_l = 
    List_v.sequential_index_list_of_first_of_length 
      Ordinal_p.one (List.length smb_l) in
  List.combine smb_l sqi_l  
;;

(** {6 Naming} *)

let name nam_a nam_b mrk = 
  let smb = entity_off_marker mrk in
  let cst = index_off_marker mrk in
  Format.sprintf  "(%s,%s)" (nam_a smb) (nam_b cst)
;;

let print prt_a prt_b ppf mrk = 
  let smb = entity_off_marker mrk in
  let cst = index_off_marker mrk in
  Format.fprintf ppf "{entity = %a; index = %a}"
  prt_a smb
  prt_b cst
;;


