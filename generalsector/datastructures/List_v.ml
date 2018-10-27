(** {Some other functionalities for Lists} *)

let nam_mod = "List_v.ml";;

let map = List.map;;
let iter = List.iter;;
let map2 = List.map2;;
let iter2 = List.iter2;;

let list_of_list lis = lis;;

let skip_empty_list_off_list_list l_ll =
  let rec apply a_ll = function 
    | [] -> []
    | h::tl -> 
	if h = [] 
	then (apply a_ll tl)
	else 
	  begin
	    h :: (apply a_ll tl)
	  end 
 in 
  apply [[]] l_ll
;;

let print_fatal_error_empty_list nam_mod nam_fun =
  Error_messages_v.print_fatal_error nam_mod nam_fun
    "list were NOT empty" "list IS empty" "Check"
;;

let print_fatal_error_is_a_set nam_mod nam_fun =
  Error_messages_v.print_fatal_error nam_mod nam_fun
    "list were a Set (do NOT have any duplicated element)"
    "list DO have some duplicated elements"
    "Check"
;;

let rec name_bare_with_separator nam_e sep = function
  | [] -> ""
  | h::[] -> Format.sprintf "%s" (nam_e h)
  | h::tl ->   
      Format.sprintf "%s%s%s" 
	(nam_e h) sep (name_bare_with_separator nam_e sep tl) 
;;

let name_with_separator nam_e sep lis =
  Format.sprintf " [@.   %s@.  ]" (name_bare_with_separator nam_e sep lis)
;;

let rec name_bare nam_e lis =
  name_bare_with_separator nam_e " " lis
;;

let name_with_blanks nam_e lis =
  name_with_separator nam_e " " lis
;;

let name = name_with_blanks;;

let name_with_semicolons nam_e lis =
  name_with_separator nam_e "; " lis
;;

let name_in_column nam_e lis =
  name_with_separator nam_e ";\n   " lis
;;

let name_linear_with_separator nam_e sep lis =
  Format.sprintf "[%s]" (name_bare_with_separator nam_e sep lis)
;;

let name_linear nam_e lis =
name_linear_with_separator nam_e "; " lis
;;

let name_linear_with_blanks nam_e lis =
  name_with_blanks nam_e lis 
;;

let name_linear_with_semicolons nam_e lis =
  name_linear nam_e lis
;;

let name_underscored_off_string_list str_l =
  name_bare_with_separator (fun s->s) "_" str_l
;;

let name_of_string_list str_l =
  name_with_separator Utilities_v.identity "; " str_l 
;;

let name_of_integer_list int_l =
  name_with_separator (Format.sprintf "%i") "; " int_l
;;

let name_of_index_list idx_l =
  name_with_separator Index_p.name "; " idx_l
;;

let name_of_index_list_as_int idx_l =
  let i_l = List.map Index_p.int_of_index idx_l in
  name_of_integer_list i_l 
;;

let name_of_ordinal_list ord_l =
  name_with_separator Ordinal_p.name "; " ord_l
;;

let name_of_ordinal_list_as_int = function
  | [] ->   
      print_fatal_error_empty_list nam_mod "name_of_ordinal_list_as_int"
  | ord_l ->
      let i_l = List.map Ordinal_p.int_of_ordinal ord_l in
      name_of_integer_list i_l 
;;

let name_of_integer_list_list  = function
  | [] ->   
      print_fatal_error_empty_list nam_mod "name_of_integer_list_list"
  | ill ->
      let str_l = List.map name_of_integer_list ill in
      name_of_string_list str_l
;;

let name_of_float_list = function
  | [] ->   
      print_fatal_error_empty_list nam_mod "name_of_float_list"
  | f_l ->
      name_with_separator (Format.sprintf "%f") "; " f_l
;;

let name_of_float_list_list = function
  | [] ->   
      print_fatal_error_empty_list nam_mod "name_of_float_list_list"
  | fll ->
      let str_l = List.map name_of_float_list fll in
      name_of_string_list str_l
;;

let count_of_element_of_list ele = function
  | [] ->   
      print_fatal_error_empty_list nam_mod "count_of_element_of_list"
  | lis ->
      List.length (List.find_all (fun e -> e = ele) lis)
;;

let cut_off_first_element_of_list = function
  | [] ->   
      failwith ("List_empty:List_v.cut_off_first_element_of_list")
  | lis ->
(*  [first; .... ;] *)
      try List.tl lis
      with tl -> 
	failwith "Tail_list_empty:List_v.cut_off_first_element_of_list"
;;

let rec last_element_off_list = function
  | [] -> failwith ("List_empty:List_v.last_element_off_list")
  | h :: [] -> h
  | h :: t_l -> last_element_off_list t_l 
;;

(** {6 Sublist} *)

let index_of_element_of_list ele ele_l =
  let rec apply num e = function
    | [] -> 
	failwith "Not_found:List_v.index_of_element_of_list"
    | h::t -> if e = h then num 
    else apply (num+1) e t 
  in
  apply 0 ele ele_l
;;

let int_ordinal_of_element_of_list ele ele_l =
  try index_of_element_of_list ele ele_l +1
  with Failure "Not_found:List_v.index_of_element_of_list" ->
    failwith "Not_found:List_v.int_ordinal_of_element_of_list"
;;

let ordinal_of_element_of_list ele ele_l =
  try  Ordinal_p.ordinal (int_ordinal_of_element_of_list ele ele_l)
  with Failure "Not_found:List_v.int_ordinal_of_element_of_list" ->
    failwith "Not_found:List_v.ordinal_of_element_of_list"
;;

let ultimate_element_off_list = last_element_off_list;;

let penultimate_element_off_list = function
  | [] -> failwith ("List_empty:List_v.penultimate_element_off_list")
  | lis ->
      try List.nth lis ((List.length lis) -2)
      with nth -> 
	failwith "No_penultimate_element:List_v.penultimate_element_of_list"
