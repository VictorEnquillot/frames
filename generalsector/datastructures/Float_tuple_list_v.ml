let nam_mod = "Float_tuple_list_v.ml";;

let sigma_of_float_tuple_list flo_tl =
  let flo_l = List.map Float_tuple_v.sigma_of_float_tuple flo_tl in
  List_v.sigma_of_float_list flo_l
;;

let are_equal_of_epsilon_of_float_tuple_list_of_float_tuple_list eps f_tl g_tl =
  let boo_l = List.map2 (Float_tuple_v.are_equal_of_epsilon_of_float_tuple_of_float_tuple eps) f_tl g_tl in
  List_v.only_element_of_repeated_list boo_l
;;

let are_equal_at_epsilon_float_of_float_tuple_list_of_float_tuple_list f_t g_t =
  are_equal_of_epsilon_of_float_tuple_list_of_float_tuple_list epsilon_float f_t g_t
;;

let norm2_of_float_tuple_list flo_tl =
  let fl2_t = Tuple_list_v.map (fun f -> f *. f) flo_tl in
  sigma_of_float_tuple_list fl2_t
;;

let norm_of_float_tuple_list flo_tl =
  sqrt (norm2_of_float_tuple_list flo_tl)
;;

let addition_of_float_tuple_list_of_float_tuple_list flo_tl1 flo_tl2 =
  Tuple_list_v.map2 (fun f g -> f +. g ) flo_tl1 flo_tl2
;;

let addition_of_float_tuple_list_duo flo_tld =
  let (flo_tl1, flo_tl2) = flo_tld in
  addition_of_float_tuple_list_of_float_tuple_list flo_tl1 flo_tl2
;;

let addition_of_float_tuple_list_trio flo_tlt =
  let (flo_tl1, flo_tl2, flo_tl3) = flo_tlt in 
  let flo_tl = addition_of_float_tuple_list_of_float_tuple_list flo_tl1 flo_tl2 in
  addition_of_float_tuple_list_of_float_tuple_list flo_tl flo_tl3
;;

let difference_of_float_tuple_list_of_float_tuple_list flo_tl g_tl =
  Tuple_list_v.map2 (fun f g -> f -. g ) flo_tl g_tl
;;

let difference_of_float_tuple_list_duo flo_tld =
  let (flo_tl1, flo_tl2) = flo_tld in
  difference_of_float_tuple_list_of_float_tuple_list flo_tl1 flo_tl2
;;

let product_of_float_tuple_list_of_float_tuple_list flo_tl g_tl =
  Tuple_list_v.map2 (fun f g -> f *. g ) flo_tl g_tl
;;

let product_of_float_tuple_list_duo flo_tld =
  let (flo_tl1, flo_tl2) = flo_tld in
  product_of_float_tuple_list_of_float_tuple_list flo_tl1 flo_tl2
;;

let product_of_float_tuple_list_trio flo_tlt =
  let (flo_tl1, flo_tl2, flo_tl3) = flo_tlt in
  let flo_tl = product_of_float_tuple_list_of_float_tuple_list flo_tl1 flo_tl2 in
  product_of_float_tuple_list_of_float_tuple_list flo_tl flo_tl3
;;

let division_of_float_tuple_list_of_float_tuple_list flo_tl g_tl =
  Tuple_list_v.map2 (fun f g -> f /. g ) flo_tl g_tl
;;

let division_of_float_tuple_list_duo flo_td =
  let (flo_t1, flo_t2) = flo_td in
  division_of_float_tuple_list_of_float_tuple_list flo_t1 flo_t2
;;

let multiply_of_float_tuple_list_of_float flo_tl flo =
  Tuple_list_v.map (fun f -> f *. flo) flo_tl
;; 

let divide_of_float_tuple_list_of_float flo_t flo =
  if abs_float flo > epsilon_float
  then
    Tuple_list_v.map (fun f -> f /. flo) flo_t
  else
    failwith "Float_close_to_zero:Float_tuple_list_v.divide_of_float_tuple_list_of_float"
;; 

let name flo_tl =
  List_v.name_in_column Float_tuple_v.name flo_tl
;;

let shortname flo_tl =
  List_v.name_in_column Float_tuple_v.shortname flo_tl
;;



