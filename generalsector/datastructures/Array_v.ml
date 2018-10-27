(** {6 Arrays.} *)


let flatten_array_array arr2 =
 Array.fold_left (fun v -> Array.append v) [||] arr2
;;

let is_all_true elt_a =
 Array.fold_left (fun e x -> e && x) true elt_a
;; 

let once_array_of_array elt_a =
  let lst = Array.to_list elt_a in
  Array.of_list (List_v.once_list_off_list lst)
;;

let first_element_array_of_pair_array par_a =
  Array.map fst par_a
;;    

let second_element_array_of_pair_array par_a =
  Array.map snd par_a
;;    

let first_element elt_a  =
  elt_a.(0)
;;

let last_element elt_a  =
  let len = Array.length elt_a in
  if len = 0 then  failwith ("Array_v.last_element: empty array")
  else elt_a.(len-1)
;;

let array_head = first_element
;;

let array_tail = last_element
;;

let minimum pre elt_a =
  let elt_l = Array.to_list elt_a in
  List.hd (List.sort pre elt_l)
;;

let drop_last elt_a =
Array.sub elt_a 0 (Array.length elt_a -1)
;;

let element_n_count_array_of_array elt_a =
  Array.of_list (
  List_v.element_n_count_list_of_list (Array.to_list elt_a))
;;

let array_get here a n  =
  try a.(n)
  with
    | Invalid_argument("index out of bounds") -> 
	print_string (Printf.sprintf
	              "\n\nFATAL ERROR in function %s array index is %i length is  %i\n"
                      here n (Array.length a)
		     );assert (false);
;;

let is_included_of_array_of_array sub_a big_a =
  let sub_l = Array.to_list sub_a in
  let big_l = Array.to_list big_a in
  List_v.is_included_of_list_of_list sub_l big_l
;;

let array_filter pre arr =
  let lst = Array.to_list arr in
  let flt_l = List.filter pre lst in
  Array.of_list flt_l
;;

let array_extract_of_array fst len a_a =
  let b_a = Array.make len a_a.(0) in 
  Array.blit a_a fst b_a 0 len;
  b_a
;;

let tail_array_of_array a_a =
  let len = Array.length a_a in
  if len = 0 
  then [||]
  else array_extract_of_array 1 (len-1) a_a 
;;

let map2 f a_a b_a =
  let la = Array.length a_a in
  let lb = Array.length b_a in
  if la <> lb then failwith "No_equal_length"
  else
    begin
      if la = 0 then [||] 
      else 
	begin
	  let r_a = Array.create la 
	      (f (Array.unsafe_get a_a 0) (Array.unsafe_get b_a 0)) in
	  for i = 1 to la - 1 do
	    Array.unsafe_set r_a i 
	      (f (Array.unsafe_get a_a i) (Array.unsafe_get b_a i) )
	  done;
	  r_a
	end
    end
;;

let is_zeroed_array_int i_a =
  Array.fold_left (fun x e -> (e = 0) && x) true i_a
;;

let is_a_set arr =
  List_v.is_a_set (Array.to_list arr)
;;

let verify_is_a_set arr =
  Array.of_list (List_v.verify_is_a_set (Array.to_list arr))
;;

let fail_is_a_set prt_e arr mdn her =
  List_v.fail_is_a_set prt_e (Array.to_list arr) mdn her
;;

let count_of_element elt arr =
  List.length 
    (List.find_all (fun e -> e = elt) 
       (Array.to_list arr))
;;

let int_index_of_element_of_array elt elt_a =
  let elt_l = Array.to_list elt_a in
  try List_v.index_of_element_of_list elt elt_l
  with Failure ("Not_found:index_of_element_of_list") -> 
    failwith ("Not_found:int_index_of_element_of_array") 
;;

let has_element_of_array elt elt_a =
  count_of_element elt elt_a > 0
;;

let apply_on_array_tail f_t arr =
  let tal = last_element arr in
  let new_tal = (fun s -> f_t s) tal in
  let cnt_arr = Array.length arr in
  let new_arr = Array.copy arr in
  Array.set new_arr (cnt_arr-1) new_tal;
  new_arr
;;

let pair_off_array elt_a =
  if not (Array.length elt_a = 2) 
  then failwith "Not_a_pair:pair_off_array"
  else Doublet_v.make elt_a.(0) elt_a.(1) 
;;

let int_array_of_index_array idx_a = 
  Array.map Index_p.int_of_index idx_a 
;;

let int_array_of_ordinal_array idx_a = 
  Array.map Ordinal_p.int_of_ordinal idx_a 
;;

let sigma_of_array_float f_a =
  Array.fold_left (fun x sum -> x +. sum) 0.0 f_a 
;;

let sigma_of_array_int i_a = 
  Array.fold_left (fun sum i -> i + sum) 0 i_a
;;

let sigma_of_array_index idx_a =
  Array.fold_left (fun sum i -> Index_p.add i sum) Index_p.zero idx_a
;;

let sigma_of_array_ordinal ord_a =
  Ordinal_p.decrement 
    (Array.fold_left (fun sum i -> Ordinal_p.add i sum) Ordinal_p.one ord_a)
;;

let sigma_fun_of_array_float fcn f_a = 
  Array.fold_left (fun sum x -> fcn x +. sum) 0.0 f_a
;;

(** {9 Print Arrays.} *)

let print prt_elt ppf arr =
  let prt_arr ppf arr =
    Array.iteri (fun i e -> 
      Format.fprintf ppf "#%i %a;@ " i prt_elt e) arr
   in
  Format.fprintf ppf "@[[| @[%a@]|]@]" prt_arr arr
;;

let rec name name_a a_a = 
  let a_l = Array.to_list a_a in
  List_v.name name_a a_l
;;

let rec name_with_separator name_a sep a_a = 
  let a_l = Array.to_list a_a in
  List_v.name_with_separator name_a sep a_l
;;

let print_int_array ppf i_a =
  Array.iter (fun i -> 
    Format.fprintf Format.err_formatter "%i; " i) 
    i_a 
;;

let print_index_array_as_int ppf idx_a = 
  let i_a = int_array_of_index_array idx_a in
  print_int_array ppf i_a
;;

let print_ordinal_array_as_int ppf ord_a =
  let i_a = int_array_of_ordinal_array ord_a in
  print_int_array ppf i_a
;;

let print_array_array_int ppf i_a_a =
  Array.iter (fun i_a -> 
    print_int_array ppf i_a)
    i_a_a 
;;

let print_array_float ppf f_a =
  Array.iter (fun f -> 
    Format.fprintf Format.err_formatter "%f; " f) 
    f_a 
;;

let print_array_string ppf s_a =
  Array.iter (fun s -> 
    Format.fprintf Format.err_formatter "%s; " s) 
    s_a 
;;

let print_array_array_float ppf f_a_a =
  Array.iter (fun f_a -> 
    print_array_float ppf f_a)
    f_a_a 
;;

let print_error_is_zeroed_array nam_ent i_a mdn her = 
  Format.fprintf Format.err_formatter 
    "@.%s.%s: --- Fatal Error ---@.\
    expecting only zeros in array@ %a@.\
    entity name %s@."
    mdn her 
    print_int_array i_a
    nam_ent
;;

let fail_error_is_zeroed_array nam_ent i_a mdn her =
  print_error_is_zeroed_array nam_ent i_a mdn her;
  assert false
;;

let ordinal_array_of_first_of_length ord len =
  Array.of_list (List_v.ordinal_list_of_first_of_length ord len)
;;

