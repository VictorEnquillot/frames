(** {3 The Doublet List functionalities.} *)

let nam_mod = "Doublet_list_v.ml";;

(** {6 Making.} *)

let prepend lft rgt upp =
  (Doublet_v.make lft rgt) :: upp
;;

let make l_l r_l =
  if List.length l_l <> List.length r_l 
  then
      Error_messages_v.print_fatal_error nam_mod 
      "make"
      "list have same length"
      (Format.sprintf "left list length = %i right list length = %i" (List.length l_l) (List.length r_l)) 
      "Check"
  else
    List.combine l_l r_l
;;

(** {6 Doublet.} *)

let top = function
  | [] ->
      failwith ("Empty_doublet_list:"^nam_mod^":top")
  | dol -> 
      List_v.last_element_off_list dol
;;

(** {6 First Doublet_list components.} *)

let head_doublet_off_doublet_list = function
  | [] ->
      failwith ("Empty_doublet_list:"^nam_mod^":head_doublet_off_doublet_list")
  | dol ->
      List.hd dol
;;

let updoublet_list_off_doublet_list = function
  | [] ->
      failwith ("Empty_doublet_list:"^nam_mod^":updoublet_list_off_doublet_list")
  | dol -> 
      List.tl dol
;;  
 
let head_left_off_doublet_list = function
  | [] ->
      failwith ("Empty_doublet_list:"^nam_mod^":head_left_off_doublet_list")
  | dol -> 
      let lvl = head_doublet_off_doublet_list dol in
      Doublet_v.left_off_doublet lvl
;;

let head_right_off_doublet_list = function
  | [] ->
      failwith ("Empty_doublet_list:"^nam_mod^":head_right_off_doublet_list")
  | dol ->  
      let lvl = head_doublet_off_doublet_list dol in 
      Doublet_v.right_off_doublet lvl
;;

(** {6 Extracting.} *)

let right_list_off_doublet_list = function
  | [] -> 
      failwith ("Empty_doublet_list:"^nam_mod^":right_list_off_doublet_list")
   | dol ->
      List.map Doublet_v.right_off_doublet dol
;;

let left_list_off_doublet_list = function
  | [] -> 
      failwith ("Empty_doublet_list:"^nam_mod^":left_list_off_doublet_list")
  | dol ->
      List.map Doublet_v.left_off_doublet dol
;;

let doublet_count_of_doublet_list dol = 
 List.length dol
;;

let nth_doublet_of_int_off_doublet_list n = function
  | [] ->
      failwith ("Empty_doublet_list:"^nam_mod^":nth_doublet_of_int_off_doublet_list")
  | dol -> 
      try List.nth dol n
      with Failure nth -> 
	failwith ("No_nth:"^nam_mod^":nth_doublet_of_int_of_doublet_list")
;;

let nth_left_of_int_off_doublet_list n = function
  | [] ->
      failwith ("Empty_doublet_list:"^nam_mod^":nth_left_of_int_off_doublet_list")
  | dol -> 
      let (lft, _) = nth_doublet_of_int_off_doublet_list n dol in
      lft
;;

let nth_right_of_int_off_doublet_list n = function
  | [] ->
      failwith ("Empty_doublet_list:"^nam_mod^":nth_right_of_int_off_doublet_list")
  | dol -> 
      let (_, rgt) = nth_doublet_of_int_off_doublet_list n dol in
      rgt
;;

let find_if_left prl = function
  | [] -> 
      failwith ("Empty_doublet_list:"^nam_mod^":find_if_left")
  | dol ->
      let pre d = prl (Doublet_v.left_off_doublet d) in
      try List.find pre dol 
      with Not_found ->
	failwith ("Not_found:"^nam_mod^":find_if_left")
;;

let filter_if_left prl = function
  | [] -> 
      failwith ("Empty_doublet_list:"^nam_mod^":filter_if_left")
  | dol ->
      let pre d = prl (Doublet_v.left_off_doublet d) in
      try List.filter pre dol 
      with Not_found ->
	failwith ("Not_found:"^nam_mod^":filter_if_left")
