(** {3 The Tree data structure functionalities.} *)

let nam_mod = "Tree_v";;

(** {6 Making.} *)

let empty = Tree_t.Empty;;

let make_of_leaf lf = 
  Tree_t.Leaf lf
;;

let make_of_node nod tre_l = 
  Tree_t.Inner (nod, tre_l)
;;

let make roo = function
  | [] -> Tree_t.Leaf roo
  | tre_l -> Tree_t.Inner (roo, tre_l)
;;

let rec tree_off_list = function
  | [] -> Tree_t.Empty
  | h::[] -> Tree_t.Leaf h
  | h::t -> Tree_t.Inner (h, [tree_off_list t])
;;

(** {6 Querying.} *)

let is_inner = function
  | Tree_t.Empty -> false
  | Tree_t.Leaf _ -> false
  | Tree_t.Inner _ -> true 
;;

let is_leaf = function
  | Tree_t.Empty -> false
  | Tree_t.Leaf _ -> true  
  | Tree_t.Inner _ -> false
;;

let is_empty = function
  | Tree_t.Empty -> true
  | Tree_t.Leaf _ -> false
  | Tree_t.Inner _ -> false
;;

(** {6 Extracting Root.} *)

let root_off_tree = function
  | Tree_t.Empty -> failwith ("Empty_tree:"^nam_mod^".root_off_tree")
  | Tree_t.Leaf lf -> lf
  | Tree_t.Inner (roo, tre_l) -> roo
;;

let root_node_off_tree = root_off_tree;;

let element_off_leaf = root_off_tree;;

let root_notleaf_off_tree = function
  | Tree_t.Empty -> failwith ("Empty_tree:"^nam_mod^".root_notleaf_off_tree")
  | Tree_t.Leaf lf -> failwith ("Leaf:"^nam_mod^".root_notleaf_off_tree")
  | Tree_t.Inner (roo, tre_l) -> roo
;;

(** {6 Extracting Tree.} *)

let topson_tree_list_off_tree = function
  | Tree_t.Empty -> []
  | Tree_t.Leaf _ -> []
  | Tree_t.Inner (roo, tre_l) -> 
      tre_l
;;

let topson_tree_list_of_topson_tree_predicate_off_tree prt tre =
    let son_tre_l = topson_tree_list_off_tree tre in
    List.filter prt son_tre_l
;;

let topson_tree_list_of_topson_node_predicate_off_tree prn tre =
    let son_tre_l = topson_tree_list_off_tree tre in
    List.filter (fun t -> prn (root_off_tree t)) son_tre_l
;;

(** {6 Querying Tree.} *)

let has_no_topson_leaf_of_tree tre =
 let sol_l = 
   topson_tree_list_of_topson_tree_predicate_off_tree is_leaf tre
 in
 sol_l = []
;;

let has_no_topson_inner_of_tree tre =
 let sol_l = 
   topson_tree_list_of_topson_tree_predicate_off_tree is_inner tre
 in
 sol_l = []
;;

let has_some_topson_leaf_of_tree tre =
  not (has_no_topson_leaf_of_tree tre)
;;

let has_some_topson_inner_of_tree tre =
  not (has_no_topson_inner_of_tree tre)
;;

let subtree_list_of_node_predicate_off_tree pre = 
  let rec apply acc = function  
    | Tree_t.Empty -> 
	acc 
    | Tree_t.Leaf v as t -> 
	if pre v then t :: acc else acc 
    | Tree_t.Inner (roo, tre_l) as t -> 
	if pre roo
	then t :: acc 
	else List.flatten (List.map (apply acc) tre_l)
  in
  apply []  
;;

let subtree_filter_of_node_predicate_off_tree pre tre =
  subtree_list_of_node_predicate_off_tree pre tre
;;

let first_subtree_of_node_predicate_off_tree p tre =
  try List.hd (subtree_list_of_node_predicate_off_tree p tre)
  with Failure "hd" ->
    failwith ("Not_found:"^nam_mod^".first_subtree_of_node_predicate_off_tree")
;;

let subtree_of_node_predicate_off_tree pre tre =
  let sut_l = subtree_list_of_node_predicate_off_tree pre tre in
  List_v.element_off_one_element_list sut_l 