;;

let antepenultimate_element_off_list = function
  | [] -> failwith ("List_empty:List_v.antepenultimate_element_off_list")
  | lis ->
      try List.nth lis ((List.length lis) -3)
      with nth -> 
	failwith ("No_antepenultimate_element:List_v.penultimate_element_off_list")
;;

let rec append_of_element_of_list e = function
  | [] -> [e]
  | h :: t_l -> h :: (append_of_element_of_list e t_l) 
;;

let first_element_off_list lis  =
(*  [first; .... ;last] *)
    try List.hd lis
    with hd -> failwith ("List_empty:List_v.first_element_off_list")
;;
let first_element = first_element_off_list;;

let list_head = first_element_off_list;;

let last_element = last_element_off_list;;
let list_tail = last_element_off_list;;

let second_element_off_list lis  =
(*  [first; .... ;last] *)
    try List.nth lis 1
    with nth -> failwith ("No_second_element:List_v.second_element_off_list")
;;

let third_element_off_list lis  =
(*  [first; .... ;last] *)
    try List.nth lis 2
    with nth -> failwith ("No_third_element:List_v.third_element_off_list")
;;

(** {6 Transforming.} *)

let singlet_off_list ele_l = 
  if not (List.length ele_l = 1) 
  then failwith "Not_a_singlet:List_v.singlet_off_list"
  else List.nth ele_l 0
;;

let pair_off_list ele_l =
  if not (List.length ele_l = 2) 
  then failwith "Not_a_pair:List_v.pair_off_list"
  else Doublet_v.make (List.nth ele_l 0) (List.nth ele_l 1) 
;;
let duo_of_list = pair_off_list;;

let trio_of_list ele_l =
  if not (List.length ele_l = 3) 
  then failwith "Not_a_trio:List_v.trio_of_list"
  else (List.nth ele_l 0, List.nth ele_l 1, List.nth ele_l 2)  
;;

let quatuor_off_list ele_l =
  if not (List.length ele_l = 4) 
  then failwith "Not_a_quadruplet:List_v.quatuor_of_list"
  else (List.nth ele_l 0, List.nth ele_l 1, List.nth ele_l 2, List.nth ele_l 3)  
;;

let quintet_off_list ele_l =
  if not (List.length ele_l = 5) 
  then failwith "Not_a_quintuplet:List_v.quintet_of_list"
  else (List.nth ele_l 0, List.nth ele_l 1, List.nth ele_l 2, List.nth ele_l 3, List.nth ele_l 4)  
;;

let first_singlet_off_list = first_element_off_list;;

let first_pair_off_list ele_l =
  if not (List.length ele_l > 1) 
  then failwith "Not_a_pair:List_v.pair_off_list"
  else Doublet_v.make (List.nth ele_l 0) (List.nth ele_l 1) 
;;

let first_duo_off_list = first_pair_off_list;;

let element_duo_off_two_element_list ele_l =
  let len = List.length ele_l in
  match len with 
  | 0 -> failwith "Empty_list:List_v.ml.element_duo_off_two_element_list"
  | 1 -> failwith "One_element_list:List_v.ml.element_duo_off_two_element_list"
  | 2 -> Duo_v.make (List.nth ele_l 0) (List.nth ele_l 1) 
  | _ -> failwith "Several_elements:List_v.element_off_one_element_list"
;;

let first_trio_off_list ele_l =
  if not (List.length ele_l > 2) 
  then failwith "Not_a_triplet:List_v.first_trio_off_list"
  else (List.nth ele_l 0, List.nth ele_l 1, List.nth ele_l 2)  
;;

let first_quatuor_off_list ele_l =
  if not (List.length ele_l > 3) 
  then failwith "Not_a_quadruplet:List_v.first_quatuor_off_list"
  else (List.nth ele_l 0, List.nth ele_l 1, List.nth ele_l 2, List.nth ele_l 3)  
;;

let first_quintet_off_list ele_l =
  if not (List.length ele_l > 4) 
  then failwith "Not_a_quintuplet:List_v.first_quintet_off_list"
  else (List.nth ele_l 0, List.nth ele_l 1, List.nth ele_l 2, List.nth ele_l 3, List.nth ele_l 4)
;;

let list_triplet_of_triplet_list trt_l =
  let rec apply x_l y_l z_l = function
    | [] -> (x_l, y_l, z_l)
    | (x, y, z) :: tl ->
	let (x_tl, y_tl, z_tl) = apply x_l y_l z_l tl in
	(x::x_tl, y::y_tl, z::z_tl) 
  in
apply [] [] [] trt_l
;;

let list_trio_off_trio_list tri_l =
  let trt_l = List.map Trio_v.triplet_as_trio_of_trio tri_l in
  list_triplet_of_triplet_list trt_l
;;

let cut_off_last_element_off_list lis  =
(*  [first; ....; last;] *)
    let rev = List.rev lis in
    List.rev (
    try List.tl rev
    with tl -> failwith ("List_empty:List_v.cut_off_last_element_off_list")
 ) 
;;

let replace_of_predicate_of_element_of_list pre ele lis =
   let rec apply accu = function
   | [] -> raise Not_found
   | h :: t ->
     if pre h
     then List.rev_append accu (ele :: t) 
     else apply (h :: accu) t
   in
   apply [] lis
;;

let replace_of_element_of_element_of_list ele_1 ele_2 lis =
   let rec apply accu = function
   | [] -> raise Not_found
   | h :: t ->
     if h = ele_1 
     then List.rev_append accu (ele_2 :: t) 
     else apply (h :: accu) t
   in
   apply [] lis
;;

let replace_last_element_of_element_of_list ele lis =
  let rev_l = List.rev lis in
  let apply = function
    | [] -> failwith "Empty_list:List_v.replace_last_element_of_element_of_list"
    | h :: t -> ele :: t
  in
  List.rev (apply rev_l)