;;

let find_if_right prr = function
  | [] -> 
      failwith ("Empty_doublet_list:"^nam_mod^":filter_if_right")
  | dol ->
      let pre d = prr (Doublet_v.right_off_doublet d) in
      try List.find pre dol 
      with Not_found ->
	failwith ("Not_found:"^nam_mod^":find_if_right")
;;

let filter_if_right prl = function
  | [] -> 
      failwith ("Empty_doublet_list:"^nam_mod^":filter_if_right")
  | dol ->
      let pre d = prl (Doublet_v.right_off_doublet d) in
      try List.filter pre dol 
      with Not_found ->
	failwith ("Not_found:"^nam_mod^":filter_if_right")
;;

let doublet_of_left_off_doublet_list lft = function
  | [] -> 
      failwith ("Empty_doublet_list:"^nam_mod^":doublet_of_left_off_doublet_list")
  | dol -> 
      try find_if_left (fun l -> l = lft) dol 
      with Failure s ->	failwith s
;;

let doublet_of_right_off_doublet_list rgt = function
  | [] -> 
      failwith ("Empty_doublet_list:"^nam_mod^":doublet_of_right_off_doublet_list")
  | dol -> 
      try find_if_right (fun r -> r = rgt) dol 
      with Failure s -> failwith s
;;

let right_of_left_off_doublet_list lft = function
  | [] -> 
      Error_messages_v.print_fatal_error nam_mod 
	"right_of_left_off_doublet_list"
	"doublet_list were NOT empty"
	"doublet_list IS empty"
	"Check"
  | dol ->
      let d = 
	try doublet_of_left_off_doublet_list lft dol 
	with Failure s -> failwith s
      in
      Doublet_v.right_off_doublet d
;;

let left_of_right_off_doublet_list rgt = function
  | [] -> 
      Error_messages_v.print_fatal_error nam_mod 
	"left_of_right_off_doublet_list"
	"doublet_list were NOT empty"
	"doublet_list IS empty"
	"Check"
  | dol -> 
      let d = 
	try doublet_of_right_off_doublet_list rgt dol
	with Failure s -> failwith s
      in
      Doublet_v.left_off_doublet d
;;

let doublet_list_of_left_off_doublet_list lft = function
  | [] -> 
      failwith ("Empty_list:"^nam_mod^":left_of_right_off_doublet_list")

  | dol ->
      List_v.right_list_included_of_predicate_of_list 
	(fun l -> lft = Doublet_v.left_off_doublet l) dol
;; (* extraction starting at left included *)

let updoublet_list_of_left_off_doublet_list lft = function
  | [] -> 
      Error_messages_v.print_fatal_error nam_mod 
	"updoublet_list_of_left_off_doublet_list"
	"doublet_list were NOT empty"
	"doublet_list IS empty"
	"Check"
  | dol ->
      List_v.right_list_excluded_of_predicate_of_list 
	(fun l -> lft = Doublet_v.left_off_doublet l) dol
;; (* extraction starting at left excluded *)

let doublet_left_once_list_of_left_off_doublet_list lft = function
  | [] -> 
      Error_messages_v.print_fatal_error nam_mod 
	"doublet_left_once_list_of_left_off_doublet_list"
	"doublet_list were NOT empty"
	"doublet_list IS empty"
	"Check"
  | dol ->
      List.filter (fun (l, r) -> l = lft ) dol 
;; (* extraction of all doublets [(lft, _); ... ; (lft, _)] *)

let doublet_right_once_list_of_right_off_doublet_list rgt = function
  | [] -> 
      Error_messages_v.print_fatal_error nam_mod 
	"doublet_right_once_list_of_right_off_doublet_list"
	"doublet_list were NOT empty"
	"doublet_list IS empty"
	"Check"
  | dol ->
      List.filter (fun (l, r) -> r = rgt ) dol 
;; (* extraction of all doublets with same right element [(_, r); ... ; (_; r)] *)

(** {6 Querying.} *)