;;

let only_subtree_of_node_predicate_off_tree pre tre =
  let sut_l = subtree_list_of_node_predicate_off_tree pre tre in
  if List.length sut_l = 1
  then List.hd sut_l
  else failwith "Not_only_subtree:Tree_v.only_subtree_of_node_predicate_off_tree"
;;


let first_subtree_of_node_off_tree nod tre =
  first_subtree_of_node_predicate_off_tree (fun r -> r = nod) tre
;;

let subtree_of_node_off_tree nod tre =
  subtree_of_node_predicate_off_tree (fun r -> r = nod) tre
;;

let subtree_remove_of_node_predicate_off_tree pre tre =

  let rec apply = function
    | Tree_t.Empty -> Tree_t.Empty
    | Tree_t.Leaf v as t -> 
	if pre v then Tree_t.Empty else t
    | Tree_t.Inner (roo, tre_l) -> 
	if pre roo
	then Tree_t.Empty
	else 
	  begin
	    let s_l = List.map apply tre_l in
	    let cleaned = List.filter (fun s -> s <> Tree_t.Empty) s_l in
	    match cleaned with 
	    | [] -> Tree_t.Leaf roo
            | _ -> Tree_t.Inner (roo, cleaned)
	  end
  in
  apply tre
;;

let remove_empty_subtree_off_tree tre =

  let rec apply = function 
    | Tree_t.Empty -> failwith "Empty_tree:Tree_v.remove_empty_subtree_off_tree"
    | Tree_t.Leaf lea as t -> t 
    | Tree_t.Inner (nod, sut_l) ->

	let sub_tre_l = List.filter (fun t -> not (is_empty t)) sut_l in
	make nod (List.map apply sub_tre_l)
  in

  apply tre

;;

let rec subtree_add pre son = function  
  | Tree_t.Empty -> Tree_t.Empty
  | Tree_t.Leaf v as t -> 
      if pre v then Tree_t.Inner (v, [son]) else t
  | Tree_t.Inner (roo, tre_l) -> 
      if pre roo 
      then Tree_t.Inner (roo, List.append tre_l [son])
      else Tree_t.Inner (roo, List.map (subtree_add pre son) tre_l)
;;

(** {6 Extracting List.} *)

let node_list_off_tree tre =

  let rec apply = function
    | Tree_t.Empty -> []
    | Tree_t.Leaf f -> [f] 
    | Tree_t.Inner (roo, tre_l) -> 
	roo :: List.flatten (List.map apply tre_l)
  in

  apply tre
;;

let leaf_node_list_off_tree tre =
  let rec apply l = function
    | Tree_t.Empty -> []
    | Tree_t.Leaf lf -> lf :: l
    | Tree_t.Inner (nod, tre_l) -> 
       List.flatten (List.map (apply l) tre_l)
  in
  apply [] tre
;;

let inner_node_list_off_tree tre =
  let rec apply l = function
    | Tree_t.Empty -> l
    | Tree_t.Leaf lf -> l
    | Tree_t.Inner (nod, tre_l) -> 
	nod :: List.flatten (List.map (apply l) tre_l)
  in
  apply [] tre
;;

let topson_node_list_off_tree = function
  | Tree_t.Empty -> []
  | Tree_t.Leaf _ -> [] 
  | Tree_t.Inner (nod, tre_l) -> 
      List.map root_off_tree tre_l
;;

let topson_notleaf_node_list_off_tree = function
  | Tree_t.Empty -> []
  | Tree_t.Leaf _ -> []
  | Tree_t.Inner (nod, tre_l) -> 
      let nod_tre_l = List.filter is_inner tre_l in
      List.map root_off_tree nod_tre_l
;;

let root_topson_notleaf_node_list_off_tree tre =
 (root_off_tree tre) :: (topson_notleaf_node_list_off_tree tre)
;;

let root_topson_node_list_off_tree tre =
 (root_off_tree tre) :: (topson_node_list_off_tree tre)
;;

let root_topson_node_list_of_subtree_node_predicate_off_tree pre tre =
  let sut_l = subtree_list_of_node_predicate_off_tree pre tre in
  List.flatten (List.map root_topson_node_list_off_tree sut_l)
