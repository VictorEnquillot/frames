let nam_mod = "Float_list_v.ml";;

let sigma_of_float_list flo_l =
  List_v.sigma_of_float_list flo_l
;;

let are_equal_of_epsilon_of_float_list_of_float_list eps flo_l1 flo_l2 =
  let boo_l = 
    List.map2 
      (Float_tuple_v.are_equal_of_epsilon_of_float_tuple_of_float_tuple eps) 
      flo_l1 
      flo_l2 
  in
  List_v.only_element_of_repeated_list boo_l
;;

let are_equal_at_epsilon_float_of_float_list_of_float_list flo_l1 flo_l2 =
  are_equal_of_epsilon_of_float_list_of_float_list epsilon_float flo_l1 flo_l2
;;

let norm2_of_float_list flo_l =
  let fl2_t = List_v.map (fun f -> f *. f) flo_l in
  sigma_of_float_list fl2_t
;;

let norm_of_float_list flo_l =
  sqrt (norm2_of_float_list flo_l)
;;

let addition_of_float_list_of_float_list flo_l1 flo_l2 =
  List_v.map2 (fun f g -> f +. g ) flo_l1 flo_l2
;;

let addition_of_float_list_duo flo_ld =
  let (flo_l1, flo_l2) = flo_ld in
  addition_of_float_list_of_float_list flo_l1 flo_l2
;;

let addition_of_float_list_trio flo_lt =
  let (flo_l1, flo_l2, flo_l3) = flo_lt in 
  let flo_l = addition_of_float_list_of_float_list flo_l1 flo_l2 in
  addition_of_float_list_of_float_list flo_l flo_l3
;;

let difference_of_float_list_of_float_list flo_l g_l =
  List_v.map2 (fun f g -> f -. g ) flo_l g_l
;;

let difference_of_float_list_duo flo_ld =
  let (flo_l1, flo_l2) = flo_ld in
  difference_of_float_list_of_float_list flo_l1 flo_l2
;;

let product_of_float_list_of_float_list flo_l g_l =
  List_v.map2 (fun f g -> f *. g ) flo_l g_l
;;

let product_of_float_list_duo flo_ld =
  let (flo_l1, flo_l2) = flo_ld in
  product_of_float_list_of_float_list flo_l1 flo_l2
;;

let product_of_float_list_trio flo_lt =
  let (flo_l1, flo_l2, flo_l3) = flo_lt in
  let flo_l = product_of_float_list_of_float_list flo_l1 flo_l2 in
  product_of_float_list_of_float_list flo_l flo_l3
;;

let division_of_float_list_of_float_list flo_l g_l =
  List_v.map2 (fun f g -> f /. g ) flo_l g_l
;;

let division_of_float_list_duo flo_ld =
  let (flo_l1, flo_l2) = flo_ld in
  division_of_float_list_of_float_list flo_l1 flo_l2
;;

let multiply_of_float_list_of_float flo_l flo =
  List_v.map (fun f -> f *. flo) flo_l
;; 

let divide_of_float_list_of_float flo_l flo =
  if abs_float flo > epsilon_float
  then
    List_v.map (fun f -> f /. flo) flo_l
  else
    failwith "Float_close_to_zero:Float_list_v.divide_of_float_list_of_float"
;; 

let name flo_l =
  List_v.name_in_column String_v.string_of_float flo_l
;;

let shortname flo_l =
  List_v.name_in_column String_v.shortname_of_float flo_l
;;

