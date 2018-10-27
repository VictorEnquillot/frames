(** {3 The Leafed_indexed_tree data structure functionalities.} *)

let nam_mod = "Leafed_indexed_tree_v";;


(** {6 Making.} *)

let empty = Leafed_indexed_tree_t.Empty;;

let make_of_leaf lf = 
  Leafed_indexed_tree_t.Leaf lf
;;

let make_of_node nod lit_il = 
  Leafed_indexed_tree_t.Inner (nod, lit_il)
;;

(** {6 Iterating.} *)

 let rec map fn fi fl = function
  | Leafed_indexed_tree_t.Empty -> Leafed_indexed_tree_t.Empty
  | Leafed_indexed_tree_t.Leaf lf -> 
      Leafed_indexed_tree_t.Leaf (fl lf)
  | Leafed_indexed_tree_t.Inner (nod, lit_il) -> 
      Leafed_indexed_tree_t.Inner (fn nod, Doublet_list_v.map (map fn fi fl) fi lit_il)
;; 

let rec iter fn fi fl = function
  | Leafed_indexed_tree_t.Empty -> ()
  | Leafed_indexed_tree_t.Leaf lf -> fl lf
  | Leafed_indexed_tree_t.Inner (nod, lit_il) -> 
      fn nod; Doublet_list_v.iter (iter fn fi fl) fi lit_il
;; 

let rec map2 fn fi fl t_1 t_2 = 
  let rec apply_f accu t1 t2 =
    match (t1, t2) with
    | (Leafed_indexed_tree_t.Empty, Leafed_indexed_tree_t.Empty) -> Leafed_indexed_tree_t.Empty
    | (Leafed_indexed_tree_t.Leaf l1, Leafed_indexed_tree_t.Leaf l2) -> 
	Leafed_indexed_tree_t.Leaf (fl l1 l2)
    | (Leafed_indexed_tree_t.Inner (nod1, lit_il1), Leafed_indexed_tree_t.Inner (nod2, lit_il2)) -> 
	Leafed_indexed_tree_t.Inner (fn nod1 nod2, Doublet_list_v.map2 (map2 fn fi fl) fi lit_il1 lit_il2)
    | (_, _) -> invalid_arg "Leafed_indexed_tree_v.map2"
  in
  apply_f Leafed_indexed_tree_t.Empty t_1 t_2
;; 

(** {6 Extracting.} *)

let root_off_leafed_indexed_tree = function
  | Leafed_indexed_tree_t.Empty -> failwith "Empty_leafed_indexed_tree:root_off_leafed_indexed_tree"
  | Leafed_indexed_tree_t.Leaf lf -> failwith "Not_root:Leafed_indexed_tree_v.root_off_leafed_indexed_tree"
  | Leafed_indexed_tree_t.Inner (nod, lit_il) -> nod
;; 

let root_son_doublet_list_off_leafed_indexed_tree_node = function
  | Leafed_indexed_tree_t.Empty -> []
  | Leafed_indexed_tree_t.Leaf lf -> failwith "Not_node:Leafed_indexed_tree_v.leafed_subtree_off_leafed_indexed_tree"
  | Leafed_indexed_tree_t.Inner (nod, lit_il) -> lit_il
;; 

let leafed_subindexedtree_list_of_predicate_of_leafed_indexed_tree_node pre = function
  | Leafed_indexed_tree_t.Empty -> []
  | Leafed_indexed_tree_t.Leaf lf -> failwith "Not_node:Leafed_indexed_tree_v.leafed_subtree_off_leafed_indexed_tree"
  | Leafed_indexed_tree_t.Inner (nod, lit_il) -> 
      if pre nod
      then lit_il
      else []
;; 

(** {6 Modifying.} *)

let replace_leaf lf = function
  | Leafed_indexed_tree_t.Empty -> failwith "Empty:Leafed_indexed_tree_v.replace_leaf"
  | Leafed_indexed_tree_t.Leaf _ -> Leafed_indexed_tree_t.Leaf lf
  | Leafed_indexed_tree_t.Inner _ -> failwith "Node:Leafed_indexed_tree_v.replace_leaf"
;; 

let replace_node nod = function
  | Leafed_indexed_tree_t.Empty -> failwith "Empty:Leafed_indexed_tree_v.replace_node"
  | Leafed_indexed_tree_t.Leaf _ -> failwith "Leaf:Leafed_indexed_tree_v.replace_node"
  | Leafed_indexed_tree_t.Inner (_, lit_il) -> Leafed_indexed_tree_t.Inner (nod, lit_il)
;; 

(*
let rec leafed_subtree_addtoleaf pre l2n lst = function
  | Leafed_indexed_tree_t.Empty -> lst
  | Leafed_indexed_tree_t.Leaf lf -> 
      if pre lf then make_of_node (l2n lf) [lst] else make_of_leaf lf
  | Leafed_indexed_tree_t.Inner (nod, lit_l) as lit -> lit 
;; 

let rec leafed_subtree_addtonode pre lst = function
  | Leafed_indexed_tree_t.Empty -> lst
  | Leafed_indexed_tree_t.Leaf lf as lit -> lit 
  | Leafed_indexed_tree_t.Inner (nod, lit_l) -> 
      if pre nod
      then make_of_node nod (lst :: lit_l)
      else make_of_node nod (List.map (leafed_subtree_addtonode pre lst) lit_l)
;; 
*)

(** {6 Naming} *)

let rec indexed_tree_off_leafed_indexed_tree fn fl = function 
  | Leafed_indexed_tree_t.Empty -> Indexed_tree_v.empty
  | Leafed_indexed_tree_t.Leaf l -> Indexed_tree_v.make_of_leaf (fl l)
  | Leafed_indexed_tree_t.Inner (n, lit_il) ->
      let t_l = 
	Doublet_list_v.map (indexed_tree_off_leafed_indexed_tree fn fl) (fun l->l) lit_il in  
      Indexed_tree_v.make_of_node (fn n) t_l
;;

(*
let rec doublet_tree_off_leafed_indexed_tree fn ni fl li lit =
  let itr = indexed_tree_off_leafed_indexed_tree fn fl lit in
  doublet_tree_off_indexed_tree itr
;;

*)

let rec name nam_n nam_i nam_l = function
  | Leafed_indexed_tree_t.Empty -> ""
  | Leafed_indexed_tree_t.Leaf l -> Format.sprintf "%s" (nam_l l) 
  | Leafed_indexed_tree_t.Inner (nod, lit_il) -> 
      Format.sprintf "{%s [%s]}" 
	(nam_n nod) 
	(Doublet_list_v.name (name nam_n nam_i nam_l) nam_i lit_il) 
;;

let rec print prt_n prt_i prt_l ppf = function
  | Leafed_indexed_tree_t.Empty -> ()
  | Leafed_indexed_tree_t.Leaf l -> Format.fprintf ppf "%a" prt_l l 
  | Leafed_indexed_tree_t.Inner (nod, lit_il) -> 
      Format.fprintf ppf "{%a@." prt_n nod;
      Format.fprintf ppf "[%a]}" (Doublet_list_v.print (print prt_n prt_i prt_l) prt_i) lit_il
;;