let has_left lft = function
  | [] -> 
      Error_messages_v.print_fatal_error nam_mod 
	"has_left"
	"doublet_list were NOT empty"
	"doublet_list IS empty"
	"Check"
  | dol ->
      let l_l = left_list_off_doublet_list dol in
      List.mem lft l_l
;;

let has_right rgt = function
  | [] -> 
      Error_messages_v.print_fatal_error nam_mod 
	"has_right"
	"doublet_list were NOT empty"
	"doublet_list IS empty"
	"Check"
  | dol ->
      let r_l = right_list_off_doublet_list dol in
      List.mem rgt r_l
;;

let swap dol =
  List.map Doublet_v.swap dol 
;;

(** {6 Iterating.} *)

let map fl fr = function
  | [] -> 
      Error_messages_v.print_fatal_error nam_mod "map"
	"doublet_list were NOT empty"
	"doublet_list IS empty"
	"Check"
  | dol ->
      List.map (Doublet_v.map fl fr) dol
;;

let map_left fl  = function
  | [] -> 
      Error_messages_v.print_fatal_error nam_mod 
	"map_left"
	"doublet_list were NOT empty"
	"doublet_list IS empty"
	"Check"
  | dol ->
  List.map (Doublet_v.map_left fl) dol
;;

let map_right fr  = function
  | [] -> 
      Error_messages_v.print_fatal_error nam_mod 
	"map_right"
	"doublet_list were NOT empty"
	"doublet_list IS empty"
	"Check"
  | dol ->
      List.map (Doublet_v.map_right fr) dol
;;

let iter fe fi  = function
  | [] -> 
      Error_messages_v.print_fatal_error nam_mod 
	"iter"
	"doublet_list were NOT empty"
	"doublet_list IS empty"
	"Check"
  | dol ->
      List.iter (Doublet_v.iter fe fi) dol
;;

let map2 fe fi dol_1 dol_2 =
  List.map2 (Doublet_v.map2 fe fi) dol_1 dol_2
;;

let iter2 fe fi dol_1 dol_2 =
  List.iter2 (Doublet_v.iter2 fe fi) dol_1 dol_2
;;

let list_off_doublet_list f  = function
  | [] -> 
      Error_messages_v.print_fatal_error nam_mod 
	"list_off_doublet_list"
	"doublet_list were NOT empty"
	"doublet_list IS empty"
	"Check"
  | dol ->
      List.map (fun (a, b) -> f a b ) dol
;;

let first_left_n_right_list_of_doublet_list  = function
  | [] -> 
      Error_messages_v.print_fatal_error nam_mod 
	"first_left_n_right_list_of_doublet_list"
	"doublet_list were NOT empty"
	"doublet_list IS empty"
	"Check"
  | dol ->
  let b_l = snd (List.split dol) in
  let a = List.hd (fst (List.split dol) ) in
  (a, b_l)
;;(* 
     ("a", ["b"; "c"; "d"; "c"; "d"; "d"]) = first_left_n_right_list_of_doublet_list [("a", "b");("a", "c");("a", "d");("b", "c");("b", "d");("c", "d")] 
   *) 

let once_left_n_right_list_list_of_doublet_list = function
  | [] -> 
      Error_messages_v.print_fatal_error nam_mod 
	"once_left_n_right_list_list_of_doublet_list"
	"doublet_list were NOT empty"
	"doublet_list IS empty"
	"Check"
  | dol ->
      let or_l =  (* once right list *)
	(List_v.left_once_list_off_list (fst (List.split dol))) in
      let ll =  
	List.map (fun e -> doublet_left_once_list_of_left_off_doublet_list e dol) or_l 
      in
      List.map first_left_n_right_list_of_doublet_list ll 
;;(*
    [("a", ["b"; "c"; "d"]); ("b", ["c"; "d"]); ("c", ["d"])] = 
    once_left_n_right_list_list_of_doublet_list [("a", "b");("a", "c");("a", "d");("b", "c");("b", "d");("c", "d")] 
   *)
    
(** {6 Naming} *)
    