;;

let left_list_included_of_predicate_of_list pre lis =
  let rec apply l = function
    | [] -> l
    | h::t ->
	if (pre h) 
	then [h]
        else h :: apply l t
  in
  apply [] lis 
;;
	  
let has_elements_of_predicate_of_list pre lis =
  List.exists pre lis
;;

let left_list_excluded_of_predicate_of_list pre lis =
  let rec apply l = function
    | [] -> l
    | h::t ->
	if (pre h) 
	then []
        else h :: apply l t
  in
  apply [] lis 
;;
	  
let right_list_excluded_of_predicate_of_list pre lis =
  let rec apply l = function
    | [] -> l
    | h::t ->
	if (pre h) 
	then t
        else apply l t
  in
  apply [] lis 
;;
	  
let right_list_included_of_predicate_of_list pre lis =
  let rec apply l = function
    | [] -> l
    | h::t ->
	if (pre h) 
	then h::t
        else apply l t
  in
  apply [] lis 
;;
	  
let drop_last_element_off_list lis = cut_off_last_element_off_list lis;;

let drop_first_elements_of_int_of_list i lis =
  if i < 0
  then
    Error_messages_v.print_fatal_error nam_mod "drop_first_elements_of_int_of_list"
      "Number of elements to drop is non negative"
      (Format.sprintf "Number of elements to drop is %i" i)
      "Check"
  else
    begin
      let rec apply num = function
	| [] -> 
	    failwith "List_exhausted:List_v.drop_first_elements_of_int_of_list"
	| h::tl as l -> 
	    if num < i
	    then apply (num+1) tl  
	    else l
      in
      apply 0 lis
    end
;;

let drop_last_elements_of_int_of_list i lis =
  let rev = List.rev lis in
  let sta =
    if i < 0 
    then 0
    else i
  in
  let tai = 
    try drop_first_elements_of_int_of_list sta rev  
    with Failure ("List_exhausted:List_v.drop_first_elements_of_int_of_list") ->
      failwith "List_exhausted:List_v.drop_last_elements_of_int_of_list"
  in
  List.rev tai
;;

let sublist_of_int_of_length_of_list i len lis =
  let hea_l = 
    try drop_first_elements_of_int_of_list i lis 
    with Failure ("List_exhausted:List_v.drop_first_elements_of_int_of_list") ->
      failwith "List_exhausted:List_v.sublist_of_int_of_length_of_list"
  in
  let j = (List.length lis) - (len+i) in
  try drop_last_elements_of_int_of_list j hea_l
  with Failure ("List_exhausted:List_v.drop_last_elements_of_int_of_list") ->
    failwith "List_exhausted:List_v.sublist_of_int_of_length_of_list"
;;

let sublist_of_int_of_int_of_list i j lis =
  let len = j-i+1 in
  sublist_of_int_of_length_of_list i len lis
;;

let first_elements_of_int_of_list i lis =
  sublist_of_int_of_int_of_list 0 (i-1) lis
;;

let last_elements_of_int_of_list i lis =
  let len = List.length lis in
  let fir = len-i in
  let las = len-1 in
  sublist_of_int_of_int_of_list fir las lis
;;

let sublist_excluded_of_predicate_of_length_of_list pre len lis = 

  let rec apply = function
  | [] -> []
  | h :: [] ->
      if pre h 
      then [h]
      else failwith "List_too_short:List_v.sublist_excluded_of_predicate_of_length_of_list"
  | h :: tl ->
      if pre h 
      then sublist_of_int_of_length_of_list 0 len tl
      else apply tl
  in

  apply lis
;;

let sublist_excluded_of_predicate_of_predicate_of_list pre_fro pre_to lis = 
  let rig_l = right_list_excluded_of_predicate_of_list pre_fro lis in
  left_list_excluded_of_predicate_of_list pre_to rig_l
;;

let sublist_of_predicate_excluded_of_predicate_excluded_of_list pre_fro pre_to lis = 
  let rig_l = right_list_excluded_of_predicate_of_list pre_fro lis in
  left_list_excluded_of_predicate_of_list pre_to rig_l
;;

let sublist_included_of_predicate_of_predicate_of_list pre_fro pre_to lis = 
  let rig_l = right_list_included_of_predicate_of_list pre_fro lis in
  left_list_included_of_predicate_of_list pre_to rig_l
;;

let sublist_of_predicate_included_of_predicate_excluded_of_list pre_fro pre_to lis = 
  let rig_l = right_list_included_of_predicate_of_list pre_fro lis in
  left_list_excluded_of_predicate_of_list pre_to rig_l
;;

let sublist_of_predicate_excluded_of_predicate_included_of_list pre_fro pre_to lis = 
  let rig_l = right_list_excluded_of_predicate_of_list pre_fro lis in
  left_list_included_of_predicate_of_list pre_to rig_l
;;

let sublist_of_predicate_included_of_predicate_included_of_list pre_fro pre_to lis = 
  let rig_l = right_list_included_of_predicate_of_list pre_fro lis in
  let rig_hd = List.hd rig_l in
  let rig_tl = List.tl rig_l in
  rig_hd :: (left_list_included_of_predicate_of_list pre_to rig_tl)
;;

let sublist_longest_included_of_predicate_of_predicate_of_list prd_f prd_t lis =
  let tl_l = right_list_included_of_predicate_of_list prd_f lis in
  let tl_lr = List.rev tl_l in
  let l_r = right_list_included_of_predicate_of_list prd_t tl_lr in
  List.rev l_r
;;

let sublist_included_of_predicate_of_length_of_list pre len lis = 

  let rec apply = function
  | [] -> []
  | h :: [] ->
      if pre h 
      then [h]
      else failwith "List_too_short:List_v.sublist_included_of_predicate_of_length_of_list"
  | h :: tl as l ->
      if pre h 
      then sublist_of_int_of_length_of_list 0 len l
      else apply tl
  in

  apply lis
