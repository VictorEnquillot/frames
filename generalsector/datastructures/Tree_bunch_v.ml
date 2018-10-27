(** {3 A Tree_bunch data structure functionalities .} *)

let nam_mod = "Tree_bunch_v";;


(** {6 Making.} *)

let make elt elt_t =
  Doublet_v.make elt elt_t
;;

(** {6 Extracting.} *)

let ankle_off_tree_bunch bch =
  Doublet_v.left_off_doublet bch
;;

let grape_off_tree_bunch bch =
  Doublet_v.second_off_doublet bch 
;;

let list_off_tree_bunch bch =
    let akl = ankle_off_tree_bunch bch in
    let gra = grape_off_tree_bunch bch in
    akl :: (Tree_v.node_list_off_tree gra)
 ;;

let map f bch =
    let akl = ankle_off_tree_bunch bch in
    let gra = grape_off_tree_bunch bch in
    let f_a = f akl in
    let f_b = Tree_v.map f gra in
    make f_a f_b
;; 

let iter f bch =
    let akl = ankle_off_tree_bunch bch in
    let gra = grape_off_tree_bunch bch in
    f akl;
    Tree_v.iter f gra;
;; 

let rec map2 f bch_1 bch_2 = 
    let akl_1 = ankle_off_tree_bunch bch_1 in
    let gra_1 = grape_off_tree_bunch bch_1 in
    let akl_2 = ankle_off_tree_bunch bch_2 in
    let gra_2 = grape_off_tree_bunch bch_2 in
    make (f akl_1 akl_2) (Tree_v.map2 f gra_1 gra_2)
;; 

let rec tree_off_tree_bunch_list = function
  | [] -> Tree_t.Empty
  | bch :: bch_l ->  
    let akl = ankle_off_tree_bunch bch in
    let gra = grape_off_tree_bunch bch in
    Tree_v.make akl [gra; tree_off_tree_bunch_list bch_l]
;;

let tree_of_tree_bunch_of_tree bch tre =
    let akl = ankle_off_tree_bunch bch in
    let gra = grape_off_tree_bunch bch in
    Tree_v.make akl [gra; tre]
;;

let rec name nam_e bch =
    Doublet_v.name nam_e (Tree_v.name nam_e) bch
;;

