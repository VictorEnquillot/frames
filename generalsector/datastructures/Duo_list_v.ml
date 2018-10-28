(** {3 The Duo List functionalities.} *)

let nam_mod = "Duo_list_v.ml";;

(** {6 Making.} *)

let prepend lft rgt upp =
  (Duo_v.make lft rgt) :: upp
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

(** {6 Duo.} *)

let top = function
  | [] ->
      failwith ("Empty_duo_list:"^nam_mod^":top")
  | duo_l -> 
      List_v.last_element_off_list duo_l
;;

(** {6 First Duo_list components.} *)

let head_duo_off_duo_list = function
  | [] ->
      failwith ("Empty_duo_list:"^nam_mod^":head_duo_off_duo_list")
  | duo_l ->
      List.hd duo_l
;;

let upduo_list_off_duo_list = function
  | [] ->
      failwith ("Empty_duo_list:"^nam_mod^":upduo_list_off_duo_list")
  | duo_l -> 
      List.tl duo_l
;;  
 
let head_left_off_duo_list = function
  | [] ->
      failwith ("Empty_duo_list:"^nam_mod^":head_left_off_duo_list")
  | duo_l -> 
      let lvl = head_duo_off_duo_list duo_l in
      Duo_v.left_off_duo lvl
;;

let head_right_off_duo_list = function
  | [] ->
      failwith ("Empty_duo_list:"^nam_mod^":head_right_off_duo_list")
  | duo_l ->  
      let lvl = head_duo_off_duo_list duo_l in 
      Duo_v.right_off_duo lvl
;;

(** {6 Extracting.} *)

let right_list_off_duo_list = function
  | [] -> 
      failwith ("Empty_duo_list:"^nam_mod^":right_list_off_duo_list")
   | duo_l ->
      List.map Duo_v.right_off_duo duo_l
;;

let left_list_off_duo_list = function
  | [] -> 
      failwith ("Empty_duo_list:"^nam_mod^":left_list_off_duo_list")
  | duo_l ->
      List.map Duo_v.left_off_duo duo_l
;;

let duo_count_of_duo_list duo_l = 
 List.length duo_l
;;

let nth_duo_of_int_off_duo_list n = function
  | [] ->
      failwith ("Empty_duo_list:"^nam_mod^":nth_duo_of_int_off_duo_list")
  | duo_l -> 
      try List.nth duo_l n
      with Failure nth -> 
	failwith ("No_nth:"^nam_mod^":nth_duo_of_int_of_duo_list")
;;

let nth_left_of_int_off_duo_list n = function
  | [] ->
      failwith ("Empty_duo_list:"^nam_mod^":nth_left_of_int_off_duo_list")
  | duo_l -> 
      let (lft, _) = nth_duo_of_int_off_duo_list n duo_l in
      lft
;;

let nth_right_of_int_off_duo_list n = function
  | [] ->
      failwith ("Empty_duo_list:"^nam_mod^":nth_right_of_int_off_duo_list")
  | duo_l -> 
      let (_, rgt) = nth_duo_of_int_off_duo_list n duo_l in
      rgt
;;

let find_if_left prl = function
  | [] -> 
      failwith ("Empty_duo_list:"^nam_mod^":find_if_left")
  | duo_l ->
      let pre d = prl (Duo_v.left_off_duo d) in
      try List.find pre duo_l 
      with Not_found ->
	failwith ("Not_found:"^nam_mod^":find_if_left")
;;

let filter_if_left prl = function
  | [] -> 
      failwith ("Empty_duo_list:"^nam_mod^":filter_if_left")
  | duo_l ->
      let pre d = prl (Duo_v.left_off_duo d) in
      try List.filter pre duo_l 
      with Not_found ->
	failwith ("Not_found:"^nam_mod^":filter_if_left")
;;

let find_if_right prr = function
  | [] -> 
      failwith ("Empty_duo_list:"^nam_mod^":filter_if_right")
  | duo_l ->
      let pre d = prr (Duo_v.right_off_duo d) in
      try List.find pre duo_l 
      with Not_found ->
	failwith ("Not_found:"^nam_mod^":find_if_right")
;;

let filter_if_right prl = function
  | [] -> 
      failwith ("Empty_duo_list:"^nam_mod^":filter_if_right")
  | duo_l ->
      let pre d = prl (Duo_v.right_off_duo d) in
      try List.filter pre duo_l 
      with Not_found ->
	failwith ("Not_found:"^nam_mod^":filter_if_right")
;;

let duo_of_left_off_duo_list lft = function
  | [] -> 
      failwith ("Empty_duo_list:"^nam_mod^":duo_of_left_off_duo_list")
  | duo_l -> 
      try find_if_left (fun l -> l = lft) duo_l 
      with Failure s -> failwith s
;;

