(** {3 A canonical index for Any Tree Node} *)

(** {6 Making.} *)

let make_of_ordinal ord i_l =
  let i = Ordinal_p.int_of_ordinal ord in 
  i :: i_l
;;

let make i i_l =
  let ord = Ordinal_p.ordinal i in
  make_of_ordinal ord i_l
;;  

let sole_index_tree_of_tree_of_root_sole_index tre soi_roo = 
(*
  idx is the current node index root index is taken from soi_roo
  i_l is the index list from father to top
*)
  let rec apply soi_up idx_cur = function
    | Tree_t.Empty -> Tree_v.empty
	  
    | Tree_t.Leaf lf -> 
	Tree_t.Leaf (make idx_cur soi_up)
	    
    | tre ->
	let son_tre_l = Tree_v.topson_tree_list_off_tree tre in
	let len = List.length son_tre_l in 
	let idx_l = List_v.int_mintomax_list_of_minimum_of_length 1 len in

	let soi_cur = make idx_cur soi_up in
	let son_n_soi_tre_l = List.map2 (apply soi_cur) idx_l son_tre_l in

	Tree_t.Inner (soi_cur, son_n_soi_tre_l)
  in

  let idx_top = List.hd soi_roo in
  let soi_top = List.tl soi_roo in
  apply soi_top idx_top tre
;;

let sole_index_tree_of_tree_of_integer_list tre int_l = 
(*
  idx is the current node index
  i_l is the index list from father to top
*)
  let rec apply i_l idx = function
    | Tree_t.Empty -> Tree_v.empty
	  
    | Tree_t.Leaf lf -> 
	Tree_t.Leaf (make idx i_l)
	    
    | tre ->
	let son_tre_l = Tree_v.topson_tree_list_off_tree tre in
	let len = List.length son_tre_l in 
	let idx_l = List_v.int_mintomax_list_of_minimum_of_length 1 len in
	let i_ln = make idx i_l in
	let can_tre_l = List.map2 (apply i_ln) idx_l son_tre_l in
	Tree_t.Inner (i_ln, can_tre_l)
  in
  apply int_l 1 tre
;;


let sole_index_tree_of_tree tre = 
  sole_index_tree_of_tree_of_integer_list tre [] 
;;

let current_index_off_sole_index soi =
  List.hd soi
;;

let father_sole_index_off_sole_index soi =
  try List.tl soi
  with Failure "tl" ->
    failwith "List_too_short:List_v.father_sole_index_off_sole_index"
;;

let father_index_off_sole_index soi =
  let soi_fat = father_sole_index_off_sole_index soi in
  current_index_off_sole_index soi_fat
;;

let grandfather_sole_index_off_sole_index soi =
  try List.tl (List.tl soi)
  with Failure "tl" ->
    failwith "List_too_short:List_v.grandfather_sole_index_off_sole_index"
;;

let son_sole_index_list_of_length_of_sole_index len soi =
  let idx_l = List_v.int_mintomax_list_of_minimum_of_length 1 len in
  List.map (fun i -> i::soi ) idx_l
;;
 
let son_sole_index_list_of_int_of_length_of_sole_index i len soi =
  let idx_l = List_v.int_mintomax_list_of_minimum_of_length i len in
  List.map (fun i -> i::soi ) idx_l
;;
 
let sole_index_list_off_sole_index soi =
  List_v.list_list_off_list soi
;;

let son_list_of_sole_index_list_of_current soi_l soi = 
  let len_soi = List.length soi in
  List.filter 
    (fun son -> 
      List.length son = len_soi +1
	&&
      List.tl son = soi
    ) 
    soi_l
;;

(* [n; c_a ; s] -> [n; c_b; s] *)

let rec sole_index_tree_off_sole_index_list_of_sole_index soi_l soi =
  let son_l = son_list_of_sole_index_list_of_current soi_l soi in
  if List.length son_l = 0
  then Tree_t.Leaf soi
  else 
    begin
      let st_l = List.map 
	  (sole_index_tree_off_sole_index_list_of_sole_index soi_l) 
	  son_l 
      in
      Tree_t.Inner (soi, st_l)
    end
;;

let head_index soi =
  try List.hd soi
  with Failure "hd" ->
    failwith "Empty_Sole_index:Sole_index_v.head_index"
;;

(** {6 Naming.}*)

let name soi =
  let str = List_v.name_linear (Format.sprintf "%i") soi in
 Format.sprintf "%s" str
;;

let compare soi_1 soi_2 =
  compare (name (List.rev soi_1)) (name (List.rev soi_2)) 
;;

let next soi =
  let h = List.hd soi in
  let tl = List.tl soi in
  (h+1) :: tl
;;