;;

let topson_node_list_of_node_predicate_off_tree pre tre =
  let sub_t = subtree_of_node_predicate_off_tree pre tre in
  topson_node_list_off_tree sub_t
;;

let topson_node_list_of_topson_node_predicate_off_tree pre tre =
  let tso_l = topson_node_list_off_tree tre in
  List.filter pre tso_l
;;

let rec father_list_off_tree = function
  | Tree_t.Empty -> []  
  | Tree_t.Leaf _ -> []
  | Tree_t.Inner (roo, tre_l) -> 
      roo :: List.flatten (List.map father_list_off_tree tre_l) 
;; (* all nodes except leaves *)

let noroot_node_list_off_tree tre =
  let n_l = node_list_off_tree tre in
  try List.tl n_l
  with Failure "tl" ->
    failwith "Tree seems to have only one node:Tree_v.noroot_node_list_off_tree"
;; (* all nodes except top *)

let rec noleaf_node_list_off_tree = function
  | Tree_t.Empty -> []
  | Tree_t.Leaf _ -> []
  | Tree_t.Inner (roo, tre_l) -> 
      roo :: List.flatten (List.map noleaf_node_list_off_tree tre_l)
;;

let noroot_noleaf_node_list_off_tree tre = 
  let son_tl = topson_tree_list_off_tree tre in
  List.flatten (List.map noleaf_node_list_off_tree son_tl)
;;

let noroot_notopson_noleaf_node_list_off_tree tre =
  let son_tl = topson_tree_list_off_tree tre in
  List.flatten (List.map noroot_noleaf_node_list_off_tree son_tl)
;;

let core_node_list = noroot_noleaf_node_list_off_tree;;

let middle_node_list = noroot_notopson_noleaf_node_list_off_tree;;

let grandson_node_list_off_tree tre =
  let nnl_l = noroot_node_list_off_tree tre in
  let tsn_l = topson_node_list_off_tree tre in
  List_v.exclusion_off_list_of_list nnl_l tsn_l
;;

let grandson_leaf_node_list_off_tree tre =
  let lno_l = leaf_node_list_off_tree tre in
  let tsn_l = topson_node_list_off_tree tre in
  List_v.exclusion_off_list_of_list lno_l tsn_l
;;

let grandson_notleaf_node_list_off_tree tre =
  let nrl_l = noroot_noleaf_node_list_off_tree tre in
  let tsn_l = topson_node_list_off_tree tre in
  List_v.exclusion_off_list_of_list nrl_l tsn_l
;;

let topson_leaf_node_list_off_tree tre =
  let tsn_l = topson_node_list_off_tree tre in
  let lno_l = leaf_node_list_off_tree tre in
  List_v.set_intersection_of_list_of_list lno_l tsn_l
;;

let only_topson_leaf_node_off_tree tre =
  let lea_l = topson_leaf_node_list_off_tree tre in
  List_v.element_off_one_element_list lea_l
;;

let only_topson_leaf_node_of_node_predicate_off_tree pre tre =
  let lea_l = topson_leaf_node_list_off_tree tre in
  List_v.only_element_of_predicate_off_list pre lea_l
;;

let subtree_list_off_tree tre =
  let rec apply = function
    | Tree_t.Empty -> []
    | Tree_t.Leaf _ -> []
    | Tree_t.Inner (roo, tre_l) as t -> 
	t :: List.flatten (List.map apply tre_l)
  in
  apply tre
;;

let root_n_subtree_doublet_list_off_tree tre =
  let rec apply = function
    | Tree_t.Empty -> []
    | Tree_t.Leaf _ -> []
    | Tree_t.Inner (roo, tre_l) as t -> 
	(roo, t) :: List.flatten (List.map apply tre_l)
  in
  apply tre
;;

let is_complete tre =
  let nod_l = node_list_off_tree tre in
  
  let nol_son_l = topson_notleaf_node_list_off_tree tre in
  let cur_l = noroot_notopson_noleaf_node_list_off_tree tre in 
  let lea_l = leaf_node_list_off_tree tre in
  
  List.length (nod_l)
    =
  (List.length nol_son_l) + (List.length cur_l) + (List.length lea_l) + 1