let duo_of_right_off_duo_list rgt = function
  | [] -> 
      failwith ("Empty_duo_list:"^nam_mod^":duo_of_right_off_duo_list")
  | duo_l -> 
      try find_if_right (fun r -> r = rgt) duo_l 
      with Failure s -> failwith s
;;

let right_of_left_off_duo_list lft = function
  | [] -> 
      Error_messages_v.print_fatal_error nam_mod 
	"right_of_left_off_duo_list"
	"duo_list were NOT empty"
	"duo_list IS empty"
	"Check"
  | duo_l ->
      let d = 
	try duo_of_left_off_duo_list lft duo_l 
	with Failure s -> failwith s
      in
      Duo_v.right_off_duo d
;;

let left_of_right_off_duo_list rgt = function
  | [] -> 
      Error_messages_v.print_fatal_error nam_mod 
	"left_of_right_off_duo_list"
	"duo_list were NOT empty"
	"duo_list IS empty"
	"Check"
  | duo_l -> 
      let d = 
	try duo_of_right_off_duo_list rgt duo_l
	with Failure s -> failwith s
      in
      Duo_v.left_off_duo d
;;

let duo_list_of_left_off_duo_list lft = function
  | [] -> 
      failwith ("Empty_list:"^nam_mod^":left_of_right_off_duo_list")

  | duo_l ->
      List_v.right_list_included_of_predicate_of_list 
	(fun l -> lft = Duo_v.left_off_duo l) duo_l
;; (* extraction starting at left included *)

let upduo_list_of_left_off_duo_list lft = function
  | [] -> 
      Error_messages_v.print_fatal_error nam_mod 
	"upduo_list_of_left_off_duo_list"
	"duo_list were NOT empty"
	"duo_list IS empty"
	"Check"
  | duo_l ->
      List_v.right_list_excluded_of_predicate_of_list 
	(fun l -> lft = Duo_v.left_off_duo l) duo_l
;; (* extraction starting at left excluded *)

let duo_left_once_list_of_left_off_duo_list lft = function
  | [] -> 
      Error_messages_v.print_fatal_error nam_mod 
	"duo_left_once_list_of_left_off_duo_list"
	"duo_list were NOT empty"
	"duo_list IS empty"
	"Check"
  | duo_l ->
      List.filter (fun (l, r) -> l = lft ) duo_l 
;; (* extraction of all duos [(lft, _); ... ; (lft, _)] *)

let duo_right_once_list_of_right_off_duo_list rgt = function
  | [] -> 
      Error_messages_v.print_fatal_error nam_mod 
	"duo_right_once_list_of_right_off_duo_list"
	"duo_list were NOT empty"
	"duo_list IS empty"
	"Check"
  | duo_l ->
      List.filter (fun (l, r) -> r = rgt ) duo_l 
;; (* extraction of all duos with same right element [(_, r); ... ; (_; r)] *)

(** {6 Querying.} *)

let has_left lft = function
  | [] -> 
      Error_messages_v.print_fatal_error nam_mod 
	"has_left"
	"duo_list were NOT empty"
	"duo_list IS empty"
	"Check"
  | duo_l ->
      let l_l = left_list_off_duo_list duo_l in
      List.mem lft l_l
;;

let has_right rgt = function
  | [] -> 
      Error_messages_v.print_fatal_error nam_mod 
	"has_right"
	"duo_list were NOT empty"
	"duo_list IS empty"
	"Check"
  | duo_l ->
      let r_l = right_list_off_duo_list duo_l in
      List.mem rgt r_l
;;

let swap duo_l =
  List.map Duo_v.swap duo_l 
;;

(** {6 Iterating.} *)

let map f = function
  | [] -> 
      Error_messages_v.print_fatal_error nam_mod "map"
	"duo_list were NOT empty"
	"duo_list IS empty"
	"Check"
  | duo_l ->
      List.map (Duo_v.map f) duo_l
;;

let map_left fl  = function
  | [] -> 
      Error_messages_v.print_fatal_error nam_mod 
	"map_left"
	"duo_list were NOT empty"
	"duo_list IS empty"
	"Check"
  | duo_l ->
  List.map (Duo_v.map_left fl) duo_l
;;

let map_right fr  = function
  | [] -> 
      Error_messages_v.print_fatal_error nam_mod 
	"map_right"
	"duo_list were NOT empty"
	"duo_list IS empty"
	"Check"
  | duo_l ->
      List.map (Duo_v.map_right fr) duo_l
;;

let iter f  = function
  | [] -> 
      Error_messages_v.print_fatal_error nam_mod 
	"iter"
	"duo_list were NOT empty"
	"duo_list IS empty"
	"Check"
  | duo_l ->
      List.iter (Duo_v.iter f) duo_l
;;

let map2 f duo_l_1 duo_l_2 =
  List.map2 (Duo_v.map2 f) duo_l_1 duo_l_2
;;

let iter2 f duo_l_1 duo_l_2 =
  List.iter2 (Duo_v.iter2 f) duo_l_1 duo_l_2
