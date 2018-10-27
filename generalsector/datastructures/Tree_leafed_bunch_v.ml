(** {3 The functionalities for a Tree_leafed_bunch data structure .} *)

let nam_mod = "Tree_leafed_bunch_v";;


(** {6 Making.} *)

let make elt ltr =
  Doublet_v.make elt ltr
;;

(** {6 Extracting.} *)

let ankle_off_tree_leafed_bunch bch =
  Doublet_v.left_off_doublet bch
;;

let grape_off_tree_leafed_bunch bch =
  Doublet_v.second_off_doublet bch 
;;

let list_off_tree_leafed_bunch fn fl bch =
    let akl = ankle_off_tree_leafed_bunch bch in
    let gra = grape_off_tree_leafed_bunch bch in
    (fn akl) :: (Tree_leafed_v.list_off_tree_leafed fn fl gra)
 ;;

let map fn fl bch =
    let akl = ankle_off_tree_leafed_bunch bch in
    let gra = grape_off_tree_leafed_bunch bch in
    make (fn akl) (Tree_leafed_v.map fn fl gra)
;; 

let iter fn fl bch =
    let akl = ankle_off_tree_leafed_bunch bch in
    let gra = grape_off_tree_leafed_bunch bch in
    fn akl;
    Tree_leafed_v.iter fn fl gra;
;; 

let rec map2 fn fl bch_1 bch_2 = 
    let akl_1 = ankle_off_tree_leafed_bunch bch_1 in
    let gra_1 = grape_off_tree_leafed_bunch bch_1 in
    let akl_2 = ankle_off_tree_leafed_bunch bch_2 in
    let gra_2 = grape_off_tree_leafed_bunch bch_2 in
    make (fn akl_1 akl_2) (Tree_leafed_v.map2 fn fl gra_1 gra_2)
;; 

let tree_leafed_of_tree_leafed_bunch_of_tree_leafed bch ltr =
    let akl = ankle_off_tree_leafed_bunch bch in
    let gra = grape_off_tree_leafed_bunch bch in
    Tree_leafed_v.make_of_node akl [gra; ltr]
;;

let rec name nam_n nam_l bch =
    Doublet_v.name nam_n (Tree_leafed_v.name nam_n nam_l) bch
;;