;;

let string_of_completeness tre =
  let nod_l = node_list_off_tree tre in
  
  let nol_son_l = topson_notleaf_node_list_off_tree tre in
  let cur_l = noroot_notopson_noleaf_node_list_off_tree tre in 
  let lea_l = leaf_node_list_off_tree tre in
  
    Format.sprintf "node list count                        = %i@.
                    topson_notleaf_node_list count         = %i@.
                    noroot_notopson_noleaf_node_list count = %i@.
                    leaf_node_list count                   = %i@. 
                    total count +1                         = %i@."  
								  
(List.length nod_l) 
(List.length nol_son_l) 
(List.length cur_l) 
(List.length lea_l)
( (List.length nol_son_l) + (List.length cur_l) + (List.length lea_l) + 1)
;;

(** {6 Iterating.} *)

let rec map f = function
  | Tree_t.Empty -> Tree_t.Empty
  | Tree_t.Leaf v -> 
      Tree_t.Leaf (f v)
  | Tree_t.Inner (roo, tre_l)   -> 
      Tree_t.Inner (f roo, List.map (map f) tre_l)
;; 

let rec iter f = function
  | Tree_t.Empty -> ()
  | Tree_t.Leaf v -> f v
  | Tree_t.Inner (roo, tre_l) -> f roo; List.iter (iter f) tre_l
;; 

let rec map2 f t_1 t_2 = 
  let rec apply_f accu t1 t2 =
    match (t1, t2) with
    | (Tree_t.Empty, Tree_t.Empty) -> Tree_t.Empty
    | (Tree_t.Leaf v1, Tree_t.Leaf v2) -> 
	Tree_t.Leaf (f v1 v2)
    | (Tree_t.Inner (roo1, tre_l1), Tree_t.Inner (roo2, tre_l2)) -> 
	Tree_t.Inner (f roo1 roo2, List.map2 (map2 f) tre_l1 tre_l2)
    | (_, _) -> invalid_arg "Tree_v.map2"
  in
  apply_f Tree_t.Empty t_1 t_2
;; 

let index_tree_off_tree idx map_list tre =
  let rec apply i = function
    | Tree_t.Empty -> Tree_t.Empty
    | Tree_t.Leaf lf -> Tree_t.Leaf i
    | Tree_t.Inner (roo, tre_l) -> 
	let idx_l = map_list tre_l in
	Tree_t.Inner (i, List.map2 apply idx_l tre_l) 
  in
  apply idx tre
;;

let node_filter_of_node_predicate_off_tree pre tre =
  let nod_l = node_list_off_tree tre in
  List.filter pre nod_l
;;

let node_list_of_node_predicate_off_tree pre tre =
  node_filter_of_node_predicate_off_tree pre tre
;;

let node_find_of_node_predicate_off_tree pre tre =
  let lst = node_filter_of_node_predicate_off_tree pre tre in
  if List.length lst = 0
  then failwith ("Not_found:"^nam_mod^".node_find_of_predicate_off_tree")
  else List.hd lst
;; 

let only_node_of_node_predicate_off_tree pre tre =
  let lst = node_filter_of_node_predicate_off_tree pre tre in
  if List.length lst = 0
  then failwith ("Not_found:"^nam_mod^".only_node_of_predicate_off_tree")
  else 
    if List.length lst > 1
    then failwith ("Several_nodes:"^nam_mod^".only_node_of_predicate_off_tree")
    else List.hd lst
;; 

let subtree_filter_of_tree_predicate_off_tree pre = 
  let rec apply acc = function 
    | Tree_t.Empty -> failwith ("Empty_tree:"^nam_mod^".node_filter")
    | Tree_t.Leaf v as t -> 
	if pre t then t :: acc else acc 
    | Tree_t.Inner (roo, tre_l) as t -> 
	if pre t
	then t :: List.flatten (List.map (apply acc) tre_l ) 
	else List.flatten (List.map (apply acc) tre_l ) 
  in
  apply [] 
;;


let subtree_find_of_tree_predicate_off_tree pre tre =
  let lst = subtree_filter_of_tree_predicate_off_tree pre tre in
  if List.length lst = 0
  then failwith ("Not_found:"^nam_mod^".subtree_find_of_tree_predicate_off_tree")
  else List.hd lst
