(** {3 The Leafed_fullindexed_tree data structure functionalities.} *)

let nam_mod = "Leafed_fullindexed_tree_v";;


(** {6 Making.} *)

let make_of_leaf lf = 
  Leafed_fullindexed_tree_t.Leaf lf
;;

let make_of_node (nod, idx) lit_il = 
  Leafed_fullindexed_tree_t.Inner ((nod, idx), lit_il)
;;

(** {6 Iterating.} *)

 let rec map fn fi fl = function
  | Leafed_fullindexed_tree_t.Empty -> Leafed_fullindexed_tree_t.Empty
  | Leafed_fullindexed_tree_t.Leaf lf -> 
      Leafed_fullindexed_tree_t.Leaf (fl lf)
  | Leafed_fullindexed_tree_t.Inner ((nod, idx), lit_il)   -> 
      Leafed_fullindexed_tree_t.Inner ((fn nod, fi idx), Doublet_list_v.map (map fn fi fl) fi lit_il)
;; 

(*

let rec iter fn fl = function
  | Leafed_fullindexed_tree_t.Empty -> ()
  | Leafed_fullindexed_tree_t.Leaf lf -> fl lf
  | Leafed_fullindexed_tree_t.Inner (nod, lit_l) -> fn nod; List.iter (iter fn fl) lit_l
;; 

let rec map2 fn fl t_1 t_2 = 
  let rec apply_f accu t1 t2 =
    match (t1, t2) with
    | (Leafed_fullindexed_tree_t.Empty, Leafed_fullindexed_tree_t.Empty) -> Leafed_fullindexed_tree_t.Empty
    | (Leafed_fullindexed_tree_t.Leaf l1, Leafed_fullindexed_tree_t.Leaf l2) -> 
	Leafed_fullindexed_tree_t.Leaf (fl l1 l2)
    | (Leafed_fullindexed_tree_t.Inner (nod1, lit_l1), Leafed_fullindexed_tree_t.Inner (nod2, lit_l2)) -> 
	Leafed_fullindexed_tree_t.Inner (fn nod1 nod2, List.map2 (map2 fn fl) lit_l1 lit_l2)
    | (_, _) -> invalid_arg "Tree_leafed_v.map2"
  in
  apply_f Leafed_fullindexed_tree_t.Empty t_1 t_2
;; 

(** {6 Extracting.} *)

let root_off_leafed_fullindexed_tree = function
  | Leafed_fullindexed_tree_t.Empty -> failwith "Empty_leafed_fullindexed_tree:root_off_leafed_fullindexed_tree"
  | Leafed_fullindexed_tree_t.Leaf lf -> failwith "Not_root:Tree_leafed_v.root_off_leafed_fullindexed_tree"
  | Leafed_fullindexed_tree_t.Inner (nod, lit_l) -> nod
;; 

let root_son_list_off_leafed_fullindexed_tree_node = function
  | Leafed_fullindexed_tree_t.Empty -> []
  | Leafed_fullindexed_tree_t.Leaf lf -> failwith "Not_node:Tree_leafed_v.leafed_subtree_off_leafed_fullindexed_tree"
  | Leafed_fullindexed_tree_t.Inner (nod, lit_l) -> lit_l
;; 

let leafed_subtree_list_of_predicate_of_leafed_fullindexed_tree_node pre = function
  | Leafed_fullindexed_tree_t.Empty -> []
  | Leafed_fullindexed_tree_t.Leaf lf -> failwith "Not_node:Tree_leafed_v.leafed_subtree_off_leafed_fullindexed_tree"
  | Leafed_fullindexed_tree_t.Inner (nod, lit_l) -> 
      if pre nod
      then lit_l
      else []
;; 

(** {6 Modifying.} *)

let replace_leaf lf = function
  | Leafed_fullindexed_tree_t.Empty -> failwith "Empty:Tree_leafed_v.replace_root"
  | Leafed_fullindexed_tree_t.Leaf _ -> Leafed_fullindexed_tree_t.Leaf lf
  | Leafed_fullindexed_tree_t.Inner _ -> failwith "Node:Tree_leafed_v.replace_root"
;; 

let replace_node nod = function
  | Leafed_fullindexed_tree_t.Empty -> failwith "Empty:Tree_leafed_v.replace_root"
  | Leafed_fullindexed_tree_t.Leaf _ -> failwith "Leaf:Tree_leafed_v.replace_root"
  | Leafed_fullindexed_tree_t.Inner (_, lit_l) -> Leafed_fullindexed_tree_t.Inner (nod, lit_l)
;; 

let rec leafed_subtree_addtoleaf pre l2n lst = function
  | Leafed_fullindexed_tree_t.Empty -> lst
  | Leafed_fullindexed_tree_t.Leaf lf -> 
      if pre lf then make_of_node (l2n lf) [lst] else make_of_leaf lf
  | Leafed_fullindexed_tree_t.Inner (nod, lit_l) as lit -> lit 
;; 

let rec leafed_subtree_addtonode pre lst = function
  | Leafed_fullindexed_tree_t.Empty -> lst
  | Leafed_fullindexed_tree_t.Leaf lf as lit -> lit 
  | Leafed_fullindexed_tree_t.Inner (nod, lit_l) -> 
      if pre nod
      then make_of_node nod (lst :: lit_l)
      else make_of_node nod (List.map (leafed_subtree_addtonode pre lst) lit_l)
;; 

(** {6 Naming} *)

let rec tree_off_singular_leafed_fullindexed_tree = function 
  | Leafed_fullindexed_tree_t.Empty -> Tree_t.Empty
  | Leafed_fullindexed_tree_t.Leaf l -> Tree_t.Leaf l
  | Leafed_fullindexed_tree_t.Inner (n, lit_l) ->
      let stre_l = List.map tree_off_singular_leafed_fullindexed_tree lit_l in  
      Tree_t.Inner (n, stre_l)
;;

let tree_off_leafed_fullindexed_tree fn fl lit =
  let t_s = map fn fl lit in
  tree_off_singular_leafed_fullindexed_tree t_s
;;

let make_fullindexed_tree = tree_off_leafed_fullindexed_tree;;

let list_off_leafed_fullindexed_tree fn fl lit =
  let tre = tree_off_leafed_fullindexed_tree fn fl lit in
  Tree_v.list_off_fullindexed_tree tre
;;

let list_off_leftextended_by = list_off_leafed_fullindexed_tree;;

let rec print prt_n prt_l ppf = function
  | Leafed_fullindexed_tree_t.Empty -> ()
  | Leafed_fullindexed_tree_t.Leaf l -> Format.fprintf ppf "%a" prt_l l 
  | Leafed_fullindexed_tree_t.Inner (nod, lit_l) -> 
      Format.fprintf ppf "@[%a]@.@]" prt_n nod; 
      List.iter (Format.fprintf ppf "%a " (print prt_n prt_l)) lit_l
;;

let rec name nam_n nam_l = function
  | Leafed_fullindexed_tree_t.Empty -> ""
  | Leafed_fullindexed_tree_t.Leaf l -> Format.sprintf "%s" (nam_l l) 
  | Leafed_fullindexed_tree_t.Inner (nod, lit_l) -> 
      Format.sprintf "{%s[%s]}" (nam_n nod) 
	(String_v.string_of_string_list (List.map (name nam_n nam_l) lit_l) )
;;
*)