;;

let left_half_off_list lis =
  let hlf = (List.length lis)/2 in
  let pre e = try index_of_element_of_list e lis = (hlf-1) 
  with Failure "Not_found:List_v.index_of_element_of_list" ->
    failwith "Not_found:List_v.left_half_off_list"
  in
  left_list_included_of_predicate_of_list pre lis
;; 

let right_half_off_list lis =
  let hlf = (List.length lis)/2 in
  let pre e = try index_of_element_of_list e lis = (hlf-1) 
  with Failure "Not_found:List_v.index_of_element_of_list" ->
    failwith "Not_found:List_v.right_half_off_list"
  in
  right_list_excluded_of_predicate_of_list pre lis
;; 

let left_sublist_n_right_sublist_of_predicate_of_list pre lis = 
  let rec apply lef_l rig_l = 
    match rig_l with
    | [] -> (lis, [])
    | h :: t_l ->
	if (pre h) 
	then 
	  (List.rev lef_l, rig_l) 
	else 
	  apply (h :: lef_l) t_l
  in
  apply [] lis 
;;

let head_sublist_n_remainder_list_of_predicate_of_list pre lis = 
  let rec apply l = function
    | [] -> (l, [])
    | h :: t_l ->
	if (pre h) 
	then 
	  let (a, r) = apply l t_l in 
	  (h :: a, r)
	else 
	  (l, h :: t_l)
  in
  apply [] lis
;;

let head_n_remainder_list_of_predicate_of_list pre lis = 
  let rec apply = function
    | [] -> failwith "Empty_list:List_v.head_n_remainder_list_of_predicate_off_list"
    | h :: t_l ->
	if (pre h) 
	then 
	  (h, t_l)
	else 
	 apply t_l
  in
  apply lis
;;

let firstindex_of_element_of_list ele lis =
  if not (List.mem ele lis) 
  then failwith "Not_found:List_v.firstindex_of_element_of_list"
  else
    begin
      let rec accu l i =
	match l with 
	| [] -> failwith "Empty_list:List_v.firstindex_of_element_of_list"
	| h::t ->
	    if h = ele 
	    then i
	    else (accu t i) +1
      in
      accu lis 0
    end
;;

let are_head_coinciding_of_list_of_list e_l f_l =
  let len_e = List.length e_l in
  let len_f = List.length f_l in
  if len_e < len_f
  then
    begin
      let hea_l = sublist_of_int_of_length_of_list 0 len_e f_l in
      hea_l = e_l
    end
  else
    begin
      let hea_l = sublist_of_int_of_length_of_list 0 len_f e_l in
      hea_l = f_l
    end
;;

let are_included_of_small_list_of_big_list sma_l big_l =
  let len_sma = List.length sma_l in
  
  let rec apply = function
    | [] -> true
    | h :: tl as big_l ->
	
	let len_big = List.length big_l in
        if len_big < len_sma
	then false
	else
	  begin
	    if (are_head_coinciding_of_list_of_list sma_l big_l)
	    then true
	    else apply tl
	  end
  in
  apply big_l 
;;

let are_included_of_list_of_list e_l f_l =
  let len_e = List.length e_l in
  let len_f = List.length f_l in
  if len_e < len_f 
  then are_included_of_small_list_of_big_list e_l f_l
  else are_included_of_small_list_of_big_list f_l e_l
;;

let is_sublist_of_small_list_of_big_list =
  are_included_of_small_list_of_big_list 
;;

let is_sublist_of_list_of_list =
  are_included_of_list_of_list 
;;

let are_included_sets_of_small_list_of_big_list sma_l big_l =
 List.fold_left (fun e s -> e && (List.mem s big_l)) true sma_l
;;

let are_included_sets_of_list_of_list e_l f_l =
  let len_e = List.length e_l in
  let len_f = List.length f_l in
  if len_e < len_f 
  then are_included_sets_of_small_list_of_big_list e_l f_l
  else are_included_sets_of_small_list_of_big_list f_l e_l
;;

let are_tail_coinciding_of_list_of_list e_l f_l =
  let len_e = List.length e_l in
  let len_f = List.length f_l in
  if len_e < len_f
  then
    begin
      let hea_l = sublist_of_int_of_length_of_list (len_f - len_e) len_e f_l in
      hea_l = e_l
    end
  else
    begin
      let hea_l = sublist_of_int_of_length_of_list (len_e - len_f) len_f e_l in
      hea_l = f_l
    end
;;

(* let is_first_included_of_small_list_off_big_list sma_l big_l = *)
(*   (\* sma_l :    [fst; ...; las]     *\) *)
(*   (\* big_l : [..;fst; ...; las;...] *\) *)

(*   match (sma_l, big_l) with *)
(*     | ([], []) ->  *)
(* 	failwith "Empty_both_list:List_v.is_first_included_of_small_list_off_big_list" *)
(*     | ([], _) -> true *)
(*     | (_, []) -> false *)
(*     | _ -> *)

(*   let fst = List.hd sma_l in *)
(*   let ind_f = firstindex_of_element_of_list fst big_l in *)
(*   let len = List.length sma_l in *)
(*   let ext_l = sublist_of_int_of_length_of_list ind_f len big_l in *)
  
(*   ext_l = sma_l  *)
(* ;; *)
 
(* let is_first_included_of_list_of_list e_l f_l = *)
(*   if List.length e_l < List.length f_l *)
(*   then *)
(*     is_first_included_of_small_list_off_big_list e_l f_l *)
(*   else *)
(*     is_first_included_of_small_list_off_big_list f_l e_l *)
(* ;; *)