;; 

let subtree_find_of_node_predicate_off_tree pre tre =
  let lst = subtree_filter_of_node_predicate_off_tree pre tre in
  if List.length lst = 0
  then failwith ("Not_found:"^nam_mod^".subtree_find_of_node_predicate_off_tree")
  else List.hd lst
;; 

let node_count_of_node_predicate_off_tree pre tre =
  let lst = node_filter_of_node_predicate_off_tree pre tre in
  List.length lst 
;;

let is_unique_of_node_predicate_off_tree pre tre =
  let cou_nod = node_count_of_node_predicate_off_tree pre tre in
  match cou_nod with
  | 0 -> failwith ("Not_found:"^nam_mod^".is_unique_of_node_off_tree")
  | 1 -> true
  | _ -> false
;;

let is_unique_of_node_off_tree nod tre =
  let nod_l = node_list_off_tree tre in
  List_v.is_once_of_element_of_list nod nod_l
;;

let non_unique_node_list_off_tree tre =
  let nod_l = node_list_off_tree tre in
  List_v.non_once_list_off_list nod_l
;;

let has_node_of_node_predicate_off_tree pre tre =
  let nod_l = node_list_off_tree tre in
  List.exists pre nod_l
;;

let has_topson_of_node_predicate_off_tree pre tre =
  let tsn_l = topson_node_list_off_tree tre in
  List.exists pre tsn_l
;;

let has_all_node_unique_of_tree tre =
  let nod_l = node_list_off_tree tre in
  List_v.is_once_list_of_list nod_l
;;

let depth_tree_off_tree tre = 
  let rec apply i = function
    | Tree_t.Empty -> Tree_t.Empty 
    | Tree_t.Leaf _ -> Tree_t.Leaf (i + 1)
    | Tree_t.Inner (roo, tre_l) -> 
	  Tree_t.Inner (i+1, List.map (apply (i+1)) tre_l)  
in
  apply 0 tre
;;

let node_n_depth_tree_off_tree tre = 
  let rec apply i = function
    | Tree_t.Empty -> Tree_t.Empty 
    | Tree_t.Leaf v -> Tree_t.Leaf (v, (i + 1))
    | Tree_t.Inner (roo, tre_l) -> 
	  Tree_t.Inner ((roo, i+1), List.map (apply (i+1)) tre_l)  
in
  apply 0 tre
;;

let node_n_depth_list_of_node_predicate_off_tree pre tre = 
  let nd_t = node_n_depth_tree_off_tree tre in
  node_filter_of_node_predicate_off_tree (fun (n,d) -> (pre n) ) nd_t
;;

let find_of_node_of_depth_off_tree nod dep tre =
  let nd_t = node_n_depth_tree_off_tree tre in
  let pre (n, d) = (n = nod && d = dep) in
  let lst = node_filter_of_node_predicate_off_tree pre nd_t in
  match lst with
  | [] -> failwith ("No_element:"^nam_mod^".find_of_node_of_depth_off_tree")
  | (n,d)::[] -> n
  | _ -> failwith ("Too_many_elements:"^nam_mod^".find_of_node_of_depth_off_tree")
;; 

let node_n_depth_list_of_node_of_depth_off_tree nod dep tre =  
  let nd_t = node_n_depth_tree_off_tree tre in
  let pre (n, d) = (n = nod && d = dep) in
  node_filter_of_node_predicate_off_tree pre nd_t
;; 

let is_sequential_of_node_n_depth_list dbt_l =
  let dep_l = Doublet_list_v.right_list_off_doublet_list dbt_l in
  let len = List.length dbt_l in
  let int_l = List_v.int_list_of_first_of_length 1 len in
  dep_l = List.rev int_l
;;

(** {6 Path} *)

let path_tree_off_tree tre = 
  let rec apply l = function
    | Tree_t.Empty -> empty
    | Tree_t.Leaf lf -> 
	Tree_t.Leaf (lf :: l)
    | Tree_t.Inner (roo, tre_l) ->
	let lst = roo :: l in
	let pth_tre_l = List.map (apply lst) tre_l in
	Tree_t.Inner (lst, pth_tre_l)
  in
  apply [] tre
