(** {3 The functionalities for an indexed_tree data structure.} *)

let nam_mod = "Indexed_tree_v";;


(** {6 Making.} *)

let empty = Indexed_tree_t.Empty;;

let make_of_leaf lf = 
  Indexed_tree_t.Leaf lf
;;

let make_of_node nod lit_il = 
  Indexed_tree_t.Inner (nod, lit_il)
;;

(** {6 Iterating.} *)

 let rec map fn fi = function
  | Indexed_tree_t.Empty -> Indexed_tree_t.Empty
  | Indexed_tree_t.Leaf lf -> 
      Indexed_tree_t.Leaf (fn lf)
  | Indexed_tree_t.Inner (nod, lit_il) -> 
      Indexed_tree_t.Inner (fn nod, Doublet_list_v.map (map fn fi) fi lit_il)
;; 

let rec iter fn fi = function
  | Indexed_tree_t.Empty -> ()
  | Indexed_tree_t.Leaf lf -> fn lf
  | Indexed_tree_t.Inner (nod, lit_il) -> 
      fn nod; Doublet_list_v.iter (iter fn fi) fi lit_il
;; 

let rec map2 fn fi t_1 t_2 = 
  let rec apply_f accu t1 t2 =
    match (t1, t2) with
    | (Indexed_tree_t.Empty, Indexed_tree_t.Empty) -> Indexed_tree_t.Empty
    | (Indexed_tree_t.Leaf l1, Indexed_tree_t.Leaf l2) -> 
	Indexed_tree_t.Leaf (fn l1 l2)
    | (Indexed_tree_t.Inner (nod1, lit_il1), Indexed_tree_t.Inner (nod2, lit_il2)) -> 
	Indexed_tree_t.Inner (fn nod1 nod2, Doublet_list_v.map2 (map2 fn fi) fi lit_il1 lit_il2)
    | (_, _) -> invalid_arg "Indexed_tree_v.map2"
  in
  apply_f Indexed_tree_t.Empty t_1 t_2
;; 

(** {6 Extracting.} *)

let root_off_indexed_tree = function
  | Indexed_tree_t.Empty -> failwith "Empty_indexed_tree:root_off_indexed_tree"
  | Indexed_tree_t.Leaf lf -> failwith "Not_root:Indexed_tree_v.root_off_indexed_tree"
  | Indexed_tree_t.Inner (nod, lit_il) -> nod
;; 

let root_son_doublet_list_off_indexed_tree_node = function
  | Indexed_tree_t.Empty -> []
  | Indexed_tree_t.Leaf lf -> failwith "Not_node:Indexed_tree_v.subtree_off_indexed_tree"
  | Indexed_tree_t.Inner (nod, lit_il) -> lit_il
;; 

let subindexedtree_list_of_predicate_of_indexed_tree_node pre = function
  | Indexed_tree_t.Empty -> []
  | Indexed_tree_t.Leaf lf -> failwith "Not_node:Indexed_tree_v.subtree_off_indexed_tree"
  | Indexed_tree_t.Inner (nod, lit_il) -> 
      if pre nod
      then lit_il
      else []
;; 

(** {6 Modifying.} *)

let replace_leaf lf = function
  | Indexed_tree_t.Empty -> failwith "Empty:Indexed_tree_v.replace_leaf"
  | Indexed_tree_t.Leaf _ -> Indexed_tree_t.Leaf lf
  | Indexed_tree_t.Inner _ -> failwith "Node:Indexed_tree_v.replace_leaf"
;; 

let replace_node nod = function
  | Indexed_tree_t.Empty -> failwith "Empty:Indexed_tree_v.replace_node"
  | Indexed_tree_t.Leaf _ -> failwith "Leaf:Indexed_tree_v.replace_node"
  | Indexed_tree_t.Inner (_, lit_il) -> 
      make_of_node nod lit_il
;; 

(** {6 Naming} *)

let rec node_tree_off_indexed_tree fn = function
  | Indexed_tree_t.Empty -> Tree_v.empty
  | Indexed_tree_t.Leaf n -> Tree_v.make_of_leaf (fn n)
  | Indexed_tree_t.Inner (nod, itr_il) ->
      let itr_l = Doublet_list_v.left_list_off_doublet_list itr_il in
      let tre_l = List.map (node_tree_off_indexed_tree fn) itr_l in
      Tree_v.make_of_node (fn nod) tre_l
;; 

(*
let rec doublet_tree_off_indexed_tree idx = function 
  | Indexed_tree_t.Empty -> Doublet_tree_v.empty
  | Indexed_tree_t.Leaf n -> Doublet_tree_v.make_of_leaf (n, idx)
  | Indexed_tree_t.Inner (nod, itr_il) ->
      let db_tl = 
	Doublet_list_v.map (doublet_tree_off_indexed_tree idx) (fun i -> i)
	  itr_il in
      Tree_v.make_of_node (nod, idx) db_tl
;;
*)

let rec name nam_n nam_i = function
  | Indexed_tree_t.Empty -> ""
  | Indexed_tree_t.Leaf l -> Format.sprintf "%s" (nam_n l) 
  | Indexed_tree_t.Inner (nod, lit_il) -> 
      Format.sprintf "{%s [%s]}" 
	(nam_n nod) 
	(Doublet_list_v.name (name nam_n nam_i) nam_i lit_il) 
;;

let rec print prt_n prt_i ppf = function
  | Indexed_tree_t.Empty -> ()
  | Indexed_tree_t.Leaf l -> Format.fprintf ppf "%a" prt_n l 
  | Indexed_tree_t.Inner (nod, lit_il) -> 
      Format.fprintf ppf "{%a@." prt_n nod;
      Format.fprintf ppf "[%a]}" (Doublet_list_v.print (print prt_n prt_i) prt_i) lit_il
;;