let int_indexed_list_of_list lst =
  let len = List.length lst in
  if len <= 0 
  then failwith ("Empty_doublet_list:"^nam_mod^":int_indexed_list_of_list")
  else
    begin
      let int_l = List_v.int_mintomax_list_of_length len in
      make lst int_l
    end
;;

let from_one_int_indexed_list_of_list lst =
  let i_l = int_indexed_list_of_list lst in
  List.map (fun (e, i) -> (e, i+1)) i_l 
;;

let int_maxtomin_indexed_list_of_minimum_of_list min lst =
  let len = List.length lst in
  if len <= 0 
  then failwith ("Empty_list:"^nam_mod^":int_maxtomin_indexed_list_of_list")
  else
    begin
      let int_l = List_v.int_maxtomin_list_of_minimum_of_length min len in
      make lst int_l
    end
;;

let int_mintomax_indexed_list_of_minimum_of_list min lst =
  let len = List.length lst in
  if len <= 0 
  then failwith ("Empty_list:"^nam_mod^":int_maxtomin_indexed_list_of_list")
  else
    begin
      let int_l = List_v.int_mintomax_list_of_minimum_of_length min len in
      make lst int_l
    end
;;

let index_indexed_list_of_list lst =
  let len = List.length lst in
  if len <= 0 
  then failwith ("Empty_list:"^nam_mod^":ordinalindexed_list_of_list")
  else
    begin
      let int_l = List_v.int_mintomax_list_of_length len in
      let idx_l = List.map Index_p.make int_l in
      make lst idx_l
    end
;;

let ordinal_indexed_list_of_list lst =
  let len = List.length lst in
  if len <= 0 
  then failwith ("Empty_list:"^nam_mod^":ordinal_indexed_list_of_list")
  else
    let int_l = List_v.int_mintomax_list_of_minimum_of_length 1 len in
    let ord_l = List.map Ordinal_p.make int_l in
    make lst ord_l
;;

let triangular_pair_list_of_list = function
  | [] -> 
      Error_messages_v.print_fatal_error nam_mod 
	"triangular_pair_list_of_list"
	"list were NOT empty"
	"list IS empty"
	"Check"
  | lst ->
      let il = int_indexed_list_of_list lst in 
      let apply l = 
	List.map 
	  (fun (e, i) ->  
	    List.map
	      (fun (f, j) -> 
		(if j > i
		then l @ [(e, f)]
		else l  )
  	      ) il
	  ) il
      in
      List.flatten (List.flatten (apply []))
;;

(** {6 Naming} *)

let name nam_l nam_r = function
  | [] -> 
      Error_messages_v.print_fatal_error nam_mod 
	"name"
	"doublet_list were NOT empty"
	"doublet_list IS empty"
	"Check"
  | dol ->
  List_v.name (Doublet_v.name nam_l nam_r) dol
;;

let name_with_separator nam_l nam_r sep = function
  | [] -> 
      Error_messages_v.print_fatal_error nam_mod 
	"map"
	"doublet_list were NOT empty"
	"doublet_list IS empty"
	"Check"
  | dol ->
  List_v.name_with_separator (Doublet_v.name nam_l nam_r) sep dol
;;

let name_in_column nam_l nam_r dol =
  name_with_separator nam_l nam_r ";\n   " dol
;;

let store lft rgt upp =
  if not ( has_left lft upp )
  then prepend lft rgt upp 
  else failwith ("Already_stored:"^nam_mod^":store")
;;

let replace_right_of_right_of_left_off_doublet_list rig lef = function
  | [] -> 
      Error_messages_v.print_fatal_error nam_mod 
	"replace_right_of_right_of_left_predicate_off_doublet_list"
	"doublet_list were NOT empty"
	"doublet_list IS empty"
	"Check"
  | dol ->      
      List_v.replace_of_predicate_of_element_of_list 
	(fun (k, v) -> k=lef) (lef, rig) dol
;;

let sort_by_left com_lef dol =
  let com (l1, r1) (l2, r2) = com_lef l1 l2 in
  List.sort com dol
;;

let sort_by_right com_rig dol =
  let com (l1, r1) (l2, r2) = com_rig r1 r2 in
  List.sort com dol
;;