let largest_inclusive_list_of_reference_list_of_list_list ref_l lis_l =
  let rec apply lis =
    match lis with
    | [] -> []
    | cur :: [] -> 
	  if (are_included_of_list_of_list cur ref_l)
	  then [cur]
	  else []
    | cur :: tl ->
	
	let nex = List.hd tl in
        let nex_l = List.tl tl in

	let new_l =
	  if not (are_included_of_list_of_list cur ref_l)
	  then nex :: nex_l
	  else
	    if not (are_included_of_list_of_list nex ref_l)
	    then cur :: nex_l
	    else 
	      begin  (* both including ref *)
		if List.length cur > List.length nex
		then cur :: nex_l
		else nex :: nex_l
	      end
	in
	apply new_l
  in
  apply lis_l
;;

let is_empty_of_list = function
  | [] -> true
  | _ -> false
;;
 
(** {6 Splitting : in Two} *)

let split_of_predicate_of_list pre lis =
  let rec apply acc = function
    | [] -> (acc, [])
    | h :: tl ->
	if (pre h)
	then (acc, tl)
	else
	  begin
	    apply (acc@[h]) tl
	  end
  in
  if lis = [] 
  then failwith "Empty_list:List_v.split_of_element_of_list"
  else apply [] lis
;;

let split_excluded_of_predicate_of_list pre lis =
  split_of_predicate_of_list pre lis
;;

let split_of_element_of_list ele lis =
  split_of_predicate_of_list (fun e -> e = ele) lis
;;

let rec split_append_of_element_of_list_of_list e l1 l2 =
  match l1 with
  | [] -> ([],l2)
  | h::tl -> 
      if h = e then (l2@[h], tl)
      else split_append_of_element_of_list_of_list e tl (l2@[h])
;;

let split_after_of_element_of_list ele lis = 
    let rec apply (l1, l2) = 
    match l2 with 
    | [] -> ([], [])
    | h::t -> 
    if h = ele 
    then (l1@[h], t)
    else apply (l1@[h], t)
    in
    apply ([], lis)
;;

let split_excluded_of_element_of_list ele lis = 
    let rec apply (l1, l2) = 
    match l2 with 
    | [] -> (l1, [])
    | h::t -> 
    if h = ele 
    then (l1, t)
    else apply (l1@[h], t)
    in
    apply ([], lis)
;;

let split_after_at_int_of_list i lis = 
  let len = List.length lis in
  let hea_l = drop_last_elements_of_int_of_list (len-i-1) lis in
  let tai_l = drop_first_elements_of_int_of_list (i+1) lis in
  (hea_l, tai_l)
;;

let split_at_last_element_off_list lis =
  let l = cut_off_last_element_off_list lis in
  let le = last_element_off_list lis in
  (le, l) 
;;

let rec predecessor_of_element_of_list ele = function
    | [] -> failwith "Not_found" 
    | h::t ->
    if List.hd t = ele  
    then h
    else predecessor_of_element_of_list ele t
;;

let rec predecessor_of_predicate_of_list pre = function
    | [] -> failwith "Not_found" 
    | h::t ->
    if pre (List.hd t)  
    then h
    else predecessor_of_predicate_of_list pre t
;;

let rec successor_of_element_of_list ele = function
    | [] -> failwith "Not_found" 
    | h::t ->
    if h = ele 
    then List.hd t
    else successor_of_element_of_list ele t
;;

let rec successor_of_predicate_of_list pre = function
    | [] -> failwith "Not_found" 
    | h::t ->
    if pre h
    then List.hd t
    else successor_of_predicate_of_list pre t
;;

let split_before_of_element_of_list ele lis = 
  let pre = predecessor_of_element_of_list ele lis in
  split_after_of_element_of_list pre lis
;;

let split_before_at_int_of_list i lis =
  if i = 0 
  then
    failwith 
      "List_v.split_before_at_int_of_list: no splitting before position 0"
  else 
    split_after_at_int_of_list (i-1) lis
;;

let split_left_included_of_predicate_of_list pre lis =
  let rec apply acc = function
    | [] -> (acc, [])
    | h :: tl -> 
	if (pre h) 
	then (acc@[h], tl)
	else apply (acc@[h]) tl
  in
  apply [] lis
;;

let split_right_included_of_predicate_of_list pre lis =
  let rec apply acc = function
    | [] -> (acc, [])
    | h :: tl as l -> 
	if (pre h) 
	then (acc, l)
	else apply (acc@[h]) tl
  in
  apply [] lis
;;

let three_split_list e l = 
  let (h, tl) = split_of_element_of_list e l in
  let (ll, hl) = List.partition (fun x -> x=e) h in
  (hl, e, tl)
;;

(** {6 Gathering}} *)

let gather p l =
  let rec apply = function
    | [] -> []
    | h :: [] -> [[h]]
    | h :: t ->
	let app = apply t in
	if (p h (List.hd t))
	then ((h :: List.hd app) :: List.tl app)
	else ([h]:: app)
  in 
  apply l
;;

(** {6 Bursting}} *)

let burst_excluded_of_predicate_of_list pre lis =
  let rec apply = function
    | [] -> []
    | l ->
	let (s_l, s_r) = split_excluded_of_predicate_of_list pre l in
	s_l :: (apply s_r)
  in 

  let l_ll = apply lis in
  skip_empty_list_off_list_list l_ll
;;

let burst_of_predicate_of_list pre lis =
  burst_excluded_of_predicate_of_list pre lis
;;

let burst_excluded_of_element_of_list ele lis =
  burst_excluded_of_predicate_of_list (fun e -> e = ele) lis
;;

let burst_of_element_of_list ele lis =
  burst_excluded_of_predicate_of_list (fun e -> e = ele) lis
;;

let burst_right_included_of_predicate_of_list pre lis =
  let rec apply = function
    | [] -> []
    | l ->
	let (s_l, s_r) = 
	  split_left_included_of_predicate_of_list pre l
	in
	s_l :: (apply s_r)
  in 
  let l_ll = apply lis in
  skip_empty_list_off_list_list l_ll