;;

let list_of_duo_list f  = function
  | [] -> 
      Error_messages_v.print_fatal_error nam_mod 
	"list_of_duo_list"
	"duo_list were NOT empty"
	"duo_list IS empty"
	"Check"
  | duo_l ->
      List.map (fun (a, b) -> f a b ) duo_l
;;

let first_left_n_right_list_of_duo_list  = function
  | [] -> 
      Error_messages_v.print_fatal_error nam_mod 
	"first_left_n_right_list_of_duo_list"
	"duo_list were NOT empty"
	"duo_list IS empty"
	"Check"
  | duo_l ->
  let b_l = snd (List.split duo_l) in
  let a = List.hd (fst (List.split duo_l) ) in
  (a, b_l)
;;(* 
     ("a", ["b"; "c"; "d"; "c"; "d"; "d"]) = first_left_n_right_list_of_duo_list [("a", "b");("a", "c");("a", "d");("b", "c");("b", "d");("c", "d")] 
   *) 

let once_left_n_right_list_list_of_duo_list = function
  | [] -> 
      Error_messages_v.print_fatal_error nam_mod 
	"once_left_n_right_list_list_of_duo_list"
	"duo_list were NOT empty"
	"duo_list IS empty"
	"Check"
  | duo_l ->
      let or_l =  (* once right list *)
	(List_v.left_once_list_off_list (fst (List.split duo_l))) in
      let ll =  
	List.map (fun e -> duo_left_once_list_of_left_off_duo_list e duo_l) or_l 
      in
      List.map first_left_n_right_list_of_duo_list ll 
;;(*
    [("a", ["b"; "c"; "d"]); ("b", ["c"; "d"]); ("c", ["d"])] = 
    once_left_n_right_list_list_of_duo_list [("a", "b");("a", "c");("a", "d");("b", "c");("b", "d");("c", "d")] 
   *)
    
(** {6 Naming} *)
    
let int_indexed_list_of_list lst =
  let len = List.length lst in
  if len <= 0 
  then failwith ("Empty_duo_list:"^nam_mod^":int_indexed_list_of_list")
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

let name nam = function
  | [] -> 
      Error_messages_v.print_fatal_error nam_mod 
	"name"
	"duo_list were NOT empty"
	"duo_list IS empty"
	"Check"
  | duo_l ->
  List_v.name (Duo_v.name nam) duo_l
;;

let name_with_separator nam sep = function
  | [] -> 
      Error_messages_v.print_fatal_error nam_mod 
	"map"
	"duo_list were NOT empty"
	"duo_list IS empty"
	"Check"
  | duo_l ->
  List_v.name_with_separator (Duo_v.name nam) sep duo_l
;;

let name_in_column nam = function
  | [] -> 
      Error_messages_v.print_fatal_error nam_mod 
	"map"
	"duo_list were NOT empty"
	"duo_list IS empty"
	"Check"
  | duo_l ->
  List_v.name_in_column (Duo_v.name nam) duo_l
;;

let store lft rgt upp =
  if not ( has_left lft upp )
  then prepend lft rgt upp 
  else failwith ("Already_stored:"^nam_mod^":store")
;;

let replace_right_of_right_of_left_off_duo_list rig lef = function
  | [] -> 
      Error_messages_v.print_fatal_error nam_mod 
	"replace_right_of_right_of_left_predicate_off_duo_list"
	"duo_list were NOT empty"
	"duo_list IS empty"
	"Check"
  | duo_l ->      
      List_v.replace_of_predicate_of_element_of_list 
	(fun (k, v) -> k=lef) (lef, rig) duo_l
;;

let sort_by_left com_lef duo_l =
  let com (l1, r1) (l2, r2) = com_lef l1 l2 in
  List.sort com duo_l
;;

let sort_by_right com_rig duo_l =
  let com (l1, r1) (l2, r2) = com_rig r1 r2 in
  List.sort com duo_l
;;

let duo_list_of_list lis =
  
  let rec apply acc = function
    | [] -> acc
    | l -> 
	let (tri, rem_l) = List_v.first_duo_n_remainder_list_off_list l in
	apply (tri :: acc ) rem_l
  in

  if (2*((List.length lis)/2) <> (List.length lis))
  then failwith ("List_length_not_modulo_2:"^nam_mod^".duo_list_of_list")
  else apply [] (List.rev lis)
;;

let list_of_duo_list duo_l =
  List.flatten (List.map Duo_v.list_of_duo duo_l)
;;

let list_duo_of_list lis =
  let len_lis = List.length lis in
  let len_hal = len_lis / 2 in
  if (2*len_hal) <> (len_lis)
  then failwith ("List_length_not_modulo_2:"^nam_mod^".list_duo_of_list")
  else List_v.first_elements_n_remainder_of_count_off_list len_hal lis
;;
