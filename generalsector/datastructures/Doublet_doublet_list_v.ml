(** {3 The functionalities for a Doublet Doublet List} *) 

let nam_mod = "Doublet_doublet_list_v";;

(** {6 Modules.} *)


(** {6 Making.} *)

let prepend a_n_b c upp =
  (Doublet_v.make a_n_b c) :: upp

;;
let make a_l b_l c_l =
  let a_n_b_l = Doublet_list_v.make a_l b_l in
  Doublet_list_v.make a_n_b_l c_l in
;;

(** {6 Doublet.} *)

let top dbl =
  List_v.last_element_off_list dbl
;;

(** {6 First Doublet_list components.} *)

let head_doublet_off_doublet_list dbl =
  List.hd dbl
;;

let updoublet_list_off_doublet_list dbl =
  List.tl dbl
;;  
 
let head_left_off_doublet_list dbl =
  let lvl = head_doublet_off_doublet_list dbl in
  Doublet_v.left_off_doublet lvl
;;

let head_right_off_doublet_list dbl = 
  let lvl = head_doublet_off_doublet_list dbl in 
  Doublet_v.right_off_doublet lvl
;;

(** {6 Extracting.} *)

let right_list_off_doublet_list dbl =
  List.map Doublet_v.right_off_doublet dbl
;;

let left_list_off_doublet_list dbl =
  List.map Doublet_v.left_off_doublet dbl
;;

let doublet_count_of_doublet_list dbl = 
 List.length dbl
;;

let nth_doublet_of_int_off_doublet_list n dbl =
  try List.nth dbl n
  with Failure nth -> 
    failwith ("No_nth:Doublet_list_v.nth_doublet_of_int_of_doublet_list")
;;

let nth_left_of_int_off_doublet_list n dbl =
  let (lft, _) = nth_doublet_of_int_off_doublet_list n dbl in
  lft
;;

let nth_right_of_int_off_doublet_list n dbl =
  let (_, rgt) = nth_doublet_of_int_off_doublet_list n dbl in
  rgt
;;

let find_if_left prl dbl =
  let pre d = prl (Doublet_v.left_off_doublet d) in
  try List.find pre dbl 
  with Not_found ->
    failwith ("Not_found:Doublet_list_v.find_if_left")
;;

let filter_if_left prl dbl =
  let pre d = prl (Doublet_v.left_off_doublet d) in
  try List.filter pre dbl 
  with Not_found ->
    failwith ("Not_found:Doublet_list_v.filter_if_left")
;;

let find_if_right prr dbl =
  let pre d = prr (Doublet_v.right_off_doublet d) in
  try List.find pre dbl 
  with Not_found ->
    failwith ("Not_found:Doublet_list_v.find_if_right")
;;

let filter_if_right prr dbl =
  let pre d = prr (Doublet_v.right_off_doublet d) in
  try List.filter pre dbl 
  with Not_found ->
    failwith ("Not_found:Doublet_list_v.filter_if_right")
;;

let doublet_of_left_off_doublet_list lft dbl = 
  try find_if_left (fun l -> l = lft) dbl 
  with Failure "Not_found:Doublet_list_v.find_if_left" ->
    failwith ("Not_found:Doublet_list_v.doublet_of_left_off_doublet_list")
;;

let doublet_of_right_off_doublet_list rgt dbl = 
  try find_if_right (fun r -> r = rgt) dbl 
  with Failure "Not_found:Doublet_list_v.find_if_right" ->
    failwith ("Not_found:Doublet_list_v.doublet_of_right_off_doublet_list")
;;

let right_of_left_off_doublet_list lft dbl = 
  let d = 
    try doublet_of_left_off_doublet_list lft dbl 
    with Failure "Not_found:Doublet_list_v.doublet_of_left_off_doublet_list" ->
      failwith ("Not_found:Doublet_list_v.right_of_left_off_doublet_list")
  in
  Doublet_v.right_off_doublet d
;;

let left_of_right_off_doublet_list rgt dbl = 
  let d = 
    try doublet_of_right_off_doublet_list rgt dbl
    with Failure "Not_found:Doublet_list_v.doublet_of_right_off_doublet_list" ->
      failwith ("Not_found:Doublet_list_v.left_of_right_off_doublet_list")
  in
  Doublet_v.left_off_doublet d
;;

let doublet_list_of_left_off_doublet_list lft dbl =
  List_v.right_list_included_of_predicate_of_list 
    (fun l -> lft = Doublet_v.left_off_doublet l) dbl