;;

let burst_left_included_of_predicate_of_list pre lis =
  let r = List.rev lis in
  let r_l = burst_right_included_of_predicate_of_list pre r in
  let r_ll = List.rev r_l in
  let l_ll = List.map List.rev r_ll in
  skip_empty_list_off_list_list l_ll
;;

let insert_after_of_list_of_element_of_list ins_l ele lis =
 (* [ lft_l ; ele; insert; rgt_l] *)
  let (lft_l, rgt_l) = split_after_of_element_of_list ele lis in
  lft_l @ ins_l @ rgt_l
;;

let insert_after_of_list_of_predicate_of_list ins_l pre lis =
  let ele = List.find pre lis in
  insert_after_of_list_of_element_of_list ins_l ele lis
;;

(** *)

let exclude_of_element_of_list ele lis  =
  let (lft, rgt) = split_before_of_element_of_list ele lis in
  let r_t = cut_off_first_element_of_list rgt in 
  lft @ r_t
;;

let rec is_a_set = function
  | [] -> true
  | h::t ->
      if List.mem h t
      then false
      else is_a_set t
;;

let verify_is_a_set lis =
  if is_a_set lis then lis
  else failwith "Not_a_Set"
;;

let is_once_of_element_of_list ele = function
  | [] ->
      print_fatal_error_empty_list nam_mod
	"is_once_of_element_of_list" 
  | lis ->
      (count_of_element_of_list ele lis) = 1
;;

let is_once_list_of_list = function
  | [] ->
      print_fatal_error_empty_list nam_mod
      "is_once_of_element_of_list" 
  | lis ->
      let rec apply = function
	| [] -> true
	| h :: tl ->
	   if (List.mem h tl)
	   then false
	   else apply tl  
      in
      apply lis 
;;

let verify_exist_once ele lis mdn her =
 let num = count_of_element_of_list ele lis in
 if num = 1 then ele else 
   failwith (
   Format.fprintf Format.str_formatter  
     "%s.%s: --- Fatal_Error ---@.\
      element exist %d times in list.@.\
      Cure : check this list.@." 
     mdn her num ; Format.flush_str_formatter ()); assert false
 ;;

let check_exist_once ele lis mdn her =
 let num = List.length (List.find_all (fun e -> e = ele) lis) in
 if num = 1 then () else 
   failwith (
   Format.fprintf Format.str_formatter  
     "%s.%s: --- Fatal_Error ---@.\
      element exist %d times in list.@.\
      Cure : check this list.@." 
     mdn her num ; Format.flush_str_formatter ()); assert false
 ;;

let right_once_list_off_list lis =
  let rec aux_f l =
    match l with
    | [] -> []
    | h::t ->
        if List.mem h t 
        then aux_f t
        else h :: aux_f t
  in
  (aux_f lis)
;;

let left_once_list_off_list lis =
  let rec aux_f l =
    match l with
    | [] -> []
    | h::t ->
        if List.mem h t 
        then aux_f t
        else h :: aux_f t
  in
  List.rev (aux_f (List.rev lis))
;;

(* let f str_l = *)
(*   let rec apply acc s_l = *)

(*     if s_l = []  *)
(*     then acc *)
(*     else *)
(*       begin *)
(* 	let h = List.hd s_l in *)
(* 	let ss_l = List.filter (fun s -> s <> h) s_l in *)
(* 	apply (h :: acc) ss_l *)
(*       end *)
(*   in *)

(*   List.rev (apply [] str_l) *)
(* ;; *)

let select_path_list_with_once_leaf_off_path_list pat_l =
  let h_l = List.map List.hd pat_l in
  let k_l = left_once_list_off_list h_l in
  List.map (fun k -> (List.find (fun p -> k = List.hd p) pat_l)) k_l 
;;

let element_n_count_list_of_list lis =
  let eol = right_once_list_off_list lis in
  List.map (fun e -> (e, count_of_element_of_list e lis)) eol
;;

let non_once_list_off_list lis =
  let dol = element_n_count_list_of_list lis in
  let dof = List.filter (fun (e, n) -> n > 1) dol in
  List.map (fun (e, n) -> e) dof
;;

let rec pair_list_of_list l = 
    match l with
      | [] -> []
      | h::[] -> failwith ("Not_even_length:List_v.pair_list_of_list")
      | f::s::tail -> (f, s) :: (pair_list_of_list tail)  
;;

let rec pair_list_of_two_lists l1 l2 = 
  if List.length l1 <> List.length l2 
  then failwith ("Not_same_length:List_v.pair_list_of_two_lists")
  else
    match (l1,l2) with
      | ([], _) 
      | (_,[]) -> [] 
      | (h1::t1, h2::t2) -> (h1, h2) :: (pair_list_of_two_lists t1 t2)  
;;

let rec pair_list_with_element e = function
  | [] -> []
  | h::t -> (e, h) :: pair_list_with_element e t 
;;

let pair_selection_two_lists pred l1 l2 =
  let rec apply pred acc c1 l =
    let list = List.filter (pred c1) l in
    acc @ (pair_list_with_element c1 list) 
  in
  List.fold_left (fun acc x -> apply pred acc x l2) [] l1
;;