;;

let path_list_off_tree tre =
  let pth_t = path_tree_off_tree tre in
  node_list_off_tree pth_t 
;;

let path_list_of_node_predicate_off_tree pre tre = 
  let pth_l = path_list_off_tree tre in
  List.filter (fun pth -> pre (List.hd pth)) pth_l
;;

let path_list_of_node_off_tree nod tre = 
  let pth_l = path_list_off_tree tre in
  List.filter (fun p -> List.hd p = nod) pth_l
;;

let path_of_node_predicate_off_tree pre tre = 
  if not (is_unique_of_node_predicate_off_tree pre tre)
  then 
    Error_messages_v.print_fatal_error nam_mod
      "path_of_node_off_tree" 
      "node were unique"
      "it is NOT unique" "check"
  else 
    List.hd (path_list_of_node_predicate_off_tree pre tre)
;;

let path_of_node_off_tree nod tre = 
  path_of_node_predicate_off_tree (fun n -> n = nod) tre
;;

let father_of_node_of_tree nod tre =
  try List.nth (path_of_node_off_tree nod tre) 1
  with Failure "nth" -> 
    failwith "Root_has_no_father:Tree_v.father_of_node_of_tree"
;;

let leaf_path_list_off_tree tre =
  let lf_l = leaf_node_list_off_tree tre in
  List.map (fun lf -> path_of_node_off_tree lf tre) lf_l
;;

let subtree_list_of_depth_off_tree dep tre =
  let nd_t = node_n_depth_tree_off_tree tre in 
  let nd_tl = 
    subtree_list_of_node_predicate_off_tree (fun (n, d) -> d = dep) 
      nd_t in
  List.map (fun t -> map (fun (n, d) -> n) t ) nd_tl
;;

let only_subtree_of_tree_predicate_of_depth_off_tree pre dep tre =
  let t_l = subtree_list_of_depth_off_tree dep tre in
  try List_v.only_element_of_predicate_off_list pre t_l
  with 
  | Failure "Not_only_element:List_v.only_element_of_predicate_off_list" ->
      failwith ("Too_many_subtrees:"^nam_mod^".only_subtree_of_tree_predicate_of_depth_off_tree")
  | Failure "No_element:List_v.only_element_of_predicate_off_list" ->
      failwith ("No_subtree:"^nam_mod^".only_subtree_of_tree_predicate_of_depth_off_tree")
;;

let first_subtree_of_tree_predicate_of_depth_off_tree pre dep tre =
  let t_l = subtree_list_of_depth_off_tree dep tre in
  List.hd t_l
;;

let find_subtree_of_tree_predicate_of_depth_off_tree pre dep tre =
  first_subtree_of_tree_predicate_of_depth_off_tree pre dep tre
;;

(** {6 Modifying.} *)

let replace_node nod = function
  | Tree_t.Empty -> failwith ("Empty:"^nam_mod^".replace_node")
  | Tree_t.Leaf _ -> Tree_t.Leaf nod
  | Tree_t.Inner (nod, elt_l) -> 
     make_of_node nod elt_l
;; 

let replace_root = replace_node;;

let replace_leaf lf = function
  | Tree_t.Empty -> failwith ("Empty:"^nam_mod^".replace_leaf")
  | Tree_t.Leaf lf -> make_of_leaf lf
  | Tree_t.Inner (nod, elt_l) as n -> n 
;; 

let replace_of_vertex_of_value_of_tree ver val_ tre =
    let f v x s = if s=v then x else s in
    map (f ver val_) tre
;;

let rec replace_of_node_predicate_of_value_of_tree pre val_ = function
  | Tree_t.Empty -> Tree_t.Empty
  | Tree_t.Leaf v as t ->
      if pre v
      then Tree_t.Leaf val_
      else t
  | Tree_t.Inner (nod, tre_l) ->
      if pre nod
      then Tree_t.Inner (val_, tre_l)
      else Tree_t.Inner (nod, 
	    List.map (replace_of_node_predicate_of_value_of_tree pre val_) tre_l)
;; 

