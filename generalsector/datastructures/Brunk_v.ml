(** {3 A Brunk data structure functionalities .} *)

let nam_mod = "Brunk_v.ml";;

(** {6 Making.} *)

let make elt_l elt_t =
  Doublet_v.make elt_l elt_t
;;

(** {6 Extracting.} *)

let trunk_off_brunk brk =
  Doublet_v.left_off_doublet brk
;;

let branch_off_brunk brk =
  Doublet_v.second_off_doublet brk 
;;

let list_off_brunk brk =
    let trk = trunk_off_brunk brk in
    let brc = branch_off_brunk brk in
    List.append trk (Tree_v.node_list_off_tree brc)
 ;;

let map f brk =
    let trk = trunk_off_brunk brk in
    let brn = branch_off_brunk brk in
    let t_l = List.map f trk in
    let b_t = Tree_v.map f brn in
    make t_l b_t
;; 

let iter f brk =
    let trk = trunk_off_brunk brk in
    let brn = branch_off_brunk brk in
    List.iter f trk;
    Tree_v.iter f brn;
;; 

let rec map2 f brk_1 brk_2 = 
    let trk_1 = trunk_off_brunk brk_1 in
    let brn_1 = branch_off_brunk brk_1 in
    let trk_2 = trunk_off_brunk brk_2 in
    let brn_2 = branch_off_brunk brk_2 in
    make (List.map2 f trk_1 trk_2) (Tree_v.map2 f brn_1 brn_2)
;; 

let rec name nam_e brk =
    Doublet_v.name (List_v.name_with_separator nam_e ";") (Tree_v.name nam_e) brk
;;