(*let rec map_on_pairs_of_list (f: ('a -> 'a -> 'b)) = function
  | [] -> []
  | h::t -> (List.map (fun h x -> f h x) t)
      @ map_on_pairs_of_list f t
;;
*)

let rec pair_selection_one_list pred = function
  | [] -> []
  | h::t ->
    (pair_list_with_element h   (* gather (h, x-selected) list *)
     (List.filter (fun x -> pred h x) t)  (* get all x in t satisfying p (h, x) *)
    ) 
    @ (pair_selection_one_list pred t) 
;;

let fail_list_empty mdn her =
    Format.fprintf Format.err_formatter 
    "@.@[<hov>%s.%s: --- Fatal Error ---@.List is empty@.@]@." 
    mdn her; 
  assert false
;;

let same_element_list_of_element_of_length e len = 
  let rec apply = function
    | 0 -> []
    | n -> e :: apply (n-1)
  in
  apply len
;;

let rec maxtomin_int_list_of_length = function
  | 0 -> []
  | len -> (len-1) :: maxtomin_int_list_of_length (len-1)
;;

let int_maxtomin_list_of_minimum_of_length min len =
  let i_l = maxtomin_int_list_of_length len in
  List.map (fun i -> i+min) i_l
;;

let int_maxtomin_list_of_maximum_of_length max len =
  let i_l = maxtomin_int_list_of_length len in
  let shf = max - (List.hd i_l) in
  List.map (fun i -> i+shf) i_l
;;

let int_list_of_length len =
  List.rev (maxtomin_int_list_of_length len)
;;

let int_mintomax_list_of_length len =
  int_list_of_length len 
;;

let int_mintomax_list_of_minimum_of_length min len =
  let i_l = int_mintomax_list_of_length len in
  List.map (fun i -> i + min) i_l  
;;

let int_list_of_minimun_of_length min len =
  int_mintomax_list_of_minimum_of_length min len
;;

let int_list_of_first_of_length min len =
 int_list_of_minimun_of_length min len
;;

let int_mintomax_list_of_maximum_of_length max len =
  int_list_of_length len 
;;

let ordinal_list_of_first_of_length ord len =
  let i_l = int_list_of_length len in
  let fst = Ordinal_p.int_of_ordinal ord in
  List.map (fun i -> Ordinal_p.make (i+fst)) i_l 
;;

let sequential_index_list_of_first_of_length ord len =
  let ord_l = ordinal_list_of_first_of_length ord len in
  List.map Sequential_index_v.make_of_ordinal ord_l
;;

let are_all_elements_of_predicate_of_list pre e_l =
  List.fold_left (fun x e -> (pre e) && x) true e_l
;;

let is_zeroed_int_list i_l =
  are_all_elements_of_predicate_of_list (fun i -> i = 0) i_l
;;

let is_repeated_list_of_list = function
  | [] -> true
  | h :: [] -> true
  | h :: t_l ->
      are_all_elements_of_predicate_of_list 
	(fun e -> e = h) t_l
;;
(*
let rec is_repeated_list = function
  | [] -> true
  | h :: [] -> true 
  | h :: t -> (h = List.hd t) && (is_repeated_list t) 
;;
*)
let repeated_list_of_count_of_element i x =
  let rec apply = function
    | 0 -> []
    | 1 -> [x]
    | j -> x :: apply (j-1) 
  in
  apply i 
;;

let repeated_list_of_count_of_list i sub_l =
  let rep_l = repeated_list_of_count_of_element i sub_l in
  List.flatten rep_l
;;

let only_element_of_repeated_list lis =
  if List.length lis = 0
  then 
    failwith "List_empty:List_v.only_element_of_repeated_list"
  else 
    begin
      if is_repeated_list_of_list lis
      then List.hd lis
      else failwith "Not_repeated_list:List_v.only_element_of_repeated_list"
    end
;;

let int_list_of_index_list idx_l =
  List.map Index_p.int_of_index idx_l
;;

let int_list_of_ordinal_list ord_l =
  List.map Ordinal_p.int_of_ordinal ord_l
;;

let element_off_one_element_list = function
  | [] -> failwith "Empty_list:List_v.element_off_one_element_list"
  | h :: t -> 
      if t <> [] 
      then failwith "Several_elements:List_v.element_off_one_element_list"
      else h
;;

let only_element_of_predicate_off_list pre lis =
  let e_l = List.filter pre lis in
  if List.length e_l > 1 
  then failwith "Not_only_element:List_v.only_element_of_predicate_off_list"
  else 
    begin
      try List.hd e_l
      with Failure hd -> 
	failwith "No_element:List_v.only_element_of_predicate_off_list"
    end
 ;;

let rec pair_uptriangular_list_of_list = function
  | [] -> []
  | h :: tl ->
     let hr_l = List.map (fun r -> (h, r)) tl in
     let tl_l = pair_uptriangular_list_of_list tl in
     hr_l @ tl_l
;;

let rec pair_uptriangulardiagonal_list_of_list = function
  | [] -> []
  | h :: tl as l ->
     let hr_l = List.map (fun r -> (h, r)) l in
     let tl_l = pair_uptriangulardiagonal_list_of_list tl in
     hr_l @ tl_l
;;

let string_list_left_shift_of_int_of_string_list i str_l =
  let sht = String.make i ' ' in 
  let rec apply l s =
    match l with
      | [] -> []
      | h::t_l -> (s^h) :: (apply t_l (s^sht))
  in
  apply str_l ""
;;

let string_list_right_shift_of_int_of_string_list i str_l =
  let sht = String.make i ' ' in 
  let rec apply l s =
    match l with
      | [] -> []
      | h::t_l -> (h^s) :: (apply t_l (sht^s))
  in
  apply str_l ""
;;

let list_off_string_of_make str mak =
  let sta = String.index str '[' in
  let fin = String.rindex str ']' in
  let wor = String.sub str (sta+1) (fin-sta-1) in
  let wor_l = String_v.split_of_character_of_string ';' wor in
  List.map mak wor_l
;;

let rec transpose = function
  | [] -> []
  | []::l -> []
  | h::t as e_ll -> 
      (List.map List.hd e_ll)
      :: (transpose (List.map List.tl e_ll)) 
;;

let rec list_list_off_list = function
  | [] -> []
  | h :: t_l -> 
      let head = 
	try (List.hd (list_list_off_list t_l))
	with Failure "hd" -> []
      in
      (h :: head) :: (list_list_off_list t_l) 
;;

let set_intersection_of_list_of_list e_l f_l =
  List.flatten 
    ( List.map 
	(fun e -> List.filter (fun f -> f=e) f_l) 
	e_l)
;;

let exclusive_union_of_list_of_list e_l f_l =
  let rec apply l = function 
    | [] -> []
    | e :: te_l ->
	if (List.mem e l)
	then apply l te_l
	else e :: apply l te_l
  in
  apply f_l e_l @ apply e_l f_l
;;

let exclusion_off_list_of_list e_l f_l =
  let rec apply l = function 
    | [] -> []
    | e :: te_l ->
	if (List.mem e f_l)
	then apply l te_l
	else e :: apply l te_l
  in
  apply [] e_l
;;

let union_of_list_of_list e_l f_l =
  let x_l = exclusion_off_list_of_list f_l e_l in
  e_l @ x_l
;;

let has_same_right_elements_off_list_of_list big_l sma_l =
  let len_sma = List.length sma_l in
  let ext_l = last_elements_of_int_of_list len_sma big_l in
  ext_l = sma_l
;;

let have_same_element_set_of_list_of_list e_l f_l =
  let exc_l = exclusion_off_list_of_list e_l f_l in
  exc_l = []
;;

let are_equivalent_of_list_of_list e_l f_l =
 ( List.length e_l = List.length f_l )
    &&
 ( have_same_element_set_of_list_of_list e_l f_l )
;;

let rec sup_of_list = function
  | [] -> failwith "Empty_list:List_v.sup_of_list"
  | h :: [] -> h
  | h :: t_l ->
      let sup = sup_of_list t_l in 
      if h > sup
      then h
      else sup
;;

(* String as a List *)

let is_substring_of_string_of_string sma big  =
  let sma_cha_l = String_v.character_list_off_string sma in
  let big_cha_l = String_v.character_list_off_string big in
  
  is_sublist_of_list_of_list sma_cha_l big_cha_l 
;;

let are_included_of_string_of_string sma big  =
  is_substring_of_string_of_string sma big 
;;


let duplicated_elements_of_list com lis =
  let sor_l = List.sort com lis in
  let hea = List.hd sor_l in
  let tai = List.tl sor_l in

  let rec apply he = function
    | [] -> []
    | h :: [] -> []
    | h :: tl ->

	if h = he  
	then h :: apply h tl 
	else apply h tl

  in
  apply hea tai
;;

(** {6 Algebra} *)

let sigma_of_integer_list i_l = 
  List.fold_left (fun sum i -> i + sum) 0 i_l
;;

let sigma_of_function_of_integer_list f_i i_l = 
  List.fold_left (fun sum i -> (f_i i) + sum) 0 i_l
;;

let sigma_of_index_list idx_l =
  List.fold_left (fun sum i -> Index_p.add i sum) Index_p.zero idx_l
;;

let sigma_of_ordinal_list ord_l =
  Ordinal_p.decrement 
    (List.fold_left (fun sum i -> Ordinal_p.add i sum) Ordinal_p.one ord_l)
;;

let sigma_of_float_list f_l = 
  List.fold_left (fun sum x -> x +. sum) 0.0 f_l
;;

let sigma_of_function_of_float_list fcn f_l = 
  List.fold_left (fun sum x -> fcn x +. sum) 0.0 f_l
;;

let norm2_of_float_list f_l =
  sigma_of_function_of_float_list (fun f -> f *. f) f_l
;;

let norm_of_float_list f_l =
  sqrt (norm2_of_float_list f_l)
;;

let addition_of_float_list_of_float_list f_l g_l =
  List.map2 (fun f g -> f +. g ) f_l g_l
;;

let difference_of_float_list_of_float_list f_l g_l =
  List.map2 (fun f g -> f -. g ) f_l g_l
;;

let product_of_float_list_of_float_list f_l g_l =
  List.map2 (fun f g -> f *. g ) f_l g_l
;;

let division_of_float_list_of_float_list f_l g_l =
  List.map2 (fun f g -> f /. g ) f_l g_l
;;

let cosinus_of_float_list_of_float_list f_l g_l =
  let pro_l = product_of_float_list_of_float_list f_l g_l in
  let nor_f = norm_of_float_list f_l in
  let nor_g = norm_of_float_list g_l in
  (sigma_of_float_list pro_l) /. (nor_f *. nor_g)
;;

let first_duo_n_remainder_list_off_list lis = 

    let rec apply count acc = function
      | [] -> (Duo_v.duo_of_list acc, [])
      | h :: tl as l ->

	  if count = 2
	  then 
	    begin
	      (Duo_v.duo_of_list acc, l)
	    end
	  else apply (count + 1) (h::acc) tl
    in

    if (List.length lis < 2 )
    then failwith ("List_length_lt_3:"^nam_mod^".first_duo_n_remainder_list_off_list")
    else apply 0 [] lis
;;

let first_trio_n_remainder_list_off_list lis = 

    let rec apply count acc = function
      | [] -> (Trio_v.trio_of_list acc, [])
      | h :: tl as l ->

	  if count = 3 
	  then 
	    begin
	      (Trio_v.trio_of_list acc, l)
	    end
	  else apply (count + 1) (h::acc) tl
    in

    if (List.length lis < 3 )
    then failwith ("List_length_lt_3:"^nam_mod^".first_trio_n_remainder_list_off_list")
    else apply 0 [] lis
;;

let first_elements_n_remainder_of_count_off_list cou lis = 
  let rec apply count acc = function
    | [] -> failwith ("Empty_list:"^nam_mod^".first_elements_n_remainder_of_count_off_list")
    | h :: tl as l -> 
	if count = cou
	then (List.rev acc, l)
	else apply (count + 1) (h :: acc ) tl
  in

  if (List.length lis < cou)
  then failwith ("List_too_short:"^nam_mod^".first_elements_n_remainder_of_count_off_list")
  else apply 0 [] lis

;;