let rec replace_subtree_of_node_predicate_of_subtree_of_tree pre sut = function
  | Tree_t.Empty -> Tree_t.Empty
  | Tree_t.Leaf lea as t ->
      if pre lea
      then sut
      else t
  | Tree_t.Inner (nod, tre_l) ->
      if pre nod
      then sut
      else Tree_t.Inner (nod, 
	   List.map (replace_subtree_of_node_predicate_of_subtree_of_tree pre sut) tre_l)
;; 

let left_add_tree_of_topson_tree_of_tree t tre =
  let roo = root_off_tree tre in
  let tst_l = topson_tree_list_off_tree tre in
  make roo (t :: tst_l) 
;;

let right_add_tree_of_topson_tree_of_tree t tre =
  let roo = root_off_tree tre in
  let tst_l = topson_tree_list_off_tree tre in
  make roo (tst_l @ [t]) 
;;

(** {6 Querying 2.} *)

let is_topson_of_node_off_tree nod = function
  | Tree_t.Empty 
  | Tree_t.Leaf _ -> false
  | Tree_t.Inner (roo, tre_l) as t -> 
      List.mem nod (topson_node_list_off_tree t) 
;;

let rec is_leaf_of_node_off_tree nod = function
  | Tree_t.Empty -> false
  | Tree_t.Leaf lf -> lf = nod
  | Tree_t.Inner (roo, tre_l) -> 
     List.mem true ( List.map (is_leaf_of_node_off_tree nod) tre_l)
;;

let is_topson_leaf_of_node_off_tree nod tre =
  (is_topson_of_node_off_tree nod tre)
    && 
  (is_leaf_of_node_off_tree nod tre)
;;

let is_inner_of_node_off_tree nod tre =
  let sub_tre = first_subtree_of_node_off_tree nod tre in
  is_inner sub_tre
;;

let has_unique_son_of_tree tre =
  let son_l = topson_node_list_off_tree tre in
  List.length son_l = 1
;;

let has_unique_leaf_son_of_tree tre =
  let son_l = topson_node_list_off_tree tre in
  let son = List.hd son_l in
  (has_unique_son_of_tree tre)
    && 
  (is_leaf_of_node_off_tree son tre)
;;

let has_unique_son_of_node_of_tree nod tre =
  let sub_tre = first_subtree_of_node_off_tree nod tre in
  has_unique_son_of_tree sub_tre
;;

let has_unique_leaf_son_of_node_of_tree nod tre =
  let sub_tre = first_subtree_of_node_off_tree nod tre in
  has_unique_leaf_son_of_tree sub_tre
;;

let is_father_of_node_of_sonnode_off_tree fth son tre =
  let sub_tre = first_subtree_of_node_off_tree fth tre in
  is_topson_of_node_off_tree son sub_tre 
;;

let has_homogeneous_topson_tree_list_of_tree = function
  | Tree_t.Empty -> true
  | Tree_t.Leaf lf -> true
  | Tree_t.Inner (roo, son_tl) -> 
      let b_l = List.map is_leaf son_tl in
      (List_v.is_repeated_list_of_list b_l)  
;;

let rec has_homogeneous_son_tree_list_of_tree = function
  | Tree_t.Empty -> true
  | Tree_t.Leaf lf -> true
  | Tree_t.Inner (roo, tre_l) as r_t -> 
      if not (has_homogeneous_topson_tree_list_of_tree r_t)
      then false
      else
	let boo_l = List.map has_homogeneous_son_tree_list_of_tree tre_l in
	if List.mem false boo_l
	then false
	else true
;;

let has_homogeneous_topson_tree_list_of_node_of_tree nod tre =
  let sub_t = first_subtree_of_node_off_tree nod tre in
  has_homogeneous_topson_tree_list_of_tree sub_t
;;

let first_inhomogeneous_node_off_tree tre =
  try node_find_of_node_predicate_off_tree 
    (fun n -> 
      not (has_homogeneous_topson_tree_list_of_node_of_tree n tre)
    ) 
    tre
  with Failure ("Not_found:Tree_v.node_find_of_node_predicate_off_tree") ->
    failwith ("Not_found:"^nam_mod^".first_inhomogeneous_node_off_tree")