;; (* extraction starting at left included *)

let updoublet_list_of_left_off_doublet_list lft dbl =
  List_v.right_list_excluded_of_predicate_of_list 
    (fun l -> lft = Doublet_v.left_off_doublet l) dbl
;; (* extraction starting at left excluded *)

let doublet_left_once_list_of_left_off_doublet_list lft dbl =
  List.filter (fun (l, r) -> l = lft ) dbl 
;; (* extraction of all doublets [(lft, _); ... ; (lft, _)] *)

let doublet_right_once_list_of_right_off_doublet_list rgt dbl =
  List.filter (fun (l, r) -> r = rgt ) dbl 
;; (* extraction of all doublets with same right element [(_, r); ... ; (_; r)] *)

(** {6 Querying.} *)

let has_left lft dbl =
  let l_l = left_list_off_doublet_list dbl in
  List.mem lft l_l
;;

let has_right rgt dbl =
  let r_l = right_list_off_doublet_list dbl in
  List.mem rgt r_l
;;

(** {6 Iterating.} *)

let map fl fr dbl =
  List.map (Doublet_v.map fl fr) dbl
;;

let map_left fl dbl =
  List.map (Doublet_v.map_left fl) dbl
;;

let map_right fr dbl =
  List.map (Doublet_v.map_right fr) dbl
;;

let iter fe fi dbl =
  List.iter (Doublet_v.iter fe fi) dbl
;;

let map2 fe fi dbl_1 dbl_2 =
  List.map2 (Doublet_v.map2 fe fi) dbl_1 dbl_2
;;

let list_off_doublet_list f dbl =
  List.map (fun (a, b) -> f a b ) dbl
;;

let first_left_n_right_list_of_doublet_list dbl =
  let b_l = snd (List.split dbl) in
  let a = List.hd (fst (List.split dbl) ) in
  (a, b_l)
;;(* 
("a", ["b"; "c"; "d"; "c"; "d"; "d"]) = first_left_n_right_list_of_doublet_list [("a", "b");("a", "c");("a", "d");("b", "c");("b", "d");("c", "d")] 
*) 

let once_left_n_right_list_list_of_doublet_list dbl =
  let or_l =  (* once right list *)
    (List_v.left_once_list_off_list (fst (List.split dbl))) in
  let ll =  
    List.map (fun e -> doublet_left_once_list_of_left_off_doublet_list e dbl) or_l 
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
  then failwith "Empty_list:Doublet_list_v.ordinalindexed_list_of_list"
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
  then failwith "Empty_list:Doublet_list_v.int_maxtomin_indexed_list_of_list"
  else
    begin
      let int_l = List_v.int_maxtomin_list_of_minimum_of_length min len in
      make lst int_l
    end
;;

let int_mintomax_indexed_list_of_minimum_of_list min lst =
  let len = List.length lst in
  if len <= 0 
  then failwith "Empty_list:Doublet_list_v.int_maxtomin_indexed_list_of_list"
  else
    begin
      let int_l = List_v.int_mintomax_list_of_minimum_of_length min len in
      make lst int_l
    end
;;

let index_indexed_list_of_list lst =
  let len = List.length lst in
  if len <= 0 
  then failwith "Empty_list:Doublet_list_v.ordinalindexed_list_of_list"
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
  then failwith "Empty_list:Doublet_list_v.ordinalindexed_list_of_list"
  else
    let int_l = List_v.int_mintomax_list_of_minimum_of_length 1 len in
    let ord_l = List.map Ordinal_p.make int_l in
    make lst ord_l
;;

let triangular_pair_list_of_list lst =
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

(** {6 Displaying.} *)

let name nam_l nam_r dbl =
  List_v.name (Doublet_v.name nam_l nam_r) dbl
;;

let name_with_separator nam_l nam_r sep dbl =
  List_v.name_with_separator (Doublet_v.name nam_l nam_r) sep dbl
;;

let print prt_d prt_i ppf dbl =
  List_v.print (Doublet_v.print prt_d prt_i) ppf dbl
;;

let print_with_separator prt_l prt_r sep dbl =
  List_v.print_with_separator (Doublet_v.print prt_l prt_r) sep dbl
;;


let store lft rgt upp =
  if not ( has_left lft upp )
  then prepend lft rgt upp 
  else failwith "Already_stored:Doublet_list_v.store"
;;
