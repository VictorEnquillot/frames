(** {3 The Tree_leafed data structure functionalities.} *)

let nam_mod = "Tree_leafed_v";;

(** {6 Making.} *)

let empty = Tree_leafed_t.Empty;;

let rec make_of_tree fn fl = function
  | Tree_t.Empty -> Tree_leafed_t.Empty
  | Tree_t.Leaf lf -> 
      Tree_leafed_t.Leaf (fl lf)
  | Tree_t.Inner (nod, tr_l)   -> 
      Tree_leafed_t.Inner (fn nod,  List.map (make_of_tree fn fl) tr_l)
;; 
 
let make_of_leaf lf = 
  Tree_leafed_t.Leaf lf
;;

let make_of_node nod ltr_l = 
  Tree_leafed_t.Inner (nod, ltr_l)
;;

(** {6 Iterating.} *)

 let rec map fn fl = function
  | Tree_leafed_t.Empty -> Tree_leafed_t.Empty
  | Tree_leafed_t.Leaf lf -> 
      Tree_leafed_t.Leaf (fl lf)
  | Tree_leafed_t.Inner (nod, ltr_l)   -> 
      Tree_leafed_t.Inner (fn nod,  List.map (map fn fl) ltr_l)
;; 

let rec iter fn fl = function
  | Tree_leafed_t.Empty -> ()
  | Tree_leafed_t.Leaf lf -> fl lf
  | Tree_leafed_t.Inner (nod, ltr_l) -> fn nod; List.iter (iter fn fl) ltr_l
;; 

let rec map2 fn fl t_1 t_2 = 
  let rec apply_f accu t1 t2 =
    match (t1, t2) with
    | (Tree_leafed_t.Empty, Tree_leafed_t.Empty) -> Tree_leafed_t.Empty
    | (Tree_leafed_t.Leaf l1, Tree_leafed_t.Leaf l2) -> 
	Tree_leafed_t.Leaf (fl l1 l2)
    | (Tree_leafed_t.Inner (nod1, ltr_l1), Tree_leafed_t.Inner (nod2, ltr_l2)) -> 
	Tree_leafed_t.Inner (fn nod1 nod2, List.map2 (map2 fn fl) ltr_l1 ltr_l2)
    | (_, _) -> invalid_arg "Lft_v.map2"
  in
  apply_f Tree_leafed_t.Empty t_1 t_2
;; 

(** {6 Extracting.} *)

let root_off_tree_leafed = function
  | Tree_leafed_t.Empty -> failwith "Empty_tree_leafed:root_off_tree_leafed"
  | Tree_leafed_t.Leaf lf -> failwith "Not_root:Tree_leafed_v.root_off_tree_leafed"
  | Tree_leafed_t.Inner (nod, ltr_l) -> nod
;; 

let root_son_list_off_tree_leafed_node = function
  | Tree_leafed_t.Empty -> []
  | Tree_leafed_t.Leaf lf -> failwith "Not_node:Tree_leafed_v.leafed_subtree_off_tree_leafed"
  | Tree_leafed_t.Inner (nod, ltr_l) -> ltr_l
;; 

let leafed_subtree_of_predicate_of_tree_leafed pre lt =
  let rec apply = function
  | Tree_leafed_t.Empty -> []
  | Tree_leafed_t.Leaf _ -> []
  | Tree_leafed_t.Inner (nod, ltr_l) -> 
      if pre nod
      then [Tree_leafed_t.Inner (nod, ltr_l)]
      else (List.flatten (List.map apply ltr_l))
  in
  List.hd (apply lt)
;; 

let leafed_subtree_list_of_predicate_of_tree_leafed_node pre = function
  | Tree_leafed_t.Empty -> []
  | Tree_leafed_t.Leaf lf -> failwith "Not_node:Tree_leafed_v.leafed_subtree_off_tree_leafed"
  | Tree_leafed_t.Inner (nod, ltr_l) -> 
      if pre nod
      then ltr_l
      else []
;; 

(** {6 Modifying.} *)

let replace_leaf lf = function
  | Tree_leafed_t.Empty -> failwith "Empty:Tree_leafed_v.replace_root"
  | Tree_leafed_t.Leaf _ -> Tree_leafed_t.Leaf lf
  | Tree_leafed_t.Inner _ -> failwith "Node:Tree_leafed_v.replace_root"
;; 

let replace_node nod = function
  | Tree_leafed_t.Empty -> failwith "Empty:Tree_leafed_v.replace_root"
  | Tree_leafed_t.Leaf _ -> failwith "Leaf:Tree_leafed_v.replace_root"
  | Tree_leafed_t.Inner (_, ltr_l) -> Tree_leafed_t.Inner (nod, ltr_l)
;; 

let rec leafed_subtree_addtoleaf pre l2n lst = function
  | Tree_leafed_t.Empty -> lst
  | Tree_leafed_t.Leaf lf -> 
      if pre lf then make_of_node (l2n lf) [lst] else make_of_leaf lf
  | Tree_leafed_t.Inner (nod, ltr_l) as ltr -> ltr 
;; 

let rec leafed_subtree_addtonode pre lst = function
  | Tree_leafed_t.Empty -> lst
  | Tree_leafed_t.Leaf lf as ltr -> ltr 
  | Tree_leafed_t.Inner (nod, ltr_l) -> 
      if pre nod
      then make_of_node nod (lst :: ltr_l)
      else make_of_node nod (List.map (leafed_subtree_addtonode pre lst) ltr_l)
;; 

(** {6 Naming} *)

let rec tree_off_singular_tree_leafed = function 
  | Tree_leafed_t.Empty -> Tree_t.Empty
  | Tree_leafed_t.Leaf l -> Tree_t.Leaf l
  | Tree_leafed_t.Inner (n, ltr_l) ->
      let stre_l = List.map tree_off_singular_tree_leafed ltr_l in  
      Tree_t.Inner (n, stre_l)
;;

let tree_off_tree_leafed fn fl ltr =
  let t_s = map fn fl ltr in
  tree_off_singular_tree_leafed t_s
;;

let make_tree = tree_off_tree_leafed;;

let list_off_tree_leafed fn fl ltr =
  let tre = tree_off_tree_leafed fn fl ltr in
  Tree_v.node_list_off_tree tre
;;

let list_off_leftextended_by = list_off_tree_leafed;;

(** {6 Naming} *)

let rec name_with_separator nam_n nam_l sep_d sep_l = function
  | Tree_leafed_t.Empty -> ""
  | Tree_leafed_t.Leaf lf -> 
      Format.sprintf "%s" (nam_l lf) 
  | Tree_leafed_t.Inner (rot, trl_l) -> 
      Format.sprintf "{%s%s%s}" 
	(nam_n rot) 
	sep_d 
	(List_v.name_with_separator 
	   (name_with_separator nam_n nam_l sep_d sep_l)
	   sep_l trl_l)  
;;

let name nam_n nam_l trl =
  name_with_separator nam_n nam_l "," " " trl
;;