;;

let first_inhomogeneous_subtree_off_tree tre =
  try subtree_find_of_tree_predicate_off_tree 
    (fun n -> 
      not (has_homogeneous_topson_tree_list_of_tree tre)
    ) 
    tre
  with Failure ("Not_found:Tree_v.subtree_find_of_predicate_off_tree") ->
    failwith ("Not_found:"^nam_mod^".first_inhomogeneous_subtree_off_tree")
;;

let first_inhomogeneous_node_n_son_node_off_tree tre =
  let nod = first_inhomogeneous_node_off_tree tre in
  let sub_t = first_subtree_of_node_off_tree nod tre in
  let son_tl = topson_tree_list_off_tree sub_t in
  let son_th = (List.hd son_tl) in
  
  let inh_son_t = try List.find 
      (fun n -> (is_leaf son_th) &&
	(not (is_leaf n) )) son_tl 
  with Not_found ->
    failwith ("Not_found:"^nam_mod^".first_inhomogeneous_node_n_son_node_off_tree")
  in
  let inh_son_nod = root_node_off_tree inh_son_t in
  (nod, inh_son_nod)
;;

(** {6 Naming} *)

let name_with_separator nam_e sep_d sep_l tre =

  let rec apply acc = function
  | Tree_t.Empty -> ""
  | Tree_t.Leaf lf -> 
      Format.sprintf "%s" (nam_e lf) 
  | Tree_t.Inner (roo, tre_l) -> 
      Format.sprintf "@.%s{%s%s@.%s}" 
	acc
	(nam_e roo) 
	sep_d 
	(List_v.name_with_separator 
	   (apply (acc ^ " ")) sep_l tre_l)  
  in
  apply "" tre
;;


let name nam_e tre = 
  name_with_separator nam_e "," " " tre
;;

let name_in_column nam_e sep_d tre =

  let rec apply acc = function
  | Tree_t.Empty -> ""
  | Tree_t.Leaf lf -> 
      Format.sprintf "%s" (nam_e lf) 
  | Tree_t.Inner (roo, tre_l) -> 
      Format.sprintf "@.%s{%s%s@.%s}" 
	acc
	(nam_e roo) 
	sep_d 
	(List_v.name_in_column
	   (apply (acc ^ " ")) tre_l)  
  in
  apply "" tre
;;

let name_linear nam_e sep_d tre =

  let rec apply acc = function
  | Tree_t.Empty -> ""
  | Tree_t.Leaf lf -> 
      Format.sprintf "%s" (nam_e lf) 
  | Tree_t.Inner (roo, tre_l) -> 
      Format.sprintf "%s{%s%s%s%s}" 
	acc
	(nam_e roo) 
	sep_d
	acc 
	(List_v.name_linear
	   (apply (acc ^ "  ")) tre_l)  
  in
  apply "" tre
;;

let has_some_leaf_of_tree_list tre_l =
  List.exists is_leaf tre_l
;;

let has_topson_of_leaf_predicate_of_tree prl tre =
  let lea_l = topson_leaf_node_list_off_tree tre in
  List.exists prl lea_l 
;;

(* Extraction *)

let leaf_of_leaf_predicate_of_node_predicate_off_tree pre_lea pre_nod tre =
  let sub_tre = 
    first_subtree_of_node_predicate_off_tree 
      pre_nod 
      tre 
  in
  
  try node_find_of_node_predicate_off_tree 
      pre_lea
      sub_tre 
  with Failure _ ->
    failwith "Not_found:Tree_v.leaf_of_leaf_predicate_of_node_predicate_off_tree"
;;

let has_a_topson_leaf_and_a_topson_node_of_leaf_predicate_of_node_predicate_off_tree pre_lea pre_nod tre =
  let tso_l = topson_node_list_off_tree tre in
  (List.exists pre_lea tso_l) 
    &&
  (List.exists pre_nod tso_l)
;;

let has_two_nodes_of_node_predicate_of_node_predicate_off_tree pre_no1 pre_no2 tre =
  (has_node_of_node_predicate_off_tree pre_no1 tre)
    &&
  (has_node_of_node_predicate_off_tree pre_no2 tre)
;;
